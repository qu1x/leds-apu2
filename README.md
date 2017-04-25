# leds-apu2

**Kernel module driver for the APU2 LEDs and button**

Forked from [LEDE][] and distributed as standalone package.

[LEDE]: https://github.com/lede-project/source

## Installation

 0. Requred modules:

      * leds-gpio
      * gpio-keys-polled

 1. Install Linux headers:

    ```sh
    sudo apt-get install linux-headers-$(uname -r)

 2. Clone and install this module's sources:

    ```sh
    git clone https://github.com/qu1x/leds-apu2.git
    sudo mv leds-apu2 /usr/src/leds-apu2-1.0.0
    ```

 4. Build and install this module:

      - Either via Make (must be manually rebuilt for each kernel update):

        ```sh
        sudo make -C /usr/src/leds-apu2-1.0.0 install
        ```

      - Or via DKMS (will be automatically rebuilt for each kernel update):

         1. Install DKMS:

            ```sh
            sudo apt-get install dkms
            ```

         2. Install this module:

            ```sh
            sudo dkms install leds-apu2/1.0.0
            ```

## Big Thanks

...to the module's Author Christian Lamparter for helping me to get it running
with Debian Stretch.
