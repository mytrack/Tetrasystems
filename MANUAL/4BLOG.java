# -*- coding: utf-8 -*-


import os
os.environ['TF_CPP_MIN_LOG_LEVEL']='2'
import tensorflow as tf


x = tf.placeholder(tf.float32)  # 포멧이 어렵다
y = tf.placeholder(tf.float32)  # 포멧이 어렵다

w = tf.Variable(tf.random_uniform([1], -1.0, 1.0))
b = tf.Variable(tf.random_uniform([1], -3.0, 3.0))


#w = tf.Variable([5,1], tf.int32)   # Variable 포맷이 어렵다



n1 = [1,2,3,4,5]
n2 = [1,2,3,4,5,6,7,8,9]

k1 = [1,2,3,4,5]
x1 = []   # 텅빈 벡터공간으로 선언 -> 벡터 = 1차원 매트릭스 = 리스트


for i in range(20):
	#n2.append(i+1) # 기존에 벡터에 1,2,3.... 추가
	#x1.append(i*.1) # .1, .2, .3 ... 데이터 저장
	x1.append(-1+i*.1) # -1.~ .9 ... 데이터 저장

#y = tf.multiply(x, 2) 
#y = tf.multiply(x, w) # * 사용가능
y =  x*w + b  #


w = tf.Variable(tf.random_uniform([1], -1.0, 1.0))

x1 = [] # VECTOR = LIST

for i in range(10):
	x1.append(i+1)  # APPEND VECTOR x1 = [1, 2, 3...]

with tf.Session() as sess:
	sess.run(tf.global_variables_initializer())  # VARIABLE
	y = sess.run(y, feed_dict={
			x: x1   #	-> BIGDATA 
			})

print(x1, w.eval())	 # RANDOM



	#print("{} ---- {} ---- {}------{}".format(x, n1, w,  y))
	#print("{} ---- {} ---- {}------{}".format(x, n1, w.eval(), y))
	#print("{} ---- {} ---- {}------{}".format(x, n2, w.eval(), y))
	#print("{} ---- {} ---- {}------{}".format(x, x1, w.eval(), y))
	print( x,  "x=", x1)
	print( "w=", w.eval())  # 랜덤값 출력은 .eval() 
	print( "b=", b.eval(), "y=", y)




y     = tf.placeholder(tf.float32)       # PLACEHOLDER DEFINE, NEED ONE OF TWO,
graph = tf.placeholder(tf.float32)       # PLACEHOLDER DEFINE


sess = tf.Session()
sess.run(tf.global_variables_initializer()) # OTHERWAY... ASSIGN init 

graph = tf.cos(x)

for i in range(361):   # 0~360
	y = sess.run(graph, feed_dict={  # GET PLACEHOLODER = VALUE OF TENSION
			x: PI*i/HALF
		})
	print("{}=cos({})".format(y, i))



~/tensorflow(*.ipynb)$ jupyter notebook 




~/tensorflow$ tensorboard --logdir=.

~/tensorflow$ tensorboard --logdir=log_path --port=6006

~/tensorflow$ tensorboard --logdir=./log --port=6007

http://localhost:6006

http://127.0.0.1:6007




INPUT=X            X = tf.placeholder(tf.float32, [None, 3]) 

BIG DATA           x_data = [[1, 2, 3], [4, 5, 6]]

WEIGHT             W = tf.Variable(tf.random_normal([3, 2]))

BIAS               b = tf.Variable(tf.random_normal([2, 1]))

OUTPUT=GRAPH=Y     expr = tf.matmul(X, W) + b

SESSION CREATE     sess = tf.Session()

VARIABLE INIT      sess.run(tf.global_variables_initializer())

SESSION RUN GRAPH  print(sess.run(expr, feed_dict={X: x_data}))

SESSION CLOSE      sess.close()



   screen width > 800px 
@media(min-width:800px){
	div {
		display:none;
	}
}

   screen width < 800px 
