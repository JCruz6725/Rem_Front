<template>
    <div class="ResumeComp">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p><b>{{ data.title }}</b></p>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p>{{ data.summary }}</p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name: "ResumeComp",
    props: {
        data: {
            type: Object
        }
    },
}
</script>