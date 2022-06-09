// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import './add_jquery'
import "./channels"
// Rails.start()
// Turbolinks.start()
// ActiveStorage.start()

// // stimulus stuff
// import { Application } from "stimulus"
// import { definitionsFromContext } from "stimulus/webpack-helpers"

// const context = require.context("../controllers", true, /\.js$/)
// application.load(definitionsFromContext(context))