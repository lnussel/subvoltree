Show btrfs subvolumes as tree, courtesy of [tig](https://jonas.github.io/tig/)

```
# $packagemanager install 'pkgconfig(ncurses)'
$ git submodule init
$ git submodule update
$ make
```

```
microos # ./subvoltree --ascii
* 194 'Snapshot Update of #193' [current] [default]
* 193 'Snapshot Update of #192'
* 192 'Snapshot Update of #191'
* 191 'Snapshot Update of #190'
* 190 'Snapshot Update of #189'
* 189 'Snapshot Update of #188'
* 188 'Snapshot Update of #187'
* 187 'Snapshot Update of #186'
* 186 'Snapshot Update of #185'
* 185 'Snapshot Update of #184'
* 184 'Snapshot Update of #183'
```

```
tw # ./subvoltree
∙ 875
│ ∙ 874 'zypp(zypper)'
│ │ ∙ 873
│ │ │ ∙ 872 'zypp(zypper)'
∙─┴─┴─╯ 871 [current] [default]
│ ∙ 870 'writable copy of #866'
│ │ ∙ 869 'rollback backup of #866'
∙ │ │ 865 'rollback backup of #819'
│ │ │ ∙ 818 'writable copy of #1'
│ │ │ │ ∙ 588
│ │ │ ∙─╯ 1 'first root filesystem'
```
