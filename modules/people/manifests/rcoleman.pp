class people::rcoleman {

  include 'dropbox'
  include 'sublime_text_2'
  include 'hipchat'
  include 'skype'
  include 'things'
  include 'iterm2::stable'
  #include 'chrome'
  include 'vagrant'
  include 'vmware_fusion'
  include 'tunnelblick'
  include 'alfred'
  include 'spotify'
  include 'kindle'
  include 'googledrive'
  include 'transmission'

  vagrant::plugin { 'vagrant-vmware-fusion':
    license => 'puppet:///modules/people/fusion.lic',
  }

  package { '1Password':
    provider   => 'compressed_app',
    source => 'https://d13itkw33a7sus.cloudfront.net/dist/1P/mac/1Password-3.8.21.zip'
  }

  package { 'PackerIO':
    provider   => 'compressed_app',
    source => 'http://dl.bintray.com/mitchellh/packer/0.1.1_darwin_amd64.zip'
  }


  

  vagrant::box { 'centos64x64/vmware_fusion':
    source => 'http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-fusion503.box'
  }
  
  include osx::finder::unhide_library
  include osx::no_network_dsstores

}
