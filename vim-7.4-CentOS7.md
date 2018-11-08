# Setup vim 7.4 +lua on CentOS 7


## Install vim with lua.

### First install all dependencies you’ll need to rebuild the rpm.

```
yum --enablerepo=* git rpm-build python-devel ncurses-devel perl-devel gpm-devel libXpm-devel libXt-devel libSM-devel gtk2-devel desktop-file-utils ruby ruby-devel libselinux-devel autoconf libacl-devel perl-ExtUtils-Embed gcc lua-devel
```

### Next we will create the required rpmbuild environment. Make sure you are building as a non-root user.

```
mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros
```

### Vim with Lua support has been built for Fedora. Just download the Fedora vim src.rpm rebuild it from spec and install rpms.

```
wget http://archives.fedoraproject.org/pub/archive/fedora/linux/updates/19/SRPMS/vim-7.4.417-1.fc19.src.rpm -P /tmp/
rpm -ivh /tmp/vim-7.4.417-1.fc19.src.rpm

rpmbuild -ba rpmbuild/SPECS/vim.spec

rpm -ivh rpmbuild/RPMS/x86_64/vim-{common,enhanced,minimal,filesystem}-7.4.417-1.el7.x86_64.rpm
```


## Install bundle

```
mkdir -p ~/.vim/bundle/
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim
:BundleInstall
```


## Install ctags

```
wget http://prdownloads.sourceforge.net/ctags/ctags-5.8-1.src.rpm -P /tmp/
rpm -ivh /tmp/ctags-5.8-1.src.rpm

rpmbuild -ba rpmbuild/SPECS/ctags-5.8.spec

rpm -ivh rpmbuild/RPMS/x86_64/ctags-5.8-1.x86_64.rpm
```

## vim.rc

## Install bundle plugs in vim


### references

- https://dky.io/post/how-to-build-vim-7/
- http://zuyunfei.com/2013/04/12/killer-plugin-of-vim-vundle/
