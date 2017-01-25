class legendarypotato::params {
	
	$mhellomsg => 'Hello World, Puppet has found you!',
	$filename  => 'legendary-potato.txt',
	$contenforfile => 'If you can read me then congrats! You opened a file! :)',
	$createfile    => 'false',
	
	case $os['family'] {
		'debian': {
			$rootdir => '/etc/',
		}
		'redhat': {
			$rootdir => '/etc/',
		}
		'windows': {
			$rootdir => 'C:/'
		}
	}
}
