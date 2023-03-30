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

{ZXDX-6851-171.41.132.255:net.if.out[ifHCOutOctets.12].avg(1m)}>(40/100)*{ZXDX-6851-171.41.132.255:net.if.speed[ifHighSpeed.12].last()} and
{ZXDX-6851-171.41.132.255:net.if.speed[ifHighSpeed.12].last()}>0

{ZXDX-6851-171.41.132.255:net.if.out[ifHCOutOctets.13].last()}<({ZXDX-6851-171.41.132.255:net.if.speed[ifHighSpeed.13]].last()}*0.4)

【昆明联通6870配置】
#
interface 10GE1/0/30
 undo portswitch
 description up-bd-s6850-1 TW1/0/33
 ipv6 enable
 ip add 172.31.255.2 30
 ipv6 add FEC0:172:31:255::1 127
#
interface 10GE1/0/31
 undo portswitch
 description up-bd-s6850-1 TW1/0/34
 ipv6 enable
 ip add 172.31.255.6 30
 ipv6 add FEC0:172:31:255::3 127
#
interface 10GE1/0/32
 undo portswitch
 description up-bd-s6850-1 TW1/0/35
 ipv6 enable
 ip add 172.31.255.10 30
 ipv6 add FEC0:172:31:255::5 127

#
interface 10GE2/0/30
 undo portswitch
 description up-bd-s6850-2 TW1/0/33
 ipv6 enable
  ip add 172.31.255.130 30
  ipv6 add FEC0:172:31:255::129 127
#
interface 10GE2/0/31
 undo portswitch
 description up-bd-s6850-2 TW1/0/34
 ipv6 enable
  ip add 172.31.255.134 30
  ipv6 add FEC0:172:31:255::131 127
#
interface 10GE2/0/32
 undo portswitch
 description up-bd-s6850-2 TW1/0/35
  ipv6 enable
  ip add 172.31.255.138 30
  ipv6 add FEC0:172:31:255::133 127
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

({ZXDX-6851-171.41.132.255:net.if.out[ifHCOutOctets.12].avg(1m)}<(73/100)*{ZXDX-6851-171.41.132.255:net.if.speed[ifHighSpeed.12].last()} and
{ZXDX-6851-171.41.132.255:net.if.speed[ifHighSpeed.12].last()}>0) or
({ZXDX-6851-171.41.132.255:net.if.out[ifHCOutOctets.14].avg(1m)}<(70/100)*{ZXDX-6851-171.41.132.255:net.if.speed[ifHighSpeed.14].last()} and
{ZXDX-6851-171.41.132.255:net.if.speed[ifHighSpeed.14].last()}>0) or
({ZXDX-6851-171.41.132.255:net.if.out[ifHCOutOctets.16].avg(1m)}<(70/100)*{ZXDX-6851-171.41.132.255:net.if.speed[ifHighSpeed.16].last()} and
{ZXDX-6851-171.41.132.255:net.if.speed[ifHighSpeed.16].last()}>0)


【荆州联通6870配置】
#
interface 10GE1/0/27
 undo portswitch
 description UP-YH
 ipv6 enable
 ip add 10.1.10.2 30
 ipv6 add FEC0:0000:0000:0000:0000:0000:0000:0001 127
#
interface 10GE1/0/28
 undo portswitch
 description UP-YH
 ipv6 enable
 ip add 10.1.10.6 30
 ipv6 add FEC0:0000:0000:0000:0000:0000:0000:0003 127
#
interface 10GE1/0/29
 undo portswitch
 description UP-YH
 ipv6 enable
 ip add 10.1.10.10 30
 ipv6 add FEC0:0000:0000:0000:0000:0000:0000:0005 127
#
interface 10GE1/0/30
 undo portswitch
 description UP-YH
 ipv6 enable
 ip add 10.1.10.14 30
 ipv6 add FEC0:0000:0000:0000:0000:0000:0000:0007 127
#
interface 10GE2/0/27
 undo portswitch
 description UP-YH
 ipv6 enable
 ip add 10.1.10.18 30
 ipv6 add FEC0:0000:0000:0000:0000:0000:0000:0009 127
#
interface 10GE2/0/28
 undo portswitch
 description UP-YH
 ipv6 enable
 ip add 10.1.10.22 30
 ipv6 add FEC0:0000:0000:0000:0000:0000:0000:000B 127
#
interface 10GE2/0/29
 undo portswitch
 description UP-YH
 ipv6 enable
 ip add 10.1.10.26 30
 ipv6 add FEC0:0000:0000:0000:0000:0000:0000:000D 127
#
interface 10GE3/0/27
 undo portswitch
 description UP-YH
 ipv6 enable
 ip add 10.1.10.30 30
 ipv6 add FEC0:0000:0000:0000:0000:0000:0000:000F 127
#
interface 10GE3/0/28
 undo portswitch
 description UP-YH
 ipv6 enable
 ip add 10.1.10.34 30
 ipv6 add FEC0:0000:0000:0000:0000:0000:0000:0011 127
#
interface 10GE3/0/29
 undo portswitch
 description UP-YH
 ipv6 enable
 ip add 10.1.10.38 30
 ipv6 add FEC0:0000:0000:0000:0000:0000:0000:0013 127
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


