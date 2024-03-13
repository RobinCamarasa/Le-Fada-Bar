<script>
export default {
    props: ['dashboard'],
    data() {
        return {
            current_menu: 0
        }
    },
    methods: {
        next() {
            var size = this.dashboard.events.length;
            this.current_menu = (this.current_menu + 1) % size;
        },
        previous() {
            var size = this.dashboard.events.length;
            this.current_menu = (this.current_menu + size - 1) % size;
        }
    }
}
</script>

<template>
    <div class="container" width="100%" v-if="dashboard">
        <img referrerpolicy="no-referrer" class="frame"
            :src="dashboard.events[current_menu].image + '?s=1500?authuser=0'">
        <h3 width="100px">
            <a class="main" @click="previous">&lt;</a>
            <span style="display: inline-block" width="1000px">
                {{ dashboard.events[current_menu].description }}
            </span>
            <a class="main" @click="next">&gt;</a>
        </h3>
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
    padding-left: 1em;
    padding-right: 1em;
}

img {
    width: 100%;
    aspect-ratio: 16/9;
    object-fit: cover;
}
</style>
