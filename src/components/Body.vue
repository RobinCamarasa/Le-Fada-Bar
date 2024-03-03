<script>
import axios from 'axios';

import TheWelcome from './TheWelcome.vue'
import Foot from './Foot.vue'
import Header from './Header.vue'
import Opening from './Opening.vue'
import About from './About.vue'
import Menu from './Menu.vue'
import Events from './Events.vue'

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
        Events
    },
    mounted() {
        axios
          .get('https://script.google.com/macros/s/AKfycbzGBasuxo90wBq77NUkCVkX4VVq_DZPlwbNdVD4a7iRm8M2eCt0Y-wyw_78583OMCM/exec')
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
            <Menu/>
            <Events/>
            <Foot/>
        </div>
        <div class="waiting" v-else>
            <div>
                <h2>Le Fada</h2>
                <div>Bar - restaurant</div>
                <div>64 Rue Jean-Jacques Rousseau, 75001 Paris, France</div>
                <div><a href="telto:+33612345678">+33 6 12 34 56 78</a></div>
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
