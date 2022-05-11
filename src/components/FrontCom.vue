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

}

const person = null


async function fetchData() {
  person.value = null
  const res = await fetch(
    `https://calm-meadow-27583.herokuapp.com/api/person/`
  )
  person.value = await res.json()
}

fetchData()





</script>