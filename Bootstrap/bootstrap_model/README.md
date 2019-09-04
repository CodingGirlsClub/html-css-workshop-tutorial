## 什么是Bootstrap？

1. Bootstrap 是由Twitter推出的一个用于快速开发 Web 应用程序和网站的前端框架。
2. 基于html5、css3的bootstrap，具有下面这些诱人特性：  
    - 移动设备优先；  
    - 漂亮的设计；  
    - 友好的学习曲线；  
    - 卓越的兼容性；  
    - 响应式设计；  
    - 12列响应式栅格结构；  
    - 样式向导文档。  
3. 自定义JQuery插件，完整的类库，基于Less、Sass等

## 安装Bootstrap

Bootstrap 提供以下几种方式帮你快速上手，每一种方式针对具有不同技能等级的开发者和不同的使用场景。我们使用方法一，减少操作。

##### 1. 使用 Bootstrap 提供的免费 CDN 加速服务
[英文官方网站](http://getbootstrap.com/getting-started/#download-cdn)和中文网站的地址不同，由于众所周知的墙的原因，我们采用[中文网站](http://v3.bootcss.com/getting-started/#download)）。

复制下面的<link>样式表粘贴到你的网页的<head>里面，放在在其他样式表文件之前。
```html
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
```

把这个JavaScript插件以及JQuery放在你的网页的末尾附近，就在</body>标签前面。记住需要先添加jQuery，因为我们的代码依赖于它。

```html
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
```

##### 2.  下载「用于生产环境的 Bootstrap」到本地

到 [Bootstrap中文网站](http://v3.bootcss.com/getting-started/#download)下载用于生产环境的 Bootstrap，然后解压缩。

##### 3. 其他工具下载
现在还无需掌握，知道有这种安装方法即可
- 通过 Bower 进行安装
- 通过 npm 进行安装
- 其他

## 起始模板

<p data-height="630" data-theme-id="0" data-slug-hash="QGmVdJ" data-default-tab="html" data-user="sundevilyang" data-embed-version="2" data-pen-title="Bootstrap标准模板" class="codepen">See the Pen <a href="http://codepen.io/sundevilyang/pen/QGmVdJ/">Bootstrap标准模板</a> by Yang Wen (<a href="http://codepen.io/sundevilyang">@sundevilyang</a>) on <a href="http://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>





## 全局 CSS 样式概览

> 设置全局 CSS 样式；基本的 HTML 元素均可以通过 class 设置样式并得到增强效果；还有先进的栅格系统。

一边参考[全局 CSS 样式 · Bootstrap 中文文档](http://v3.bootcss.com/css/) **概览部分**，一边阅读以下部分


1.  为什么要将页面设置为 HTML5 文档类型？
> 答：Bootstrap 使用到的某些 HTML 元素和 CSS 属性只有 HTML5提供。

  > 相关问题：如何设置页面为 HTML4 文档类型？（如果不知道，可以看W3C的文档，或者用Google搜索）
2. 怎么理解「移动设备优先」？
> 先满足小屏幕移动设备（手机、平板），再去扩展里面的components去满足大屏幕设备（笔记本、台式机）。
> ##### 移动优先策略
> 1. 内容 Content
>   - 决定什么是最重要的
> 2. 布局 Layout
>   - 优先设计更小的宽度。
>   - Base CSS强调移动设备；中等关注平板、电脑
> 3. 渐进增强 Progressive Enhancement
>   - 随着屏幕大小增加而添加元素。

3. Bootstrap 排版、链接样式设置了基本的全局样式是什么？
> Bootstrap保留和坚持部分浏览器的基础样式，解决部分潜在的问题，提升一些细节的体验，在排版、链接样式设置了基本的全局样式。具体说明如下：
>
> - 移除body的margin声明
> - 设置body的背景色为白色 `background-color: #fff;`
> - 为排版设置了基本的字体、字号和行高
> - 设置全局链接颜色，且当链接处于悬浮`:hover`状态时才会显示下划线样式

4. Bootstrap 如何在不同的浏览器表现出一样的效果？
> Bootstrap框架的核心是轻量的CSS基础代码库，他并没有一味的重置样式，而是注重各浏览器基础表现，降低开发难度。
> 为了增强跨浏览器表现的一致性，Bootstrap使用了 [Normalize.css](http://necolas.github.io/normalize.css/)。但没有一味全部使用该重置样式，而是在此基础之上进行了一些改良，让其更加符合Bootstrap的设计思想。

5. 布局容器（container）是什么鬼？
> 顾名思义，就是放Bootstrap代码的容器，只有放在container里面的html代码才会被Bootstrap识别。
![](http://wy.codingirlsclub.com/2016-12-06-lLu7n.jpg)
> **注意**
> 我们要把Bootstrap的HTML的代码都放在 带 `container` or `container-fluid`类的 `<div>`标签中.

6. .container  和  .container-fluid 都是响应式，那有什么差别？
> 看源码bootstrap.css可以看到container和container-fluid类本身没有设置width属性值，也就是默认100%，但是container类还设置了媒体查询：
> ```css
  > @media (min-width: 768px) {
    > .container {
      > width: 750px;
    > }
  > }
  > @media (min-width: 992px) {
    > .container {
      > width: 970px;
    > }
  > }
  > @media (min-width: 1200px) {
    > .container {
      > width: 1170px;
    > }
  > }
> ```
> 也就是说container类在浏览器viewport宽度768~992px区间宽度固定为750px，在992~1200px区间宽度宽度固定为970px，大于1200px的时候宽度固定为1170px，所以container类在viewport大于768px的时候会有变化的左右margin，而container-fluid类没有媒体查询设置，所以始终是100%宽度，没有左右margin。
>
> > 网络搜到一些资料：
> - [Bootstrap中container与container-fluid的区别 - 简书](http://www.jianshu.com/p/a91f4cc4a7cb)
> - [bootstrap中container类和container-fluid类的区别 - so what - 博客频道 - CSDN.NET](http://blog.csdn.net/sinat_27088253/article/details/50985432)
> - [bootstrap中container跟container-fluid的样式是一样的，为什么要分开写？ - 知乎](https://www.zhihu.com/question/31269162)
> - [Bootstrap 栅格系统 理解和总结 | JeryTao](http://taojin.science/2016/05/11/BootStrap%E6%A0%85%E6%A0%BC%E7%B3%BB%E7%BB%9F/)


#### 作业
1. 快速阅读[全局 CSS 样式 · Bootstrap 中文文档](http://v3.bootcss.com/css/)，先只了解有哪些整体知识点。看到[响应式工具](http://v3.bootcss.com/css/#responsive-utilities)即可，后面的Less和Sass可以先不看。
2. 通读，知道这些知识点如何定义。
3. 精度，知道这些知识点如何用代码实现。

下面，我们会进入实战环节，写一些常用的Bootstrap模块，将来大家自己写页面就可以像搭积木一样写出自己的页面。
