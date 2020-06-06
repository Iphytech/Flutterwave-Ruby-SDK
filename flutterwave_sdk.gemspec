require_relative 'lib/flutterwave_sdk/version'

Gem::Specification.new do |spec|
  spec.name          = "flutterwave_sdk"
  spec.version       = FlutterwaveSdk::VERSION
  spec.authors       = ["Ifunanya Ikemma"]
  spec.email         = ["ifavour902@gmail.com"]

spec.date        = '2020-05-10'
  spec.summary       = %q{Ruby Gem For Rave Payments By Flutterwave.}
  spec.description   = %q{This is the official Ruby Gem For Rave Payments which includes Card, Account, Transfer, Subaccount, Subscription, Mpesa, Ghana Mobile Money, Ussd, Payment Plans, and Transfer payment methods.}
  spec.homepage      = "https://github.com/Iphytech/Flutterwave-Ruby-SDK."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
