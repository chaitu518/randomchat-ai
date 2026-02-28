FROM ollama/ollama:latest

# Start Ollama in background during build
RUN ollama serve & \
    sleep 5 && \
    ollama pull gemma3:4b && \
    pkill ollama

ENV OLLAMA_HOST=0.0.0.0
ENV OLLAMA_KEEP_ALIVE=24h
ENV OLLAMA_NUM_PARALLEL=2
ENV OLLAMA_MAX_LOADED_MODELS=1

EXPOSE 11434

CMD ["serve"]
