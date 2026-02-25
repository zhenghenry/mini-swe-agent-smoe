LITELLM_MODEL_REGISTRY_PATH=registry.json mini-extra swebench \
  --model hosted_vllm/smoe \
  --output test/ \
  --subset verified \
  --split test \
  --filter '^(django__django-11099)$' \
  --config src/minisweagent/config/benchmarks/swebench_xml.yaml \
&& rm -rf test/*