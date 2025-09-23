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
                <v-card-title class="text-h6 text-md-h2 text-center">
                    Stunning Nail Designs
                </v-card-title>
                <v-card-text class="text-subtitle-1 text-md-body-1 mb-6 text-center">
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
                            class="pa-4 pt-6 d-flex flex-column flex-grow-1 hover-card"
                            style="min-height: 450px;"
                        >
                            <v-img
                                :src="image.src"
                                height="175px"
                                class="my-3 gallery-img"
                                :class="{ 'in-view': image.inView }"
                                ref="galleryImages"
                            ></v-img>
                            
                            <v-card-title class="justify-center text-center">
                                {{ image.title }}
                            </v-card-title>
                            
                            <v-card-subtitle class="text-center mb-2">
                                {{ image.caption }}
                            </v-card-subtitle>
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
            { src: "/images/nailset1.jpg", title: "Elegant Pink", caption: "Soft pink with a glossy finish" },
            { src: "/images/nailset2.jpg", title: "Royal Blue", caption: "Matte blue nails with subtle shimmer" },
            { src: "/images/nailset3.jpg", title: "French Classic", caption: "Timeless French manicure" },
            { src: "/images/nailset4.jpg", title: "Glitter Glam", caption: "Sparkling silver accents for party vibes" },
            { src: "/images/nailset5.jpeg", title: "Sunset Ombre", caption: "Warm orange blend fading into pink" },
            { src: "/images/nailset6.jpeg", title: "Marble Luxe", caption: "White marble effect with golden streaks" },
            { src: "/images/nailset7.jpeg", title: "Midnight Spark", caption: "Black nails with a starry shimmer" },
            { src: "/images/nailset8.jpeg", title: "Pastel Dream", caption: "Soft lavender tones with delicate shine" },
            { src: "/images/nailset9.jpeg", title: "Rose Gold Glow", caption: "Shimmering rose gold elegance" },
            { src: "/images/nailset10.jpeg", title: "Ocean Waves", caption: "Teal gradient with wavy silver lines" },
            { src: "/images/nailset11.jpeg", title: "Cherry Pop", caption: "Bright red nails with a juicy shine" },
            { src: "/images/nailset12.jpeg", title: "Galaxy Mix", caption: "Purple and blue cosmic swirls" },
            { src: "/images/nailset13.jpeg", title: "Golden Touch", caption: "Neutral tones topped with gold foil" },
            { src: "/images/nailset14.jpeg", title: "Matte Chic", caption: "Minimalist matte nude nails" },
            { src: "/images/nailset15.jpeg", title: "Neon Blast", caption: "Vibrant neon colors that pop" },
            { src: "/images/nailset16.jpeg", title: "Jewel Tones", caption: "Emerald and ruby-inspired nails" },
            { src: "/images/nailset17.jpeg", title: "Pearl Shine", caption: "Iridescent pearl finish for a soft glow" },
            { src: "/images/nailset18.jpeg", title: "Festive Sparkle", caption: "Colorful glitter mix for celebrations" },
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
  overflow: hidden; /* prevents image spillover on zoom */
}
.hover-card img {
  transition: transform 0.4s ease;
}
.hover-card:hover img {
  transform: scale(1.05); /* 5% zoom-in */
}
</style>
