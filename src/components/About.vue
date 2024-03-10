<script>
import LogoLink from './LogoLink.vue';
import Carousel from './Carousel.vue';

export default {
    props: ['dashboard'],
    components: { LogoLink, Carousel }
};
</script>

<template>
    <div class="about-container">
        <div class="carousel">
            <Carousel :dashboard="this.dashboard" />
        </div>
        <div class="info">
            <div>
                <div>Bar - restaurant</div>
                <LogoLink displayed="64 Rue Jean-Jacques Rousseau, 75001 Paris, France"
                    address="https://maps.app.goo.gl/du8wNHpY7ujomvC36" logo="maps" />
                <LogoLink displayed="+33 6 12 34 56 78" address="telto:+33612345678" logo="phone" />
            </div>
            <p> Découvrez le FADA, un bar atypique dans le 1er arrondissement de Paris, offrant une ambiance
                méditerranéenne. <a class="main"
                    href="https://www.privateaser.com/location-salle/top-salles-location-chatelet-paris">Trois salles
                    privatisables</a> pouvant accueillir jusqu'à 120 personnes sont disponibles à Châtelet, avec
                équipement de projection et Wi-Fi. Ambiance chaleureuse garantie pour divers événements. Profitez de la
                terrasse et du service expérimenté du personnel. Accessible via les lignes <img src="/ratp/1.svg">, <img
                    src="/ratp/4.svg">, <img src="/ratp/11.svg">, et <img src="/ratp/14.svg"> du métro ainsi que les
                lignes <img src="/ratp/A.svg">, <img src="/ratp/B.svg"> et <img src="/ratp/D.svg"> du RER. </p>
        </div>
    </div>
</template>

<style scoped>
p {
    margin-top: 2em;
    margin-bottom: 2em;
    line-height: 1.7em;
}

.about-container {
    padding-top: 3em;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
}

.info {
    max-width: 100%;
}

.info>p {
    margin-bottom: 2em;
}

img {
    height: 1em;
}

iframe {
    margin-bottom: 2em;
    border-radius: 2em;
    border-style: solid 4px var(--fada-c-main);
    box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.4);
    border: solid 3px var(--fada-c-main);
}

.carousel {
    width: 100%;
}

@media (min-width: 990px) {
    .about-container {
        flex-direction: row;
    }

    .info,
    .carousel {
        width: 45%;
    }
}
</style>
