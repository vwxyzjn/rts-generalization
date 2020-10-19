
for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo.py \
    --gym-id MicrortsDefeatRandomEnemyShapedReward-v3 \
    --total-timesteps 100000000 \
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
    --gym-id MicrortsDefeatWorkerRushEnemyShaped-v3 \
    --total-timesteps 100000000 \
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
    --gym-id MicrortsDefeatLightRushEnemyShaped-v3 \
    --total-timesteps 100000000 \
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
    --gym-id MicrortsDefeatWorkerRushEnemyHRL-v3 \
    --total-timesteps 100000000 \
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
    --gym-id MicrortsDefeatCoacAIShaped-v3 \
    --total-timesteps 100000000 \
    --wandb-project-name rts-generalization \
    --prod-mode \
    --wandb-entity vwxyzjn --cuda False \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done
