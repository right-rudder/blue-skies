const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
        paragraph: ["Inter var", ...defaultTheme.fontFamily.sans],
        custom: ["eurostile", ...defaultTheme.fontFamily.sans],
        custom2: ["EuroStyle Normal", ...defaultTheme.fontFamily.sans],

        // header: ['Orbitron', ...defaultTheme.fontFamily.sans], //no longer needed...
      },
      colors: {
        // ## Activate the custom colors as needed
        // 'custom-50': '#d0ebf4',
        "custom-100": "#9ed9f1", //this is light blue
        // 'custom-200': '#90bccc',
        // 'custom-300': '#60b3d7',
        "custom-400": "#2fade2", //checking from online picker
        "custom-500": "#27aae1", //this is sky blue
        // 'custom-600': '#1780a6',
        "custom-700": "#0096c5", //this is dark blue
        // 'custom-800': '#0f4b6f',
        // 'custom-900': '#08293d',
      },

      keyframes: {
        "bounce-right": {
          "0%": { transform: "translateX(0%)" },
          "50%": { transform: "translateX(30%)" },
          "100%": { transform: "translateX(0%)" },
        },

        "plane-enter": {
          "0%": {
            opacity: 0,
            transform: "translateX(-100%)",
          },
          "100%": {
            opacity: 1,
            transform: "translateX(0)",
          },
        },
        "plane-leave": {
          "0%": {
            opacity: 1,
            transform: "translateX(0)",
          },
          "50%": {
            opacity: 1,
            transform: "translateX(50%)",
          },
          "100%": {
            opacity: 0,
            transform: "translateX(100%)",
          },
        },
        marquee: {
          "0%": { transform: "translateX(0%)" },
          "100%": { transform: "translateX(-138%)" }, // 6 reviews = 168%
        },
        marquee2: {
          "0%": { transform: "translateX(138%)" },
          "100%": { transform: "translateX(0%)" },
        },
        marqueemobile: {
          "0%": { transform: "translateX(0%)" },
          "100%": { transform: "translateX(-152%)" },
        },
        marquee2mobile: {
          "0%": { transform: "translateX(152%)" }, // 6 reviews = 174%
          "100%": { transform: "translateX(0%)" },
        },
        "slide-in-left": {
          "0%": {
            transform: "translateX(-100%)",
            opacity: 0,
          },
          "100%": {
            transform: "translateX(0)",
            opacity: 1,
          },
        },
        "slide-out-left": {
          "0%": {
            transform: "translateX(0)",
            opacity: 1,
          },
          "100%": {
            transform: "translateX(-100%)",
            opacity: 0,
          },
        },
      },
      animation: {
        "bounce-right": "bounce-right 0.8s ease-in-out infinite",

        "plane-enter": "plane-enter 0.7s ease-out forwards",
        "plane-leave": "plane-leave 0.3s ease-out forwards",

        marquee: "marquee 55s linear infinite",
        marquee2: "marquee2 55s linear infinite",
        marqueemobile: "marqueemobile 55s linear infinite",
        marquee2mobile: "marquee2mobile 55s linear infinite",

        "slide-in-left": "slide-in-left 0.6s ease-out",
        "slide-in-left2": "slide-in-left 0.7s ease-out",
        "slide-in-left3": "slide-in-left 0.8s ease-out",
        "slide-in-left4": "slide-in-left 1s ease-out",
        "slide-in-left5": "slide-in-left 1.1s ease-out",

        "slide-out-left": "slide-out-left 0.3s ease-out",
        "slide-out-left2": "slide-out-left 0.4s ease-out",
        "slide-out-left3": "slide-out-left 0.5s ease-out",
        "slide-out-left4": "slide-out-left 0.6s ease-out",
        "slide-out-left5": "slide-out-left 0.7s ease-out",
      },
      backgroundImage: {
        // NOT IN USE IS COMMENTED OUT
        // 'cessna-ramp-sunset' : "url('blue-skies-cessna-sunset.webp')",
        home: "url('blue-skies-overflying-opelika-in-a-cessna.webp')",
        ifr: "url('blue-skies-cessna-in-clouds.webp')",
        "sunset-flight":
          "url('blue-skies-overflying-columbus-during-sunset.webp')",
        "sunset-dark": "url('blue-skies-fly-sunset-dark.webp')",
        "cessna-ramp": "url('blue-skies-cessna-ramp-bg.webp')",
        "cessna-N5378D": "url('cessna-N5378D.webp')",
        "cessna-airport": "url('blue-skies-cessna-in-airport.webp')",
        sunset: "url('blue-skies-sunset-bg-auburn.webp')",
        mei: "url('stock-multi-engine.jpg')",
        checkride: "url('blue-skies-checkride-commercial-pass-opelika.webp')",
        checkride2:
          "url('blue-skies-checkride-commercial-pass-opelika-2.webp')",
        "ifr-bg": "url('blue-skies-ifr-flying-opelika.webp')",
        "auburn-bg":
          "url('blue-skies-auburn-university-student-pass-checkride-bg.webp')",
        "auburn-bg-mobile":
          "url('blue-skies-auburn-pilot-program-how-to.webp')",
        commercial: "url('blue-skies-commercial-pilot-training-opelika.webp')",
        multi: "url('multi-engine-plane.webp')",
        "time-building":
          "url('flying-through-clouds-in-blue-skies-above-taa-plane.webp')",
        "finish-up":
          "url('tail-number-of-taa-plane-blue-skies-above-columbus-ga.webp')",
        cfi: "url('blue-skies-cfi-bg-dual-recieved-instructor-auburn.webp')",
        cfii: "url('blue-skies-cfii-bg.webp')",
        "pro-flight": "url('airplane-cockpit.webp')",
      },
      height: (theme) => ({
        "screen-1/2": "50vh",
        "screen-2/3": "66vh",
        "screen-1/3": "calc(100vh / 3)",
        "screen-3/4": "75vh",
        "screen-4/5": "80vh",
        "screen-mobile": "110.1vh", //depends on menu height
      }),
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
  ],
  safelist: ["grid-cols-4"],
};
