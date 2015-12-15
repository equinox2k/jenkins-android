FROM jenkins:latest
MAINTAINER eq2k "eq2k@hotmail.com"

USER root

# Android and other dependencies
RUN apt-get update && apt-get install -y --no-install-recommends git expect lib32stdc++6 lib32z1 && apt-get install -y build-essential

# Clean up
RUN apt-get clean

# Android SDK/NDK paths
ENV ANDROID_HOME /var/jenkins_home/android-sdk-linux
ENV ANDROID_NDK_HOME /var/jenkins_home/android-ndk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:${ANDROID_NDK_HOME}
