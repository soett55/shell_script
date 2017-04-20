### http://ra2kstar.tistory.com/135
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

## quota 설정
# sudo apt-get install quota

## nano /etc/fstab

## Quota : 파일 시스템에서 사용자 마다 용량설정을 할 수 있게 만든다.
# 1. 쿼터 설치
sudo apt-get install quota
# 2. 쿼터 설정
nano /etc/fstab
# -----------------
# /etc/fstab: static file system information.
# #
# # Use 'blkid' to print the universally unique identifier for a
# # device; this may be used with UUID= as a more robust way to name devices
# # that works even if disks are added and removed. See fstab(5).
# #
# # <file system> <mount point>   <type>  <options>       <dump>  <pass>
# # / was on /dev/sda1 during installation
# UUID=51a925e8-c731-4aa4-8c58-d47cb0d55f02 /               ext4    errors=remount-ro 0       1
# # swap was on /dev/sda5 during installation
# UUID=a707e967-709f-4c2f-8caf-1579a3503c15 none            swap    sw              0       0
# #Disk ADDLine
# /dev/dm-0	/mnt/disk1	ext4	defaults	0 0
# /dev/bcache0	/mnt/disk2	ext4	defaults	0 0
# -----------------
####### -------> #######
# -----------------
# # /etc/fstab: static file system information.
# #
# # Use 'blkid' to print the universally unique identifier for a
# # device; this may be used with UUID= as a more robust way to name devices
# # that works even if disks are added and removed. See fstab(5).
# #
# # <file system> <mount point>   <type>  <options>       <dump>  <pass>
# # / was on /dev/sda1 during installation
# UUID=51a925e8-c731-4aa4-8c58-d47cb0d55f02 /               ext4    errors=remount-ro 0       1
# # swap was on /dev/sda5 during installation
# UUID=a707e967-709f-4c2f-8caf-1579a3503c15 none            swap    sw              0       0
# #Disk ADDLine
# /dev/dm-0	/mnt/disk1	ext4	defaults,usrquota,grpquota	0 0
# /dev/bcache0	/mnt/disk2	ext4	defaults	0 0
# -----------------
# 3. 쿼터 설정 후 재부팅 또는 리마운트
sudo mount -o remount /mnt/disk1
# 4. 쿼터 체크
sudo quotacheck -avugm --format=vfsv0
# 5. 쿼터 실행
sudo quotaon -avug
# 6. 쿼터 limit 설정(size soft, size hard, inode soft, inode hard)
sudo setquota -u testuser 100 200 10 15 -a /mnt/disk1
# 또는 sudo edquota -u testuser

# 7. 쿼터 시간 limit 설정(soft limit 넘었을 때)
sudo edquota -t
# 8. 쿼터 상태
sudo repquota -sau
# 9. 쿼터 끄기
sudo quotaoff -avug
