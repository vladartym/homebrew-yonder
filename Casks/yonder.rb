cask "yonder" do
  version :latest
  sha256 :no_check

  url "https://download.yonder.so/Yonder.dmg"
  name "Yonder"
  desc "Voice front end for Claude Code"
  homepage "https://yonder.so"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Yonder.app"

  zap trash: [
    "~/Library/Application Support/com.vladartym.yonder",
    "~/Library/Caches/com.vladartym.yonder",
    "~/Library/Preferences/com.vladartym.yonder.plist",
    "~/Library/WebKit/com.vladartym.yonder",
  ]
end
