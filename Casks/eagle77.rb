cask '/Users/scotty/src/homebrew-brewhouse/Casks/eagle77' do
  version '7.7.0'
  sha256 '4f6aae6e2b56f3da4bd24940ac4f09e838a2b3105c5ff506b80825a8a1250022'

  url 'http://eagle.autodesk.com/eagle/download-software/8'
  name 'Eagle v7.7.0'
  homepage 'http://eagle.autodesk.com/eagle/software-versions/1'

  pkg "eagle-mac64-${version}.pkg"

  uninstall pkgutil: [
                       "com.CadSoftComputerGmbH.EAGLE-#{version}-64"
                     ],
            delete:  "#{appdir}/EAGLE-#{version}"

end
