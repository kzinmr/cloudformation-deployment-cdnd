workdir=$1  # absolute path of the repository

aws cloudformation create-stack \
--stack-name final-project-network \
--template-body file://${workdir}/final-project-network.yml \
--parameters file://${workdir}/final-project-network-params.json \
--region=us-west-2

aws cloudformation create-stack \
--stack-name final-project-server \
--template-body file://${workdir}/final-project-server.yml \
--parameters file://${workdir}/final-project-server-params.json \
--region=us-west-2 \
--capabilities "CAPABILITY_IAM"