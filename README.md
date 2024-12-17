# Space-Pack

`space-pack` and its constituent packages offer Swift bindings for two open-source C astronomy software libraries.

The packages demonstrate:

* Creating a Swift package from C source
* Creating Swift bindings/facades around the C functions

# Build order

* C code
  * SuperNOVAS C source is built in the `novas-lib` directory
  * C-Spice is built in the `cspice-lib` directory
  * Both C projects rely on the `cLanguageStandard` setting to use ANSI C
* Swift code
  * `space-pack` is largely a placeholder at this point
  * `cspice-swift` adds Swift wrappers around `cspice-lib` calls
  * `novas-swift` adds Swift wrappers around `novas-lib` calls

# Acknowledgements

`CSPICE` is provided by [NASA JPL](https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/C/).

The `SuperNOVAS` code is taken from the [Smithsonian/SuperNOVAS GitHub repository](https://github.com/Smithsonian/SuperNOVAS/).

Both libraries are open-source and free from export restrictions.