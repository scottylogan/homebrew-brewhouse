cask 'nscope' do
  version '0.8.2'
  sha256 '79de8932422d4750539752dd7c263123fa46bbb15b693408b7a8f74939bec817'

  url "https://www.nscope.org/v#{version}/mac/nScope.dmg"
  appcast 'https://www.nscope.org/download'
  name 'nScope'
  homepage 'https://www.nscope.org/'

  app 'nScope.app'
end
