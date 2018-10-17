# Oke - 桶

Oke is a tool to help you put your Ruby Application into a container, and then to deploy it to a Kubernetes Cluster.

![Loading Barrels](https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Stevedores_on_a_New_York_Dock_Loading_Barrels_of_Corn_Syrup_onto_a_Barge_on_the_Hudson_River%2C_ca._1912_-_NARA_-_518287.jpg/607px-Stevedores_on_a_New_York_Dock_Loading_Barrels_of_Corn_Syrup_onto_a_Barge_on_the_Hudson_River%2C_ca._1912_-_NARA_-_518287.jpg)

_Oke is currently a protoype, and does nothing of any use, I am using it to test ideas I have for the UX of this sort of tool, it may or may not ever become a real thing_

## Fun Fact

桶 (Oke) is a Japanese word that describes a tub, barrel or container.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'oke'
```

And then execute:

    $ bundle

To get started with oke, you can run `oke init` to setup the config files that the tool uses.

```
$ bundle exec oke init
Detected Rails Application 🛤️

Preparing config files 📝
    create config/oke/processes.rb
    create config/oke/variables.rb
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/errm/oke.

## License

The gem is available as open source under the terms of the [Apache License, Version 2.0](https://opensource.org/licenses/Apache-2.0).

## Code of Conduct

Everyone interacting in the Oke project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/errm/oke/blob/master/CODE_OF_CONDUCT.md).
