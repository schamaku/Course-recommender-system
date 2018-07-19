jsoniq version "1.0";

module namespace ns = "http://cs.gmu.edu/dgal/orderAnalytics.jq";


(:import module namespace my = "http://cs.gmu.edu/dgal/orderAnalytics.jq"
  at "/Users/Nidhi/Desktop/semesterScheduling.jq";:)

declare function ns:courseAnalytics($planOfStudy)
{


    let $courseCatalog:=$planOfStudy.courseCatalog[]
    let $plannedCourses:=$planOfStudy.plannedCourses[]
    let $prereqCourses:= $planOfStudy.prereqCourses[]
    let $studentInput:= $planOfStudy.studentInput[]
    let $history:= $planOfStudy.history[]
    let $studentInterest:= $planOfStudy.studentInterest[]
    let $noOfCourses:=$planOfStudy.noOfCourses
    let $professorRatingData:=$planOfStudy.professorRatingData[]

    let $courseCount := count(  for $c in $studentInput
                                return $c.courseId)

    let $coursesToBeDone := 10-$courseCount

      let $studentInterestUtility:= sum(
                                          for $c in $plannedCourses, $s in $studentInterest
                                          where $c.courseId=$s.courseId and
                                          $c.isToBeSubscribed=1
                                          return $s.interestscale
                                        )

      let $expectedGPAUtility:= sum(
                                        for $c in $plannedCourses, $h in $history
                                        where $c.courseId= $h.courseId and
                                        $c.isToBeSubscribed=1
                                        return $h.AvgGrade
                                    )

      let $expectedGPAUtilityAvg:= $expectedGPAUtility div $coursesToBeDone

      let $courses:=for $c in $plannedCourses where $c.isToBeSubscribed=1 return {
                                                                                    courseId: $c.courseId
                                                                                }

      let $coursePrereqInfo:= for $c in $courses
                                for $p in $prereqCourses[$$.courseId=$c.courseId].prereqs[]
                                  return {
                                            courseId:$c.courseId,
                                            preCourseId:$p.preCourse,
                                            reqQualityPoints:$p.reqQualityPoints
                                          }

      let $preReqConstraint:= every $p in $coursePrereqInfo
                              satisfies $p.reqQualityPoints le $history[$$.courseId=$p.preCourseId].AvgGrade

      let $noOfCourse:= sum(
                              for $c in $plannedCourses
                              where $c.isToBeSubscribed=1
                              return $c.isToBeSubscribed
                            )

      let $noOfCourseConstraint:= $noOfCourse = $noOfCourses

      let $professorRatingUtility:= sum(
                                            for $c in $courseCatalog, $p in $plannedCourses, $pr in $professorRatingData
                                            where $c.courseId = $p.courseId
                                            and $p.professorName=$pr.professorName
                                            and $p.isToBeSubscribed=1
                                            return $pr.professorRating
                                        )

      let $courseRatingUtility:= sum(
                                          for $c in $courseCatalog,$p in $plannedCourses
                                          where $p.isToBeSubscribed=1
                                          and $c.courseId = $p.courseId
                                          return $c.courseRating
                                    )


                                let $assumedDegree := ({for $p in $plannedCourses, $h in $history
                                    where $p.isToBeSubscribed=1
                                    and $p.courseId = $h.courseId
                                    and $p.professorName = $h.prof
                          return {courseId : $p.courseId, qualityPoints : $h.AvgGrade}},$studentInput)


      let $coursesAlreadyCompleted:= count(
                                              for $c in $studentInput
                                              return $c.courseId
                                          )

      let $degreeCreditConstraint := count(for $p in $assumedDegree return $p.courseId) eq 10

      let $courseStats := { for $c in $courseCatalog,$p in $assumedDegree
                            let $carea:= $c.area
                            where $c.category="Basic"
                            and $c.courseId = $p.courseId

                            group by $carea return {
                                                      courseArea : $carea,
                                                      coursesInCourseArea : count($c.courseId)
                                                    }
                          }

      let $diffCourseAreaBasic := count(
                                          for $c in $courseStats
                                          where $c.coursesInCourseArea ge 1
                                          return $c.courseArea
                                        )

      let $cs583Constraint :=   some $p in $plannedCourses[$$.courseId="CS583"] satisfies $p.isToBeSubscribed eq 1

(:
      if ($plannedCourses[$$.courseId="CS583"].isToBeSubscribed eq 1)
                                then true
                                else false:)

      let $courseStatsAdvanced := {
                                      for $c in $courseCatalog,$p in $assumedDegree
                                      let $carea:= $c.area
                                      where $c.courseId = $p.courseId
                                      and $c.category="Advanced"
                                      group by $carea
                                      return {
                                                  courseArea : $carea,
                                                  coursesInCourseArea : count($c.courseId)
                                              }
                                  }

      let $diffCourseAreaAdv := count(
                                        for $c in $courseStatsAdvanced
                                        where $c.coursesInCourseArea ge 1
                                        return $c.courseArea
                                      )

      let $diffCoursesAdv := sum(
                                    for $c in $courseStatsAdvanced
                                    return $c.coursesInCourseArea
                                )


      let $classDays := {
                            for $c in $courseCatalog, $p in $plannedCourses
                            where $c.courseId = $p.courseId and $p.isToBeSubscribed=1
                            group by $p.semester, $p.day return {
                                                                    semester: $p.semester,
                                                                    day : $p.day,
                                                                    coursesPerDay: count($p.courseId)
                                                                }
                        }

      let $classDaysConstraint :=   every $c in $classDays
                                    satisfies $c.coursesPerDay le 4

      let $minimumGPAConstraint := sum(
                                        for $c in $plannedCourses, $h in $history
                                        where $c.isToBeSubscribed=1
                                        and $c.courseId = $h.courseId
                                        return $h.AvgGrade
                                      )
      let $totalconstraint:=$cs583Constraint and $preReqConstraint and $degreeCreditConstraint
      and $classDaysConstraint and ($minimumGPAConstraint ge 80) and ($diffCourseAreaAdv ge 3) 
      and ($diffCoursesAdv ge 4) and ($diffCourseAreaBasic ge 3)
      and ($noOfCourses le 4 and $noOfCourses ge 1)

      let $profCourseRating:= ($professorRatingUtility+(2*$courseRatingUtility)) div 20

      let $UF1 := 0.5 * ($studentInterestUtility div 10) + 0.5 * ($expectedGPAUtilityAvg div 1.2)

      let $UF2 := 0.5 * ($studentInterestUtility div 10) + 0.5 * $profCourseRating

      let $UF3 := 0.5 * $profCourseRating + 0.5 * ($expectedGPAUtilityAvg div 1.2)

      return
      {
        UF1: $UF1,
        UF2: $UF2,
        UF3: $UF3,
        totalconstraint :$totalconstraint

      }


};
