<template>


  <HeaderCom />
  <ResumeComp :data="rem" />

  <FooterCom />


</template>

<script>
//import HelloWorld from './components/HelloWorld.vue'
import HeaderCom from './components/HeaderCom.vue';
//import FrontCom from './components/FrontCom.vue';
import FooterCom from './components/FooterCom.vue';
//import ColBut from "./components/extras/ColBut.vue";
import ResumeComp from "./components/extras/ResumeComp.vue";


let testProp =
{
  account_email: "john.cruz6725@gmail.com",
  title: "Software Engineer",
  summary: "Recent bachelor's in computer science and mathematics minor graduate eager to start my career as a Software Developer. Demonstrated high proficiency in Python, as well as programming in C and C++, C#, and Java through several projects. Ability to apply technical knowledge and programming techniques to a wide letiety of languages.",

  s: {
    programming_skills: { tit: "Programming Skill", s: "Python3, C, C++, C#, Java, PHP, Javascript, Microsoft SQL, MySQL, Postgres" },
    industry_tools: { tit: "Industry Tools", s: "Digital Ocean (Like AWS s3 and Database), Heroku, Nelify, Putty, Git, Linux" },
    office_tools: { tit: "Office Tools", s: "Microsoft (MS) Office - Word, Excel, Publisher, PowerPoint, OneNote" },
    related_course: { tit: "Related Courses", s: "Software Engineering, Database Systems, Network Security, Computer Network and Architecture" },
  },
}


let account = {
  accout_email: "john.cruz6725@gmail.com"
}

let main_model = {
  title: "Software Engineer",
  summary: "Recent bachelor's in computer science and mathematics minor graduate eager to start my career as a Software Developer. Demonstrated high proficiency in Python, as well as programming in C and C++, C#, and Java through several projects. Ability to apply technical knowledge and programming techniques to a wide letiety of languages.",
}

let tools = {
  tool: "some tool",
  catagory: "some cata",
}

let exp = {
  tools_used: "asdf",
  catagory: "asdasd"
}



export default {
  name: 'App',
  components: {
    HeaderCom,
    ResumeComp,
    FooterCom,
    //ColBut


  },
  data() {
    return {
      rem: testProp,

    }
  }
}
</script>