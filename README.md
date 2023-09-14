# Current CI set up:

Run `BuildAndTest.sh` which does `build-for-testing` for `AllInOneTests` scheme and then `test-without-building`. 
This means that we always run all tests for all targets. Hence, we can't cache any targets because tests of such targets won't build. 

# Desired CI set up:

Only build and test modified targets. 

GIVEN the following diagram, where CI had cached `LibraryA`, `LibraryB`, `FeatureA`, `FeatureB`:

![graph](graph.png)

SCENARIO 1: For Pull Request were only `FeatureA` is modified, we expect the following:

 - `App`: build and test
 - `LibraryA`: use cache and skip tests
 - `LibraryB`: use cache and skip tests
 - `FeatureA`: build and test
 - `FeatureB`: use cache and skip tests
 
SCENARIO 1: For Pull Request were only `LibraryA` is modified, we expect the following:

 - `App`: build and test
 - `LibraryA`: build and test
 - `LibraryB`: use cache and skip tests
 - `FeatureA`: build and test
 - `FeatureB`: build and test

We expect `App` to always be built and tested because it depends of all targets.
