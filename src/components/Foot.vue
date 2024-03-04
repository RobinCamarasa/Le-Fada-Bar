<script>
    import LogoLink from './LogoLink.vue'
    export default {
        components: {LogoLink}
    }
</script>

<template>
    <hr>
    <h1>Le Fada</h1>
    <div>Bar - restaurant</div>
    <LogoLink displayed="64 Rue Jean-Jacques Rousseau, 75001 Paris, France" address="https://maps.app.goo.gl/du8wNHpY7ujomvC36" logo="maps"/>
    <LogoLink displayed="+33 6 12 34 56 78" address="telto:+33612345678" logo="phone"/>
</template>

<style scoped>

.container{
    width: 100%;
    display: flex;
    justify-content: space-around;
}

.day{
    padding-right: 2em;
}

</style>
