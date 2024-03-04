<script>
import axios from 'axios';

import TheWelcome from './TheWelcome.vue'
import Foot from './Foot.vue'
import Header from './Header.vue'
import Opening from './Opening.vue'
import About from './About.vue'
import Menu from './Menu.vue'
import Events from './Events.vue'
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
        Events,
        LogoLink
    },
    mounted() {
        axios
          .get('https://script.google.com/macros/s/AKfycbwEYDUYUdJNskqIdQHuDuwrt-YdWketDHXGClNDJbXYyCnwkmcfyKlJ2m_5eNaH_Ohw/exec')
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
    <main>
        <div v-if="dashboard">
            <Header/>
            <About/>
            <Opening :dashboard="this.dashboard"/>
            <Menu :dashboard="this.dashboard"/>
            <Events/>
            <Foot/>
        </div>
        <div class="waiting" v-else>
            <div>
                <h2>Le Fada</h2>
                <div>Bar - restaurant</div>
                <LogoLink displayed="64 Rue Jean-Jacques Rousseau, 75001 Paris, France" address="https://maps.app.goo.gl/du8wNHpY7ujomvC36" logo="maps"/>
                <LogoLink displayed="+33 6 12 34 56 78" address="telto:+33612345678" logo="phone"/>
            </div>
        </div>
    </main>
    
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

    .waiting{
        display: flex;
        justify-content: center;
        animation: heartbeat 2s linear infinite;
    }
</style>