@media(max-width:800px){
	div {
		display:none;
	}
}





 #name -> id="name"
 .name -> class="name"
 .name1 name2... -> class="name1 name2..."  

 우선순위 id > class > tag
 포괄순위 id < class < tag 
 따라서 우선순위는 포괄순위의 반대로 작용한다.

 같은 선택자 끼리일경우 제일 나중의 라인
 *id는 1번만 사용, 중복사용불가

 property: 아주 많기 때문에 검색을 통해서  
 selector: id(#) class(.) TAG(element) 3가지

 CSS 속성(효과), 선택자 스스로 알아내는 법
 google.com -> css text size property
 google.com -> css selector 



<style>
  #grid{
    border:5px solid pink;
    display:grid; // 아래줄과 같이 사용해야됨     
    grid-template-columns: 150px 1fr; // 2fr 1fr 사용할 경우
  }                                   // 숫자는 비율을 나타냄
  div{
    border:5px solid gray;
  }
</style>
....
<div id="grid">
  <div>NAVIGATION</div>
  <div>ARTICLE</div>
</div>

    /* block level element */
     h1{
       border-width:5px;
       border-color:red;
       border-style:solid:
       display:inline; // 디폴트 속성 변경시
       //display:none; 엘리먼트를 안보이게 할때
     }	
     /* inline level element */
     a{
       border-width:5px;
       border-color:red;
       border-style:solid:
       display:block; // 디폴트 속성 변경시
     }	

     // 중복 제거 1단계
     h1, a{
       border-width:5px;
       border-color:red;
       border-style:solid:
       display:block; // 디폴트 속성 변경시
     }	
     // 중복 제거 2단계
     h1, a{
       //border-width:5px;
       //border-color:red;
       //border-style:solid:
       border:5px solid red; // 순서상관없음   
     }	
     


    
     // *중요: Inspector 를 사용하여 Styles 탭에서
     //       영향을 받는 CSS 를 확인! 
     h1{
       border:5px solid red;
       padding:20px;
       margin:20px;
       display:block;
       width:100px;
     }

예제코드 관련 GitHub 페이지
GitHub 페이지: https://github.com/pystockhub/book
ZIP 형식으로 다운로드: https://github.com/pystockhub/book/archive/master.zip



    // *중요: Inspector 에서 그림을 통해 값을 조정하라
    h1 {
      font-size:45px;
      text-align: center;
      border-bottom:1px solid gray; // Inspector를 활용한다 
      margin:0;
      padding:20px;
    }
    ol{ // ol 은 block element 이다  
      border-right:1px solid gray;
      width:100px; // block element라도 폭 지정 가능
      margin:0;
      padding:20px;
    }



Object -> Class, Instance 


Class = {Data, Logic} 
	  = {Variable, Function}
	  = {Field, Method}

Instance = Copy of Class


Object 를 잘 사용하는 방법만 알아도 된다




#%matplotlib inline <--- need only jupyter notebook

simple_regression = np.loadtxt('simple_regression.txt')
x_data = simple_regression[:,1]  # second column =j2
y_data = simple_regression[:,0]  # first column  =j1  

문법을 모를 경우 인터프리터 이용, wiki, google

>>> import numpy as np
>>> x=np.random.rand(5,2)
>>> x 
>>> x=x[:,1]
>>> x




X = tf.placeholder(tf.float32, [None], name='X')
                name='X' 는 텐서보드에서 보이는 이름이다

 
W = tf.get_variable("W", dtype=tf.float32, 
	initializer=tf.constant(1., tf.float32))
	        변수의 초기값을 상수 1.로 지정
아래와 변경해도 결과는 같다	        
W = tf.Variable([1.], name='W') 


with tf.Graph().as_default() as GRAPH_NAME:
 	 GRAPH_NAME 이라는 디폴트 그래프 지정 
     블럭안에 텐서, 오퍼레이터는 GRAPH_NAME 그래프에 삽입된다 



