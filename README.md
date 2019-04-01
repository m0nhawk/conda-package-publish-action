# Publish Anacond Package
A Github Action to publish your Python package to Anaconda repository.

## Use
Doesn't take any arguments.

### Environment Variables/Secrets
- Login credentials for the package repo:
    - `ANACONDA_USERNAME`=`foo`
    - `ANACONDA_PASSWORD`=`bar`
    etc.  
- `SUBDIR` (optional): if your `setup.py` and `meta.yaml` is in a subdirectory of your repo. This will just change the working directory to the `SUBDIR` before running the rest of the script.

### Example workflow
```hcl
workflow "Publish" {
  resolves = ["publish-to-conda"]
  on = "release"
}

action "publish-to-conda" {
  uses = "m0nhawk/conda-package-publish-action@master"
  secrets = ["ANACONDA_USERNAME", "ANACONDA_PASSWORD"]
}
```
