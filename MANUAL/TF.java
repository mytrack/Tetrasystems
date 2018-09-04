//====================================
python-2.7.15-macosx10.6.pkg 

sudo easy_install pip
pip install --upgrade virtualenv


virtualenv --system-site-packages ~/tensorflow
$ cd tensorflow
(tensorflow)$ source ./bin/activate
(tensorflow)$ deactivate
(tensorflow)$ sudo easy_install -U pip


sudo pip install tensorflow==1.0.0

pip install six numpy wheel 
pip install keras matplotlib
pip install jupyter

pip install protobuf==3.3.0.


$ jupyter notebook
$ tensorboard --logdir=. --port=6006
$ tensorboard --logdir=tensorboard.py --port=6007

Launch *Chrome -> http://localhost:6006 
//====================================




//-------> 이하는 최초 설치시 삽질한 히스토리 흔적

python 홈페이지에서 다운받아서 설치
python-2.7.15-macosx10.6.pkg 



sudo easy_install pip
pip install --upgrade virtualenv



$ virtualenv --system-site-packages targetDirectory # for Python 2.7
$ cd targetDirectory
$ source ./bin/activate      # If using bash, sh, ksh, or zsh
(targetDirectory)$ easy_install -U pip
(targetDirectory)$ pip install --upgrade tensorflow      # for Python 2.7
$ pip install tensorflow      # Python 2.7; CPU support



virtualenv --system-site-packages ~/tensorflow
$ cd tensorflow
(tensorflow)$ source ./bin/activate
(tensorflow)$ deactivate
(tensorflow)$ sudo easy_install -U pip
>>>> 지옥에서 온 코드
(tensorflow)$ sudo pip install --upgrade tensorflow  <------ 여기가 지옥의 헬코드 ㅠㅠ 사람잡는 함정이었네.....




>>>>>>>>>-------========-------->>> 4시간 삽질 끝에 결국 성공
>>> https://pypi.org/project/tensorflow/1.0.0/
>>> 여기만 제대로면 다른 것은 아무런 상관이 없음. 
pip install tensorflow==1.0.0   <---- 오늘의 꿀잼 sudo 꼭 붙일것 !!!


>>>> https://github.com/tensorflow/tensorflow/issues/7778
>>> edit: To deactivate these warnings as @yaroslavvb suggested in another comment, do the following:
import os
os.environ['TF_CPP_MIN_LOG_LEVEL']='2'

>>>> 한글 코멘트 오류
# -*- coding: utf-8 -*-




sudo pip install tensorflow==1.0.0
sudo pip install six numpy wheel 
sudo pip install protobuf==3.3.0.
pip install keras matplotlib








#sudo pip install --upgrade https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-1.10.0-py2-none-any.whl








pip install --upgrade pip



sudo pip install --upgrade https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-1.10.0-py2-none-any.whl

# 제외 pip install --user ipython
# pip install setuptools --upgrade

xcode-select --install

# https://github.com/tensorflow/tensorflow/issues/17369
#제외 pip install grpcio==1.9.1 tensorflow   <******** 베리베리 임포턴트 성공할 수 있단

https://gist.github.com/mrry/ee5dbcfdd045fa48a27d56664411d41c

--->  이구문은 좀 생각을, 실행은 안해봤음 .... sudo xcode-select --reset

sudo pip install --upgrade https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-1.10.0-py2-none-any.whl







https://docs.python-guide.org/starting/install/osx/

https://www.tensorflow.org/install/install_sources#common_installation_problems



/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"



텐서플로우실행과 상관없음

https://github.com/tensorflow/tensorflow/issues/559
=======================
@se7en007 I had been looking for an answer for two days. 
This problem caused me so much stress and frustration, but your answer finally fixed it! 
For OS X El Capitan users like me, you should first disable System Integrity Protection (rootless) as follows:

Reboot your mac and hold Cmd+R at the startup chime.
Chose Terminal>Utilities from the top menu bar.
Type:
csrutil disable; reboot
Now remove the system's numpy using the command:
sudo rm -rf /System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/numpy
And voilá, it works.
======================================================