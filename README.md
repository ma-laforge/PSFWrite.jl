# PSFWrite.jl

## Description

The PSFWrite.jl module provides a pure-Julia .psf writer.


## Sample Usage

Examples on how to use the PSFWrite.jl capabilities can be found under the [test directory](test/).

<a name="Installation"></a>
## Installation

		julia> Pkg.clone("https://github.com/ma-laforge/PSFWrite.jl")

## Known Limitations

PSFWrite.jl was mostly validated against [LibPSF.jl](https://github.com/ma-laforge/LibPSF.jl): the pure-Julia implementation of Henrik Johansson's [libpsf](https://github.com/henjo/libpsf) library.  It might not be fully compliant with the PSF format.

### Missing Features

PSFWrite.jl does not currently support all .psf file capabilities.

 - Only supports writing swept data in a windowed format.

### Compatibility

Extensive compatibility testing of PSFWrite.jl has not been performed.  The module has been tested using the following environment(s):

 - Linux / Julia-0.7.0 (64-bit) / Ubuntu

## Disclaimer

This software is provided "as is", with no guarantee of correctness.  Use at own risk.
