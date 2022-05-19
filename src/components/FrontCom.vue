<template>
  <div class="FrontCom">
    <div class="container py-4">
      <div class="p-5 mb-4 bg-light border rounded-3">
        <div class="container-fluid">
          <h2 class="fw-bold">{{ person.full_name }} | {{resume.title}} | {{person.location}}</h2>
          <p class="container border rounded">{{ resume.summary }}</p>
            <div class="container border rounded">
              <div class="row">programming lang:
                <div class="col border">{{resume.programming_skills}}</div>
              </div>
              <div class="row"> related_courses:
                <div class="col border"> {{resume.related_courses}} </div>
              </div>
              <div class="row"> misc_tools:
                <div class="col border"> {{resume.office_tools}} </div>
              </div>
                <div class="row"> programming tools: 
                  <div class="col border"> {{resume.industry_tools}} </div>
                </div>
              </div>
            </div>
        </div>
      </div>



    <div class="container ">
      <p class="fw-bold text-start border-bottom">Eduaction Background</p>
      <div class="container-lg">
        <div class="p-5 mb-4 bg-light border rounded-3">
          <div v-for ="(e, i) in education" :key="i" class="container-fluid border">
            <h4> {{e.institution_name}} | {{e.location}} | {{e.time_at}} </h4>
            <h5> {{e.degree}} </h5>
            </div>
        </div>
      </div>
    </div>




   
    <div class="container ">
      <p class="fw-bold text-start border-bottom">Professional Work History</p>
      <div class="container-lg">
        <div v-for="(p, i) in professionals" :key="i">
          <div class="p-3 mb-4 bg-light border rounded">
            <div class="container-fluid py-5"> 
            <h4 class="display-10 fw-bold"> {{ p.employer_name }} | {{ p.position }} | {{p.title_of_project}} | {{ p.time_at }} </h4>
            <p> {{ p.summary }} </p>
            <button class="btn btn-outline-primary btn-lg" type="button">eCommerce store</button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div v-for="(p, i) in projects" :key="i" class="container-fluid bg-secondary">
      <div class="row justify-content-center p-1">
          <div class="col-md-6 t-5 b-5">
            <div class=" p-5 text-dark bg-light border rounded-3">
              <h4>{{p.project_name}} | {{p.tech_used}} </h4>
              <p> {{ p.summary }} </p>
              <button class="btn btn-outline-primary" type="button">GitHub</button>
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