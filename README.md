# homebrew-swift-devs
This repository contains a set of custom `brew` formulae for use by developers at Swift Navigation. These formulae can be quickly iterated upon without the official support of the `brew` maintainers.

## Accessing the `swift-devs` tap
Assuming you have `brew` installed, the tap is accessed by simply running the following command:
```
brew tap swift-nav/swift-devs
```

You will now have access to all the formulae in the `swift-devs` tap, and can install them as you would any of the other core `brew` formulae.

## Formulae
### `starling-toolchain`
The `starling-toolchain` formula installs all elements necessary to compile and run the [Starling repo](https://github.com/swift-nav/starling). This includes appropriate versions of the [Clang compiler](http://releases.llvm.org/) and [GNU embedded toolchain for ARM](https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads). It will also set up the necessary symbolic links so everything is available on your path.

Kick off the installation process as you would any other `brew` formula by running:
```
brew install starling-toolchain
```

Note that the install may take several minutes, as the files at hand are quite large.

## Removing the `swift-devs` tap
If you no longer wish to access the `swift-devs` tap, you may delete it from your local instance of `brew` with the following command:
```
brew untap swift-nav/swift-devs
```
