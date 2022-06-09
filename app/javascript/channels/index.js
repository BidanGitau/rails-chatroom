// Import all the channels to be used by Action Cable
import "./chatroom_channel"
const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
