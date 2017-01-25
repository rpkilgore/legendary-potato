class legendary-potato::helloworld (
	$mhellomsg => $legendary-potato::params::mhellomsg,
	$rootdir => $legendary-potato::params::rootdir,
	$filename => $legendary-potato::params::filename,
	$contenforfile => $legendary-potato::params::contenforfile,
	$createfile => $legendary-potato::params::createfile,
	) inherits $legendary-potato::params {
	
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