<script>
import LogoLink from './LogoLink.vue'
export default {
    components: { LogoLink }
}
</script>

<template>
    <hr>
    <footer>
        <div>
            <h3>Le Fada © BAMSE 2024</h3>
            <div>Bar - restaurant</div>
            <LogoLink displayed="64 Rue Jean-Jacques Rousseau, 75001 Paris, France"
                address="https://maps.app.goo.gl/du8wNHpY7ujomvC36" logo="maps" />
            <LogoLink displayed="+33 6 12 34 56 78" address="telto:+33612345678" logo="phone" />
        </div>
    </footer>
</template>

<style scoped>
footer {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding-bottom: 2em;
}

.container {
    width: 100%;
    display: flex;
    justify-content: space-around;
    padding: 1em;
}

.day {
    padding-right: 2em;
}

hr {
    height: 3px;
}
</style>
