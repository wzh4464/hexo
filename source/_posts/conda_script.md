---
title: Managing conda environments
---
# Managing conda environments

## Method 1

```bash
conda activate <environment_name>
```

```bash
vi $(dirname $(which python))/../etc/conda/activate.d/env_vars.sh
```

```env_vars.sh
#!/bin/bash

export OLD_PATH=$PATH
export PATH=***:$PATH
```

```bash
vi $(dirname $(which conda))/../etc/conda/deactivate.d/env_vars.sh
```

```env_vars.sh
#!/bin/bash

export PATH=$OLD_PATH
unset OLD_PATH
```

## Method 2 (didn't test)

```bash
conda activate <environment_name>
conda env config vars set <variable_name>=<value>
conda env config vars set <variable_name>=<value>
...
conda env config vars set <variable_name>=<value>
conda env export --no-builds > environment.yml
conda deactivate
```
