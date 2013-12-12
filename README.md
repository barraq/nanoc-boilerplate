nanoc-boilerplate
=================

Personal boilerplate for [Nanoc] static site generator
framework.

To get started simply run:

    >   bundle install bundle exec guard

To view the output run:

    >   nanoc view

For live reload you can install the free LiveReload plugin for your favorite
browser: Safari, Firefox, Chrome or IE.

## Extra Functionality

- Includes [jQuery](http://jquery.com/)

### Assets Management

- Supports assets management, preprocessing (coffescript, sass, less, etc...), mignification with [Sprockets](https://github.com/yannlugrin/nanoc-sprockets-filter)
- Supports [Compass](http://compass-style.org/) framework

### Caching

- Support [Cache busting](https://github.com/avdgaag/nanoc-cachebuster)

### Layouting

- Uses [Haml](http://haml-lang.com/)
- Extend [Nanoc] with extra filters and helpers 

### Authoring

- Supports [Markdown](https://github.com/gettalong/kramdown)


## Structure
    
    ├── content
    │   ├── assets
    │   │   ├── stylesheets
    │   │   │    ├── site               -- site stylesheets components
    │   │   │    ├── pages              -- per page stylesheets
    │   │   │    ├── vendor             -- vendor stylesheets
    │   │   │    └── main.css.scss      -- main stylesheets (includes site/ components)
    │   │   ├── javascripts
    │   │   │    ├── site               -- site javascripts components
    │   │   │    ├── vendor             -- vendor javascripts
    │   │   │    ├── main.js            -- main javascripts (includes site/ components)
    │   │   │    └── plugin.js
    │   │   └── fonts
    │   ├── media
    │   │   ├── images
    │   ├── 404.html.haml
    │   ├── index.html.haml
    │   ├── favicon.ico
    │   ├── htaccess.txt
    │   ├── humans.txt
    │   └── robot.txt
    ├── config
    │   ├── compass.rb
    ├── layouts
    ├── lib
    │   ├── filters                     -- extra filters
    │   └── helpers                     -- extra helpers
    ├── Gemfile
    ├── Guardfile
    ├── nanoc.yaml
    └── Rules

[Nanoc]: http://nanoc.ws
