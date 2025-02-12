Pod::Spec.new do |s|
  s.name         = "DKNightVersion"
  s.version      = "2.4.4"
  s.summary      = "DKNightVersion is a lightweight iOS framework adding different theme to your iOS app."
  s.description  = <<-DESC
                   DKNightVersion is a light weight framework. It is mainly built through `objc/runtime` library and reflection, providing a neat approach  adding night mode to your iOS app. A great many codes of this framework is automatically generated by Ruby script.

                   The most delightful feature of DKNightVersion is that it provides a DKColorTable.txt file to help you manage all the colors in your project. It is easily-used and well-designed. Hope you have a great joy to use DKNightVersion to integrate night mode in your Apps.
                    DESC
  s.homepage     = "https://github.com/Draveness/DKNightVersion"
  s.license      = "MIT"
  s.author             = { "Draveness" => "stark.draven@gmail.com" }
  s.platform     = :ios, "7.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/Draveness/DKNightVersion.git", :tag => s.version }
  s.source_files = "DKNightVersion/DKNightVersion.h"

  s.public_header_files = "DKNightVersion/DKNightVersion.h"
  s.resource = "DKNightVersion/ColorTable/DKColorTable.txt"

  s.subspec 'Core' do |ss|
    ss.source_files = "DKNightVersion/Core/*.{h,m}", "DKNightVersion/ColorTable/*{h,m}"

    ss.subspec 'DeallocBlockExecutor' do |sss|
        sss.source_files = "DKNightVersion/DeallocBlockExecutor/*.{h,m}"
    end

    ss.subspec 'extobjc' do |sss|
        sss.source_files = "DKNightVersion/extobjc/*.h"
    end

  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = "DKNightVersion/UIKit/*.{h,m}", "DKNightVersion/Manual/*.{h,m}"
    ss.dependency 'DKNightVersion/Core'
  end

  s.subspec 'CoreAnimation' do |ss|
    ss.source_files = "DKNightVersion/CoreAnimation/*.{h,m}"
    ss.dependency 'DKNightVersion/Core'
  end

end
