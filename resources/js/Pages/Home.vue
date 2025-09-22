<template>
    <v-app>
        <app-nav></app-nav>
        <v-main>
            <v-card class="mx-auto mb-4 mb-md-15 py-3 w-50 rounded-lg" elevation="0">
                <!-- Round image of Kailyn -->
                <v-container class="d-flex justify-center mb-8">
                    <v-avatar size="250">
                        <v-img src="/images/kailynTechPhoto.jpeg" alt="Kailyn"></v-img>
                    </v-avatar>
                </v-container>
                <v-card-title 
                class="text-h4 text-md-h2 text-center mb-8" 
                style="cursor: pointer; font-family: 'Lora'; line-height: 1.2; padding: 0;"
                >
                    Hi, I am Kailyn.
                </v-card-title>
                <v-card-text 
                class="text-body-1 text-md-h6 text-left"
                style="cursor: pointer; font-family: 'Lora'; line-height: 2; padding: 0;"
                >
                    I’m a professional nail artist with a passion for creativity, detail, and helping my clients feel confident and beautiful. 
                    What started as a hobby quickly grew into a career dedicated to turning nails into a canvas for self-expression. 
                    Every design I create is personalized, polished, and crafted with care—because I believe your nails should be just as unique as you are.
                </v-card-text>
            </v-card>
            
            <v-card class="mx-10 my-3 ma-md-15 px-10 pt-5 pb-10 rounded-lg" elevation="16">
                <v-card-title class="text-h4 text-md-h2 text-center">
                    Client testimonials
                </v-card-title>
                <v-card-text class="text-body-1 text-md-h6 text-center mb-4">
                    If you don't believe us, hear it from our clients.
                </v-card-text>
                <Swiper
                    :space-between="50"
                    :breakpoints="{
                        0: { slidesPerView: 1 },
                        600: { slidesPerView: 2 },
                        960: { slidesPerView: 3 }
                    }"
                    @swiper="onSwiper"
                    @slideChange="onSlideChange"
                    class="mx-5 mb-5"
                >
                    <SwiperSlide v-for="(testimonial, i) in testimonials" :key="i">
                        <img :src="testimonial.src" class="rounded-xl w-100 testimonial-img" />
                    </SwiperSlide>
                </Swiper>
                
                <v-row justify="center" class="mt-8 mb-1">
                    <v-col cols="auto">
                        <v-btn
                        prepend-icon="mdi-calendar"
                        color="black"
                        size="large"
                        variant="outlined"
                        class="rounded-lg"
                        href="https://www.fresha.com/a/bts-beauty-centurion-39-hornbill-avenue-rl4ixmzz"
                        target="_blank"
                        >
                            Book now
                        </v-btn>
                    </v-col>
                </v-row>
            </v-card>

            <v-card class="ma-4 ma-md-15 pa-4" color="transparent" elevation="0">
                <v-card-title class="text-h6">My Mission</v-card-title>
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
            </v-card>
        </v-main>
    </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";
import VideoPlayer from "../Components/VideoPlayer.vue";
import {router} from "@inertiajs/vue3";

// Import Swiper Vue.js components
import { Swiper, SwiperSlide } from 'swiper/vue';

// Import Swiper styles
import 'swiper/css';

export default {
    name: 'Home',
    components: {
        AppNav,
        VideoPlayer,
        Swiper,
        SwiperSlide,
    },
    setup() {
      const onSwiper = (swiper) => {
        // Do something
      };
      const onSlideChange = () => {
        // Do something
      };
      return {
        onSwiper,
        onSlideChange,
      };
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
                { src: '/images/Testimonial1.jpeg' },
                { src: '/images/Testimonial2.jpeg' },
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
.testimonial-img {
  width: 100%;
  max-height: 85vh;
  object-fit: cover;
}
</style>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap" rel="stylesheet">
