# ranger-drv-rbnx

Ranger 底盘驱动包。

这个包按你的要求保持为“只负责启动”的形式：

- 不增加 Python 节点
- 不增加 agent skill
- 仅通过 `rbnx/start.sh` 拉起 ROS2 驱动 launch

用途就是把驱动进程纳入 Robonix 的 package 生命周期管理。
