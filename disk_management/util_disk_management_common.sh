#### [이론] 리눅스 서버, 디스크 RAID 관리
### https://koreaubuntu.wordpress.com/2011/12/18/%EB%A6%AC%EB%88%85%EC%8A%A4-%ED%8C%8C%EC%9D%BC-%EC%8B%9C%EC%8A%A4%ED%85%9C%EA%B3%BC-%ED%95%98%EB%93%9C-%EB%A7%88%EC%9A%B4%ED%8A%B8%ED%95%98%EA%B8%B0/
### https://www.digitalocean.com/community/tutorials/how-to-create-raid-arrays-with-mdadm-on-ubuntu-16-04
### http://www.zdnet.co.kr/news/news_view.asp?artice_id=00000039146265
#### 디스크 명령어 참조
### http://ra2kstar.tistory.com/135
### http://zetawiki.com/wiki/%EB%A6%AC%EB%88%85%EC%8A%A4_fdisk

## df : 디스크 남은 용량 확인
# df -k # 킬로바이트 단위로 현재 남은 용량을 확인
# df -m # 메가바이트 단위로 남은 용량을 왁인 
# df -h # 보기 좋게 보여줌
df -h . # 현재 디렉토리가 포함된 파티션의 남은 용량을 확인

## du : 현재 디렉토리에서 서브디렉토리까지 용량 확인
# du -a : 현재 디렉토리의 사용량을 파일단위 출력
# du -s : 총 사용량을 확인
# du -h : 보기 좋게 바꿔줌 
du -sh . : 한단계 서브디렉토리 기준으로 보여준다. 

## lsblk : 블럭 장치 목록 확인
lsblk

## blkid : 현재 하드디스크의 파티션 정보중 파일시스템 정보 확인
blkid

## fdisk : 리눅스용 파티션 테이블 조작도구
fdisk