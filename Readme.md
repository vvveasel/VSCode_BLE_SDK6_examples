![vscode](../VSCode_BLE_SDK6_examples/img/vscode1.png)
## *Modified repo of the [Smartbond SDK6 examples](https://github.com/dialog-semiconductor/BLE_SDK6_examples) for Visual Studio Code*
---

This is the repository storing examples for the [DA145xx family](https://www.renesas.com/eu/en/products/interface-connectivity/wireless-communications/bluetooth-low-energy/da14531-smartbond-ultra-low-power-bluetooth-51-system-chip).

### Minimum system requirements
Current configuration has been tested on Intel Mac, but any host with the following should work:

- [VSCode](https://code.visualstudio.com/)
- [Git](https://git-scm.com/)
- [CMake](https://cmake.org/)
- [Segger J-link](https://www.segger.com/downloads/jlink/)
- [Dialog SDK 6](https://www.renesas.com/us/en/document/swo/sdk601811821-da1453x-da145856?r=1564826)
- [GCC arm-none-eabi toolchain](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)

### System setup
- Install components above
- Install (recommended) `C/C++ Extension Pack` and `CMake tools` VSCode extensions
- Go to the `projects` folder of SDK 6 - for example: (*Your_install_location/DA145xx_SDK/6.0.18.1182.1/projects*)
- Open terminal in `projects` folder and clone [VSCode_BLE_SDK6_examples
](https://github.com/vvveasel/VSCode_BLE_SDK6_examples) repo
- Clone [build_utils](https://github.com/vvveasel/build_utils) repo
- Your `projects` folder should include 4 subfolders: `host_apps`, `target_apps`, `build_utils` and `VSCode_BLE_SDK6_examples`.
### VSCode project edits
- Launch VSCode and open [iBeacon](./connectivity/ibeacon/) folder on local machine.
- Open [CMakeLists.txt](./connectivity/ibeacon/CMakeLists.txt).
- Edit lines below to match your installation paths:
`set(DIALOG_SDK_PATH "$ENV{HOME}/Projects/sdk/DA145xx_SDK/6.0.18.1182.1")`
`set(GCC_TOOLCHAIN_PATH "/Applications/ArmGNUToolchain/13.2.Rel1/arm-none-eabi")`.
- Open `.vscode` folder and edit the following lines in `launch.json` file to match your installation and platform:
`            "osx": {`
`               "miDebuggerPath": "/Applications/ArmGNUToolchain/13.2.Rel1/arm-none-eabi/bin/arm-none-eabi-gdb",`
`                "debugServerPath": "/Applications/SEGGER/JLink_V794b/JLinkGDBServerCLExe",`
- Click on `CMake extension` and `Scan for kits` in the `Configure` option.
- VSCode should find your `GCC 13.x arm-eabi-none` kit. If not, go to settings, search for `Additional Kits` and provide search path to your cross compiler.
- Delete `build` folder if it is present.
- Go to `CMake extension` and click `configure`.
- If configuration was successful, you should see these lines in the output:
`[cmake] -- Configuring done`
`[cmake] -- Generating done`
- Click `build`. If successful, you should find these lines in the output:
`[build] [100%] Built target DA14531_531`
`[driver] Build completed: 00:00:04.363`
`[build] Build finished with exit code 0`
### Build notes
- Only DA14531 configuration was set and tested
- Only USB DA14531 kit used for testing
### Testing iBeacon
- Plug your hardware
- Click on the debugger symbol or via F5
- Let program run after it stops on load
- Launch `NRF Connect`(recommended) app on the Android phone
- Find your beacon and check UUID
### Test Central project (or any other)
- Copy modified `CMakeLists.txt` and `.vscode` folder to [Central](./connectivity/central/) project. Override exising files.
- Configure and build
- Run firmware and open serial terminal at 230400 baud.
- Check central devices discovery output.
### Test BLE Barebone project from Renesas SDK6
- Copy modified `CMakeLists.txt` and `.vscode` folder to [ble_app_barebone](../target_apps/ble_examples/ble_app_barebone/) project. Override exising files.
- Configure and build
- Launch `NRF Connect` app and find `DLG-BRBN` device. Connect.
### Debug
- I have only briefly tested built-in gdb-segger combo but it seems to be running fine. Start-pause program, setting, hitting breakpoints...
---
### Disclaimer
This setup is experimental and only brief testing has been done so far. There is no guarantee it will work out-of-the box for more complex projects. The author provides no warranty or support. Use at your own discretion. MIT license. 