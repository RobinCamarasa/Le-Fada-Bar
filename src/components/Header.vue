<script>
import LogoLink from './LogoLink.vue'
export default {
    components: { LogoLink }
};
</script>

<template>
    <nav>
        <h1>Le Fada</h1>
    </nav>
</template>

<style scoped>
h1 {
    color: var(--fada-c-main);
    padding: 0em;
    margin: 0em;
}

nav {
    display: flex;
    position: fixed;
    width: 100%;
    background-color: var(--fada-c-background);
    border-bottom: solid 4px var(--fada-c-main);
    justify-content: center;
    align-items: center;
}
</style>
