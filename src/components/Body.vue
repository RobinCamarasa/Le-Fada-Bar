<script>
import axios from 'axios';

import TheWelcome from './TheWelcome.vue'
import Foot from './Foot.vue'
import Header from './Header.vue'
import Opening from './Opening.vue'
import About from './About.vue'
import Menu from './Menu.vue'
import LogoLink from './LogoLink.vue'

export default {
    data() {
        return {
            dashboard: 0,
            test: ''
        }
    },
    methods: {
        getData() {
            this.dashboard = '';
        }
    },
    components: {
        Header,
        Foot,
        Opening,
        About,
        Menu,
        LogoLink
    },
    mounted() {
        axios
            .get('https://script.google.com/macros/s/AKfycbzM-wzxcZtiS3wEQeZY2KpnOwYpg0nFm8IDCiEWGGN7u-7n6g2tYAtydaCsZloy_UHB/exec')
            .then(
                response => {
                    this.dashboard = response["data"]
                    console.log(this.dashboard);
                });
        this.getData();
    }
}

</script>

<template>
    <div v-if="dashboard">
        <Header />
        <div class="body">
            <About :dashboard="this.dashboard" />
            <!-- <Events :dashboard="this.dashboard" /> -->
            <Menu :dashboard="this.dashboard" />
            <Opening :dashboard="this.dashboard" />
        </div>
        <Foot />
    </div>
    <div class="waiting" v-else>
        <div>
            <h1>Le Fada</h1>
            <div>Bar - restaurant</div>
            <LogoLink displayed="64 Rue Jean-Jacques Rousseau, 75001 Paris, France"
                address="https://maps.app.goo.gl/du8wNHpY7ujomvC36" logo="maps" />
            <LogoLink displayed="+33 6 12 34 56 78" address="telto:+33612345678" logo="phone" />
        </div>
    </div>

</template>

<style scoped>
@keyframes heartbeat {
    0% {
        transform: scale(0.9);
    }

    25% {
        transform: scale(1);
    }

    100% {
        transform: scale(0.9);
    }
}

.waiting {
    display: flex;
    justify-content: center;
    animation: heartbeat 2s linear infinite;
}

.body {
    padding-top: 8em;
    margin-left: 1em;
    margin-right: 1em;
}

@media (min-width: 990px) {
    .body {
        margin-left: 4em;
        margin-right: 4em;
    }
}
</style>
