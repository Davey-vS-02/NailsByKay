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
                            Contact Us
                        </v-card-title>
                        <v-card-text class="text-body-1 text-md-h6 text-white">
                            Get in touch with us:
                        </v-card-text>
                    </v-card>
                </v-container>
            </v-parallax>

            <!-- About Us Details -->
            <v-card class="ma-3 ma-md-6 pa-3 pa-md-6 rounded-xl" elevation="16">
                <v-card-title class="text-h4 text-md-h2">Contact Us</v-card-title>
                <v-card-text class="text-body-1 text-md-h6">
                    <strong>Head Office:</strong> 39 Hornbill Ave, Rooihuiskraal, Centurion<br>
                    <strong>Phone:</strong> +27 76 414 0755<br>
                    <strong>Email:</strong> kailyn.fourie0120@gmail.com<br>
                    <strong>Business Hours:</strong> Mon - Fri: 09:00 - 18:00, Sat: 08:00 - 13:00
                </v-card-text>
            </v-card>
            <v-row justify="center" class="mb-6 mt-2">
                <v-col cols="auto">
                    <v-btn
                    prepend-icon="mdi-calendar"
                    color="primary"
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
        </v-main>
    </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";
import { router } from "@inertiajs/vue3";

export default {
    name: 'Contact',
    components: { AppNav },
    methods: {
        openContactPage() {
            router.visit(this.$route('contact'));
        }
    }
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
