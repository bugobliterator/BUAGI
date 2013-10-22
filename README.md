BeagleBone-Userspace-Arduino-Graphical-IDE
=====

This project is intended to provide Graphical IDE extension to the [Userspace-Arduino library](https://github.com/prpplague/Userspace-Arduino/)

###Brief Introduction

BUAGI is developed using the source code of [Arduino](https://github.com/arduino/Arduino). The library used for compiling the sketches is Userspace-Arduino.
The project for now focuses on IDE for userspace compilation and then onboard execution but will be including IDE onboard for native compilation and execution at later stages.
The project is compatible with beaglebone and beaglebone black projects. Only linux based OSes are supported. The project was built and tested over linux mint and beaglebone board.

###Seting up BUAGI

* Make sure you have the latest production image of the Angstrom Distribution on the Beaglebone Black 
[here](http://circuitco.com/support/index.php?title=Updating_The_Software).
* Check if your operating system is i686 or x86_64 based using following command

        uname -a
* Get the Angstrom toolchain from [here](http://www.angstrom-distribution.org/toolchains) or :
             
    for i686 systems:
         
         wget http://www.angstrom-distribution.org/toolchains/angstrom-2011.03-i686-linux-armv7a-linux-gnueabi-toolchain-qte-4.6.3.tar.bz2
    for x86_64 systems:
              
         wget http://www.angstrom-distribution.org/toolchains/angstrom-2011.03-x86_64-linux-armv7a-linux-gnueabi-toolchain-qte-4.6.3.tar.bz2
* Extract it to / only:

         sudo tar -C / -xjf name-of-toolchain-you-downloaded.tar.bz2
  *check that toolchain binaries are in /usr/local/angstrom/arm/bin*
* Get this repository

         git clone https://github.com/bugobliterator/BUAGI.git && cd BUAGI
* Copy the Bacon-overlay to the Beaglebone Black
            
         scp Userspace-Arduino/overlay/BB-BONE-BACONE-00A0.dtbo root@192.168.7.2:/lib/firmware
    *The default username is root and password is blank.*

* Install sshpass in your system
   
         sudo apt-get update 
         sudo apt-get install sshpass

###Running An Example
* Open BUAGI executable by opening the folder in elevated Privileges mode.
* Go-to Files->Examples->Beagle-Examples->--select any example--
* Click on the verify button in toolbar.
* Wait for compilation and executable generation to complete.
* Click on the Upload button.
* The prompt will popup asking IP address of beaglebone, cancel if you want auto search or enter if there is problem connecting.
* Then another prompt asking ssh password will popup press cancel if you haven't selected any.
* The executable will be uploaded to the board and will be executed.
* All the outputs except errors of connection failure (those will be displayed on console below) will be saved in a log in log folder.
* When the upload button is clicked again the process will be stopped and the log file will be deleted.
   *if logs are not deleted successfully, manualy delete them yourself so new logs can be created for new session*


  


