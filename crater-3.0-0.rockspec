package = 'crater'
version = '3.0'

source = {
	url = "https://github.com/girvel-workshop/crater"
}

description = {
	summary = 'Command line utility to work w/ git+luarocks',
	homepage = 'https://github.com/girvel/lpull',
	license = 'MIT'
}

build = {
	type = 'builtin',
	modules = {},
	install = {
		bin = {
			"bin/lpull",
			"bin/linstall"
		}
	}
}

dependencies = {
	"ansicolors",
	"strong"
}
