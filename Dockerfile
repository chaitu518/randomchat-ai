FROM ollama/ollama:latest

# Bind Ollama to all interfaces
ENV OLLAMA_HOST=0.0.0.0
ENV OLLAMA_KEEP_ALIVE=24h
ENV OLLAMA_NUM_PARALLEL=2
ENV OLLAMA_MAX_LOADED_MODELS=1

EXPOSE 11434

# Important: base image already has ENTRYPOINT ["ollama"]
CMD ["serve"]
