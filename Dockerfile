FROM jrottenberg/ffmpeg
LABEL maintainer="Daniel Bogatev <dbogatev@gmail.com>"

WORKDIR /tmp/workdir

COPY abr.sh /tmp/workdir

ENTRYPOINT ./abr.sh ${INPUT_VIDEO_URL} ${OUTPUT_HD} ${OUTPUT_SD}
