<template>
  <div class="FrontCom">
    <div v-if="loaded">





      <div class="container p-5 mb-4 bg-light border rounded-3">
        <div class="container-fluid">
          <h2 class="fw-bold">{{ person.full_name }} | {{resume.title}} | {{person.location}}</h2>
          <p class="container rounded">{{ resume.summary }}</p>

      <div class="container py-3">
        
        <div class="fw-bold text-start border-bottom ">Education Background  </div>

        
        <div class="container-lg  rounded-3">
          
            <div v-for ="(e, i) in education" :key="i" class="container-fluid">
              <h4> {{e.institution_name}} | {{e.location}} | {{e.time_at}} </h4>
              <h5> {{e.degree}} </h5>
              </div>
          <div v-if="is_auth"> <button class="btn btn-outline-info ">+</button> <!--   need logic for auth   --> </div>
        
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

    <div v-if="is_auth">

            <div class="p-5 mb-4 bg-light border rounded-3">
            <div class="container"> 
            <h4 class="display-10 fw-bold"> Add Work Hist </h4>
            <button @click="add_to_professional" class="btn btn-outline-info ">+</button> <!--   need logic for auth   -->
            </div>
          </div>

    </div>


    </div>

    
    
<div class="container">
<p class="fw-bold text-start border-bottom"> Projects </p>
    <div v-for="(p, i) in projects" :key="i" class="">
      <div class="row justify-content-center p-1">
          <div class="col-md-6 t-5 b-5">
            <div class=" p-5 text-dark bg-light border rounded-3">
              <h4>{{p.project_name}} | {{p.tech_used}} </h4>
              <p> {{ p.summary }} </p>

              <!--     fix this button       -->

              <button class="btn btn-outline-primary" type="button" onclick="window.open({{ p.external_link }})"> {{p.project_name}} </button>
            </div>
          </div>
      </div>
    </div>
</div>


<div v-if="is_auth"> 
<div class="row justify-content-center p-1">
          <div class="col-md-6 t-5 b-5">
            <div class=" p-5 text-dark bg-light border rounded-3">
              <h4> Add New Project</h4>
              <button @click="add_to_project" class="btn btn-outline-info " >+</button> 
            </div>
          </div>
      </div>
</div>
<!--  Contact Me  -->

  <div class="container py-4" id="contact_me_info">

    <div class=" contianer border bg-light rounded">
      <h1> Contact </h1>
    <div>
      <p> {{person.full_name}} </p>
      <p> Aspiring {{ resume.title }} </p>
      <p> Email - {{person.email}} </p>
      
    </div>
    </div>
  </div>
  </div>

<div v-else>
  <div class="spinner-border text-secondary" role="status">
    <span class="visually-hidden">Loading...</span>
  </div>
</div>


</div>


</template>



<script>

import axios from 'axios'

var loaded = false
var is_auth = false
var url_backend = "https://calm-meadow-27583.herokuapp.com/"


export default {
  name: 'FrontCom',

  data() {
    return{ 
      person: [],
      resume: [],
      projects: [],
      professionals: [],
      education: [],
      loaded: loaded,
      is_auth: is_auth
    } 
  },


  
  mounted() {
    axios
      .get(url_backend+'profile/john.cruz6725@gmail.com/')
      .then((response) => {
        this.person = response.data
        this.resume = response.data.resume[0]
        this.education = response.data.education
        this.projects = response.data.project
        this.professionals = response.data.professional
        
        if(this.person!== null){
          this.loaded =  true
        }





        //console.log(response)
      })
  },
  
  methods: {
    add_to_project(){
      this.projects.push( {project_name:" asd", tech_used: " asd", summary: " dd", }  )
},

/// this is what we will use to post
    add_to_project222(){
      axios
        .post()
        .then((response) => {
          console.log(response)

        })
  
      
    },

    add_to_professional(){
      this.professionals.push( {employer_name:" asd", position: " asd", title_of_project: " dd", time_at: " dd", summary: " dd", }  )


    },

    save(){

    }


  }

}





</script>