<script>
import LogoLink from './LogoLink.vue'
export default {
    components: { LogoLink },
    props: ['dashboard']
}
</script>

<template>
    <hr>
    <div style="display: flex; justify-content: center; align-items: center">
        <h2>Informations</h2>
    </div>
    <div class="container">
        <div>
            <p v-if="dashboard.opening.message != ''"><strong>{{ dashboard.opening.message }}</strong></p>
            <table v-if="dashboard">
                <thead>
                    <th></th>
                    <th align="left">Horaires d'ouverture</th>
                </thead>
                <tbody>
                    <tr v-for="time in dashboard.opening.times">
                        <td class="day">{{ time[0] }}</td>
                        <td align="left">{{ time[1] }} - {{ time[2] }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
            <iframe class="frame"
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.6951392572546!2d2.3440136!3d48.864023499999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66fcb46714f95%3A0xf1b183cbdf0c8ac4!2sFada!5e0!3m2!1sfr!2snl!4v1709486153194!5m2!1sfr!2snl"
                allowfullscreen="" loading="async" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <!-- <div> -->
        <!--     <h3>Réservations</h3> -->
        <!--     <LogoLink displayed="Privateaser" address="https://www.privateaser.com/lieu/38031-fada" -->
        <!--         logo="privateaser" /> -->
        <!--     <LogoLink displayed="test@gmail.com" address="mailto:test@gmail.com" logo="mail" /> -->
        <!--     <LogoLink displayed="+33 6 12 34 56 78" address="telto:+33612345678" logo="phone" /> -->
        <!-- </div> -->
    </div>
</template>

<style scoped>
.container {
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    margin-bottom: 2em;
    align-items: center;
}

.container>div {
    justify-content: center;
    align-items: center;
    width: 100%;
}

.day {
    padding-right: 2em;
}

iframe {
    width: 100%;
    aspect-ratio: 16/9;
}

tbody {
    padding: 0;
    /* border-bottom: solid 2px; */
}

@media (min-width: 990px) {
    .container {
        flex-direction: row;
    }

    .container>div {
        width: 45%;
    }
}
</style>
