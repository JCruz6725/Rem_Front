<template>
  <div class="FooterCom">
    <div class="container">
      <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
        </ul>
        <p class="text-center text-muted">&copy; 2021 Company, Inc</p>
      </footer>
    </div>
  </div>
</template>



<script>
import axios from 'axios'




export default {
  name: 'FooterCom',
  mounted() {
    axios
      .get('https://calm-meadow-27583.herokuapp.com/api/person/')
      .then((response) => {
        console.log(response)
      })
  }


}
</script>