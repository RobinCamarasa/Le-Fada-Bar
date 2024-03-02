<script setup>
</script>

<template>
    <hr>
    <div class="container">
        <div>
            <h2> Horaires </h2>
            <table>
                <tr>
                    <td class="day">Lundi</td>
                    <td>18:00 - 02:00</td>
                </tr>
                <tr>
                    <td class="day">Mardi</td>
                    <td>18:00 - 02:00</td>
                </tr>
                <tr>
                    <td class="day">Mercredi</td>
                    <td>18:00 - 02:00</td>
                </tr>
                <tr>
                    <td class="day">Jeudi</td>
                    <td>18:00 - 02:00</td>
                </tr>
                <tr>
                    <td class="day">Vendredi</td>
                    <td>18:00 - 02:00</td>
                </tr>
                <tr>
                    <td class="day">Samedi</td>
                    <td>18:00 - 02:00</td>
                </tr>
                <tr>
                    <td class="day">Dimanche</td>
                    <td>18:00 - 02:00</td>
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
