#!/bin/sh

for arch in 486sx all arm-oabi armv4 armv4t armv5te armv5teb armv6 armv6-novfp armv7 armv7a avr32 blackfin geode i486 i586 i686 iwmmxt mips mipsel powerpc ppc405 ppc440e ppc500 ppc603e ppce300c2 ppce300c3 ppce500 ppce500v2 ppce600 sh4 sparc x86 x86_64 ; do
	echo "\t\t\tarray('name'=>'${arch} base',\t'url'=>'${arch}/base',),"
	echo "\t\t\tarray('name'=>'${arch} perl',\t'url'=>'${arch}/perl',),"
	echo "\t\t\tarray('name'=>'${arch} python',\t'url'=>'${arch}/python',),"
	echo "\t\t\tarray('name'=>'${arch} gstreamer',\t'url'=>'${arch}/gstreamer',),"

	case "$arch" in
		"486sx")
				machines="vortex86sx" ;;
		"armv4")
				machines="collie h3600 h3800 htcwallaby jornada56x jornada7xx shark simpad" ;;
		"armv4t")
				machines="acern30 amsdelta at2440evb cs-e9302 ep93xx eteng500 eten-m800 fic-gta01 fic-gta02 gesbc-9302 h1940 h6300 kb9202 ks8695 m8050 micro2440 mini2440 om-gta01 om-gta02 rx1950 rx3000 sarge-at91 simone smdk2440 smdk2443 topas910 ts72xx" ;;
		"armv5te")
				machines="a1200 a780 a910 afeb9260 afeb9260-180 akita asus620 asus730 at91cap9adk at91-l9260 at91sam9260ek at91sam9261ek at91sam9263ek at91sam9g10ek at91sam9g20ek at91sam9g45ek at91sam9g45ekes at91sam9rlek aximx50 aximx50v bd-neon c7x0 chumby cm-x270 cm-x300 da830-omapl137-evm da850-omapl138-evm davinci-dvevm davinci-sffsdr devkitidp-pxa255 dm355-evm dm355-leopard dm357-evm dm365-evm dm6446-evm dm6467-evm dm6467t-evm dns323 e680 ea3250 em-x270 er0100 eseries ghi270 gumstix gumstix-connex gumstix-custom-connex gumstix-custom-verdex gumstix-verdex h1910 h2200 h3900 h4000 h5000 hawkboard hipox htcalpine htcapache htcblueangel htchimalaya htcsable htctornado htcuniversal hx2000 hx4700 imote2 ixp4xxle kixrp435 kuropro logicpd-pxa270 looxc550 lspro magician mainstone mh355 mp900c mtx-3 mtx-3a mv2120 mx21ads mx27ads n2100 navman-icn330 netbook-pro neuros-osd neuros-osd2 nhk15 nokia770 nslu2le omap1510inn omap1610h2 omap1710h3 omap5912osk openrd-base openrd-client palmld palmt650 palmt680 palmtc palmtt palmtt3 palmtt5 palmtx palmz31 palmz71 palmz72 poodle qemuarm rokre2 rokr-e2 rokre6 ronetix-pm9261 ronetix-pm9263 sgh-i900 sheevaplug spitz stamp9g20evb topas910 tosa triton ts409 tsx09 tx25 tx27" ;;
		"armv5teb")
				machines="fsg3be ixp4xxbe nslu2be" ;;
		"armv6")
				machines="bug mx31ads mx31moboard mini6410 nokia800 om-3d7k omap2420h4 omap2430sdp smartq5 smdk6410" ;;
		"armv6-novfp")
				machines="htcblackstone htcdiamond htcdream htckaiser htcnike htcpolaris htcraphael htctitan htcvogue" ;;
		"armv7a")
				machines="am3517-evm archos5 archos5it beagleboard bug20 cm-t35 dm37x-evm am37x-evm htcleo igep0020 nokia900 omap3517-evm omap3evm omap3-pandora omap3-touchbook omap4430-sdp omapzoom omapzoom2 omapzoom36x overo palmpre omap4430-panda" ;;
		"avr32")
				machines="at32stk1000 atngw100" ;;
		"bfin")
				archdir="blackfin"
				machines="adsp-bf537-stamp" ;;
		"geode")
				machines="alix geodegx geodelx iei-nanogx-466 xo" ;;
		"i486")
				machines="wrap" ;;
		"i586")
				machines="d201gly2 epia i586-generic netvisa progear x86 x86-uml" ;;
		"i686")
				machines="eee701 i686-generic qemux86 guinness progear ion qemux86 vmware x86-32-nocona x86-prescott" ;;
		"iwmmxt")
				machines="" ;;
		"mips")
				machines="qemumips" ;;
		"mipsel")
				machines="ben-nanonote db1200 lsmipsel mtx-1 mtx-2 rb500 stb225 wgt634u wl500g wrt54 xxs1500" ;;
		"powerpc")
				machines="gamecube p2020ds" ;;
		"ppc405")
				machines="dht-walnut kilauea magicbox xilinx-ml403 xilinx-ml410" ;;
		"ppc440e")
				machines="canyonlands sequoia xilinx-ml507" ;;
		"ppc603e")
				machines="efika lite5200 lsppchd lsppchg n1200 qemuppc storcenter" ;;
		"ppce300c2")
				machines="mpc8323e-rdb" ;;
		"ppce300c3")
				machines="boc01 mpc8313e-rdb mpc8315e-rdb" ;;
		"ppce500")
				machines="tqm8540" ;;
		"ppce500v2")
				machines="calamari" ;;
		"ppce600")
				machines="mpc8641-hpcn" ;;
		"sh4")
				machines="qemush4 titan" ;;
		"sparc")
				machines="sun4cdm" ;;
		"x86")
				machines="colinux" ;;
	esac

	for machine in $machines ; do
		echo "\t\t\tarray('name'=>'${machine} machine feed',\t'url'=>'${arch}/machines/${machine}',),"
	done
done

echo "\t\t)// end distro[feeds]"
echo "\t), //end distro"


