// @ts-check
import tailwindcss from '@tailwindcss/vite';
import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://knarfortiz.github.io',  // Tu URL pública
  build: {
    outDir: './dist',  // Carpeta donde se generarán los archivos estáticos
  },
  vite: {
    plugins: [tailwindcss()],
  },
});
