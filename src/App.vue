<script setup>
import HelloWorld from './components/HelloWorld.vue'
import TheWelcome from './components/TheWelcome.vue'
import Foot from './components/Foot.vue'
import Header from './components/Header.vue'
import Opening from './components/Opening.vue'
import About from './components/About.vue'
import Menu from './components/Menu.vue'
import Events from './components/Events.vue'
</script>

<template>
    <main>
        <Header/>
        <About/>
        <Opening/>
        <Menu/>
        <Events/>
        <Foot/>
    </main>
</template>

<style scoped>
header {
  line-height: 1.5;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }
}
</style>
