FROM public.ecr.aws/lambda/nodejs:18
COPY --from=public.ecr.aws/awsguru/aws-lambda-adapter:0.7.1 /lambda-adapter /opt/extensions/lambda-adapter
ENV HOSTNAME="0.0.0.0"
ENV PORT=3000
ENV AWS_LWA_INVOKE_MODE=response_stream
ENV AWS_LAMBDA_EXEC_WRAPPER="/opt/bootstrap"
WORKDIR ${LAMBDA_TASK_ROOT}
