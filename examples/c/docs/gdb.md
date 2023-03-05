

```log
labile      3868       1  5 09:40 ?        00:00:12 /usr/share/code/code --unity-launch --enable-crashpad
...
...
labile      4046    3868  7 09:40 ?        00:00:14  \_ /usr/share/code/code --type=renderer --enable-crashpad --crashpad-handler-pid=3887 --enable-crash-reporter=b88a56ff-1000-40ef-9fac-63cf73b03141,no_channel --user-data-dir=/home/labile/.config/Code --standard-schemes=vscode-webview,vscode-file --secure-schemes=vsc
ode-webview,vscode-file --bypasscsp-schemes --cors-schemes=vscode-webview,vscode-file --fetch-schemes=vscode-webview,vscode-file --service-worker-schemes=vscode-webview --streaming-schemes --app-path=/usr/share/code/resources/app --no-sandbox --no-zygote --node-integration-in-worker --lang=en-US --num-raster-threads=1
 --renderer-client-id=10 --launch-time-ticks=194856163 --shared-files=v8_context_snapshot_data:100 --field-trial-handle=0,i,10172504929682329033,16340934358275651676,131072 --disable-features=SpareRendererForSitePerProcess --vscode-window-config=vscode:231a7b79-0ccb-4e6c-82b4-57bdad84965f --vscode-window-kind=shared-p
rocess --enable-crashpad
labile      4138    4046  0 09:40 ?        00:00:01  |   \_ /usr/share/code/code --ms-enable-electron-run-as-node /usr/share/code/resources/app/out/bootstrap-fork --type=ptyHost --logsPath /home/labile/.config/Code/logs/20230226T094028
labile      5009    4138  0 09:41 pts/0    00:00:00  |   |   \_ /usr/bin/zsh -i
labile      5011    4138  0 09:41 pts/1    00:00:00  |   |   \_ /usr/bin/zsh -i
labile      5043    4138  0 09:41 pts/2    00:00:00  |   |   \_ /usr/bin/zsh
labile      5071    4138  0 09:41 pts/3    00:00:00  |   |   \_ /usr/bin/zsh
labile      5776    4138  0 09:42 pts/4    00:00:00  |   |   \_ /usr/bin/zsh
labile      5833    5776  0 09:42 pts/4    00:00:00  |   |       \_ /bin/sh /tmp/Microsoft-MIEngine-Cmd-kjdy24ic.u34
labile      5835    5833  0 09:42 pts/4    00:00:00  |   |           \_ /usr/bin/gdb --interpreter=mi --tty=/dev/pts/4
labile      5875    5835  0 09:42 ?        00:00:00  |   |               \_ /home/labile/opensource/libbpf-bootstrap/examples/c/minimal


```

Breakpoint on syscall:
```log
-exec catch syscall mmap
-exec catch syscall write
-exec catch syscall bpf
-exec catch syscall 321
```