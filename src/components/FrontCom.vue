<template>
  <div class="FrontCom">
    <div v-if="loaded">
      <div class="container">
        <p class="fw-bold text-start border-bottom"><b> Resume </b></p>
        <div class="container p-3 bg-light border rounded">
          <div class="row">
            <p class="fw-bold text-start border-bottom"> <b> {{ title }} </b> </p>
            <p>{{ summary }}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>



<script>

export default {
  name: 'FrontCom',

  data() {
    return {

    }
  },

  // import axios from 'axios'

  // let loaded = false
  // let is_auth = false
  // let url_backend = "https://calm-meadow-27583.herokuapp.com/"

  // let btnNames =
  // {
  //   Names: ["languages", "tools"]
  // }

  // let testProp =
  // {
  //   account_email: "john.cruz6725@gmail.com",
  //   title: "Software Engineer",
  //   summary: "Recent bachelor's in computer science and mathematics minor graduate eager to start my career as a Software Developer. Demonstrated high proficiency in Python, as well as programming in C and C++, C#, and Java through several projects. Ability to apply technical knowledge and programming techniques to a wide letiety of languages.",

  //   s: {
  //     programming_skills: { tit: "Programming Skill", s: "Python3, C, C++, C#, Java, PHP, Javascript, Microsoft SQL, MySQL, Postgres" },
  //     industry_tools: { tit: "Programming Skill", s: "Digital Ocean (Like AWS s3 and Database), Heroku, Nelify, Putty, Git, Linux" },
  //     office_tools: { tit: "Programming Skill", s: "Microsoft (MS) Office - Word, Excel, Publisher, PowerPoint, OneNote" },
  //     related_course: { tit: "Programming Skill", s: "Software Engineering, Database Systems, Network Security, Computer Network and Architecture" },
  //   },
  // }

  // export default {
  //   name: 'FrontCom',

  //   data() {
  //     return {
  //       person: [],
  //       resume: [],
  //       projects: [],
  //       professionals: [],
  //       education: [],
  //       testProp,
  //       btnNames,

  //       loaded: loaded,
  //       is_auth: is_auth
  //     }
  //   },



  //   mounted() {
  //     axios
  //       .get(url_backend + 'profile/john.cruz6725@gmail.com/')
  //       .then((response) => {
  //         this.person = response.data
  //         this.resume = response.data.resume[0]
  //         this.education = response.data.education
  //         this.projects = response.data.project
  //         this.professionals = response.data.professional

  //         if (this.person !== null) {
  //           this.loaded = true
  //         }





  //         //console.log(response)
  //       })
  //   },



  /// this is what we will use to post







}





</script>