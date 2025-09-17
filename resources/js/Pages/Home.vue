<template>
    <v-app>
        <app-nav></app-nav>
        <v-main>
            <v-parallax
            src="/images/nailsalon.png"
            height="100vh"
            >
                <div class="parallax-overlay"></div>
                <v-container class="parallax-content pa-4 pa-md-14" fluid>
                    <v-card class="mt-8" color="transparent" elevation="0">
                        <v-card-title class="text-h5 text-white" color="white">
                            NailsByKay | BTS Beauty Studio
                        </v-card-title>
                        <v-card-text class="text-h5 text-md-h2 text-white">
                            Where beauty is nailed down
                        </v-card-text>
                    </v-card>

                    <v-btn
                        prepend-icon="mdi-flag"
                        color="accent"
                        size="large"
                        variant="outlined"
                        class="rounded-lg mt-8 ml-2 ml-md-7"
                        @click="openProductsPage"
                    >
                        Get started
                    </v-btn>
                </v-container>
            </v-parallax>

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
                    hide-delimiters
                    class="mb-7 mx-auto rounded-2xl w-75"\
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

            <v-card class="ma-4 ma-md-15 pa-4" color="transparent" elevation="0">
                <v-card-title class="text-h6">Our Mission</v-card-title>
                <v-card-text class="text-h5 text-md-h4">
                    To provide a modern, luxurious nail experience where elegance meets creativity, ensuring every client leaves polished, refreshed, and ready to shine.
                </v-card-text>
            </v-card>

            <v-card class="ma-4 ma-md-15 pa-4 rounded-lg" elevation="16">
                <v-card-title class="text-h4 text-md-h2">About me</v-card-title>
                <v-card-text class="text-body-1 text-md-h6">
                    What began as a passion project at home has grown into a professional nail artistry career built on creativity, precision, and care. Specializing in intricate and detailed designs, Kailyn turned her love for nail art into a business that highlights individuality and self-expression.
                    <br><br>
                    Now based at BTS Beauty, she continues to offer a personal, client-focused experience within a professional salon setting. Each set of nails is treated as a bespoke work of art, crafted with meticulous attention to detail and tailored to reflect each client’s unique style.
                    <br><br>
                    With a commitment to both artistry and quality, her work goes beyond beauty—it’s about confidence, creativity, and leaving clients with nails that are as expressive as they are elegant.
                </v-card-text>

                <v-container class="mb-5">
                    <v-row justify="center">
                        <v-col cols="auto">
                            <v-btn
                                prepend-icon="mdi-book"
                                color="darkBackground"
                                size="large"
                                variant="tonal"
                                class="rounded-lg mt-6 mt-md-8 ml-0 ml-md-7"
                                @click="openAboutPage"
                            >
                                Read More
                            </v-btn>
                        </v-col>
                    </v-row>
                </v-container>

                <!-- <video-player :options="videoOptions" class="ml-4 ml-md-12 mr-4 mr-md-12 mb-4 mb-md-12 pa-4 pa-md-16"/> -->
            </v-card>

            <v-card class="pa-4 rounded-0" color="darkBackground" elevation="0">
                <v-card-title class="text-h4 text-md-h2">Why choose me:</v-card-title>
                <v-card-text class="text-h6">
                    Because your nails deserve more than ordinary.
                </v-card-text>

                <v-timeline
                    side="end"
                    align="start"
                    class="mt-5 mb-5"
                    line-color="white"
                >
                    <v-timeline-item size="small">
                        <v-card
                            class="w-75"
                            @mouseover="isHovered1 = true"
                            @mouseleave="isHovered1 = false"
                            :color="isHovered1 ? 'primary' : 'white'">
                            <v-icon class="mt-5 ml-5">mdi-magnify-scan</v-icon>
                            <v-card-title>Attention to detail</v-card-title>
                            <v-card-text>
                                Every set of nails is crafted with precision and care. From clean application to intricate designs, I ensure each client leaves with nails that look flawless and last.    
                            </v-card-text>
                        </v-card>
                    </v-timeline-item>

                    <v-timeline-item size="small">
                        <v-card
                            class="w-75"
                            @mouseover="isHovered2 = true"
                            @mouseleave="isHovered2 = false"
                            :color="isHovered2 ? 'primary' : 'white'">
                            <v-icon class="mt-5 ml-5">mdi-account-heart</v-icon>
                            <v-card-title>Personalized Care</v-card-title>
                            <v-card-text>
                                No two clients are the same, and neither are their nails. I take the time to understand your style and preferences, creating designs that reflect your personality and vision.    
                            </v-card-text>
                        </v-card>
                    </v-timeline-item>

                    <v-timeline-item size="small">
                        <v-card
                            class="w-75"
                            @mouseover="isHovered3 = true"
                            @mouseleave="isHovered3 = false"
                            :color="isHovered3 ? 'primary' : 'white'">
                            <v-icon class="mt-5 ml-5">mdi-palette</v-icon>
                            <v-card-title>Creative Expertise</v-card-title>
                            <v-card-text>
                                Specializing in intricate nail art, I bring creativity and innovation to every appointment. Whether you want something subtle or bold, I turn ideas into unique works of art at your fingertips.    
                            </v-card-text>
                        </v-card>
                    </v-timeline-item>
                </v-timeline>
                <v-row justify="center" class="mt-8 mb-8">
                    <v-col cols="auto">
                        <v-btn 
                        prepend-icon="mdi-flag" 
                        color="accent" 
                        size="large" 
                        variant="outlined" 
                        class="rounded-lg" 
                        @click="openContactPage()"
                        >
                        Contact Us
                        </v-btn>
                    </v-col>
                </v-row>
            </v-card>
        </v-main>
    </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";
import VideoPlayer from "../Components/VideoPlayer.vue";
import {router} from "@inertiajs/vue3";

export default {
    name: 'Home',
    components: {
        AppNav,
        VideoPlayer,
    },
    data() {
        return {
            videoOptions: {
                autoplay: false,
                controls: true,
                sources: [
                    {
                        src:
                            '/videos/test_with_sound_video_fixed.mp4',
                        type: 'video/mp4'
                    }
                ]
            },
            isHovered1: false,
            isHovered2: false,
            isHovered3: false,
            testimonials: [
                { src: '/images/Testimonial1.jpeg' },
                { src: '/images/Testimonial2.jpeg' },
            ],
        };
    },
    methods: {
        openAboutPage() {
            router.visit(this.$route('about'));
        },
        openProductsPage() {
            router.visit(this.$route('products'));
        },
        openContactPage() {
            router.visit(this.$route('contact'));
        }
    }
}
</script>

<style>
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
    background: linear-gradient(to right, rgba(0,0,0,0.99), rgba(0,0,0,0));
    pointer-events: none;
    z-index: 1;
}
.parallax-content {
    position: relative;
    pointer-events: auto;
    z-index: 5;
}
</style>
