FROM public.ecr.aws/amazonlinux/amazonlinux:latest

RUN curl -O https://bootstrap.pypa.io/pip/2.7/get-pip.py && \
    python get-pip.py --user && \
    export PATH=/root/.local/bin:$PATH; && \
    pip install boto3
    
ENTRYPOINT ["python", "/tmp/sample.py"]