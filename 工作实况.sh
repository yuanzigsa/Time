({XNDX-6851:net.if.out[ifHCOutOctets.13].avg(15m)}<(40/100)*{XNDX-6851:net.if.speed[ifHighSpeed.13].last()} or
{XNDX-6851:net.if.out[ifHCOutOctets.14].avg(15m)}<(37/100)*{XNDX-6851:net.if.speed[ifHighSpeed.13].last()} or
{XNDX-6851:net.if.out[ifHCOutOctets.15].avg(15m)}<(28/100)*{XNDX-6851:net.if.speed[ifHighSpeed.13].last()} or
{XNDX-6851:net.if.out[ifHCOutOctets.16].avg(15m)}<(27/100)*{XNDX-6851:net.if.speed[ifHighSpeed.13].last()} or
{XNDX-6851:net.if.out[ifHCOutOctets.19].avg(15m)}<(49/100)*{XNDX-6851:net.if.speed[ifHighSpeed.13].last()}) and
({XNDX-6851:net.if.speed[ifHighSpeed.13].last()}>0 or
{XNDX-6851:net.if.speed[ifHighSpeed.14].last()}>0 or
{XNDX-6851:net.if.speed[ifHighSpeed.15].last()}>0 or
{XNDX-6851:net.if.speed[ifHighSpeed.16].last()}>0 or
{XNDX-6851:net.if.speed[ifHighSpeed.19].last()}>0)

{XNDX-6851:net.if.out[ifHCOutOctets.13].last()} / {XNDX-6851:net.if.speed[ifHighSpeed.13].last()} * 100 <= 50

#
interface 10GE1/0/30
 undo portswitch
 description up-bd-s6850-1 TW1/0/33
 ipv6 enable
 ip add 172.31.255.2 30
 ipv6 add FEC0:172:31:255::1 127
 device transceiver 10GBASE-FIBER
#
interface 10GE1/0/31
 undo portswitch
 description up-bd-s6850-1 TW1/0/34
 ipv6 enable
 ip add 172.31.255.6 30
 ipv6 add FEC0:172:31:255::3 127
 device transceiver 10GBASE-FIBER
#
interface 10GE1/0/32
 undo portswitch
 description up-bd-s6850-1 TW1/0/35
 ipv6 enable
 ip add 172.31.255.10 30
 ipv6 add FEC0:172:31:255::5 127
 device transceiver 10GBASE-FIBER

#
interface 10GE2/0/30
 undo portswitch
 description up-bd-s6850-2 TW1/0/33
 ipv6 enable
  ip add 172.31.255.130 30
  ipv6 add FEC0:172:31:255::129 127
 device transceiver 10GBASE-FIBER
#
interface 10GE2/0/31
 undo portswitch
 description up-bd-s6850-2 TW1/0/34
 ipv6 enable
  ip add 172.31.255.134 30
  ipv6 add FEC0:172:31:255::131 127
 device transceiver 10GBASE-FIBER
#
interface 10GE2/0/32
 undo portswitch
 description up-bd-s6850-2 TW1/0/35
  ipv6 enable
  ip add 172.31.255.138 30
  ipv6 add FEC0:172:31:255::133 127
 device transceiver 10GBASE-FIBER
#

ip route-static 14.204.34.96 255.255.255.240 192.168.21.2 description down-bd
ip route-static 14.204.34.96 255.255.255.240 192.168.21.6 description down-bd
ip route-static 14.204.34.96 255.255.255.240 192.168.21.10 description down-bd
ip route-static 14.204.34.112 255.255.255.248 192.168.21.2 description down-bd
ip route-static 14.204.34.112 255.255.255.248 192.168.21.6 description down-bd
ip route-static 14.204.34.112 255.255.255.248 192.168.21.10 description down-bd

ipv6 route-static 2408:876C:C0:151:: 64 2408:876C:C0:150::1 description down-bd
ipv6 route-static 2408:876C:C0:151:: 64 2408:876C:C0:150::3 description down-bd
ipv6 route-static 2408:876C:C0:151:: 64 2408:876C:C0:150::5 description down-bd
ipv6 route-static 2408:876C:C0:151:: 64 2408:876C:C0:150::7 description down-bd
ipv6 route-static 2408:876C:C0:151:: 64 2408:876C:C0:150::9 description down-bd

