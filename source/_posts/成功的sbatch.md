---
title: scratch.sh
---
# scratch.sh

```bash
#!/bin/bash
#SBATCH --partition=gpu_short
#SBATCH --nodes=1                # 1 computer nodes
#SBATCH --ntasks=1               # 1 task per node
#SBATCH --gres=gpu:1             # Using 1 GPU card
#SBATCH --mem=20GB               # Request 20GB memory
#SBATCH --time=0-01:00:00        # Time limit day-hrs:min:sec
#SBATCH --output=gpujob_%j.log   # Standard output
#SBATCH --error=gpujob_%j.err    # Standard error log
module load cuda/11.6.0
OUTPUT=/home/zihanwu7/scratch/output.txt
cd /home/zihanwu7/scratch/own_transformer

python main.test.py >> $OUTPUT

date        >> $OUTPUT
```
