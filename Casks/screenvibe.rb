cask "screenvibe" do
  version "0.1.0"
  sha256 "2a37f8110373f9e8761bc456544cdd01dd770bc9851f6d86201eb4c1914b1190"

  url "https://github.com/ScreenVibe/ScreenVibe/releases/download/v#{version}/ScreenVibe-#{version}.zip"
  name "ScreenVibe"
  desc "Mark up your screen and send it straight to Claude Code"
  homepage "https://github.com/ScreenVibe/ScreenVibe"

  depends_on macos: ">= :sonoma"

  app "ScreenVibe.app"

  zap trash: "~/.screenvibe"

  caveats <<~EOS
    Add the Claude Code add-on:
      claude plugin marketplace add ScreenVibe/ScreenVibe
      claude plugin install screenvibe@screenvibe
  EOS
end
