jsoniq version "1.0";




import module namespace my = "http://cs.gmu.edu/dgal/orderCost.jq"
  at "/Users/Nidhi/Desktop/semesterScheduling.jq";

import module namespace ns = "http://cs.gmu.edu/dgal/orderAnalytics.jq"
  at "/Users/Shravan/Desktop/course_analytics.jq";

(:import module namespace dgal = "http://mason.gmu.edu/~mnachawa/dgal.jq";:)

  let $courseCatalog := [

    {
      courseId : "CS550",
      title : "Database Management Systems",
      category : "Basic",
      area : "Artificial Intelligence and Database Systems",
      hasPrereq : "N",
      courseRating : 5
          },
    {
      courseId : "CS584",
      title : "Data Mining",
      category : "Basic",
      area : "Artificial Intelligence and Database Systems",
      hasPrereq : "N",
      courseRating : 3

    },
    {
      courseId : "CS580",
      title : "Introduction to Artifical Intelligence",
      category : "Basic",
      area : "Artificial Intelligence and Database Systems",
      hasPrereq : "N",
      courseRating : 3

    },

      {
        courseId : "INFS623",
        title : "Web search engines and recommender systems",
        category : "Basic",
        area : "Artificial Intelligence and Database Systems",
        hasPrereq : "N",
        courseRating : 3
      },

        {
          courseId : "CS650",
          title : "Advanced Database Management",
          category : "Advanced",
          area : "Artificial Intelligence and Database Systems",
          hasPrereq : "Y",
          courseRating : 5
        },

          {
            courseId : "CS657",
            title : "Mining Massive Datasets with Map Reduce",
            category : "Advanced",
            area : "Artificial Intelligence and Database Systems",
            hasPrereq : "Y",
            courseRating : 4
          },

            {
              courseId : "CS681",
              title : "Designing Expert Systems ",
              category : "Advanced",
              area : "Artificial Intelligence and Database Systems",
              hasPrereq : "Y",
              courseRating : 4
            },

              {
                courseId : "CS685",
                title : "Autonomous Robotics",
                category : "Advanced",
                area : "Artificial Intelligence and Database Systems",
                hasPrereq : "Y",
                courseRating : 4
              },

                {
                  courseId : "CS687",
                  title : "Advanced Artificial Intelligence",
                  category : "Advanced",
                  area : "Artificial Intelligence and Database Systems",
                  hasPrereq : "Y",
                  courseRating : 5
                },


                  {
                    courseId : "CS688",
                    title : "Pattern Recognition",
                    category : "Advanced",
                    area : "Artificial Intelligence and Database Systems",
                    hasPrereq : "Y",
                    courseRating : 5
                  },

                    {
                      courseId : "CS689",
                      title : "Planning Motions of Robots and Molecules",
                      category : "Advanced",
                      area : "Artificial Intelligence and Database Systems",
                      hasPrereq : "Y",
                      courseRating : 5
                    },

                      {
                        courseId : "CS782",
                        title : "Machine Learning",
                        category : "Advanced",
                        area : "Artificial Intelligence and Database Systems",
                        hasPrereq : "Y",
                        courseRating : 5
                      },

                        {
                          courseId : "CS787",
                          title : "Decision Guidance Systems",
                          category : "Advanced",
                          area : "Artificial Intelligence and Database Systems",
                          hasPrereq : "Y",
                          courseRating : 5
                        },


                          {
                            courseId : "INFS740",
                            title : "Database Programming for WWW",
                            category : "Advanced",
                            area : "Artificial Intelligence and Database Systems",
                            hasPrereq : "Y",
                            courseRating : 5
                          },

                            {
                              courseId : "CS540",
                              title : "Language Processor",
                              category : "Basic",
                              area : "Programming Languages and Software engineering",
                              hasPrereq : "N",
                              courseRating : 3
                            },

                              {
                                courseId : "SWE619",
                                title : "Objet Software Specification and Construction",
                                category : "Basic",
                                area : "Programming Languages and Software engineering",
                                hasPrereq : "N",
                                courseRating : 5
                              },

                                {
                                  courseId : "SWE620",
                                  title : "Software Requirment Analysis and Specification",
                                  category : "Basic",
                                  area : "Programming Languages and Software engineering",
                                  hasPrereq : "N",
                                  courseRating : 4
                                },

                                  {
                                    courseId : "SWE621",
                                    title : "Software Modelling and Architectural Design",
                                    category : "Basic",
                                    area : "Programming Languages and Software engineering",
                                    hasPrereq : "N",
                                    courseRating : 3
                                  },

                                    {
                                      courseId : "SWE622",
                                      title : "Distributed Software Engineering",
                                      category : "Basic",
                                      area : "Programming Languages and Software engineering",
                                      hasPrereq : "N",
                                      courseRating : 3
                                    },

                                    {
                                          courseId : "SWE632",
                                          title : "User Interface Design and Development",
                                          category : "Advanced",
                                          area : "Programming Languages and Software engineering",
                                          hasPrereq : "Y",
                                          courseRating : 4
                                        },

                                          {
                                            courseId : "SWE637",
                                            title : "Software Testing",
                                            category : "Advanced",
                                            area : "Programming Languages and Software engineering",
                                            hasPrereq : "Y",
                                            courseRating : 4
                                          },

                                            {
                                              courseId : "SWE642",
                                              title : "Software engineering for WWW",
                                              category : "Advanced",
                                              area : "Programming Languages and Software engineering",
                                              hasPrereq : "Y",
                                              courseRating : 5
                                            },

                                              {
                                                courseId : "SWE645",
                                                title : "Component Based Software Development",
                                                category : "Advanced",
                                                area : "Programming Languages and Software engineering",
                                                hasPrereq : "Y",
                                                courseRating : 5
                                              },

                                                {
                                                  courseId : "ISA681",
                                                  title : "Secure Software Design",
                                                  category : "Advanced",
                                                  area : "Programming Languages and Software engineering",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },

                                                {
                                                  courseId : "CS531",
                                                  title : "Fundementals Of System Programming",
                                                  category : "Basic",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "N",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS555",
                                                  title : "Computer Communication and Networking",
                                                  category : "Basic",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "N",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS571",
                                                  title : "Operating Systems",
                                                  category : "Basic",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "N",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "ISA562",
                                                  title : "Information Security Theory and Practice",
                                                  category : "Basic",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "N",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "ISA564",
                                                  title : "Security Laboratory",
                                                  category : "Basic",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "N",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS675",
                                                  title : "Distributed Systems",
                                                  category : "Advanced",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS706",
                                                  title : "Concurrent Systems",
                                                  category : "Advanced",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS755",
                                                  title : "Avanced Computer Networks",
                                                  category : "Advanced",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS756",
                                                  title : "Performence Analysis Of Computer Networks",
                                                  category : "Advanced",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS779",
                                                  title : "Topics in resilient and secure computer Systems",
                                                  category : "Advanced",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS788",
                                                  title : "Autonommic Computing",
                                                  category : "Advanced",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "ISA656",
                                                  title : "Network Security",
                                                  category : "Advanced",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "ISA673",
                                                  title : "Operating Systems and Security",
                                                  category : "Advanced",
                                                  area : "Systems and Networks",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS530",
                                                  title : "Mathematical Foundations of Computer Science",
                                                  category : "Basic",
                                                  area : "Theoretical Computer Science",
                                                  hasPrereq : "N",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS583",
                                                  title : "Analysis Of Algorithms",
                                                  category : "Basic",
                                                  area : "Theoretical Computer Science",
                                                  hasPrereq : "N",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS630",
                                                  title : "Advanced Algorithms",
                                                  category : "Advanced",
                                                  area : "Theoretical Computer Science",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS600",
                                                  title : "Theory Of Computation",
                                                  category : "Advanced",
                                                  area : "Theoretical Computer Science",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS551",
                                                  title : "Computer Graphics",
                                                  category : "Basic",
                                                  area : "Visual Computing",
                                                  hasPrereq : "N",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS662",
                                                  title : "Computer Graphics Game Technologies",
                                                  category : "Advanced",
                                                  area : "Visual Computing",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                },
                                                {
                                                  courseId : "CS682",
                                                  title : "Computer Vision",
                                                  category : "Advanced",
                                                  area : "Visual Computing",
                                                  hasPrereq : "Y",
                                                  courseRating : 5
                                                }


    ]

        let $plannedCourses := [
          {
            courseId : "CS530",
            semester : "Fall",
            day : "M",
            professorName: "Brodsky",
            isToBeSubscribed:0
          },
          {
            courseId : "CS787",
            semester : "Fall",
            day : "M",
            professorName: "Brodsky",
              isToBeSubscribed:1
          },
          {
            courseId : "CS550",
            semester : "Fall",
            day : "R",
            professorName: "Motro",
              isToBeSubscribed:0
          },
          {
            courseId : "CS551",
            semester : "Fall",
            day : "R",
            professorName: "Chen J",
              isToBeSubscribed:0
          },
          {
            courseId : "CS555",
            semester : "Fall",
            day : "M",
            professorName: "Pullen",
              isToBeSubscribed:1
          },
          {
            courseId : "CS571",
            semester : "Fall",
            day : "W",
            professorName: "Hakin Aydin",
              isToBeSubscribed:0
          },
          {
            courseId : "CS580",
            semester : "Fall",
            day : "T",
            professorName: "Tecuci",
              isToBeSubscribed:0
          },
          {
            courseId : "CS583",
            semester : "Fall",
            day : "M",
            professorName: "Dana Richards",
              isToBeSubscribed:0
          },
          {
            courseId : "CS583",
            semester : "Fall",
            day : "T",
            professorName: "Fei Li",
              isToBeSubscribed:1
          },
          {
            courseId : "CS584",
            semester : "Fall",
            day : "W",
            professorName: "Wechsler",
              isToBeSubscribed:0
          },
          {
            courseId : "CS600",
            semester : "Fall",
            day : "T",
            professorName: "Gordon",
              isToBeSubscribed:1
          },
          {
            courseId : "CS675",
            semester : "Fall",
            day : "F",
            professorName: "Chen S",
              isToBeSubscribed:0
          },
          {
            courseId : "CS681",
            semester : "Fall",
            day : "M",
            professorName: "Tecuci",
              isToBeSubscribed:0
          },
          {
            courseId : "CS685",
            semester : "Fall",
            day : "M",
            professorName: "Kosecka",
              isToBeSubscribed:0
          },
          {
            courseId : "CS706",
            semester : "Fall",
            day : "R",
            professorName: "Carver",
              isToBeSubscribed:0
          },
          {
            courseId : "CS788",
            semester : "Fall",
            day : "M",
            professorName: "Menasce",
              isToBeSubscribed:0
          },
          {
            courseId : "INFS740",
            semester : "Fall",
            day : "W",
            professorName: "Brodsky",
              isToBeSubscribed:0
          },
          {
            courseId : "CS772",
            semester : "Fall",
            day : "W",
            professorName: "Kerschberg",
              isToBeSubscribed:0
          },
          {
            courseId : "ISA562",
            semester : "Fall",
            day : "T",
            professorName: "Duminda Wijesekera",
              isToBeSubscribed:0
          },
          {
            courseId : "ISA564",
            semester : "Fall",
            day : "T",
            professorName: "Stavrou",
              isToBeSubscribed:0
          },
          {
            courseId : "ISA656",
            semester : "Fall",
            day : "M",
            professorName: "Wang",
              isToBeSubscribed:0
          },
          {
            courseId : "ISA681",
            semester : "Fall",
            day : "W",
            professorName: "Wheeler",
              isToBeSubscribed:1
          },
          {
            courseId : "SWE619",
            semester : "Fall",
            day : "M",
            professorName: "Amman",
              isToBeSubscribed:1
          },
          {
            courseId : "SWE621",
            semester : "Fall",
            day : "W",
            professorName: "Gomaa",
              isToBeSubscribed:0
          },
          {
            courseId : "SWE622",
            semester : "Fall",
            day : "W",
            professorName: "Wheeler",
              isToBeSubscribed:0
          },
          {
            courseId : "SWE632",
            semester : "Fall",
            day : "R",
            professorName: "Latoza",
              isToBeSubscribed:0
          },
          {
            courseId : "SWE642",
            semester : "Fall",
            day : "T",
            professorName: "Dubey",
              isToBeSubscribed:1
          },
          {
            courseId : "SWE645",
            semester : "Fall",
            day : "R",
            professorName: "Dubey",
              isToBeSubscribed:1
          },
          {
            courseId : "CS530",
            semester : "Spring",
            day : "W",
            professorName: "Borovikov",
              isToBeSubscribed:0
          },
          {
            courseId : "CS550",
            semester : "Spring",
            day : "T",
            professorName: "Brodsky",
              isToBeSubscribed:0
          },
          {
            courseId : "CS571",
            semester : "Spring",
            day : "W",
            professorName: "Chen S",
              isToBeSubscribed:0
          },
          {
            courseId : "CS580",
            semester : "Spring",
            day : "W",
            professorName: "Shehu",
              isToBeSubscribed:0
          },
          {
            courseId : "CS583",
            semester : "Spring",
            day : "M",
            professorName: "Dana Richards",
              isToBeSubscribed:0
          },
          {
            courseId : "CS584",
            semester : "Spring",
            day : "T",
            professorName: "Lin",
              isToBeSubscribed:0
          },
          {
            courseId : "CS650",
            semester : "Spring",
            day : "T",
            professorName: "Motro",
              isToBeSubscribed:0
          },
          {
            courseId : "CS682",
            semester : "Spring",
            day : "F",
            professorName: "Wechsler",
              isToBeSubscribed:0
          },
          {
            courseId : "CS687",
            semester : "Spring",
            day : "R",
            professorName: "Luke",
              isToBeSubscribed:0
          },
          {
            courseId : "CS688",
            semester : "Spring",
            day : "M",
            professorName: "Dominiconi",
              isToBeSubscribed:0
          },
          {
            courseId : "CS689",
            semester : "Spring",
            day : "M",
            professorName: "Shehu",
              isToBeSubscribed:0
          },
          {
            courseId : "CS756",
            semester : "Spring",
            day : "F",
            professorName: "Pullen",
              isToBeSubscribed:0
          },
          {
            courseId : "CS779",
            semester : "Spring",
            day : "W",
            professorName: "Sood",
              isToBeSubscribed:0
          },
          {
            courseId : "CS782",
            semester : "Spring",
            day : "W",
            professorName: "Tecuci",
              isToBeSubscribed:0
          },
          {
            courseId : "ISA562",
            semester : "Spring",
            day : "W",
            professorName: "Duminda Wijesekera",
              isToBeSubscribed:0
          },
          {
            courseId : "ISA564",
            semester : "Spring",
            day : "T",
            professorName: "Farley",
              isToBeSubscribed:0
          },
          {
            courseId : "ISA565",
            semester : "Spring",
            day : "R",
            professorName: "Simon",
              isToBeSubscribed:0
          },
          {
            courseId : "ISA673",
            semester : "Spring",
            day : "F",
            professorName: "Wang",
              isToBeSubscribed:0
          },
          {
            courseId : "SWE619",
            semester : "Spring",
            day : "T",
            professorName: "Baldo",
              isToBeSubscribed:0
          },
          {
            courseId : "SWE621",
            semester : "Spring",
            day : "W",
            professorName: "Olimpiew",
              isToBeSubscribed:0
          },
          {
            courseId : "SWE642",
            semester : "Spring",
            day : "T",
            professorName: "Dubey",
              isToBeSubscribed:0
          },
          {
            courseId : "SWE645",
            semester : "Spring",
            day : "R",
            professorName: "Dubey",
              isToBeSubscribed:0
          }

          ]


      let $studentInput := [{
        courseId : "CS650", qualityPoints : 12},
      {courseId : "CS550", qualityPoints : 12}
       ]
  let $history :=[{
    courseId :"CS787",
    semester :"Fall",
    AvgGrade :9,
    prof :"Brodsky"
  },
  {
    courseId :"CS550",
    semester :"Fall",
    AvgGrade :9,
    prof :"Motro"
  },
  {
    courseId :"CS650",
    semester :"Spring",
    AvgGrade :9,
    prof :"Motro"
  },
  {
  courseId :"SWE619",
  semester :"Fall",
  AvgGrade :10,
  prof :"Amman"
    },
    {
    courseId :"ISA681",
    semester :"Fall",
    AvgGrade :10,
    prof :"Wheeler"
      },
      {
      courseId :"SWE642",
      semester :"Spring",
      AvgGrade :10,
      prof :"Dubey"
        },
        {
        courseId :"SWE645",
        semester :"Fall",
        AvgGrade :12,
        prof :"Dubey"
          },
          {
          courseId :"CS555",
          semester :"Fall",
          AvgGrade :10,
          prof :"Pullen"
            },
            {
            courseId :"CS583",
            semester :"Fall",
            AvgGrade :10,
            prof :"Fei Li"
              },
              {
              courseId :"CS600",
              semester :"Spring",
              AvgGrade :10,
              prof :"Gordon"
                }]
    let $studentInterest :=[
    {
      courseId :"CS550",
      interestscale :9
    },

    {
      courseId :"CS580",
      interestscale :8
    },
    {
      courseId :"CS584",
      interestscale :7
    },
    {
      courseId :"INFS623",
      interestscale :6
    },
    {
      courseId :"CS650",
      interestscale :9
    },
    {
      courseId :"CS657",
      interestscale :7
    },
    {
      courseId :"CS667",
      interestscale :5
    },
    {
      courseId :"CS674",
      interestscale :8
    },
    {
      courseId :"CS681",
      interestscale :8
    },
    {
      courseId :"CS685",
      interestscale :6
    },
    {
      courseId :"CS687",
      interestscale :9
    },
    {
      courseId :"CS688",
      interestscale :8
    },
    {
      courseId :"CS689",
      interestscale :6
    },
    {
      courseId :"CS689",
      interestscale :6
    },
    {
      courseId :"CS775",
      interestscale :8
    },
    {
      courseId :"CS782",
      interestscale :9
    },
    {
      courseId :"CS787",
      interestscale :10
    },
    {
      courseId :"CS811",
      interestscale :5
    },
    {
      courseId :"CS880",
      interestscale :5
    },
    {
      courseId :"CS884",
      interestscale :7
    },
    {
      courseId :"INFS740",
      interestscale :10
    },
    {
      courseId :"INFS760",
      interestscale :6
    },
    {
      courseId :"INFS772",
      interestscale :7
    },
    {
      courseId :"INFS774",
      interestscale :9
    },
    {
      courseId :"CS540",
      interestscale :7
    },
    {
      courseId :"SWE619",
      interestscale :9
    },
    {
      courseId :"SWE620",
      interestscale :8
    },
    {
      courseId :"SWE621",
      interestscale :8
    },
    {
      courseId :"SWE622",
      interestscale :6
    },
    {
      courseId :"CS640",
      interestscale :6
    },
    {
      courseId :"ISA681",
      interestscale :9
    },
    {
      courseId :"SWE631",
      interestscale :7
    },
    {
      courseId :"SWE632",
      interestscale :7
    },
    {
      courseId :"SWE637",
      interestscale :6
    },
    {
      courseId :"SWE642",
      interestscale :10
    },
    {
      courseId :"SWE645",
      interestscale :10
    },
    {
      courseId :"SWE721",
      interestscale :6
    },
    {
      courseId :"SWE727",
      interestscale :6
    },
    {
      courseId :"SWE737",
      interestscale :9
    },
    {
      courseId :"SWE760",
      interestscale :7
    },
    {
      courseId :"CS531",
      interestscale :9
    },
    {
      courseId :"CS555",
      interestscale :9
    },
    {
      courseId :"CS571",
      interestscale :7
    },
    {
      courseId :"ISA562",
      interestscale :7
    },
    {
      courseId :"ISA564",
      interestscale :9
    },
    {
      courseId :"CS635",
      interestscale :5
    },
    {
      courseId :"CS658",
      interestscale :5
    },
    {
      courseId :"CS672",
      interestscale :6
    },
    {
      courseId :"CS673",
      interestscale :6
    },
    {
      courseId :"CS675",
      interestscale :8
    },
    {
      courseId :"CS706",
      interestscale :8
    },
    {
      courseId :"CS719",
      interestscale :4
    },
    {
      courseId :"CS755",
      interestscale :9
    },
    {
      courseId :"CS756",
      interestscale :6
    },
    {
      courseId :"CS773",
      interestscale :6
    },
    {
      courseId :"CS788",
      interestscale :4
    },
    {
      courseId :"CS818",
      interestscale :4
    },
    {
      courseId :"ISA656",
      interestscale :8
    },
    {
      courseId :"ISA673",
      interestscale :8
    },
    {
      courseId :"ISA674",
      interestscale :6
    },
    {
      courseId :"ISA697",
      interestscale :7
    },
    {
      courseId :"ISA763",
      interestscale :5
    },
    {
      courseId :"ISA764",
      interestscale :5
    },
    {
      courseId :"ISA785",
      interestscale :4
    },
    {
      courseId :"CS530",
      interestscale :8
    },
    {
      courseId :"CS583",
      interestscale :10
    },
    {
      courseId :"CS600",
      interestscale :8
    },
    {
      courseId :"CS611",
      interestscale :4
    },
    {
      courseId :"CS630",
      interestscale :6
    },
    {
      courseId :"CS633",
      interestscale :4
    },
    {
      courseId :"CS683",
      interestscale :6
    },
    {
      courseId :"CS684",
      interestscale :6
    },
    {
      courseId :"CS551",
      interestscale :8
    },
    {
      courseId :"CS662",
      interestscale :5
    },
    {
      courseId :"CS667",
      interestscale :9
    },
    {
      courseId :"CS682",
      interestscale :8
    },
    {
      courseId :"CS686",
      interestscale :7
    },
    {
      courseId :"CS752",
      interestscale :6
    },
    {
      courseId :"CS774",
      interestscale :6
    },
    {
      courseId :"CS777",
      interestscale :8
    },
    {
      courseId :"CS884",
      interestscale :4
    }
      ]

      let $professorRatingData := [
        {
          professorName:"Brodsky",
          professorRating:9
        },
        {
          professorName:"Motro",
          professorRating:10
        },
        {
          professorName:"Chen J",
          professorRating:8
        },
        {
          professorName:"Pullen",
          professorRating:9
        },
        {
          professorName:"Hakin Aydin",
          professorRating:8
        },
        {
          professorName:"Tecuci",
          professorRating:9
        },
        {
          professorName:"Dana Richards",
          professorRating:10
        },
        {
          professorName:"Fei Li",
          professorRating:9
        },
        {
          professorName:"Wechsler",
          professorRating:8
        },
        {
          professorName:"Gordon",
          professorRating:8
        },
        {
          professorName:"Chen S",
          professorRating:10
        },
        {
          professorName:"Kosecka",
          professorRating:9
        },
        {
          professorName:"Carver",
          professorRating:10
        },
        {
          professorName:"Menasce",
          professorRating:8
        },
        {
          professorName:"Kerschberg",
          professorRating:9
        },
        {
          professorName:"Duminda Wijesekera",
          professorRating:10
        },
        {
          professorName:"Stavrou",
          professorRating:8
        },
        {
          professorName:"Wang",
          professorRating:9
        },
        {
          professorName:"Wheeler",
          professorRating:10
        },
        {
          professorName:"Baldo",
          professorRating:9
        },
        {
          professorName:"Amman",
          professorRating:9
        },
        {
          professorName:"Gomma",
          professorRating:9
        },
        {
          professorName:"Dubey",
          professorRating:10
        },
        {
          professorName:"Latoza",
          professorRating:7
        },
        {
          professorName:"Borovikov",
          professorRating:7
        },
        {
          professorName:"Shehu",
          professorRating:9
        },
        {
          professorName:"Lin",
          professorRating:7
        },
        {
          professorName:"Luke",
          professorRating:6
        },
        {
          professorName:"Dominiconi",
          professorRating:6
        },
        {
          professorName:"Sood",
          professorRating:6
        },
        {
          professorName:"Simon",
          professorRating:9
        },
        {
          professorName:"Olimpiew",
          professorRating:10
        }


          ]


          let $prereqCourses := [
                      {
                        courseId : "CS650",
                        prereqs :
                        [
                          {preCourse : "CS550", reqQualityPoints : 9}
                        ]
                      },
                      {
                        courseId : "CS682",
                        prereqs :
                        [
                          {preCourse : "CS550", reqQualityPoints : 9},
                          {preCourse : "CS580", reqQualityPoints : 8},
                          {preCourse : "CS583", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS687",
                        prereqs :
                        [
                          {preCourse : "CS580", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS688",
                        prereqs :
                        [
                          {preCourse : "CS580", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS689",
                        prereqs :
                        [
                          {preCourse : "CS583", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS756",
                        prereqs :
                        [
                          {preCourse : "CS555", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS779",
                        prereqs :
                        [
                          {preCourse : "CS555", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS782",
                        prereqs :
                        [
                          {preCourse : "CS580", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "ISA656",
                        prereqs :
                        [
                          {preCourse : "CS555", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "ISA673",
                        prereqs :
                        [
                          {preCourse : "CS571", reqQualityPoints : 8},
                          {preCourse : "ISA562", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "SWE642",
                        prereqs :
                        [
                          {preCourse : "SWE619", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "SWE645",
                        prereqs :
                        [
                          {preCourse : "SWE619", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS600",
                        prereqs :
                        [
                          {preCourse : "CS583", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS675",
                        prereqs :
                        [
                          {preCourse : "CS571", reqQualityPoints : 8}
                        ]
                      },{
                        courseId : "CS681",
                        prereqs :
                        [
                          {preCourse : "CS580", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS685",
                        prereqs :
                        [
                          {preCourse : "CS580", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS706",
                        prereqs :
                        [
                          {preCourse : "CS571", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS787",
                        prereqs :
                        [
                          {preCourse : "CS550", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "CS788",
                        prereqs :
                        [
                          {preCourse : "CS555", reqQualityPoints : 8},
                          {preCourse : "CS571", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "INFS740",
                        prereqs :
                        [
                          {preCourse : "CS550", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "INFS772",
                        prereqs :
                        [
                          {preCourse : "CS550", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "ISA656",
                        prereqs :
                        [
                          {preCourse : "CS555", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "ISA681",
                        prereqs :
                        [
                          {preCourse : "SWE619", reqQualityPoints : 8}
                        ]
                      },
                      {
                        courseId : "SWE632",
                        prereqs :
                        [
                          {preCourse : "SWE619", reqQualityPoints : 8}
                        ]
                      }



                    ]


let $firstOutput:= ns:courseAnalytics({courseCatalog: $courseCatalog, plannedCourses: $plannedCourses, prereqCourses: $prereqCourses, studentInput: $studentInput, history: $history, studentInterest: $studentInterest, noOfCourses:3, professorRatingData:$professorRatingData})

(:
$planOfStudy1:= {courseCatalog: $courseCatalog, plannedCourses: $plannedCourses, prereqCourses: $prereqCourses, studentInput: $studentInput, history: $history, studentInterest: $studentInterest, noOfCourses:3, professorRatingData:$professorRatingData}

$planOfStudy2:= {courseCatalog: $courseCatalog, plannedCourses: $plannedCourses, prereqCourses: $prereqCourses, studentInput: $studentInput, history: $history, studentInterest: $studentInterest, noOfCourses:3, professorRatingData:$professorRatingData}

$planOfStudy3:= {courseCatalog: $courseCatalog, plannedCourses: $plannedCourses, prereqCourses: $prereqCourses, studentInput: $studentInput, history: $history, studentInterest: $studentInterest, noOfCourses:3, professorRatingData:$professorRatingData}


let $firstOutput1:= dgal:argmax({
    planOfStudy: $planOfStudy1,
    ns: "http://cs.gmu.edu/dgal/orderAnalytics.jq",
    analytics: "courseAnalytics",
    objective: "UF1"
  })

let $secondOutput1 := my:semesterScheduling($planOfStudy1)


let $firstOutput2:= dgal:argmax({
    planOfStudy: $planOfStudy2,
    ns: "http://cs.gmu.edu/dgal/orderAnalytics.jq",
    analytics: "courseAnalytics",
    objective: "UF2"
  })

let $secondOutput2 := my:semesterScheduling($planOfStudy2)

let $firstOutput3:= dgal:argmax({
    planOfStudy: $planOfStudy3,
    ns: "http://cs.gmu.edu/dgal/orderAnalytics.jq",
    analytics: "courseAnalytics",
    objective: "UF3"
  })

let $secondOutput3 := my:semesterScheduling($planOfStudy3)


return { "First Recommendation" : ($secondOutput1,$firstOutput1),
          "Second Recommendation" : ($secondOutput2, $firstOutput2),
        "Third Recommendation" : ($secondOutput3, $firstOutput3)
      }


  :)

let $secondOutput := my:semesterScheduling({courseCatalog: $courseCatalog, plannedCourses: $plannedCourses, prereqCourses: $prereqCourses, studentInput: $studentInput, history: $history, studentInterest: $studentInterest, noOfCourses:3, professorRatingData:$professorRatingData})




return ($secondOutput,$firstOutput)
