## v1.0.2:

### Bug

- [COOK-2943]: Ant cookbook has foodcritic failures


## v2.1.0:

* Moderate support for OSX install_source

## v2.0.0:

* Move to Berkshelf 3
* The Redhat family does not have an 'ivy' package in its repos, download 
  the package from Apache and install using ark

## v1.0.0:

* [COOK-1711] - Refactored - separate recipes for source vs package
  install, LWRP for ant libraries, still backwards compatible (package
  default installation as previous versions)
