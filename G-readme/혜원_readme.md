# PJT05 프로젝트 회고


### 작업 내용
- 데이터베이스 ERD 다이어그램 작성
- 운동 영상 리뷰 사이트에 포함되는 영상, 리뷰, 유저 기능을 추가하고, 찜 기능(Bookmark) 및 유저 간 팔로우 기능을 
- 데이터베이스 테이블로 구성함
- 각 테이블 간의 관계를 draw.io를 활용하여 ERD 다이어그램으로 작성
- 다이어그램을 바탕으로 테이블 스키마 SQL 코드를 작성
--- 

### 좋았던 점
이번 프로젝트에서 팀원들과 실시간으로 의논하며 공동으로 ERD 작업을 진행한 경험이 매우 유익했다고 생각합니다. 여러 가지 ER 다이어그램 도구 중에서 실시간으로 변경사항을 공유할 수 있는 도구를 선택했고 그 덕분에, 각자의 수정사항이 즉시 반영되어 협업의 효과가 극대화되었던 것 같습니다.<br> 이러한 과정을 통해 협업의 즐거움을 느꼈고, 필요할 때 질문하고 즉시 수정할 수 있는 환경이 팀 프로젝트를 원활히 진행하는 데 큰 도움이 된다는 것을 다시 한 번 느꼈습니다.

--- 

### 아쉬운 점 및 보완할 점
ERD를 설계하면서 PK 설정이나 일대다, 다대다 관계를 확실하게 정립하지 못하고 사용한 부분이 조금 걸립니다. 이러한 내용들은 데이터베이스의 완전성을 확보하는 데 있어 중요한 요소이기 때문에, 더 깊이 학습하여 다음 프로젝트에서는 자연스럽고 정확하게 작업을 진행하고 싶습니다.<br>
다이어그램 작성이 완료되었다고 생각했을 때, 한 팀원이 자료형과 NOT NULL 제약조건을 추가 설정을 , 또 다른 팀원은 테이블의 배치를 다듬을 것을 제안하였습니다. 팀원들처럼 작업물의 완성도를 올릴 수 있는 세심한 판단과 능동적인 참여의 필요성을 다시한 번 느꼈습니다. <br>
지난 프로젝트에서 팀에 크게 기여하지 못했던 점을 보완하고자 이번 프로젝트에서는 적극적으로 참여하고자 노력했습니다. DB 연동 작업 관련 내용을 복습하고 몇번씩 코드도 손으로 적어보며 백엔드 과정의 흐름을 잡기 위한 노력을 했습니다. 그래서 SQL 스키마만 작성하고 실제로 데이터베이스와 연동하지는 못한 점이 살짝(?) 아쉽게 느껴지기도 했습니다. <br>
앞으로는 프로젝트의 완성도를 더 높일 수 있는 방법을 고민하고, 보다 능동적으로 과제를 수행하려고 합니다. 특히, 데이터베이스를 실제로 연결하고 사용하는 과정까지 연습하여 다음에는 지금까지 진행한 프로젝트들의 내용을 다 통합한 '축구 하이라이트 영상 리뷰 사이트' 제작을 해보면 어떨까하는 생각도 들었습니다.

--- 

### 알게된 점
<br>
이번 프로젝트에서는 ERD 다이어그램 작성부터 SQL 스키마 작성까지 모든 과정이 새로운 경험이었습니다. 필드에 NOT NULL 제약조건을 설정하는 것부터, 관계형 데이터베이스에서의 기본적인 규칙을 준수하는 법 등 새로운 사실들을 많이 배울 수 있었습니다. 또한, 다이어그램 작성 시 각 테이블의 필드명을 통일된 형식으로 작성하는 세심한 작업도 배웠습니다.<br>
SQL 코드 검증 과정에서 ChatGPT가 Oracle 기준 현재 시간을 나타내는 방법으로 TIMESTAMP를 언급한 점도 흥미로웠습니다. 이를 통해 데이터베이스마다 현재 시간을 처리하는 방식이 다를 수 있다는 점을 배우게 되었고, 다음에 Oracle을 사용할 때는 해당 내용을 참고할 계획입니다.