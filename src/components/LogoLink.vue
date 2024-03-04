<script>
    export default {
        props: { 
            displayed: {
                type: String
            }, 
            address: {
                type: String
            },
            logo: {
                type: String,
                default: "maps"
            }
        },
    }
</script>

<template>
    <div style="cursor: pointer;"><a :href="address"><img height="15px" style="margin-right: 0.2em" :src="'/icons/' + logo + '.svg'" alt="">{{ displayed }}</a></div>

</template>

<style scoped>

a { cursor: pointer; }

</style>
