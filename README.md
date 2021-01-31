LDBC Graphalytics Specification
===============================

[![Build Status](https://travis-ci.com/ldbc/ldbc_graphalytics_docs.svg?branch=master)](https://travis-ci.com/ldbc/ldbc_graphalytics_docs)

This repository contains a history of all public releases of the LDBC Graphalytics specification:
* [Stable version](https://github.com/ldbc/ldbc_graphalytics_docs/raw/master/doc/LDBC-Graphalytics_tech-specs_v1.0.1.pdf)
* [Snapshot version](http://ldbc.github.io/ldbc_graphalytics_docs/graphalytics_spec.pdf)

| Version | Date | Document | 
|-------------|:-------------:|:-------------:|
| 1.0.1 | 2021-Jan-31 | [Link](https://github.com/ldbc/ldbc_graphalytics_docs/raw/master/doc/LDBC-Graphalytics_tech-specs_v1.0.1.pdf) |
| 1.0.0 | 2020-Nov-30 | [Link](https://github.com/ldbc/ldbc_graphalytics_docs/raw/master/doc/LDBC-Graphalytics_tech-specs_v1.0.0.pdf) |
| 0.9.0 | 2017-Jun-28 | [Link](https://github.com/ldbc/ldbc_graphalytics_docs/raw/master/doc/LDBC-Graphalytics_tech-specs_v0.9.0.pdf) |
| 0.2.12.2 | 2017-Jun-9 | [Link](https://github.com/ldbc/ldbc_graphalytics_docs/raw/master/doc/LDBC-Graphalytics_tech-specs_v0.2.12.2.pdf) |
| 0.2.6 | 2016-Sep-6 | [Link](https://github.com/ldbc/ldbc_graphalytics_docs/raw/master/doc/LDBC-Graphalytics_tech-specs_v0.2.6.pdf) |
| 0.2.5 | 2016-Sep-4 | [Link](https://github.com/ldbc/ldbc_graphalytics_docs/raw/master/doc/LDBC-Graphalytics_tech-specs_v0.2.5.pdf) |

## Releasing on arXiv

To release on arXiv, follow these steps:

* Update the version number in the `ldbc.cls` file.
* Update the link on the title page in the `ldbc.cls` file to the tag of the new version number, i.e. `https://github.com/ldbc/ldbc_graphalytics_docs/releases/tag/vX.Y.Z` (to be created later).
* Build the PDF and copy it to the `doc` directory.
* Add link to the table in the `README.md` file.
* Push the changes to GitHub.
* On GitHub, create a new release named `vX.Y.Z` (this comes with a new `tag`).
* Run the `./arxiv.sh` script.
* Uploade the generated `ms.zip` file to arXiv.
* Bump the version number to the next draft in `ldbc.cls`.
* Revert the link on the title page in the `ldbc.cls` file to the `master` branch of this repository.
