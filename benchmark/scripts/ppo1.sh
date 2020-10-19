
for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo.py \
    --gym-id MicrortsMining-v3 \
    --total-timesteps 10000000 \
    --wandb-project-name rts-generalization \
    --prod-mode \
    --wandb-entity vwxyzjn --cuda False \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done

for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo.py \
    --gym-id MicrortsProduceWorker-v3 \
    --total-timesteps 10000000 \
    --wandb-project-name rts-generalization \
    --prod-mode \
    --wandb-entity vwxyzjn --cuda False \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done

for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo.py \
    --gym-id MicrortsAttackPassiveEnemySparseReward-v3 \
    --total-timesteps 10000000 \
    --wandb-project-name rts-generalization \
    --prod-mode \
    --wandb-entity vwxyzjn --cuda False \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done

for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo.py \
    --gym-id MicrortsProduceCombatUnitsSparseReward-v3 \
    --total-timesteps 10000000 \
    --wandb-project-name rts-generalization \
    --prod-mode \
    --wandb-entity vwxyzjn --cuda False \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done
