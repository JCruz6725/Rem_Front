<template>
  <div class="FrontCom">
    <div class="container py-4">
      <div class="p-5 mb-4 bg-light border rounded-3">
        <div class="container-fluid">
          <h1 class="display-5 fw-bold">{{ person.full_name }} | {{resume.title}} | {{person.location}}</h1>
          <p>{{ resume.summary }}</p>
          <div class="container rounded">
            <div class="row">
              <div class="col border"> {{resume.skills}} </div>
              <div class="col border"> {{resume.related_courses}} </div>
              <div class="col border"> asdfasdf </div>
            </div>
          </div>
          <button class="btn btn-primary btn-lg" type="button"> programmeing skills????? </button>
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
            <button class="btn btn-primary btn-lg" type="button">eCommerce store</button>
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