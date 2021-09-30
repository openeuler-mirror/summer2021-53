# 结项报告

## 项目信息

- 项目名称: 为 Linux 内核寻找更多的补丁修改范式

- 方案描述:
    1. 为 Linux 内核寻找至少2个补丁修改范式，并验证修改范式的正确性
    2. 提交自己的原创的 coccinelle 规则
    3. 把自己的贡献开源到 Linux 社区

- 时间规划
    1. 6月下旬至 7月上旬:学习静态代码分析工具，掌握 Coccinelle 基本语法知识。
    2. 7月上旬至 8月上旬:阅读 Linux 内核代码，成功使用 Coccinelle 对 Llinux 内核代码静态扫描寻找漏洞，同时准备 中期考核的演示材料 。
    3. 8月下旬至 9月下旬:给寻找到的漏洞提交补丁修改范式，并且通过执行测试，验证修改范式的正确性。
    4. 9月下旬至 10月上旬:提交补丁到开源社区，准备终期考核材料

## 项目总结

### 项目产出

1. 编写了四条原创的coccinelle规则，分别为

    - remove_INIT_LIST_HEAD :  删除冗余的INIT_LIST_HEAD

    - remove_zero_memset ： 清除无效的0size memset

    - remove_useless_spin_lock ： 删除冗余的spin_lock初始化

    - define_mutex  ： 定义MUTEX宏以减少代码量

      

      注： 有部分规则修改自社区，或参考社区中已有贡献

      

2. 生成一系列Patch（十余个）

### 项目亮点

1. 原创coccinelle规则，参照linux社区中的coccinelle材料编写了几条新颖的规则
2. 积极参与社区贡献，学习了如何制作linux补丁与向社区发送补丁，并发送了数个自己生成的补丁到社区中

### 工具的重要性和独特性

使用coccinelle工具自动生成补丁，有两个方面的重要意义，其一，在明确了规则后，可以方便的遍历排查整个内核，使其中不再存在类似问题。其二，开发人员使用较少时间即可参与Linux社区贡献。 同时，原创的规则上传到网络上之后，开源社区的其他人也可以使用该规则在他们的C语言工程中进行代码优化。

### 遇到的困难与解决方案

1. 规则比较难发现：快速翻了数千条 linux commit log以寻找合适的规则。
2. coccinelle语法比较难： 调研了外网的很多语法资料，并使用了参照法。

### 其他信息

- 方案进度： 已完成
- 项目完成质量： 优秀
- 与导师沟通及反馈情况：积极沟通，平均每周一次视频会议，平时在微信中沟通开发情况。
- gitee地址：https://gitee.com/openeuler-competition/summer2021-53
- gitlab地址：https://gitlab.summer-ospp.ac.cn/summer2021/210010075