<template>
  <div class="FrontCom">
    
      <div class="container p-5 mb-4 bg-light border rounded-3">
        <div class="container-fluid">
          <h2 class="fw-bold">{{ person.full_name }} | {{resume.title}} | {{person.location}}</h2>
          <p class="container rounded">{{ resume.summary }}</p>

    <div class="container py-3">
      <p class="fw-bold text-start border-bottom  ">Education Background</p>
      <div class="container-lg  rounded-3">
        
          <div v-for ="(e, i) in education" :key="i" class="container-fluid">
            <h4> {{e.institution_name}} | {{e.location}} | {{e.time_at}} </h4>
            <h5> {{e.degree}} </h5>
            </div>
        
      </div>
    </div>


  <div class="container ">
  <p class="fw-bold text-start border-bottom">Skills</p>

            <div class="container py-3 bg rounded">
              <div class="row fw-bold">Known Programming Languages:
                <div class="col fw-normal">{{resume.programming_skills}}</div>
              </div>
              <div class="row fw-bold"> Courses Taken:
                <div class="col fw-normal"> {{resume.related_courses}} </div>
              </div>
              <div class="row fw-bold"> Office Tools:
                <div class="col fw-normal"> {{resume.office_tools}} </div>
              </div>
                <div class="row fw-bold"> Tech tools: 
                  <div class="col fw-normal"> {{resume.industry_tools}} </div>
                </div>
              </div>

</div>


            </div>
        </div>









    <div class="container">
      <p class="fw-bold text-start border-bottom">Professional Work History</p>
      <div class="container-lg">
        <div v-for="(p, i) in professionals" :key="i">
          <div class="p-5 mb-4 bg-light border rounded-3">
            <div class="container-fluid py-5"> 
            <h4 class="display-10 fw-bold"> {{ p.employer_name }} | {{ p.position }} | {{p.title_of_project}} | {{ p.time_at }} </h4>
            <p> {{ p.summary }} </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div v-for="(p, i) in projects" :key="i" class="container-fluid bg-secondary bg-opacity-50">
      <div class="row justify-content-center p-1">
          <div class="col-md-6 t-5 b-5">
            <div class=" p-5 text-dark bg-light border rounded-3">
              <h4>{{p.project_name}} | {{p.tech_used}} </h4>
              <p> {{ p.summary }} </p>
              <button class="btn btn-outline-primary" type="button"> {{p.project_name}} </button>
            </div>
          </div>
      </div>
    </div>
  </div>








</template>



<script>

import axios from 'axios'

export default {
  name: 'FrontCom',

  data() {
    return{ 
      person: [],
      resume: [],
      projects: [],
      professionals: [],
      education: [],
    } 
  },


  
  mounted() {
    axios
      .get('https://calm-meadow-27583.herokuapp.com/api/person/1')
      .then((response) => {
        this.person = response.data
        this.resume = response.data.resume[0]
        this.education = response.data.education
        this.projects = response.data.project
        this.professionals = response.data.professional
        //console.log(response)
      })
  },
}





</script>