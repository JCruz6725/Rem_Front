<template>


  <HeaderCom />
  <ResumeComp />

  <FooterCom />


</template>

<script>
//import HelloWorld from './components/HelloWorld.vue'
import HeaderCom from './components/HeaderCom.vue';
//import FrontCom from './components/FrontCom.vue';
import FooterCom from './components/FooterCom.vue';
//import ColBut from "./components/extras/ColBut.vue";
import ResumeComp from "./components/extras/ResumeComp.vue";





export default {
  name: 'App',
  components: {
    HeaderCom,
    //FrontCom,
    ResumeComp,
    FooterCom,
    //ColBut


  },
  data() {
    return {
      k: "HERE",
      g: "here"
    }
  }
}
</script>