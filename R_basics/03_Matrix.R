##행렬(Matrix)##
#벡터를 여러 개 합친 형태
#row와 column으로 구성
#모든 데이터 타입은 동일해야 됨

##매트릭스에 값 넣기##
#벡터를 매트릭스로 변환 = matrix(벡터)
#매트릭스는 기본적으로 열을 기준으로 값이 들어감,행지정x
v1 <- c(1,2,3,4)
mat <- matrix(v1)
mat

#행을 2개로 지정(열을 기준으로 값이 들어감)
mat <- matrix(v1, nrow = 2)
mat

#행을 기준으로 넣을 때 ==> byrow = T(True)
mat <- matrix(v1, nrow = 2, byrow = T)
mat

##매트릭스에서 값 꺼내기##
mat[2,1]
mat[2,2]

##매트릭스에서 행 또는 열 값 꺼내기##
mat[1, ] #1행 다 가져옴
mat[ ,2] #2열 다 가져옴
