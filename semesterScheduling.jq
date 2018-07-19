jsoniq version "1.0";

module namespace my ="http://cs.gmu.edu/dgal/orderCost.jq";

import module namespace ns = "http://cs.gmu.edu/dgal/orderAnalytics.jq"
  at "/Users/Nidhi/Desktop/course_analytics.jq";

declare function my:semesterScheduling($planOfStudy)
{


      let $courseCatalog:=$planOfStudy.courseCatalog[]
      let $plannedCourses:=$planOfStudy.plannedCourses[]
      let $prereqCourses:= $planOfStudy.prereqCourses[]
      let $studentInput:= $planOfStudy.studentInput[]
      let $history:= $planOfStudy.history[]
      let $studentInterest:= $planOfStudy.studentInterest[]
      let $noOfCourses:=$planOfStudy.noOfCourses
      let $professorRatingData:=$planOfStudy.professorRatingData[]


      let $courseStatistics := (for $c in $courseCatalog, $pr in $professorRatingData, $pc in $plannedCourses
                                  where $pc.isToBeSubscribed=1 and
                                        $c.courseId=$pc.courseId and
                                        $pc.professorName=$pr.professorName
                                        (: and
                                        $pr.courseId=$pc.courseId:)
                                        order by $c.category descending
                                        return  {   courseId :$c.courseId,
                                                    hasPrereq : $c.hasPrereq,
                                                    rating :$pr.professorRating,
                                                    day : $pc.day,
                                                    semester : $pc.semester,
                                                    professorName : $pc.professorName
                                                }
                                    )


      let $coursesAscending := distinct-values(for $c in $courseStatistics  order by $c.rating return $c.courseId)

      let $courseStructure:= (
                                for $i at $position in $courseStatistics
                                return {
                                  position : $position,
                                  courseId :$i.courseId,
                                      hasPrereq : $i.hasPrereq,
                                      rating :$i.rating,
                                      day : $i.day,
                                              semester : $i.semester,
                                              professorName : $i.professorName

                                }
                              )

      let $courseOutput:= [for $p in 0 to (10 idiv $noOfCourses)
                      return {
                          sem : for $s in ($p*$noOfCourses +1) to (($p+1)*($noOfCourses)) return {$courseStructure[$$.position=$s]}
                      }
        ]

        let $courseOutputV := (for $c in $courseOutput where $c.sem ne null return $c)

        let $output := (for $c in $courseOutput.courses[].sem[] return {courseId: $c, Semester : "Fall"})



      return {courses: $courseOutput}


};
