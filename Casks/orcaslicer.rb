cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.7.0-beta"
  sha256 arm:   "78b513cf466dae71a2512ccf048b09dd180192eb2582e380481032c16052dc0e",
         intel: "3dd08ab95096d1f27a08c946887a27fc2cd375b615bad291007775c55baefad6"

  url "https://github.com/SoftFever/OrcaSlicer/releases/download/v#{version}/OrcaSlicer_Mac_#{arch}_V#{version}.dmg"
  name "Orca Slicer"
  desc "G-code generator for 3D printers"
  homepage "https://github.com/SoftFever/OrcaSlicer"

  app "OrcaSlicer.app"

  zap trash: [
    "~/Library/Application Support/OrcaSlicer",
    "~/Library/Caches/com.softfever3d.orca-slicer",
    "~/Library/HTTPStorages/com.softfever3d.orcaslicer.binarycookies",
    "~/Library/Preferences/com.softfever3d.orca-slicer.plist",
    "~/Library/Saved Application State/com.softfever3d.orca-slicer.savedState",
    "~/Library/WebKit/com.softfever3d.orca-slicer",
  ]
end