3가지 가설함수       오차     최적화 
     hypothesis  cost    optimizer
     H           Error   Gradient Descent
                 loss    minimize
	
1. Hypothesis = wx + b            
2. Error = (Hypothesis - y)^2 전체합 / N 
3. GradientDescentOptimizer(learning_rate=).minimize(오차)


h = W*X + b
cost = tf.reduce_mean(tf.square(tf.subtract(h, Y)))
train = tf.train. 
GradientDescentOptimizer(learning_rate=lr).
minimize(cost) -> 오퍼레이터로 작동 



- Cost
 : 실제데이터와 가설데이터 차이가 얼마인지 측정하는 값
 : cost를 최소화하는 W,b의 값을 구하는것이 Linear Regression의 목표!
      hypothesis = X * W
      cost = tf.reduce_mean(tf.square(hypothesis - Y))





- Gradient descent algorithm
 : Minimize cost function
 : 0 으로 수렴하기 위해서 경사를 조금씩 내려가는 알고리즘
 : W를 조금씩 바꾸면서 코스트가 줄어드는지를 반복하며 조절
 : 경사도는 어떻게 구할까? 미분을 이용.(곡선의 접선과 기울기 때문)
      . cost(W, b) 를 실행시키면 밥그릇 모양의 선이 생김.
      . 기울기가 가로로 평행해져야 0에 근사함을 알 수 있다 -> 미분방법
           .. 기울기가 /일경우(+), \에 가까울수록(-)
           .. 기울기가 /일경우 0으로 수렴하기 위해서는 
           		W가 <-방향으로 움직여야 하고 (-)가 되도록 조절
           .. 반복을 통해 기존의 W에 새롭게 입력된 x가 적용된 W값을 빼서 
           		W의 평균을 구해 새로운 W값을 적용



learning_rate = 0.1 <- 학습율
gradient = tf.reduce_mean(W*X - Y)*X) <- gradient=cost=loss
descent = W - learning_rate*gradient <- descent는 새로나온 W값
update = W.assign(descent) <- W 의 값을 update에 갱신 

optimizer=tr.train.GradientDescentOptimizer(lear..rate=.1)
train = optimizer.minimize(gradient)




with tf.Session(graph=GRAPH_NAME) as sess:
	GRAPH_NAME의 Tensor Flow Session 을 불러온다 
	블럭내부는 Session 으로 실행가능

	sess.run(tf.global_variables_initializer)
	for i in range(ITERATION):
		_, l, summary = sess.run([train, cost, merged], 
	  	_ -> 무효	   	    feed_dict={
		l -> Error=loss			  	X:x_data, 
		summary -> merged			Y:y_data
					   			})
  
sess.run(Operator) -> 연산의 결과값 
sess.run(Tensor)   -> 텐서의 값 

sess.run([], feed_dic={}) 
[]<-실행할 텐서나 오퍼레이터를 여러개 나열가능
[train, cost]-> train오퍼레이터의 결과값, cos 텐서의 결과값
이 동시에 리턴된다. 텐서나 오퍼레이터 실행에 placeholder가 있다면
값을 feed_dict로 값을 주어야 함.  





  if i % 2 == 0: # Scalar -> 2 step 
      summary_writer.add_summary(summary, i)
      saver.save(sess, log_dir+'model.ckpt', global_step = i)



case 1), 2), 3)
1) 1 ~ 200 값을 100x2 순차적으로 나열
2) uniform한 난수 생성하여 100x2 에 저장
3) normal(정규분포)한 난수 생성하여 100x2에 저장 

import numpy as np  //numpy import

1) x = np.arange(200).reshape((100,2))//reshape 100x2 
2) x = np.random.rand(100,2)  
3) x = np.random.normal(1,.01,[100,2])//(mean,stddev,shape)
       np.random.normal(size=[100,2]) // 이렇게 사용가능 

np.savetxt('data.txt', x)


















