cask "xmind8" do
  version "8-update9"
  sha256 "120745d98a6122af56f944f666c59a6c3e06099be3838c365e6554e82db19211"

  url "https://dl3.xmind.net/xmind-#{version}-macosx.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/xmind8-pro/"

  deprecate! date: "2023-12-17", because: :discontinued

  conflicts_with cask: "xmind"

  app "XMind.app"

  zap trash: [
    "~/Library/XMind",
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
  ]
end
