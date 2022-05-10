<template>

  <HeaderCom/>
  <FrontCom/>
  <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> --> 

  <FooterCom/>

 
</template>

<script>
//import HelloWorld from './components/HelloWorld.vue'
import HeaderCom from './components/HeaderCom.vue'
import FrontCom from './components/FrontCom.vue'
import FooterCom from './components/FooterCom.vue'

export default {
  name: 'App',
  components: {
    //HelloWorld,
    HeaderCom,
    FrontCom,
    FooterCom
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
