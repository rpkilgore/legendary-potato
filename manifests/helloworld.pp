class legendarypotato::helloworld (
	$mhellomsg => $legendarypotato::params::mhellomsg,
	$rootdir => $legendarypotato::params::rootdir,
	$filename => $legendarypotato::params::filename,
	$contenforfile => $legendarypotato::params::contenforfile,
	$createfile => $legendarypotato::params::createfile,
	) inherits $legendarypotato::params {
	
	notify{'mhellowmsg variable contains: $mhellomsg'} #just sends out a message with whatever was defined in the variable
	
	if $createfile == 'true' {
		#then create a file
		#the params folder will determine the location
		#ie c:\ for windows or /etc/ for linux
		file { 'fileexample':
			path => "$rootdir/$filename",
			content => $contenforfile,
		}
	}
}
