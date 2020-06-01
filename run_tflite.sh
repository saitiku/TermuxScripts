#!/bin/bash

echo "Running benchmarks"

./benchmark_model --num_threads=1 --warmup_runs=1 --num_runs=300 --run_delay=0.5 --graph=models/tflite/full_model.tflite 

echo "finished running full model; press any key to continue"
read ""

./benchmark_model --num_threads=1 --warmup_runs=1 --num_runs=300 --run_delay=0.5 --graph=models/tflite/EEA1.tflite

echo "finished running EEA1 model; press any key to continue"
read ""


./benchmark_model --num_threads=1 --warmup_runs=1 --num_runs=300 --run_delay=0.5 --graph=models/tflite/EEA2.tflite 

echo "finished running EEA2 model; press any key to continue"
read ""

./benchmark_model --num_threads=1 --warmup_runs=1 --num_runs=300 --run_delay=0.5 --graph=models/tflite/EEA2_EEL.tflite

echo "finished running  EEA2 Exit Branch Conv layer; press any key to EXIT"
read ""
