# homebrew-swift-devs
This repository contains a set of custom `brew` formulae for use by developers at Swift Navigation. These formulae can be quickly iterated upon without the official support of the `brew` maintainers.

## Accessing the `swift-devs` tap
Assuming you have `brew` installed, the tap is accessed by simply running the following command:
```
brew tap swift-nav/swift-devs
```

You will now have access to all the formulae in the `swift-devs` tap, and can install them as you would any of the other core `brew` formulae.

## Formulae
### `clang-tools-6.0`
The `clang-tools-6.0` formula installs all tools necessary to run clang-format and clang-tidy on the [Starling repo](https://github.com/swift-nav/starling). This includes appropriate versions of [Clang](http://releases.llvm.org/). It will also set up the necessary symbolic links so everything is available on your path.

Kick off the installation process as you would any other `brew` formula by running:
```
brew install clang-tools-6.0
```

### Old formulae
If you previously installed the now obsolete formulae from this tap, you may want to uninstall them. This is not done automatically. For example:
```
brew uninstall starling-clang-tools starling-toolchain llvm@6
```

## Removing the `swift-devs` tap
If you no longer wish to access the `swift-devs` tap, you may delete it from your local instance of `brew` with the following command:
```
brew untap swift-nav/swift-devs
```