class BigData:
    #x, y = [],[] --> 클래스 변수,  초기화안함. plot 누적  
    def __init__(self, x0, x1, theta0, b0, dtheta, db, N):
        self.x, self.y = [],[]  # 여기 선언리스트가 plot 초기화
        w0 = 0 #numpy.tan(numpy.radians(theta0))
        for i in range(N):
            self.rnd = numpy.random.uniform(x0, x1)
            dth = numpy.random.uniform(-dtheta/2, dtheta/2)
            dw = numpy.tan(numpy.radians(theta0 + dth))
            b = b0 + numpy.random.uniform(-db/2, db/2)
            w = w0 + dw
            self.x.append(self.rnd)
            self.y.append(self.rnd*w + b) 

    def showpoint(self):
        plt.plot(self.x, self.y, 'bo')
        plt.show()

    def fileout(self, filename):  
        self.p = zip(self.x, self.y) # 두 리스트를 열로 합치기
        numpy.savetxt(filename, self.p)
        #numpy.savetxt('bigdata.txt', self.p)        




train_bd1 = BigData(0,10,45,-3,2,5,100) 
train_bd1.showpoint()
train_bd1.fileout("bigdata.txt")

big_data = numpy.loadtxt('bigdata.txt')
train_X = big_data[:,0]  // first column  =j1
train_Y = big_data[:,1]  // second column =j2 

//train_X = numpy.array([ 3.3,  4.4, 7, 3.1])
//train_Y = numpy.asarray([ 3.3,  4.4, 7, 3.1])
n_samples = train_X.shape[0]
//n_samples = len(train_X)

//# tf Graph Input
X = tf.placeholder("float")
Y = tf.placeholder("float")

//# Set model weights
W = tf.Variable(nprnd.randn(), name="weight")
b = tf.Variable(nprnd.randn(), name="bias")

//# Construct a linear model
pred = tf.add(tf.multiply(X, W), b)
//#pred = X*W + b

//# Mean squared error
cost = tf.reduce_sum(tf.pow(pred-Y, 2))/(2*n_samples)
//#cost = tf.reduce_sum((pred-Y)**2)/(2*n_samples)

//# Gradient descent
//#  Note, minimize() knows to modify W and b 
//   because Variable objects are trainable=True by default
optimizer = tf.train.
  GradientDescentOptimizer(learning_rate).minimize(cost)

//# Initialize the variables 
init = tf.global_variables_initializer()

//# Start training
with tf.Session() as sess:


// 들여쓰기 된 상태임
//# Run the initializer
sess.run(init)

//# Fit all training data 
for epoch in range(training_epochs):
    //#for (x, y) in zip(train_X, train_Y):
    for (x, y) in list(zip(train_X, train_Y)):
        sess.run(optimizer, feed_dict={X: x, Y: y})
        // 데이터 라인 수 만큼 iteration 
    //# Display logs per epoch step
    if (epoch+1) % display_step == 0:
        c = sess.run(cost, 
        	feed_dict={X: train_X, Y:train_Y})
        print("Epoch:", '%04d' % (epoch+1), 
        	  "cost=", "{:.9f}".format(c), 
              "W=", sess.run(W), "b=", sess.run(b))

print("Optimization Finished!")
training_cost = sess.run(cost, 
	feed_dict={X: train_X, Y: train_Y})
print("Training cost=", training_cost, 
	  "W=", sess.run(W), 
	  "b=", sess.run(b), '\n')

//# Graphic display
plt.plot(train_X, train_Y, 'bo', label='Original data')
plt.plot(train_X, sess.run(W) * train_X + sess.run(b), 
			'r', label='Fitted line')
plt.legend()
plt.show()






20180829

pip install/uninstall opencv-python

//할당, 복사 

a = b  변수a에 변수b 할당(id할당=id동일)
id(a) 변수의 아이디값
a is b 아이디값이 같은지 확인

[:] 리스트 전체를 의미 -> 리스트 복사 a=b[:]

from copy import copy
b = copy(a) 

