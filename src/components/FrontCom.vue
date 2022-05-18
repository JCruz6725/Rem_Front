<template>
  <div class="FrontCom">
    <div class="container py-4">
      <div class="p-5 mb-4 bg-light rounded-3">
        <div class="container-fluid py-5">
          <h1 class="display-5 fw-bold">{{ person.full_name }} | {{person.location}}</h1>
          <p class="col-md-8 fs-4">{{ resume.summary }}</p>
          <button class="btn btn-primary btn-lg" type="button"> programmeing skills????? </button>
        </div>
      </div>
    </div>

    <div class="container py-4">
      <div v-for="(p, i) in professionals" :key="i">
        <div class="p-5 mb-4 bg-light rounded-3">
          <div class="container-fluid py-5"> 
          <h4 class="display-10 fw-bold"> {{ p.employer_name }} | {{ p.position }} | {{p.title_of_project}} | {{ p.time_at }} </h4>
          <p> {{ p.summary }} </p>
          <button class="btn btn-primary btn-lg" type="button">eCommerce store</button>
          </div>
        </div>
      </div>
    </div>






<div class="container">
  <div class="row align-items-md-stretch">
      <div v-for="(p, i) in projects" :key="i" class="col-md-6">
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
//import { response } from 'express'



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
      .get('http://calm-meadow-27583.herokuapp.com/api/person/1')
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