cask 'nscope' do
  version '2.0.0'
  sha256 "6d8d10caae6269574a99fa77e2008e9fda89612b784cf4933578bdcf48da8e17"

  url "https://github.com/nLabs-nScope/nLab/releases/download/#{version}/nLab.Installer.dmg"
  name 'nScope'
  homepage 'https://www.nscope.org/'

  app 'nScope.app'
end