변수를 복사하면 같은 변수(id)지만 
리스트를 복사하면 객체이므로 서로 다른 객체변수가 된다.
대신 객체변수에 할당(=)을 하면 같은 변수가 된다.

'결론: *중요함* 
튜플값 복사는 id 복사(동일)
리스트 복사는 다른 객체 id로 복사(다름)
튜플,리스트 할당(=)은 id 할당(동일)  

ex1) 
a=b=[1,2...]
a[i]요소를 바꾸면 b[i]도 변경됨

a=[1,2...]
b=a[:]
a[i]요소를 바꾸어도 b[i]는 변경되지 않는다



//리스트 확장

ex2)
a=[1,2]
a=a+[3]  vs  a.extend([3])

a=a+[] 
-> 리스트1에 리스트2를 더해 새 리스트3에 저장
-> 리스트a + 리스트[] -> 새리스트a  
a.extend([]) 
-> 리스트1에 리스트2를 더해 리스트1에 저장
-> 리스트a + 리스트[] -> 리스트a
 

//리스트 할당,스왑

a,b=('python','life') 튜플값
(a,b)='python','life'  튜플은 괄호 생략가능

[a,b]=['python','life'] 리스트

a=b='python' 튜플값 동시 할당

a,b=s,t  

x,y=1,10
x,y=y,x   *두변수를 바꾸는 법(swap)

리스트 복사 특이한 예제
ex3)
a=[1,[2,3],4]
b=a[:]
a[1][0]=5

a와 b는 다른 객체이지만 [2,3]은 같은 객체이므로
동일하게 a와 b내에 [2,3]->[5,3]으로 변경됨



//for문 공식

for 변수 in 리스트(또는 튜플, 문자열):

range(10) ->[0,1,2...9] 숫자리스트생성함수
range(1,10) ->[1,1,2...9] 숫자리스트생성함수

for 변수 in range():



//리스트 안에 for 문 포함하기

a=[1,2,3,4]
result=[]
for num in a:
	result.append(num*3)

동일한 효과
result=[num*3 for num in a]

if조건 추가 -> 만약 짝수만 *3 
res=[num*3 for num in a if num%2 ==0]

< 공식 >
[표현식 for 항목 in 반복가능객체 if 조건]

다중루프
[표현식 for 항목1 in 반복가능객체1 if 조건1
        for 항목2 in 반복가능객체2 if 조건2
        ...
        for 항목n in 반복가능객체n if 조건n]

ex) 구구단 결과 리스트 
r=[x*y for x in range(2,10)
...     for y in range(1,10)]



//Python 패키지

패키지 = 디렉토리 + 모듈 
디렉토리.디렉토리.디렉토리.모듈
------패키지---------

export PYTHONPATH=~/tensorflow
export

~/tensorflow/mypackage/__init__.py
~/tensorflow/mypackage/tetra/__init__.py
~/tensorflow/mypackage/tetra/tetra.py
~/tensorflow/mypackage/starcium/__init__.py
~/tensorflow/mypackage/starcium/starcium.py

#tetra.py
def tetra():
	...	

#starcium.py
def starcium():
	....


ex1)    디렉토리	디렉토리  파일=모듈  
import mypackage.tetra.tetra
mypackage.tetra.tetra.tatra()
		 디렉토리  파일   함수
ex2)            디            파
from mypackage.tetra import tetra
tetra.tetra()
 파     함

ex3)            디     파            함
from mypackage.tetra.tetra import tetra
tetra()
 함 

ex4)
import mypackage
mypackage.tetra.tetra.tetra() -->(x) 불가능
			디     파   함  
	
ex5)			  디     파    함 
import mypackage.tetra.tetra.tetra -->(x) 불가능


'공식:중요
import a.b.c -> c는 파일=모듈,패키지,디렉토리이어야 한다
__init__.py 파일이 포함된 디렉토리는 패키지일부로 인식
__init__.py 파일은 내용이 없는 껍데기도 가능하다 