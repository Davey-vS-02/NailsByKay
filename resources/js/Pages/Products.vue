<template>
    <v-app>
        <app-nav></app-nav>
        <v-main>
            <!-- Hero Section -->
            <v-parallax
                src="/images/NailSalon.png"
                height="70vh"
            >
                <div class="parallax-overlay"></div>
                <v-container class="parallax-content ml-2 ml-md-14 pa-4 pa-md-0" fluid>
                    <v-card class="mt-4 mt-md-8" color="transparent" elevation="0">
                        <v-card-title class="text-h5 text-md-h4 text-white" color="white">
                            What Our Clients Say
                        </v-card-title>
                        <v-card-text class="text-body-1 text-md-h6 text-white">
                            Nails that make a statement, every time.
                        </v-card-text>
                    </v-card>
                </v-container>
            </v-parallax>

            <!-- Testimonials Grid -->
            <v-container class="my-12">
                <v-card class="pa-8 rounded-lg" elevation="8">
                    <v-card-title class="text-h4 text-md-h2">Client Spotlights</v-card-title>
                    <v-card-text class="text-body-1 mb-6">
                        Hear from some of our happy clients and see their stunning nail designs.
                    </v-card-text>

                    <v-row dense>
                        <v-col cols="12" md="4" v-for="(testimonial, index) in testimonials" :key="index">
                            <v-card
                                elevation="6"
                                class="pa-4 d-flex flex-column flex-grow-1 hover-card"
                                style="min-height: 450px;"
                            >
                                <v-img
                                    :src="testimonial.image"
                                    height="200px"
                                    class="mb-4"
                                ></v-img>
                                <v-card-title class="text-h5">{{ testimonial.name }}</v-card-title>
                                <v-card-text>
                                    "{{ testimonial.text }}"
                                </v-card-text>
                            </v-card>
                        </v-col>
                    </v-row>
                </v-card>
            </v-container>
        </v-main>
    </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";

export default {
    name: "Testimonials",
    components: {
        AppNav,
    },
    data() {
        return {
            testimonials: [
                {
                    name: "Sarah",
                    text: "Absolutely love my nails! The design is perfect and the attention to detail is incredible.",
                    image: "/images/nailset1.jpg",
                },
                {
                    name: "Aisha",
                    text: "Every visit is a treat. My nails always look stunning and last for weeks.",
                    image: "/images/nailset2.jpg",
                },
                {
                    name: "Emily",
                    text: "I get compliments on my nails all the time. Truly talented and professional!",
                    image: "/images/nailset3.jpg",
                },
                {
                    name: "Sarah",
                    text: "Absolutely love my nails! The design is perfect and the attention to detail is incredible.",
                    image: "/images/nailset4.jpg",
                },
                {
                    name: "Aisha",
                    text: "Every visit is a treat. My nails always look stunning and last for weeks.",
                    image: "/images/nailset5.jpg",
                },
                {
                    name: "Emily",
                    text: "I get compliments on my nails all the time. Truly talented and professional!",
                    image: "/images/nailset6.jpg",
                },
                {
                    name: "Sarah",
                    text: "Absolutely love my nails! The design is perfect and the attention to detail is incredible.",
                    image: "/images/nailset7.jpg",
                },
                {
                    name: "Aisha",
                    text: "Every visit is a treat. My nails always look stunning and last for weeks.",
                    image: "/images/nailset8.jpg",
                },
                {
                    name: "Emily",
                    text: "I get compliments on my nails all the time. Truly talented and professional!",
                    image: "/images/nailset9.jpg",
                },
                {
                    name: "Sarah",
                    text: "Absolutely love my nails! The design is perfect and the attention to detail is incredible.",
                    image: "/images/nailset10.jpg",
                },
                {
                    name: "Aisha",
                    text: "Every visit is a treat. My nails always look stunning and last for weeks.",
                    image: "/images/nailset11.jpg",
                },
                {
                    name: "Emily",
                    text: "I get compliments on my nails all the time. Truly talented and professional!",
                    image: "/images/nailset12.jpg",
                },
                {
                    name: "Sarah",
                    text: "Absolutely love my nails! The design is perfect and the attention to detail is incredible.",
                    image: "/images/nailset13.jpg",
                },
                {
                    name: "Aisha",
                    text: "Every visit is a treat. My nails always look stunning and last for weeks.",
                    image: "/images/nailset14.jpg",
                },
                {
                    name: "Emily",
                    text: "I get compliments on my nails all the time. Truly talented and professional!",
                    image: "/images/nailset15.jpg",
                },
                {
                    name: "Sarah",
                    text: "Absolutely love my nails! The design is perfect and the attention to detail is incredible.",
                    image: "/images/nailset16.jpg",
                },
                {
                    name: "Aisha",
                    text: "Every visit is a treat. My nails always look stunning and last for weeks.",
                    image: "/images/nailset17.jpg",
                },
                {
                    name: "Emily",
                    text: "I get compliments on my nails all the time. Truly talented and professional!",
                    image: "/images/nailset18.jpg",
                },
            ],
        };
    },
};
</script>

<style>
.parallax-overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 1;
    pointer-events: none;
}
.parallax-overlay::after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(to right, rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0));
    pointer-events: none;
    z-index: 1;
}
.parallax-content {
    position: relative;
    pointer-events: auto;
    z-index: 5;
}
.hover-card {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.hover-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}
</style>
