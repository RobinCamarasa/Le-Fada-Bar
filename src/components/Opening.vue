<script setup>
</script>

<template>
    <div class="container">
        <div>
            <h2> Horaires </h2>
        </div>
        <div>
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
            </table>
        </div>
    </div>
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
