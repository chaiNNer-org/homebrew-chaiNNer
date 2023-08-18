cask "chainner" do
  version "0.19.3"
  # TODO: remove sh256 and url when an arm64 build is available
  sha256 "7479e5d321d6737c094fac3fc47ab719ec239232abd5298e64d6a98bed121304"

  url "https://github.com/chaiNNer-org/chaiNNer/releases/download/v#{version}/chaiNNer-#{version}-x64-macos.dmg",
      verified: "github.com/chaiNNer-org/chaiNNer/"
  # TODO: enable this block when an arm64 build is available
  #   on_arm do
  #     sha256 ""
  #
  #     url "https://github.com/chaiNNer-org/chaiNNer/releases/download/v#{version}/chaiNNer-#{version}-arm64-macos.dmg",
  #         verified: "github.com/chaiNNer-org/chaiNNer/"
  #   end
  #   on_intel do
  #     sha256 "7479e5d321d6737c094fac3fc47ab719ec239232abd5298e64d6a98bed121304"
  #
  #     url "https://github.com/chaiNNer-org/chaiNNer/releases/download/v#{version}/chaiNNer-#{version}-x64-macos.dmg",
  #         verified: "github.com/chaiNNer-org/chaiNNer/"
  #   end

  name "chaiNNer"
  desc "GUI for easy, customizable chaining of image processing tasks"
  homepage "https://chainner.app/"

  livecheck do
    url "https://github.com/chaiNNer-org/chaiNNer/releases/latest"
    strategy :github_latest
  end

  app "chaiNNer.app"

  zap trash: [
    "~/Library/Application Support/chaiNNer",
    "~/Library/Caches/chainner_pip",
    "~/Library/Logs/chaiNNer",
    "~/Library/Preferences/com.electron.chainner.plist",
    "~/Library/Saved Application State/com.electron.chainner.savedState",
  ]
end
