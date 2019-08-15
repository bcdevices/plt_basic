# PLT Basic

Small Sample application for connecting the PLT to the network using Ethernet.

This application utilizes [a custom Nerves system for the PLT](https://github.com/bcdevices/ly10-system-rpi3).


## Building and running the code in this repository

You should be using the following Elixir and Erlang versions:
  * Elixir 1.9
  * Erlang OTP 22

1. Export `MIX_TARGET=ly10_rpi3` environment.
2. Get the dependencies with `mix deps.get`
3. Create the firmware with `mix firmware.burn`
4. Burn the firmware to and SD card with `mix firmware.burn`
6. Insert an SD card into the `Raspberry PI` inside the `PLT` and power it on
7. After a couple of minutes, the `PLT` should be available on the network with a hostname of `pltbasic.local`

``` bash
export MIX_TARGET=ly10_rpi3
mix deps.get
mix firmware
mix firmware.burn
```

## Adding SSH support

SSH support for the PLT can be be configured by doing the following:
1. Clone this repository
2. Add an SSH public key to the ssh_keys folder
3. Rebuild the project and install the new image in the `PLT`
4. SSH into the `PLT` using `ssh pltbasic.local`

## Learn more

  * Official docs: https://hexdocs.pm/nerves/getting-started.html
  * Official website: https://nerves-project.org/
  * Forum: https://elixirforum.com/c/nerves-forum
  * Discussion Slack elixir-lang #nerves ([Invite](https://elixir-slackin.herokuapp.com/))
  * Source: https://github.com/bcdevices/plt_basic
