## Test environments

* local OS X install, R 3.5.1 Patched
* ubuntu 14.04 (on travis-ci), R 3.5.1
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

License components with restrictions and base license permitting such:
  MIT + file LICENSE
File 'LICENSE':
  YEAR: 2018
  COPYRIGHT HOLDER: Scott Chamberlain

## Reverse dependencies

* I have run R CMD check on the 7 reverse dependencies.
  (Summary at <https://github.com/ropensci/vcr/blob/master/revdep/README.md>). No problems were found.

--------

This version adds support/integration with httr.

Note that binary builds are not yet available for one of vcr's 
dependencies: webmockr. I am submitting before the builds are 
available because the recent webmockr submission I made does
break tests in this package. 

Thanks very much,
Scott Chamberlain
