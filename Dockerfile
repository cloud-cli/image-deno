FROM denoland/deno:1.10.3

WORKDIR /home/deno
USER deno

COPY deps.ts .

ENTRYPOINT sh
CMD ['-e', 'deno cache deps.ts && deno run $DENO_FLAGS main.ts']