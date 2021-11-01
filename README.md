# nhentai-api
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Python package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.PythonClientCodegen

## Requirements.

Python >= 3.6

## Installation & Usage
### pip install

If the python package is hosted on a repository, you can install directly using:

```sh
pip install git+https://github.com/Shikanime/nhentai-api.git
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/Shikanime/nhentai-api.git`)

Then import the package:
```python
import nhentai_api
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import nhentai_api
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python

import time
import nhentai_api
from pprint import pprint
from nhentai_api.api import default_api
from nhentai_api.model.gallery import Gallery
from nhentai_api.model.inline_response400 import InlineResponse400
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = nhentai_api.Configuration(
    host = "http://localhost"
)



# Enter a context with an instance of the API client
with nhentai_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    id = 3.14 # float | 

    try:
        api_response = api_instance.api_galleries_id_get(id)
        pprint(api_response)
    except nhentai_api.ApiException as e:
        print("Exception when calling DefaultApi->api_galleries_id_get: %s\n" % e)
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**api_galleries_id_get**](docs/DefaultApi.md#api_galleries_id_get) | **GET** /api/galleries/{id} | 
*DefaultApi* | [**api_galleries_search_get**](docs/DefaultApi.md#api_galleries_search_get) | **GET** /api/galleries/search | 


## Documentation For Models

 - [Gallery](docs/Gallery.md)
 - [GalleryImages](docs/GalleryImages.md)
 - [Image](docs/Image.md)
 - [InlineResponse400](docs/InlineResponse400.md)
 - [Tag](docs/Tag.md)


## Documentation For Authorization

 All endpoints do not require authorization.

## Author




## Notes for Large OpenAPI documents
If the OpenAPI document is large, imports in nhentai_api.apis and nhentai_api.models may fail with a
RecursionError indicating the maximum recursion limit has been exceeded. In that case, there are a couple of solutions:

Solution 1:
Use specific imports for apis and models like:
- `from nhentai_api.api.default_api import DefaultApi`
- `from nhentai_api.model.pet import Pet`

Solution 2:
Before importing the package, adjust the maximum recursion limit as shown below:
```
import sys
sys.setrecursionlimit(1500)
import nhentai_api
from nhentai_api.apis import *
from nhentai_api.models import *
```

