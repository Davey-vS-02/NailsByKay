<template>
    <v-app-bar color="white" height="120" elevation="0" style="position: relative;">
        <!-- Hamburger for mobile -->
        <v-btn
            icon
            class="d-md-none"
            @click="toggleDrawer"
        >
            <v-icon>mdi-menu</v-icon>
        </v-btn>
        
        <!-- Left nav items -->
        <v-list dense class="d-none d-md-flex flex-row align-center ml-5">
            <v-list-item
                v-for="(link, index) in leftNavLinks"
                :key="index"
                @click="navigate(link.routeName)"
                class="px-4 rounded-lg"
            >
                <v-list-item-title>{{ link.label }}</v-list-item-title>
            </v-list-item>
        </v-list>

        <!-- Spacer to center the title -->
        <v-spacer></v-spacer>

        <!-- Centered brand -->
        <div class="d-flex align-center h-100 ml-0 ml-md-5">
            <v-toolbar-title
                @click="navigateToHomePage"
                class="text-md-h3 text-subtitle-1"
                style="cursor: pointer; font-family: 'Lora'; line-height: 1.2; padding: 0;"
            >
                NailsByKay | BTS Beauty
            </v-toolbar-title>
        </div>

        <!-- Spacer to center the title -->
        <v-spacer></v-spacer>

        <!-- Right nav items -->
        <v-list dense class="d-none d-md-flex flex-row align-center mr-5">
            <v-list-item
            v-for="(link, index) in rightNavLinks"
            :key="index"
            @click="navigate(link.routeName)"
            class="px-4 rounded-lg"
            >
            <v-list-item-title>{{ link.label }}</v-list-item-title>
            </v-list-item>
        </v-list>
    </v-app-bar>

    <v-navigation-drawer
        v-model="navDrawerOpen"
        temporary
        right
    >
        <v-list dense>
            <v-list-item
                v-for="(link, index) in allNavLinks"
                :key="index"
                @click="navigate(link.routeName)"
            >
                <v-list-item-title>{{ link.label }}</v-list-item-title>
            </v-list-item>
        </v-list>
    </v-navigation-drawer>
</template>

<script>
import { router } from '@inertiajs/vue3';

export default {
    name: 'AppNav',
    data() {
        return {
            navDrawerOpen: false,
            leftNavLinks: [
                { label: 'Home', routeName: 'home' },
                { label: 'About', routeName: 'about' },
            ],
            rightNavLinks: [
                { label: 'Nail Gallery', routeName: 'products' },
                { label: 'Contact Us', routeName: 'contact' },
            ],
            userNavLinks: [
                { label: 'My Account', routeName: 'account' },
                //Temporary button. Will implement logout as soon as users are set up
                { label: 'Logout', routeName: 'logout' },
            ],
        };
    },
    methods: {
        toggleDrawer() {
            this.navDrawerOpen = !this.navDrawerOpen;
        },
        openSignupPage() {
            window.location.href = this.$route('auth.google.redirect');
        },
        openProfilePage() {
            router.visit(this.$route('user.profile.info'));
        },
        navigate(routeName) {
            router.visit(this.$route(routeName));
            this.navDrawerOpen = false;
        },
        navigateToHomePage() {
            router.visit(this.$route('home'));
        }
    },
    computed: {
        allNavLinks() {
            return [...this.leftNavLinks, ...this.rightNavLinks];
        },
        user() {
            return this.$page.props.auth.user;
        },
    }
};
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap" rel="stylesheet">
