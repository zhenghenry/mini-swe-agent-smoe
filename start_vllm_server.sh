MODEL_ID=/data/checkpoints/smoe/rob/hf/brr_sft_v4_iter_0009900
# MODEL_ID=Qwen/Qwen3-4B-Instruct-2507
export VLLM_ATTENTION_BACKEND=TRITON_ATTN

vllm serve $MODEL_ID  \
  --served-model-name smoe \
  --host 0.0.0.0 \
  --port 8000 \
  --data-parallel-size 8 \
  --max-num-seqs 128 \
  --trust-remote-code \
  --gpu-memory-utilization 0.75 \
  --enable-auto-tool-choice \
  --tool-call-parser smoe_xml \
  --reasoning-parser qwen3


#  --api-key asdf1324 \
