_이미지 파일의 이름은 수정될 경우 실행했을 때, 이미지가 뜨지 않습니다._
_또한 각 소스코드 파일 주석 정리는 천천히 업데이트 될 예정입니다._

# 2018학년도 1학기 인터넷 프로그래밍 중간 프로젝트 

## 1. 프로그램 개요 및 핵심 기능
- 쇼핑몰 홈페이지에 로그인 한 회원만이 아이템 담기 및 리뷰 가능
- 로그인하지 않은 회원은 아이템 담기 및 상품 리뷰 불가
- 장바구니에서 아이템 개별로 삭제 가능

## 2. 개발 언어
`HTML, CSS, JAVA, JSP`

## 3. 참고 서적
`프로젝트로 배우는 자바 웹 프로그래밍 (황희정, 한빛아카데미)`

## 4. 예제 코드에서 수정/추가된 부분
- 트위터 의견 달기 코드에서 로그인되지 않은 사람의 경우, 의견을 달 수 있느 권한을 주지 않도록 설정하여 홈쇼핑 페이지에서 상품을 조회한 후 의견을 달려고 하는 경우 아예 접근하지 못하도록 설정
- 장바구니 담기 예제 코드에서 add()를 통해 상품을 담기만 했지만, 부가기능을 넣어 remove()를 통해 장바구니에 넣은 상품을 삭제할 수 있는 기능 추가
- 아이디: admin, 비밀번호: 1234 를 제외한 나머지 계정 접근 불가

## 5. 추후 개선 및 발전 방향
- 상품 조회할 항목을 선택한 후, 그 페이지에서 로그인 할 경우 다시 메인화면으로 돌아가기 때문에 (signed_main.jsp) 상품 조회할 항목을 다시 눌러야 하는 번거로움 존재
- 장바구니 내의 아이템 전체 삭제 불가

## 6. 주요 동작화면 캡쳐
![1](https://user-images.githubusercontent.com/38810970/52067232-7f854d80-25bd-11e9-9dc6-80f0a5d44135.png)
![2](https://user-images.githubusercontent.com/38810970/52067251-88761f00-25bd-11e9-9017-39c959ea4448.png)
![3](https://user-images.githubusercontent.com/38810970/52067253-89a74c00-25bd-11e9-8a9c-548d39662f9c.png)
![4](https://user-images.githubusercontent.com/38810970/52067262-8ca23c80-25bd-11e9-8ece-0d7cbd4fbec8.png)
![5](https://user-images.githubusercontent.com/38810970/52067265-8f049680-25bd-11e9-9ed3-578f56147bd4.png)
![6](https://user-images.githubusercontent.com/38810970/52067267-9035c380-25bd-11e9-943b-3956941f0778.png)
![7](https://user-images.githubusercontent.com/38810970/52067271-90ce5a00-25bd-11e9-998f-141cd496c8be.png)
![8](https://user-images.githubusercontent.com/38810970/52067272-9166f080-25bd-11e9-9b0c-5ceb8b5c5006.png)
![9](https://user-images.githubusercontent.com/38810970/52067277-9461e100-25bd-11e9-960a-f4215c2b3622.png) 
