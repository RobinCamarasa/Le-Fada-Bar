<script>
    export default {
        data(){
            return {
                current_menu: 0
            }
        },
        methods: {
            next() {
                var size = this.dashboard.menu.length;
                this.current_menu = (this.current_menu + 1) % size;
            },
            previous() {
                var size = this.dashboard.menu.length;
                this.current_menu = (this.current_menu + size - 1) % size;
            }
        },
        props: ['dashboard']
    }
</script>

<template>
    <hr>
    <div class="container" v-if="dashboard">
        <div><a @click="previous">&lt;</a></div>
        <div>
            <div>
                <h2>{{ dashboard.menu[current_menu].category }}</h2>
                <table>
                    <thead>
                        <th v-for="head in dashboard.menu[current_menu].header">
                            {{ head }}
                        </th>
                    </thead>
                    <tr v-for="line in dashboard.menu[current_menu].content">
                        <td v-for="cell in line">
                            <div v-if="cell == ''">/</div>
                            <div v-else>{{ cell }}</div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div><a @click="next">&gt;</a></div>
    </div>
</template>

<style scoped>

.container{
    width: 100%;
    margin-bottom: 2em;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
}

a { cursor: pointer; }

td,th {
    padding-left: 1em;
}

</style>
