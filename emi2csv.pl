#!/usr/bin/perl
#
#    emi2csv.pl - Converts ATIS/OBF-EMI Formatted Data to Comma Separated Values (CSV)
#
#    Copyright (C) 2013 - Michael J. Mavroudis - michael.j.mavroudis@gmail.com
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

use strict;
use warnings;

if (open(my $f, '<:encoding(UTF-8)', $ARGV[0])) {
	while (my $r = <$f>) {
		chomp $r;
		# Record Indication: Category
		print "\n".substr($r,0,2).",";
		# Record Indication: Group
		print substr($r,2,2).",";
		# Record Indication: Record Type
		print substr($r,4,2).",";
		# Date of Record: Year
		print substr($r,6,2).",";
		# Date of Record: Month
		print substr($r,8,2).",";
		# Date of Record: Day
		print substr($r,10,2).",";
		# From Number Length
		print substr($r,12,2).",";
		# From Number: NPA
		print substr($r,14,3).",";
		# From Number: NXX
		print substr($r,17,3).",";
		# From Number: Line Number
		print substr($r,20,4).",";
		# Overflow Digits
		print substr($r,24,3).",";
		# To Number Length
		print substr($r,27,2).",";
		# To Number: NPA
		print substr($r,29,3).",";
		# To Number: NXX
		print substr($r,32,3).",";
		# To Number: Line Number
		print substr($r,35,4).",";
		# Charge or Amount Collected: $
		print substr($r,39,4).",";
		# Charge or Amount Collected: c
		print substr($r,43,2).",";
		# Charge or Amount Collected: Mill
		print substr($r,45,1).",";
		# Type of Regulation Indicator 
		print substr($r,46,1).",";
		# State Tax
		print substr($r,47,4).",";
		# Local Tax
		print substr($r,51,3).",";
		# Connect Time: Hr
		print substr($r,54,2).",";
		# Connect Time: Min
		print substr($r,56,2).",";
		# Connect Time: Sec
		print substr($r,58,2).",";
		# Billable or Reported Time: Min
		print substr($r,60,4).",";
		# Billable or Reported Time: Sec
		print substr($r,64,2).",";
		# Billable or Reported Time: 1/10
		print substr($r,66,1).",";
		# Method of Recording
		print substr($r,67,2).",";
		# Return Code
		print substr($r,69,2).",";
		# From RAO
		print substr($r,71,3).",";
		# Local Company Information
		print substr($r,74,3).",";
		# Rate Period
		print substr($r,77,1).",";
		# Rate Class
		print substr($r,78,1).",";
		# Message type
		print substr($r,79,1).",";
		# IOC Code
		print substr($r,80,1).",";
		# Indicators
		print substr($r,81,20).",";
		# Operator Unit
		print substr($r,101,2).",";
		# Recording Point Identifaction (AMA)
		print substr($r,103,6).",";
		# Billing RAO
		print substr($r,109,3).",";
		# Billing Number North American Standard
		print substr($r,112,10).",";
		# Coin Tariff Amt: $
		print substr($r,122,3).",";
		# Coin Tariff Amt: c
		print substr($r,125,2).",";
		# Coin Fed Tax: $
		print substr($r,127,2).",";
		# Coin Fed Tax: c
		print substr($r,129,2).",";
		# SSAS Code
		print substr($r,131,2).",";
		# CnCrCd ?? - not clear in scan
		print substr($r,133,1).",";
		# North American To Place
		print substr($r,134,10).",";
		# North American To State
		print substr($r,144,2).",";
		# Library Code
		print substr($r,146,2).",";
		# Settlement Code
		print substr($r,148,1).",";
		# Carrier Identification
		print substr($r,149,3).",";
		# Treatable Indicator?
		print substr($r,156,1).",";
		# Indicators
		print substr($r,157,10).",";
		# LSPID
		print substr($r,167,4).",";
		# Reserved For Local Company Use
		print substr($r,171,4).",";
	}
}
