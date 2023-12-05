FROM public.ecr.aws/lambda/nodejs:18
COPY --from=public.ecr.aws/awsguru/aws-lambda-adapter:0.7.1 /lambda-adapter /opt/extensions/lambda-adapter
WORKDIR ${LAMBDA_TASK_ROOT}