## v1.0.3:

*NOTE* The next release of this cookbook will be Chef 12+, and will include a rewrite to be resource driven rather than attribute driven.

- Updated Berkshelf configuration
- Creation of .kitchen.docker.yml file to speed up testing
- Update of artifact locations for current ant, ant-contrib
- Removed dependency on java. Requires installation of java, can be accomplished using the java community cookbook.
- Updated OS test matrix
- Added .rubocop.yml
- Cleaned up all rubocop failures
- Updated contributing and testing documentation
- Slightly cleaner installation check courtesy of Jason Vanderhoof

## v1.0.2:

### Bug

- [COOK-2943]: Ant cookbook has foodcritic failures

## v1.0.0:

* [COOK-1711] - Refactored - separate recipes for source vs package
  install, LWRP for ant libraries, still backwards compatible (package
  default installation as previous versions)
