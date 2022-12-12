<template>
    <div class="ColBut">
        <p>
            <button class="btn btn-primary collapsed" type="button" data-bs-toggle="collapse"
                data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                {{ title }}
            </button>
        </p>
        <div class="collapse" id="collapseExample" style="">
            <div class="card card-body">
                {{ other }}
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props: {
        title: String,
        other: String,
    }
}
</script>