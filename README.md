# Publish Anaconda Package
A Github Action to publish your Python package to Anaconda repository.

### Example workflow
```yaml
name: Publish

on: [release]

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: publish-to-conda
      uses: m0nhawk/conda-package-publish-action@master
      with:
        subDir: '.'
        AnacondaUsername: ${{ secrets.ANACONDA_PASSWORD }}
        AnacondaPassword: ${{ secrets.ANACONDA_USERNAME }}
```
