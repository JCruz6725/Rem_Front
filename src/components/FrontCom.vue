<template>
  <div class="FrontCom">
    <div class="container">
      <div class="container">
        <div class="row">
          <div class="col">
            Column
          </div>
          <div class="col">
            Column
          </div>
          <div class="col">
            Column
          </div>
        </div>
      </div>
    </div>
  </div>
</template>



<script>

export default {
  name: 'FrontCom',
  mounted() {
    axios
      .get('https://calm-meadow-27583.herokuapp.com/api/person/')
      .then((response) => {
        console.log(response)
      })
  }




}





</script>