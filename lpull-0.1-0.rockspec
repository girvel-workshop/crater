package = 'lpull'
version = '0.1-0'

source = {
	url = "https://github.com/girvel/lpull"
}

description = {
	summary = 'Command line utility to pull changes from remote git branch & display classified changes',
	homepage = 'https://github.com/girvel/lpull',
	license = 'MIT'
}

build = {
	type = 'builtin',
	modules = {},
	install = {
		bin = {
			"bin/lpull"
		}
	}
}

dependencies = {
	"ansicolors",
	"strong"
}
