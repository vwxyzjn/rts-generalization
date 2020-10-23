export WANDB_RESUME=must
export WANDB_RUN_ID=2kse3aqy
python ppo_full_autoregressive.py \
    --wandb-project-name gym-microrts \
    --total-timesteps 100000000 \
    --gym-id MicrortsMining-v2 \
    --prod-mode True \
    --capture-video True

export WANDB_RESUME=must
export WANDB_RUN_ID=6e2i68c9
python ppo.py \
    --gym-id MicrortsDefeatCoacAIShaped-v3 \
    --total-timesteps 100000000 \
    --wandb-project-name rts-generalization \
    --prod-mode \
    --wandb-entity vwxyzjn --cuda False \
    --capture-video \
    --seed 2