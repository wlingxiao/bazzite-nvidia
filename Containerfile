FROM scratch AS ctx
COPY / /
FROM ghcr.io/ublue-os/bazzite-nvidia:stable
ARG SET_X=""
ARG DNF="dnf5"

RUN --mount=type=bind,from=ctx,src=/,dst=/ctx \
    /ctx/build.sh
