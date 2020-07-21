Title: README.txt
Date:  March 22nd, 2018

Description: 
============
"meta-murata-wireless" is a customized Yocto layer which enables wireless support for Murata modules in the Yocto build. 
For more details email Murata support at "wirelessFAQ@murata.com" or for i.MX processors visit our i.MX landing page at
"https://wireless.murata.com/imx". 

Build Procedure: 
================
Currently only Ubuntu 12.04, 14.04, 16.04 (64-bit) distros are supported. Please install one of these versions on your 
host machine/environment before invoking the "Host_Setup_for_Yocto.sh" script. Once the host 
environment is verified/configured, then you can run the "Murata_Wireless_Yocto_Build.sh" script to generate the 
desired Yocto Linux image.

Folder Contents: 
================
Host_Setup_for_Yocto.sh:
---------------------------------------------- 
Script which first verifies then initializes Linux environment for building Murata-customized Yocto image.
The script also prompts to install the necessary tool chain for TI Sitara platforms.
Open a terminal and run the command: 
$./Host_Setup_for_Yocto.sh

Murata_Wireless_Yocto_Build.sh:
-------------------------------
Script which prompts the user for target hardware/CPU, additional hardware configuration, desired "meta-murata-wireless"
branch or tag release. It then error checks the input before kicking off Murata-customized Yocto build. The last command
invoked is "bitbake" to generate the final/desired SD card image. 
NOTE: the final "bitbake" command will take hours to complete. 
Open a terminal in desired i.MX Yocto build folder, and run the command: 
$./Murata_Wireless_Yocto_Build.sh

Following table provides the stable release information.
=======================================================

--------------------------------------------------------------------
Kernel release | Yocto code name  |  FMAC code name                |
-------------------------------------------------------------------|
5.4.24_2.1.0   | Zeus             |  Zigra                         |
4.14.98_2.3.0  | Sumo             |  Kong, Zigra                   |
4.14.98_2.0.0  | Sumo             |  Manda                         |
4.9.123_2.3.0  | Rocko Mini       |  Manda, Kong, Zigra            | 
4.9.88_2.0.0   | Rocko            |  Mothra, Manda                 |
4.9.11_1.0.0   | Morty            |  Orga, Battra, Mothra, Manda   |
4.1.15_2.0.0   | Krogoth          |  Orga, Battra, Mothra, Manda   |
--------------------------------------------------------------------





