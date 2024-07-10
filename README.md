
# Config de Neovim

Esta es mi configuración personal de Neovim utilizando `lazy.nvim` como gestor de plugins y configuraciones específicas para diferentes tipos de archivos. La configuración está diseñada para ser modular y fácil de mantener.

## Requisitos

- [Neovim](https://neovim.io/) (v0.5.0 o superior)
- Git Por supuesto

## Instalación

Sigue estos pasos para clonar y usar esta configuración en tu máquina:

1. **Clonar el repositorio:**

   Abre una terminal y ejecuta el siguiente comando para clonar el repositorio en tu directorio de configuración de Neovim:

- Por SSH

   ```sh
   git clone git@github.com:Z0SO/zosoConfig.git ~/.config/nvim
   ```

- Por HTTPS
   ```sh
   git clone https://github.com/Z0SO/zosoConfig.git ~/.config/nvim
   ```

2. **Instalar los plugins:**

   Abre Neovim y ejecuta el comando `:LazyInstall` para instalar todos los plugins configurados. Esto debería descargar e instalar todos los plugins necesarios automáticamente.

## Estructura del Proyecto

La configuración está organizada de la siguiente manera:

```
~/.config/nvim/
├── init.lua
├── lua/
│   ├── plugins.lua
│   └── settings.lua
├── .stylua.toml
├── lazy-lock.json
└── LICENSE
```


## Configuraciones Específicas


## Atajos de Teclado

Algunos atajos de teclado útiles configurados en esta configuración:

- `<leader>ff`: Buscar archivos usando Telescope.
- `<leader>fg`: Buscar texto en vivo usando Telescope.

El líder (`<leader>`) está configurado como la barra espaciadora (` `).

## Personalización

Puedes personalizar esta configuración ajustando los archivos en el directorio `lua/` y añadiendo tus propias configuraciones o plugins. Asegúrate de seguir una estructura modular para mantener la configuración organizada.

## Contribuciones

¡Las contribuciones son bienvenidas! Si tienes sugerencias o mejoras, por favor abre un issue o envía un pull request.

## Licencia

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
