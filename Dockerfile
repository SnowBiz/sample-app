FROM public.ecr.aws/amazonlinux/amazonlinux:latest

RUN curl -O https://bootstrap.pypa.io/pip/2.7/get-pip.py 
RUN python get-pip.py
RUN pip install boto3
    
ENTRYPOINT ["python", "/tmp/sample.py"]
