# trying_supervisord

[ochinchina/supervisord: a go-lang supervisor implementation](https://github.com/ochinchina/supervisord/)(goに移植されたsupervisord)が孫プロセスの面倒までちゃんと見てくれるのかどうかの検証

## 動かしかた(macOS)

```sh
git clone git@github.com:miminashi/trying_supervisord.git
cd trying_supervisord
curl -L https://github.com/ochinchina/supervisord/releases/download/v0.7.3/supervisord_0.7.3_macOS_64-bit.tar.gz | tar -xf -
./supervisord_0.7.3_macOS_64-bit/supervisord -c supervisord.conf
```

正常に動作した場合、以下のようなログが見られる。

```
$ ./supervisord_0.7.3_macOS_64-bit/supervisord -c supervisord.conf
INFO[2021-06-30T18:52:19+09:00] load configuration from file                  file=supervisord.conf
INFO[2021-06-30T18:52:19+09:00] create process:main
INFO[2021-06-30T18:52:19+09:00] stop listening
INFO[2021-06-30T18:52:19+09:00] try to start program                          program=main
DEBU[2021-06-30T18:52:19+09:00] wait program exit                             program=main
main.sh 1625046739
child.sh 1625046739
grandchild.sh 1625046739
main.sh 1625046740
child.sh 1625046740
grandchild.sh 1625046740
INFO[2021-06-30T18:52:20+09:00] success to start program                      program=main
main.sh 1625046741
child.sh 1625046741
grandchild.sh 1625046741
main.sh 1625046742
child.sh 1625046742
grandchild.sh 1625046742
main.sh 1625046743
grandchild.sh 1625046743
child.sh 1625046743
main.sh 1625046744
grandchild.sh 1625046744
child.sh 1625046744
^CINFO[2021-06-30T18:52:24+09:00] receive a signal to stop all process & exit   signal=interrupt
INFO[2021-06-30T18:52:24+09:00] stop the program                              program=main
INFO[2021-06-30T18:52:24+09:00] force to kill the program                     program=main
INFO[2021-06-30T18:52:24+09:00] Send signal to program                        program=main signal=killed
grandchild.sh 1625046745
child.sh 1625046745
```
