# Current CI set up:

Run `BuildAndTest.sh` which does `build-for-testing` for `AllInOneTests` scheme and then `test-without-building`. 
This means that we always run all tests for all targets. Hence, we can't cache any targets because tests of such targets won't build. 

# Desired CI set up:

Only build and test modified targets. 

Given the following diagram:

![graph](graph.png)

If only `FeatureA` is modified on Pull Request, we expect the following:

 - App: build and test
 - LibraryA: cached
 - LibraryB: cached
 - FeatureA: build and test
 - FeatureB: cached

We expect `App` to always be built and tested because it depends of all targets.
