# jenkins
jenkins(2.194) maven(3.5.4)

https://hub.docker.com/r/jenkins/jenkins
	
Jenkins Docker 官方项目参考：https://github.com/jenkinsci/docker

Jenkins Docker 安装官方文档参考：https://github.com/jenkinsci/docker/blob/master/README.md

Jenkins 插件搜索：https://plugins.jenkins.io/

Jenkins 用户文档：https://jenkins.io/doc/

#### 创建容器
```
docker run \
--name jenkins \
-p 8082:8080 \
--restart=always \
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/jenkins:latest
```
#### 挂载数据卷
如需映射zentao的数据文件 把容器内对应的文件，拷贝到宿主机，映射即可（如下）

/var/jenkins_home/
	
#### 访问jenkins
	http://localhost:8082
	


#### 已安装的插件 Installed plugins:
	ace-editor:1.1
	analysis-core:1.95
	ant:1.8
	antisamy-markup-formatter:1.5
	apache-httpcomponents-client-4-api:4.5.5-3.0
	authentication-tokens:1.3
	bouncycastle-api:2.17
	branch-api:2.0.20
	build-pipeline-plugin:1.5.8
	build-timeout:1.19
    checkstyle:3.50
	cloudbees-folder:6.6
	conditional-buildstep:1.3.6
	copyartifact:1.41
	credentials-binding:1.16
	credentials:2.1.18
	dashboard-view:2.9.11
	display-url-api:2.2.0
	docker-build-step:2.0
	docker-commons:1.13
	docker-compose-build-step:1.0
	docker-java-api:3.0.14
	docker-plugin:1.1.5
	docker-workflow:1.17
	durable-task:1.26
	email-ext:2.63
    findbugs:4.72
	git-client:2.7.3
	git-server:1.7
	git:3.9.1
	gitee:1.1.3
	github-api:1.92
	github-branch-source:2.4.0
	github-oauth:0.29
	github:1.29.3
	gradle:1.29
	handlebars:1.1.1
	jackson2-api:2.8.11.3
	javadoc:1.4
	jquery-detached:1.2.1
	jquery:1.12.4-0
	jsch:0.1.54.2
	junit:1.26.1
	kubernetes-credentials:0.4.0
	kubernetes:1.12.7
	ldap:1.20
	lockable-resources:2.3
	mailer:1.21
	mapdb-api:1.0.9.0
	matrix-auth:2.3
	matrix-project:1.13
	maven-plugin:3.1.2
	momentjs:1.1.1
	pam-auth:1.4
	parameterized-trigger:2.35.2
	pipeline-build-step:2.7
	pipeline-github-lib:1.0
	pipeline-graph-analysis:1.7
	pipeline-input-step:2.8
	pipeline-milestone-step:1.3.1
	pipeline-model-api:1.3.2
	pipeline-model-declarative-agent:1.1.1
	pipeline-model-definition:1.3.2
	pipeline-model-extensions:1.3.2
	pipeline-rest-api:2.10
	pipeline-stage-step:2.3
	pipeline-stage-tags-metadata:1.3.2
	pipeline-stage-view:2.10
	plain-credentials:1.4
    pmd:3.50
	promoted-builds:3.2
	publish-over-ssh:1.20.1
	resource-disposer:0.12
	run-condition:1.2
	scm-api:2.2.8
	script-security:1.46
	ssh-agent:1.17
	ssh-credentials:1.14
	ssh-slaves:1.28.1
	structs:1.17
	subversion:2.12.1
	timestamper:1.8.10
	token-macro:2.5
	variant:1.1
	workflow-aggregator:2.6
	workflow-api:2.29
	workflow-basic-steps:2.11
	workflow-cps-global-lib:2.12
	workflow-cps:2.57
	workflow-durable-task-step:2.22
	workflow-job:2.25
	workflow-multibranch:2.20
	workflow-scm-step:2.7
	workflow-step-api:2.16
	workflow-support:2.20
	ws-cleanup:0.35
