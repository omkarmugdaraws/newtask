git clone https://github.com/omkarmugdaraws/newtask.git
cd /newtask
old_image_version=`docker images |grep 555013771715.dkr.ecr.us-east-1.amazonaws.com/docker-application|awk -F " " '{print $2}'|tail -1`
new_image_version=$(expr $old_image_version + 1)
docker build -t 555013771715.dkr.ecr.us-east-1.amazonaws.com/docker-application:$new_image_version . 
docker push 555013771715.dkr.ecr.us-east-1.amazonaws.com/docker-application:$new_image_version
sed -i 's/'$old_image_version'/'$new_image_version'/g' docker-compose.yml
docker-compose up -d
