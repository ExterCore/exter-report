fx_version "cerulean"
game 'gta5'
lua54 'yes'

author "sobing"

version '1.1'

description "exter-report like nopixel 4.0"

ui_page 'web/index.html'

files {
  'web/index.html',
  'web/**/*'
}

client_scripts { 
  "client/**/*",
}

server_scripts { 
  "server/**/*",
}
