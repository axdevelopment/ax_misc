fx_version 'cerulean'
game 'gta5'
author 'ax dev'
description 'Items'
version '1.0'

shared_script '@es_extended/imports.lua'

client_scripts {
    'client/client.lua',
    'config.lua'
}

server_scripts {
    'server/server.lua',
    'config.lua'
}

dependency 'mythic_progbar'