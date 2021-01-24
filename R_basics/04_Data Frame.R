##데이터프레임(Data Frame)##
#다양한 데이터 타입을 저장할 수 있는 자료형태
#일반 DBMS에서의 Table과 같은 자료구조
#대부분의 데이터들은 데이터프레임에 저장됨

##각 열에 해당하는 벡터 생성하기##
No <- c(1,2,3,4)
Name <- c("Apple","Peach","Banana","Grape")
Price <- c(500,200,100,50)
Qty <- c(5,2,4,7)

##벡터 합치기 ==> data.frame##
sales <- data.frame(No, Name, Price, Qty)
sales
#행 앞에 대괄호[] o==>데이터프레임
#행 앞에 대괄호[] x==>벡터

#데이터를 깔끔하게 보고싶을 때==>view(데이터프레임)
View(sales)

##데이터프레임에 있는 각각의 값 꺼내기##
sales[ ,2] #매트릭스랑 방법 동일
sales[ ,3]
sales[1, ]
#행 기준으로 뽑으면==>데이터프레임형태(행 앞에 대괄호x)
#열 기준으로 뽑으면==>벡터형태(행 앞에 대괄호o)

#데이터가 너무 방대해서 colomn의 숫자를 모르면 $를 쓰고 이름 써도 됨
sales$Price

##문제1##
#첫 번째 행과 두 번째 행을 같이 출력해주세요
sales[c(1,2), ]

##서브셋 함수==>데이터프레임에서 특정 조건에 맞는 행을 추출
subset(sales,Qty>3)
subset(sales,Name == "Apple")
subset(sales,Price>=300)

##특정 column만 추출하고 싶을 때
subset(sales,Price>=100,select=Name)
##특정 column만 제외하고 싶을 때
subset(sales,Qty>=2,select = -Price)

##문제2##
#Qty개수가 3개 이상인 행에서 Name과 Price만 추출하시오
subset(sales,Qty>=3,select=c(Name, Price))
