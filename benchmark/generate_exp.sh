python generate_exp.py --exp-script scripts/ppo1.sh \
    --algo ppo.py \
    --total-timesteps 10000000 \
    --gym-ids MicrortsMining-v3 MicrortsProduceWorker-v3 MicrortsAttackPassiveEnemySparseReward-v3 MicrortsProduceCombatUnitsSparseReward-v3 \
    --wandb-project-name rts-generalization \
    --other-args "--wandb-entity vwxyzjn --cuda False"

python generate_exp.py --exp-script scripts/ppo2.sh \
    --algo ppo.py \
    --total-timesteps 100000000 \
    --gym-ids MicrortsDefeatRandomEnemyShapedReward-v3 MicrortsDefeatWorkerRushEnemyShaped-v3 MicrortsDefeatLightRushEnemyShaped-v3 MicrortsDefeatWorkerRushEnemyHRL-v3 MicrortsDefeatCoacAIShaped-v3 \
    --wandb-project-name rts-generalization \
    --other-args "--wandb-entity vwxyzjn --cuda False"
