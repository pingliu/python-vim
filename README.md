# Install
```bash
    $ docker run --name python -v /tmp/share:/tmp/share -it ubuntu  bash
    $ apt-get update && apt-get install wget git make vim-gtk exuberant-ctags python3 python3-pip python3-dev ipython3 -y 
    $ cd
    $ git clone https://github.com/pingliu/python-vim.git
    $ cd python-vim && bash install.sh
    $ exit
    $ docker start python
    $ docker exec -it python bash
    $ pip install black flake8 pylint
```

## 常用命令
Tagbar：显示代码结构视图

NERDTree：显示文件系统的树状视图，类似于文件管理器

<leader>d：跳转到定义,leader就是\

<leader>n：查找引用


