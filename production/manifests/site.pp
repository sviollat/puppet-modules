node default {

	class { 'helloworld': }
	class { 'helloworld::motd': }

	include accounts

}
