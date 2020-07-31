FROM ubuntu:latest

RUN apt update && apt install ansible -y

ADD playbook.yml /playbook.yml
ADD site/ /site
RUM ansible-playbook /playbook.yml

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
