#!/usr/bin/perl -w

use warnings;
#use strict;
use Net::SCP::Expect;

#Gets the date this for the backup folder
my $date = `date +%Y%m%d`;
chomp($date);
#This makes the backup folder Change the folder name to refect your server. 
mkdir ("/home/fortigate/".$date);

#This is if you have more then one fire wall and need to add them all here
@firewallips = ('10.11.20.1','172.16.1.1','172.16.10.1',);

foreach $ip (@firewallips) {print "$ip\n";

my $scpe = Net::SCP::Expect->new(auto_yes=>1,port=>22);
$scpe->login('BACKUP_USER', 'BACKUP_PASS');
$scpe->scp("$ip:sys_config","/home/fortigate/" . $date . "/fortigate-$ip\.conf");

}
