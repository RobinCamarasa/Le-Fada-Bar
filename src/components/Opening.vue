<script>
    import LogoLink from './LogoLink.vue'
    export default {
        components: {LogoLink},
        props: ['dashboard']
    }
</script>

<template>
    <hr>
    <div class="container">
        <div>
            <h2> Horaires </h2>
            <p v-if="dashboard"><strong>{{ dashboard.opening.message }}</strong></p>
            <table v-if="dashboard">
                <tr v-for="time in dashboard.opening.times">
                    <td class="day">{{ time[0] }}</td>
                    <td>{{ time[1] }} - {{ time[2] }}</td>
                </tr>
            </table>
        </div>
        <div>
            <h2>Reservation</h2>
            <LogoLink displayed="Privateaser" address="https://www.privateaser.com/lieu/38031-fada" logo="privateaser"/>
            <LogoLink displayed="test@gmail.com" address="mailto:test@gmail.com" logo="mail"/>
            <LogoLink displayed="+33 6 12 34 56 78" address="telto:+33612345678" logo="phone"/>
        </div>
        <div>
            <h2>Où nous trouver?</h2>
            <LogoLink displayed="64 Rue Jean-Jacques Rousseau, 75001 Paris, France" address="https://maps.app.goo.gl/du8wNHpY7ujomvC36"/>
        </div>
    </div>
</template>

<style scoped>

.container{
    width: 100%;
    display: flex;
    justify-content: space-between;
    margin-bottom: 2em;
}

.day{
    padding-right: 2em;
}

</style>
