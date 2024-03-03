<script>
    export default {
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
            <ul>
                <li>par privatizer</li>
                <li>par email</li>
                <li>par telephone</li>
            </ul>

            <h2>Où nous trouver?</h2>
            <p>64 Rue Jean-Jacques Rousseau, 75001 Paris, France</p>
            <i class="fas fa-heart"></i>
        </div>
    </div>
</template>

<style scoped>

.container{
    width: 100%;
    display: flex;
    justify-content: space-around;
    margin-bottom: 2em;
}

.day{
    padding-right: 2em;
}

</style>
