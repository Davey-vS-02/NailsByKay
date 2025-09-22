<template>
  <v-app>
    <app-nav></app-nav>
    <v-main>
      <!-- Hero Section -->
      <v-parallax
        src="/images/nailsalon.png"
        height="70vh"
      >
        <div class="parallax-overlay"></div>
        <v-container class="parallax-content ml-2 ml-md-14 pa-4 pa-md-0" fluid>
          <v-card class="mt-4 mt-md-8" color="transparent" elevation="0">
            <v-card-title class="text-h5 text-md-h4 text-white">
              About NailsByKay
            </v-card-title>
            <v-card-text class="text-body-1 text-md-h6 text-white">
              Get to know us:
            </v-card-text>
          </v-card>
        </v-container>
      </v-parallax>

      <!-- About Section -->
        <v-container class="my-12">
            <v-card class="pa-8 rounded-lg" elevation="8">
            <v-card-title class="text-h4 mb-3">Who We Are</v-card-title>
            <v-card-text class="text-body-1 mb-6">
                NailsByKay is a professional nail studio dedicated to creativity, detail, and helping clients feel confident and beautiful. What started as a hobby quickly grew into a passion for turning nails into a canvas for self-expression. Every design is personalized, polished, and crafted with care.
            </v-card-text>

            <v-card-title class="text-h4 mb-3">Our Vision</v-card-title>
            <v-card-text class="text-body-1 mb-6">
                We aim to inspire confidence and joy through the art of nails. Our vision is to provide a welcoming and professional environment where every client leaves feeling unique, pampered, and satisfied.
            </v-card-text>

            <v-card-title class="text-h4 mb-3">Our Commitment</v-card-title>
            <v-card-text class="text-body-1">
                From classic manicures to custom nail art, we ensure every client receives attentive service and exceptional results. At NailsByKay, we are committed to excellence, hygiene, and using high-quality products to make your nails look and feel amazing.
            </v-card-text>
            </v-card>
        </v-container>
    </v-main>
  </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";

export default {
  name: "About",
  components: {
    AppNav,
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
  background: linear-gradient(to right, rgba(0, 0, 0, 0.85), rgba(0, 0, 0, 0));
  pointer-events: none;
  z-index: 1;
}
.parallax-content {
  position: relative;
  pointer-events: auto;
  z-index: 5;
}
</style>
