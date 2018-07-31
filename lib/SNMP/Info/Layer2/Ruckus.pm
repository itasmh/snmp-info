# SNMP::Info::Layer2::Ruckus
# $Id$
#

package SNMP::Info::Layer2::Ruckus;

use strict;
use Exporter;
use SNMP::Info::IEEE802dot11;
use SNMP::Info::Layer2;
use SNMP::Info::Layer3;  # only used in sub mac()



@SNMP::Info::Layer2::Ruckus::ISA
    = qw/SNMP::Info::IEEE802dot11 SNMP::Info::Layer2 Exporter/;
@SNMP::Info::Layer2::Ruckus::EXPORT_OK = qw//;

use vars qw/$VERSION %FUNCS %GLOBALS %MIBS %MUNGE/;

$VERSION = '3.61';

%MIBS = (
    %SNMP::Info::Layer2::MIBS,
    %SNMP::Info::IEEE802dot11::MIBS,

);

%GLOBALS
    = ( %SNMP::Info::Layer2::GLOBALS, %SNMP::Info::IEEE802dot11::GLOBALS, );

%FUNCS = (
    %SNMP::Info::Layer2::FUNCS,
    %SNMP::Info::IEEE802dot11::FUNCS,

);

%MUNGE = ( %SNMP::Info::Layer2::MUNGE, %SNMP::Info::IEEE802dot11::MUNGE, );

