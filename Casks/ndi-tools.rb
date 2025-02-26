cask "ndi-tools" do
  version :latest
  sha256 :no_check

  url "https://downloads.ndi.tv/Tools/NDIToolsInstaller.pkg",
      verified: "downloads.ndi.tv/Tools"
  name "NDI Tools"
  desc "Video Monitor, Virtual Input and more"
  homepage "https://ndi.video/"

  pkg "NDIToolsInstaller.pkg"

  uninstall pkgutil: [
    "com.newtek.Application-Mac-NDI-AccessManager",
    "com.newtek.Application-Mac-NDI-ScanConverter",
    "com.newtek.Application-Mac-NDI-StudioMonitor",
    "com.newtek.Application-Mac-NDI-VirtualInput",
    "com.newtek.DAL.NDIplugin",
    "com.newtek.DAL.NDIpluginlaunchdaemon",
    "com.newtek.HAL.NDIaudioplugin",
    "com.newtek.NDI-HX-Driver",
    "com.newtek.NDI-Tools",
    "com.newtek.NDI-Transmit-AdobeCC",
    "com.newtek.NDI.prefpane",
    "com.newtek.NDIRouter",
    "com.newtek.NewTek-Import-SpeedHQ",
    "com.newtek.Test-Patterns-Mac-",
    "com.newtek.driver.NDIAudio",
    "com.newtek.ndi.recording",
  ]

  # Virtual Input installs a DAL plugin on first use.
  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/NDIVideoOut.plugin"

  zap trash: [
    "/Library/Application Support/NewTek",
    "/Library/LaunchDaemons/com.newtek.cmio.DPA.NDI.plist",
    "~/Library/Application Scripts/W8U66ET244.com.newtek.Application-Mac-NDI-VirtualInput",
    "~/Library/Application Scripts/com.newtek.Application-Mac-NDI-VirtualInput",
    "~/Library/Application Scripts/com.newtek.NDIRouter",
    "~/Library/Containers/com.newtek.Application-Mac-NDI-VirtualInput",
    "~/Library/Containers/com.newtek.NDIRouter",
    "~/Library/Group Containers/W8U66ET244.com.newtek.Application-Mac-NDI-VirtualInput",
    "~/Library/Preferences/com.newtek.Application-Mac-NDI-AccessManager.plist",
    "~/Library/Preferences/com.newtek.Application-Mac-NDI-ScanConverter.plist",
    "~/Library/Preferences/com.newtek.Application-Mac-NDI-StudioMonitor.plist",
    "~/Library/Preferences/com.newtek.Test-Patterns-Mac-.plist",
  ]
end
