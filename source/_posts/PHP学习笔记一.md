---
title: PHP学习笔记一
top: false
toc: false
mathjax: false
tags:
  - PHP
  - 学习
date: 2020-03-14 20:41:12
author: Alan.H
img: https://cdn.jsdelivr.net/gh/hsqblog/CDN/php.jpg
cover: https://cdn.jsdelivr.net/gh/hsqblog/CDN/php.jpg
coverImg: https://cdn.jsdelivr.net/gh/hsqblog/CDN/php.jpg
summary:
categories: PHP
---

# 介绍

**PHP** 是一门使服务器产生动态输出的编程语言，输出的结果根据每次浏览器请求页面响应的结果而不同。

# PHP基本结构

```php

<?php
  代码语句;
  ……
?>
```

> * **PHP** 所有的代码都要在开始标记`<?php`符号和结束标记`?>`之内，**PHP**解释器以发现`<?php`开始解释，遇到`?>`结束解释。
> * **PHP** 所有的语句以`;`分号作为结束标示，没有分号结尾的语句会报错的。

# PHP基本语法

## 注释

```php

<?php
`/* 多行
		注释 */
`// 单行注释 
?>
```

#  变量