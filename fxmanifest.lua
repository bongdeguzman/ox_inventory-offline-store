fx_version 'cerulean'

games { 'rdr3', 'gta5' }

lua54 'yes'

shared_scripts{
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}

client_scripts {
	'config.lua',
	'client.lua',
}

server_scripts {
	'config.lua',
	'server.lua',
}
