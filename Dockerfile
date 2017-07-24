#this is the base image we use to create our image from
FROM jenkins:2.60.1
#just info about who created this
MAINTAINER Maarten Merken
#get rid of admin password setup
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
#automatically installing all plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt 
RUN /usr/local/bin/install-plugins.sh bouncycastle-api cloudbees-folder structs junit antisamy-markup-formatter pam-auth windows-slaves display-url-api mailer ldap token-macro external-monitor-job icon-shim matrix-auth script-security matrix-project build-timeout credentials workflow-step-api plain-credentials credentials-binding timestamper scm-api workflow-api workflow-support durable-task workflow-durable-task-step resource-disposer ws-cleanup pipeline-milestone-step jquery-detached ace-editor workflow-scm-step workflow-cps pipeline-input-step pipeline-stage-step workflow-job pipeline-graph-analysis pipeline-rest-api handlebars momentjs pipeline-stage-view pipeline-build-step pipeline-model-api pipeline-model-extensions ssh-credentials git-client git-server workflow-cps-global-lib branch-api workflow-multibranch authentication-tokens docker-commons docker-workflow pipeline-stage-tags-metadata pipeline-model-declarative-agent workflow-basic-steps pipeline-model-definition workflow-aggregator jackson2-api github-api git github github-branch-source pipeline-github-lib ssh-slaves javadoc maven-plugin dashboard-view build-name-setter ant run-condition conditional-buildstep parameterized-trigger jquery build-pipeline-plugin xunit