Pod::Spec.new do |s|
  s.name             = 'EANBarcodeGenerator'
  s.version          = '0.2.0'
  s.summary          = 'EAN-13, UPC-A barcode generator.'

  s.description      = <<-DESC
EANBarcodeGenerator provides CIFilter witch allows to generate EAN-13, UPC-A barcodes.
This generator was created for iOS application PokeWall (https://itunes.apple.com/us/app/pokewall/id1449455385)
                       DESC

  s.homepage         = 'https://github.com/ampirator/EANBarcodeGenerator'
  s.screenshots      = 'https://raw.githubusercontent.com/ampirator/EANBarcodeGenerator/master/Images/screenshot.jpg'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sergey Bayborodov' => 'ampirator@gmail.com' }
  s.source           = { :git => 'https://github.com/ampirator/EANBarcodeGenerator.git', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'

  s.source_files = 'EANBarcodeGenerator/Classes/**/*'
  s.frameworks = 'UIKit', 'CoreImage', 'Foundation'  
end
