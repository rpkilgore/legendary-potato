class legendarypotato (
	$mhellomsg     = $legendarypotato::params::mhellomsg,
	$rootdir       = $legendarypotato::params::rootdir,
	$filename      = $legendarypotato::params::filename,
	$contenforfile = $legendarypotato::params::contenforfile,
	$createfile    = $legendarypotato::params::createfile,
	) inherits legendarypotato::params {
	
	notify("hellowmsg variable contains: $mhellomsg")
	
	if $createfile {
		#then create a file
		#the params folder will determine the location
		#ie c:\ for windows or /etc/ for linux
		file { 'fileexample':
			path    => "$rootdir/$filename",
			content => $contenforfile,
		}
	}
}
