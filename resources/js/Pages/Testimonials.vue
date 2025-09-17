<template>
    <v-app>
        <app-nav></app-nav>
        <v-main>
            <v-parallax
                src="/images/nailsalon.png"
                height="70vh"
            >
                <div class="parallax-overlay"></div>
                <v-container class="parallax-content ml-2 ml-md-14 pa-4 pa-md-0" fluid>
                    <v-card class="mt-4 mt-md-8" color="transparent" elevation="0">
                        <v-card-title class="text-h5 text-md-h4 text-white" color="white">
                            Client Testimonials
                        </v-card-title>
                        <v-card-text class="text-body-1 text-md-h6 text-white">
                            Here it from our clients
                        </v-card-text>
                    </v-card>
                </v-container>
            </v-parallax>

            <!-- Testimonials Carousel -->
            <v-card class="ma-4 ma-md-15 pa-3 rounded-lg" elevation="16">
                <v-card-title class="text-h4 text-md-h2 text-center">
                    Client testimonials
                </v-card-title>
                <v-card-text class="text-body-1 text-md-h6 text-center mb-3">
                    If you don't believe us, hear it from our clients.
                </v-card-text>
                <v-carousel 
                    :show-arrows="false" 
                    cycle
                    class="mb-7 w-75 mx-auto rounded-2xl"
                >
                    <v-carousel-item
                        v-for="(testimonial, i) in testimonials"
                        :key="i"
                        :src="testimonial.src"
                        cover
                    ></v-carousel-item>
                </v-carousel>
                <div class="d-flex justify-center">
                    <v-btn
                        prepend-icon="mdi-book"
                        color="darkBackground"
                        size="large"
                        variant="tonal"
                        class="rounded-lg my-6 my-md-8"
                        @click="openAboutPage"
                    >
                        Read More
                    </v-btn>
                </div>
            </v-card>
        </v-main>
    </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";
import { router } from "@inertiajs/vue3";

export default {
    name: 'Testimonials',
    components: { AppNav },
    methods: {
        openContactPage() {
            router.visit(this.$route('contact'));
        }
    },
    data() {
        return {
            testimonials: [
                { src: '/images/Testimonial1.jpeg' },
                { src: '/images/Testimonial2.jpeg' },
            ],
        };
    },
}
</script>

<style scoped>
.parallax-overlay {
    position: absolute;
    top: 0; left: 0; right: 0; bottom: 0;
    z-index: 1;
    pointer-events: none;
}
.parallax-overlay::after {
    content: '';
    position: absolute;
    top: 0; left: 0; right: 0; bottom: 0;
    background: linear-gradient(to right, rgba(0,0,0,0.9), rgba(0,0,0,0));
    pointer-events: none;
    z-index: 1;
}
.parallax-content {
    position: relative;
    pointer-events: auto;
    z-index: 5;
}
</style>
