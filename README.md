# Applied Process Mining

The notebooks in this repository are part of a course on Applied Process Mining course given by Dr. Felix Mannhardt ([@fmannhardt](https://twitter.com/fmannhardt)) of [Process Analytics group](https://pa.win.tue.nl/) at Eindhoven University of Technology. In total there are currently *4* lectures and the associated hands-on notebooks in this repository. The collection of notebooks is a *living document* and subject to change. Each lecture is accompanied by a notebook in both R and Python using the Process Mining frameworks bupaR and PM4Py, respectively.


## Table of Contents

### Block 1 - 'Event Logs and Process Visualization'

* Lecture Notebooks
    *  [R](r/lecture1-eventlogs.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fr%2Flecture1-eventlogs.ipynb)
    *  [Python](python/lecture1-eventlogs.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fpython%2Flecture1-eventlogs.ipynb)

### Block 2 - 'Process Discovery'

* Lecture Notebooks
    *  [R](r/lecture2-discovery.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fr%2Flecture2-discovery.ipynb) 
    *  [Python](python/lecture2-discovery.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fpython%2Flecture2-discovery.ipynb)

### Block 3 - 'Conformance Checking'

* Lecture Notebooks
    *  🚧 (there is currently not conformance checking functionality in R)
    *  [Python](python/lecture3-conformance.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fpython%2Flecture3-conformance.ipynb)

### Block 4 - 'Predictive Process Mining'

* Lecture Notebooks
    *  🚧 (R version is under construction)
    * [Python](python/lecture4-prediction.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fpython%2Flecture4-prediction.ipynb)

## Installation \& Usage

### Using MyBinder

Simply click on the `launch binder` links for either the R or the Python notebook. You may also use the Google Colab service by clicking on the Google Colab links, however, you may need to prepare the Google Colab environment to have the respective packages installed.

### Run locally

#### Docker

Simply build a Docker image with the provided Dockerfile:

```
docker build -t fmannhardt/course-applied-processmining .
```

And start the Docker container running Jupyter on [localhost:8888](http://localhost:8888?token=processmining):

```
docker run --rm -ti -e JUPYTER_TOKEN=processmining -p 8888:8888 fmannhardt/course-applied-processmining
```

or use the Jupyter Lab interface:

```
docker run --rm -ti -e JUPYTER_TOKEN=processmining -p 8888:8888 fmannhardt/course-applied-processmining sh -c "jupyter lab --ip 0.0.0.0 --no-browser"
```

#### Jupyter

You should be able to run the Jupyter notebooks directly in a Jupyter environment. Please make sure to have installed the following requirements:

**Python**

```
pip install -r requirements.txt
```

Make sure to install GraphViz for the visualization. On Windows with Chocolately this should work:
```
choco install graphviz
```
Consult the [PM4Py documentation](https://pm4py.fit.fraunhofer.de/install) for further details.

**R**

Install the Jupyter kernel for R:
```
install.packages(c("IRkernel"))
```

and install the nessecary packages:
```
R --quiet -f install.R
```

Depending on your system configuration, it can be tricky to make the `IRkernel` known to Jupyter. Please follow the instructions on their [Github page](https://github.com/IRkernel/IRkernel). 
As a hint, you may need to open the R console from an Anaconda console and perform `IRkernel::installspec()` in case you are using conda environment.
