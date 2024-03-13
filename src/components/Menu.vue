<script>
export default {
    data() {
        return {
            current_menu: 0,
            is_shown: false
        }
    },
    methods: {
        next() {
            var increment = 1 + this.is_shown;
            var size = this.dashboard.menu.length;
            if (this.current_menu + increment >= size) {
                this.current_menu = 0;
            } else {
                this.current_menu = this.current_menu + increment;
            }
        },
        previous() {
            var increment = 1 + this.is_shown;
            var size = this.dashboard.menu.length;
            if (this.current_menu == 0 && size % 2 == 1) {
                this.current_menu = size - 1;
            }
            else if (this.current_menu == 0 && size % 2 == 0) {
                this.current_menu = size - increment;
            }
            else {
                this.current_menu = this.current_menu - increment;
            }
        },
        hide() {
            this.is_shown = window.innerWidth >= 990;
        }
    },
    mounted() {
        this.hide()
        window.addEventListener('resize', this.hide);
    },
    unmounted() {
        window.removeEventListener('resize', this.hide);
    },
    props: ['dashboard']
}
</script>

<template>
    <hr>
    <div class="container" v-if="dashboard">
        <h2>
            <a class="main" @click="previous">&lt;</a>
            Menu
            <a class="main" @click="next">&gt;</a>
        </h2>
        <div class="menu">
            <div>
                <h3>
                    {{ dashboard.menu[current_menu].category }}
                </h3>
                <table>
                    <thead>
                        <th v-for="head in dashboard.menu[current_menu].header" align="left">
                            {{ head }}
                        </th>
                    </thead>
                    <tbody>
                        <tr v-for="line in dashboard.menu[current_menu].content">
                            <td v-for="cell in line">
                                <div v-if="cell == ''">&nbsp;</div>
                                <div v-else>{{ cell }}</div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div v-if="(current_menu + 1 < dashboard.menu.length) && is_shown">
                <!-- <div v-if="is_shown"> -->
                <h3>
                    {{ dashboard.menu[current_menu + 1].category }}
                </h3>
                <table>
                    <thead>
                        <th v-for="   head    in    dashboard.menu[current_menu + 1].header   " align="left">
                            {{ head }}
                        </th>
                    </thead>
                    <tbody>
                        <tr v-for="      line       in       dashboard.menu[current_menu + 1].content      ">
                            <td v-for="      cell       in       line      ">
                                <div v-if="cell == ''">&nbsp;</div>
                                <div v-else>{{ cell }}</div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>

<style scoped>
.container {
    user-select: none;
    width: 100%;
    margin-bottom: 2em;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

a {
    cursor: pointer;
    padding-left: 1em;
    padding-right: 1em;
}

.menu {
    display: flex;
    width: 100%;
    flex-direction: row;
    justify-content: space-between;
}

.menu>div {
    width: 100%;
}

@media (min-width: 990px) {
    .menu>div {
        width: 45%;
    }

}
</style>
