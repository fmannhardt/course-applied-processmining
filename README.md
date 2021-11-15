# Applied Process Mining Module

* **Responsible Group**: [Process Analytics group](https://pa.win.tue.nl/) at Eindhoven University of Technology
* **Responsible Lecturer**: Dr. Felix Mannhardt ([@fmannhardt](https://twitter.com/fmannhardt)) 

**Course under construction** 🚧

The notebooks in this repository are part of an Applied Process Mining module. In total there are currently *3* lectures and *3* hands-on exercises in this repository. The collection of notebooks is a *living document* and subject to change. Each lecture and exercise is accompanied by a notebook in both R and Python using the Process Mining frameworks bupaR and PM4Py, respectively.


## Table of Contents

### Block 1 - 'Event Logs and Process Visualization'

* Lecture Notebooks
    *  [R](r/lecture1-eventlogs.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fr%2Flecture1-eventlogs.ipynb)
    *  [Python](python/lecture1-eventlogs.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fpython%2Flecture1-eventlogs.ipynb)

* Assignment Notebooks
    *  [R](r/handson1-eventlogs.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fr%2Fhandson1-eventlogs.ipynb)
    *  [Python](python/handson1-eventlogs.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fpython%2Fhandson1-eventlogs.ipynb)

### Block 2 - 'Process Discovery'

* Lecture Notebooks
    *  [R](r/lecture2-discovery.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fr%2Flecture2-discovery.ipynb)
    *  [Python](python/lecture2-discovery.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fpython%2Flecture2-discovery.ipynb)

* Assignment Notebooks
    * *TBD*

### Block 3 - 'Conformance Checking'

* Lecture Notebooks
    *  *TBD*
    *  [Python](python/lecture3-conformance.ipynb) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fmannhardt/course-applied-processmining/HEAD?urlpath=lab%2Ftree%2Fpython%2Flecture3-conformance.ipynb)

* Assignment Notebooks
    * *TBD*

## Installation \& Usage

### Using MyBinder

Simply click on the `launch binder` links for either the R or the Python notebook.s

### Run locally

#### Docker

Simply build a Docker image with the provided Dockerfile:

```
docker build -t fmannhardt/course-processmining-intro .
```

And start the Docker container running Jupyter on port 8787:

```
docker run -p 8888:8888 fmannhardt/course-processmining-intro
```

#### Jupyter

You should be able to run the Jupyter notebooks directly in a Jupyter environment. Please make sure to have installed the following requirements:

**Python**

```
pip install pandas pm4py plotline
```

Make sure to install GraphViz for the visualization. On Windows with Chocolately this should work:
```
 choco install graphviz
```
Consult the PM4Py documentation for further details:
https://pm4py.fit.fraunhofer.de/install

**R**

```
install.packages(c("IRkernel", "tidyverse", "bupaR", "processanimateR", "petrinetR"))
```

Depending on your system configuration, it can be tricky to make the `IRkernel` known to Jupyter. Please follow the instructions here: https://github.com/IRkernel/IRkernel
As a hint, you may need to open the R console from an Anaconda console and perform `IRkernel::installspec()` in case you are using conda environment.
