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
              Nail Gallery
            </v-card-title>
            <v-card-text class="text-body-1 text-md-h6 text-white">
              Explore our collection of beautifully crafted nail designs. Each set is created with precision, creativity, and love.
            </v-card-text>
          </v-card>
        </v-container>
      </v-parallax>

      <!-- Nail Gallery Grid -->
      <v-container class="my-12">
        <v-card class="pa-8 rounded-lg" elevation="8">
          <v-card-title class="text-h4 text-md-h2 text-center">
            Stunning Nail Designs
          </v-card-title>
          <v-card-text class="text-body-1 mb-6 text-center">
            Browse through our gallery to see the variety of styles and colors we offer. Perfect for inspiration for your next appointment!
          </v-card-text>

          <v-row dense>
            <v-col
              cols="12"
              md="4"
              v-for="(image, index) in images"
              :key="index"
            >
              <v-card
                elevation="6"
                class="pa-4 d-flex flex-column flex-grow-1 hover-card"
                style="min-height: 450px;"
              >
                <v-img
                  :src="image"
                  height="175px"
                  class="my-3"
                ></v-img>
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
  name: "NailGallery",
  components: {
    AppNav,
  },
  data() {
    return {
      images: [
        "/images/nailset1.jpg",
        "/images/nailset2.jpg",
        "/images/nailset3.jpg",
        "/images/nailset4.jpg",
        "/images/nailset5.jpeg",
        "/images/nailset6.jpeg",
        "/images/nailset7.jpeg",
        "/images/nailset8.jpeg",
        "/images/nailset9.jpeg",
        "/images/nailset10.jpeg",
        "/images/nailset11.jpeg",
        "/images/nailset12.jpeg",
        "/images/nailset13.jpeg",
        "/images/nailset14.jpeg",
        "/images/nailset15.jpeg",
        "/images/nailset16.jpeg",
        "/images/nailset17.jpeg",
        "/images/nailset18.jpeg",
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
  transform: translateY(-2px);
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}
</style>
