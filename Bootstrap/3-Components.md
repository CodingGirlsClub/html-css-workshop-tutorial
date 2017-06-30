# 组件
> 无数可复用的组件，包括字体图标、下拉菜单、导航、警告框、弹出框等更多功能。

我们接下来要学习的东西呢，是Bootstrap为我们提供的一些组件，这些组件的使用非常简单，可以方便快捷帮助我们搭建网站，并且能达到一个不错的显示效果。我们最需要注意的就是：HTML的结构和bootstrap提供添加到结构上的类以及属性。
这些组件的交互功能是依赖于jQuery库实现的，所以还必须引入jQuery.js，且必须在Bootstrap.js之前。正式上线的话直接使用压缩版本就可以了如下：

```html
<script src="../js/jquery-min-1.11.3.js"></script>
<script src="../js/bootstrap.min.js"></script>
```
## 一、菜单

### 1. 基本用法

在官方文档中，我们看到的下拉菜单组件是这样的：
```html
<div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    下拉菜单<span class="caret"></span>
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
        <li><a href="#">菜单项1</a></li>
        <li><a href="#">菜单项2</a></li>
    </ul>
</div>
```
那么，到底哪一些属性是必须的、用来控制行为的呢？又有哪一部分是起到修饰作用的？

我们来自己简化一下这一段代码：

```html
<div class="dropdown">
    <button class="dropdown-toggle"data-toggle="dropdown">下拉菜单</button>
    <ul class="dropdown-menu" >
        <li>菜单项1</li>
        <li>菜单项2</li>
    </ul>
</div>
```
我们来看看简化前后的对比图：

![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-04-dropdown-1.jpg)


在使用Bootstrap框架中的下拉菜单组件时，其结构运用的正确与否非常的重要，如果结构和类名未使用正确，直接影响组件是否能正常运用。经过我们上面的简化，最终可以看到核心要求有以下几点：

1. 使用一个名为`.dropdown`的容器包裹了整个下拉菜单元素，示例中为：`<div class="dropdown"></div>`
1. 使用了一个`<button>`按钮做为父菜单，并且定义类名`.dropdown-toggle`和自定义`data-toggle`属性，且值必须和最外容器类名一致，此示例为：`data-toggle="dropdown"`
1. 下拉菜单项使用一个ul列表，并且定义一个类名为`.dropdown-menu`，此示例为：`<ul class="dropdown-menu">`

也就是说，我们仅仅需要牢记这3个步骤我们就可以使下拉菜单生效，`<button>`内的`<span>`标签，也仅仅是用来进行图标的展示，让菜单更加清晰。不过虽然如此，我建议在**实际的使用过程**中，把Bootstrap框架中的下拉菜单的**其它属性也一并加上**，这样更加友好的为不同的客户如：**屏幕阅读器** 提供了一个优质的体验。

那么这些是怎么起作用的呢？

查看CSS源码可以看到`.dropdown-menu`有一个`display:none`，所以下拉列表项默认隐藏的；我们继续打开chrome开发者工具（F12），可以看到每一次在列表项展现出来时，`.dropdown`类后还增加了一个`.open`的类；不用多说想肯定就是这个类在起作用，我们再继续回到CSS源码中去可以看到：

```css
.open > .dropdown-menu {
  display: block;
}
```
看到这里也应该不用过多说明了，添加了这个`.open`类时，`.dropdown-menu`自然的就显示出来了。

### 2. 下拉菜单修饰

#### 2.1 下拉分隔线

在Bootstrap框架中的下拉菜单还提供了下拉分隔线，假设下拉菜单有两个组，那么组与组之间可以通过添加一个空的`<li>`，并且给这个`<li>`添加类名`.divider`来实现添加下拉分隔线的功能。`<li class="divider"></li>`对应的样式代码：

```css
.dropdown-menu .divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
```
#### 2.2 菜单标题

上一小节讲解通过添加`divider`可以将下拉菜单分组，为了让这个分组更明显，还可以给每个组添加一个头部（标题）：`<li class="dropdown-header">`第一部分菜单头部`</li>`。

从源码中比较关键的两个点是：标题的字体颜色是：`color: #777;`，还有内填充`padding: 3px 20px;`

### 2.3 对齐方式

Bootstrap框架中下拉菜单**默认是左对齐**也就是添加.dropdown-menu-left类所能达到的效果，如果你想让下拉菜单**相对于父容器右对齐**时，可以在`.dropdown-menu`上（也就是你的菜单项的ul）添加一个`.pull-right`或者`.dropdown-menu-right`类名，如下所示：`<ul class="dropdown-menu pull-right" >`
源码如下：

```css
.dropdown-menu.pull-right,
.dropdown-menu-right {/*两个类自选*/
  right: 0;
  left: auto;
}
```
当然你只进行这样的设置的话，可能还会有一些奇怪的情况出现，比如列表项跑到屏幕最右边去了，所以同时一定要为`.dropdown`添加`float:left`样式。

```css
.dropdown{
  float: left;
}
```
![下拉菜单（右对齐）](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-04-dropdown-2.jpg)

#### 2.4 菜单项状态

下拉菜单项的默认的状态（不用设置）有悬浮状态（:hover）和焦点状态（:focus）：（包括下面提到的状态都必须在li中包含a标签才有- -）

下拉菜单项除了上面两种状态，还有当前状态（.active）和禁用状态（.disabled）。这两种状态使用方法只需要在对应的菜单项上添加对应的类名如：<li class="disabled"><a href="#">桃</a></li>

我们可以实现下面这样的效果：
![下拉菜单（右对齐）](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-080400.jpg)

----
## 二、按钮


### 1. 按钮组及工具栏

单个按钮的运用有时候并不能满足我们的业务需求，常常会看到多个按钮组合使用，比如富文本编辑器里的一组小图标按钮等。

对于结构方面，非常的简单。使用一个名为`.btn-group`的容器，把多个按钮放到这个容器中。如：

```html
<div class="btn-group">
    <button type="button" class="btn btn-default">向左</button>
    <button type="button" class="btn btn-danger">中间</button>
    <button type="button" class="btn btn-default">向右</button>
</div>
```
如何转化成工具栏呢？只需要再用一个`.btn-toolbar`的内容，将我们的`.btn-group`再进行一次包裹，同时，我们还可以使用`.btn-group-lg`大按钮组、`.btn-group-xs`:超小按钮组这一系列的类添加到`.btn-group`容器来进行对一组按钮进行大小控制如下：

```html
<div class= "btn-toolbar">
    <!-- …… -->
    <div class= "btn-group ">
        <button type="button" class="btn btn-default">向左</button>
        <button type="button" class="btn btn-danger">中间</button>
        <button type="button" class="btn btn-default">向右</button>
    </div>
    <div class= "btn-group btn-group-sm">
        <button type="button" class="btn btn-default">向左</button>
        <button type="button" class="btn btn-danger">中间</button>
        <button type="button" class="btn btn-default">向右</button>
    </div>
    <!-- …… -->
</div>
```
上面两段代码效果如下：
![按钮组及工具栏](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-080700.jpg)



### 2. 嵌套分组

这里的嵌套分组其实就是在分组按钮中嵌套了一个下拉菜单。使用的时候，只需要把当初制作下拉菜单的`.dropdown`的容器换成`.btn-group`，并且和普通的按钮放在同一级。如下所示：

```html
<div class="btn-group">
    <button class="btn btn-default" type="button">首页</button>
    <div class="btn-group">
        <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">产品展示<span class="caret"></span></button>
        <ul class="dropdown-menu">
            <li><a href="##">公司简介</a></li>
            <li><a href="##">企业文化</a></li>
            <li><a href="##">组织结构</a></li>
            <li><a href="##">客服服务</a></li>
        </ul>
    </div>
    <button class="btn btn-default" type="button">关于</button>
</div>
```
当然我们还可以从水平按钮组变成垂直分组，只需要在水平分组的最外层容器的类名`.btn-group`替换成`.btn-group-vertical`，就可以实现垂直分组的效果。

按钮的向下向上三角形

我们在下拉菜单和嵌套分组都都看到了一个按钮的向下三角形，我们是通过在`<button>`标签中添加一个`<span>`标签元素，并且命名为caret，这个三角形完全是通过CSS代码来实现的：
```css
.caret {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: 2px;
    vertical-align: middle;
    border-top: 4px solid;
    border-right: 4px solid transparent;
    border-left: 4px solid transparent;
}
```
有的时候我们的下拉菜单会向上弹起，这个时候我们的三角方向需要朝上显示，实现方法：需要在`.btn-group`类上追加`dropup`类名（这也是做向上弹起下拉菜单要用的类名）。
```css
.dropup .caret{  
    content: "";
    border-top: 0;/*可以看到这里top与bottom的变化*/
    border-bottom: 4px solid;
}
```
那么现在就来对比一下，上面代码以及类的添加可以达到的不同效果：
![嵌套分组、垂直、向上展开](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-080903.jpg)


----
## 三、导航

可以说，每一个网页里面都会有导航的存在，便于用户查找网站所提供的各项功能服务。那么如何使用Bootstrap框架制作各式各样的导航呢？

### 1. 基础样式

Bootstrap框架中制作导航条主要通过`.nav`样式。默认的`.nav`样式不提供默认的导航样式，必须附加另外一个样式才会有效，比如n`av-tabs、nav-pills`之类。

```html
<ul class="nav nav-tabs">
    <li><a href="#">HTML5</a></li>
    <li><a href="#">CSS3</a></li>
    <li><a href="#">JavaScript</a></li>
</ul>
```
当然他们同样也有当前状态（.active）和禁用状态（.disabled），我们给第一个导航添加当前状态，最后一个导航添加禁用状态，实现效果如下：
![导航-基础样式](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-081238.jpg)


### 2. 修饰

#### 2.1 垂直堆叠的导航

在实际运用当中，除了水平导航之外，还有垂直导航，就类似前面介绍的垂直排列按钮一样。制作垂直堆叠导航只需要在`.nav-pills`的基础上添加一个`.nav-stacke`d类名即可，同时，我们和下拉菜单一样，同样可以使用组之间的分割线例，只需要在导航项之间添加`<li class=”nav-divider”></li>`,如：

```html
<ul class="nav nav-pills nav-stacked">
    <li class="active"><a href="#">HTML5</a></li>
    <li><a href="#">CSS3</a></li>
    <li class="nav-divider"></li>
    <li class="disabled"><a href="#">JavaScript</a></li>
</ul>
```
复制到CODEPEN中看看效果吧！

你应该已经发现了在垂直导航中，每一个导航项都是占文字居左，占100%的父容器宽度的，如果你想有响应式的效果，应该和栅格系统一起使用，另外为什么不试试使用nav-tabs来实现垂直导航呢？看看效果，你就会明白为什么不使用了。

#### 2.2 自适应导航

自适应导航和前面制作自适应按钮是一样的，不过更换了一个类名，`.nav-justified`。当然他需要和`.nav-tabs`或者`.nav-pills`配合在一起使用。 它是响应式的，在宽度足够时，给多个导航项，均分空间；在达到一个临界值（768px）时，它会和垂直导航一样：每一项都充满父容器的宽度，不同的是，他的文字是居中显示的

#### 2.3 导航中加下拉菜单（二级导航）

前面介绍的都是使用制作一级导航，但很多时候，在Web页面常常会用到二级导航的效果。
在Bootstrap框架中制作二级导航就更容易了。只需要将li当作父容器，使用类名`.dropdown`，同时在**`li`中嵌套另一个列表`ul`**

```html
<ul class="nav nav-pills">
    <li ><a href="#">HTML5</a></li>
    <li><a href="#">CSS3</a></li>
    <li class="dropdown">
        <a href="##" class="dropdown-toggle" data-toggle="dropdown">JavaScript<span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="##">JQuery</a></li>
            <li><a href="##">Vue</a></li>
            …
       </ul>
</ul>
```
与上面的嵌套按钮效果一致。

#### 2.4 面包屑式导航

面包屑(Breadcrumb)一般用于导航，主要是起的作用是告诉用户现在所处页面的位置（当前位置）。一般在文章、博客、列表处用的比较多，需要用到`.breadcrumb`类。

```html
<ol class="breadcrumb">
    <li><a href="#">个人首页</a></li>
    <li><a href="#">标签</a></li>
    <li class="active">Bootstrap</li>
</ol>
```
可以实现的效果：
![导航-面包屑](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-081554.jpg)


----
## 四、导航条

导航条（navbar）和我们在上一个笔记中介绍的导航（nav）相比，就多了一个“条”字。其实在Bootstrap框架中他们有着一定的区别。
在导航条(navbar)中有一个背景色、而且导航条可以是纯链接（类似导航），也可以是表单，还有就是表单和导航一起结合等多种形式。它们在移动设备上可以折叠（并且可开可关），且在视口（viewport）宽度增加时逐渐变为水平展开模式。

### 1. 基础导航条

实际上，导航条和导航在外观上的差别并不是那么的大，但是在实际使用中导航条要比导航复杂得多。下面就来实现一个最基础的导航条。

<p data-height="232" data-theme-id="0" data-slug-hash="NbMypQ" data-default-tab="html" data-user="sundevilyang" data-embed-version="2" data-pen-title="basic_navbar" class="codepen">See the Pen <a href="http://codepen.io/sundevilyang/pen/NbMypQ/">basic_navbar</a> by Yang Wen (<a href="http://codepen.io/sundevilyang">@sundevilyang</a>) on <a href="http://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>

点击上图HTML，再点击Result看看效果。拉伸浏览器，分别看看在**宽屏**和**窄屏**的效果。

在制作一个基础导航条时，主要注意以下几点：

- 首先在制作导航的列表(`<ul class="nav">`)基础上添加类名`.navbar-nav`
- 在列表外部添加一个容器`<div>`在这里允许的话推荐使用`<nav>`，并且使用类名`.navbar`和`.navbar-default`
- `.navbar`类的主要功能就是设置左右padding和圆角等效果，通过`.navbar-default`来进行控制导航条的颜色比如还有`.navbar-inverse`。

### 2. 带标题、二级菜单

在Web页面制作中，一般都可以在菜单前面看到有一个标题（文字字号比其它文字稍大一些），其实在Bootstrap框架也为大家做了这方面考虑，其通过.navbar-header和.navbar-brand来实现，如：

```html
<div class="navbar-header">
    <a href="##" class="navbar-brand">WEB开发</a>
</div>
```
当然也可以用来做logo，中文官网描述，在此不进行详细描述。

二级菜单自然不用多说，我们一起来看看下面这段代码以及能实现的效果：（注意这里使用的是navbar-inverse反色的导航条）

```html
<div class="navbar navbar-inverse" role="navigation">
    <div class="navbar-header">
        <a href="##" class="navbar-brand">WEB开发</a>
     </div>
    <ul class="nav navbar-nav">
        <li class="active"><a href="#">HTML</a></li>
        <li><a href="#">CSS</a></li>
        <li class="dropdown" >
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">JavaScript
            <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">jQuery</a></li>
                <li><a href="#">Vue</a></li>
                <li><a href="#">NodeJS</a></li>
            </ul>
        </li>
        <li ><a href="#">PHP</a></li>
    </ul>
</div>
```
效果如下：  

![标题-下拉](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-083513.jpg)


我们常常在导航条中都能看到搜索表单，比如知乎，新浪微博等等都具有，Bootstrap框架当然不可能缺掉这样的东西。使用方法也非常简单：

在Bootstrap框架中提供`.navbar-form`，在`.navbar`容器中放置一个带有`.navbar-form`类名的表单；再添加`.navbar-left`让表单左浮动，更好实现对齐。
在Bootstrap中，还提供了`.navbar-right`样式，让元素在导航条靠右对齐。


```html
<form action="##" class="navbar-form navbar-left" rol="search">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="请输入关键词" />
    </div>
    <button type="submit" class="btn btn-default">搜索</button>
</form>
```
### 3. 按钮、文本和链接

除了上面的一些样式之外，bootstrap框架提供了三种其他样式：

    1. 导航条中的按钮`navbar-btn`，使不在`<form>`中的按钮在导航条里垂直居中
    1. 导航条中的文本`navbar-text`，一般使用`<p>`元素，达到最优的行距
    1. 导航条中的普通链接`navbar-link`，非导航的链接，添加这个类，可以有正确的默认颜色与反色设置
但这三种样式在框架中使用时受到一定的限制，需要和`navbar-brand、navbar-nav`配合起来使用。而且对数量也有一定的限制，一般情况在使用一到两个不会有问题，超过两个就会有问题。

### 4. 固定导航条

有时，我们希望导航条固定在浏览器顶部或底部，Bootstrap为我们方便的提供了两个类来实现这样的样式：

.navbar-fixed-top：导航条固定在浏览器窗口顶部
.navbar-fixed-bottom：导航条固定在浏览器窗口底部
使用方法很简单，只需要在制作导航条最外部容器（navbar）上追加对应的类名即可。

```html
<nav class="navbar navbar-default navbar-static-top">
    ...
</nav>
```
这个固定的导航条会遮住页面上的其它内容，除非你给<body>元素底部设置了padding。提示：导航条的默认高度是 50px。如：body { padding-bottom: 70px; }，当然你也可以使用你自己的值。

### 5. 响应式导航条

在上面的例子中，导航条就仅仅能大屏幕下有一个不错的效果，在屏幕变小的情况下，还直接把所有的导航项直接展现出来就不适合了。为了有一个更好的显示效果，响应式的导航条设计也就随之而来。我们先来看看效果，再一步一步分析它！

响应式导航条

窄屏时，点击右边的按钮图标可展开，效果与上面的展开效果除了active状态不再溢出容器外，其他基本相同。实现代码如下：

```html
<div class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <!-- .navbar-toggle样式用于toggle收缩的内容，即nav-collapse collapse样式所在元素 -->
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse">
            <span class="sr-only">Toggle Navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <!-- 确保无论是宽屏还是窄屏，navbar-brand都显示 -->
        <a href="#" class="navbar-brand">WEB开发</a>
    </div>
    <!-- 屏幕宽度小于768px时，div.navbar-responsive-collapse容器里的内容都会隐藏，显示icon-bar图标，当点击icon-bar图标时，再展开。屏幕大于768px时，默认显示。 -->
    <div class="collapse navbar-collapse navbar-responsive-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">HTML</a></li>
            <li><a href="#">CSS</a></li>
            <li><a href="#">JavaScript</a></li>
            <li><a href="#">PHP</a></li>
        </ul>
    </div>
</div>
```
分析：

和普通导航条一样，最外层使用`<div class="navbar navbar-default" role="navigation">`容器包裹，主要是`.navbar`和 `.navbar-default`类。
保证在窄屏时需要折叠的内容必须包裹在带一个div内，并且为这个div加入`.collapse、.navbar-collapse`两个类名。最后为这个`div`添加一个class类名或者id名。
保证在窄屏时要显示的图标样式（固定写法）：


```html
<button class="navbar-toggle" type="button" data-toggle="collapse">
    <span class="sr-only">Toggle Navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
</button>
```
并为button添加data-target=”.类名/#id名”，究竞是类名还是id名呢？由需要折叠的div来决定。（这里很关键，你可以把上面的代码在这里进行修改，会发现无法展开）


## 五、 分页

分页导航几乎在所有的网站都可以看到，好的分页导航可以给用户带来更好额用户体验，还可以方便爬虫在网页中进行搜索。

### 1 带页码的分页导航

带页码的分页导航，应该是最常见的一种分页导航，特别是在列表页内容很多的时候，会给用户提供带页码的分页导航方式，在Bootstrap中使用的是`ul>li>a`这样的结构，在`ul`标签上加入pagination类：

```html
<ul class="pagination ">
    <li><a href="#">&laquo;第一页</a></li>
    <li><a href="#">6</a></li>
    <li class="active"><a href="#">7</a></li>
    <li><a href="#">8</a></li>
    <li><a href="#">9</a></li>
    <li><a href="#">10</a></li>
    <li class="disabled"><a href="#">最后一页&raquo;</a></li>
</ul>
```
实现效果如下：  

![分页码导航](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-084118.jpg)


可以看到同样会有`hover、active、disabled`等等状态，当然它也可以调整大小：在外层容器中的`.pagination`类后，添加`.pagination-lg`让分页导航变大；`.pagination-sm`让分页导航变小：

### 2 翻页分页导航

其实这种方式，就是看不到具体的页码，只会提供一个上一页和下一页的按钮。

使用方式很简单，也就是在`ul`标签上添加`pager`类：

```html
<ul class="pager">
    <li><a href="#">&laquo;上一页</a></li>
    <li><a href="#">下一页&raquo;</a></li>
</ul>
```
它默认是居中显示的，如果我们需要一个居左一个居右显示的话，添加两个样式：`previous`让“上一步”按钮居左；next让“下一步”按钮居右。（同样可以使用`disabled`表示禁用状态）


```html
<ul class="pager">
    <li class="previous disabled"><a href="#">&laquo;上一页</a></li>
    <li class="next"><a href="#">下一页&raquo;</a></li>
</ul>
```
------
## 六、其他

### 标签

在一些Web页面中常常会添加一个标签用来告诉用户一些额外的信息，比如说在导航上添加了一个新导航项，可能就会加一个“new”标签，来告诉用户。这是新添加的导航项。
在Bootstrap专门将这样的效果提取成为了单独的标签组件。可以使用`<span>`这样的行内标签添加`.label`类来控制大小，再使用情景类来控制高亮显示的颜色如：`label-default、label-danger`等等（在原来笔记中说到过这样的情景类，只不过这里需要加上不同的前缀）
![导航条标签](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-084529.jpg)


### 徽章（角标）

其实和上面的标签效果很大一部分是类似的，一般用作信息提示，例如剩余多少未读信息等等，也就是我们常常能在右上角看到的未读信息提示。在Bootstrap中，把这种效果称作为徽章效果，使用badge类来实现。

给链接、导航等元素嵌套 `<span class="badge">` 元素，可以很醒目的展示新的或未读的信息条目。

```html
<a href="#">Inbox <span class="badge">42</span></a>
<button class="btn btn-primary" type="button">
  Messages <span class="badge">4</span>
</button>
```
![导航条角标](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-084555.jpg)


通过查看源码，我们可以发现Bootstrap同样使用`:empty`伪元素，来设置当没有内容的时候隐藏：


```css
.badge:empty {
    display: none;
}
```
需要注意的是IE8 不支持 `:empty `选择符，所以不会默认隐藏；

Bootstrap 中的徽章会适配导航元素的激活状态。


```html
<ul class="nav nav-pills" role="tablist">
    <li role="presentation" class="active"><a href="#">Home <span class="badge">42</span></a></li>
    <li role="presentation"><a href="#">Profile</a></li>
    <li role="presentation"><a href="#">Messages <span class="badge">3</span></a></li>
</ul>

```

![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-07-084627.jpg)



### 缩略图

其实在我们日常使用的网页中，随处都可以看到有缩略图的存在，比如淘宝的商品列表，慕课网上的课程列表等等，Bootstrap自然不会放过那么常见效果，它将这样的效果独立成为了一个模块组件，使用.thumbnail样式类，Boostrap缩略图的默认设计仅需最少的标签就能展示带链接的图片。

我们需要配合Bootstrap的栅格系统来达到一个不错的显示效果。在Bootstrap中文网中，我们可以看到这样的示例代码:

```html
<div class="container">
    <div class="row">
        <div class="col-xs-6 col-md-3">
            <a href="#" class="thumbnail">
                <img src="..." alt="...">
                <!-- 此处应对图片做一些样式设置height: 180px;width: 100%; display: block;等 -->
            </a>
        </div>
        ...
    </div>
</div>
```
我们将上面代码中的列复制3份，改变浏览器的大小，我可以看到因为栅格系统的存在，我们的缩略图已经变成了响应式的。这是栅格系统起到的效果那么.thumbnail又起到了什么效果呢？
我们可以看到图片周围有了一圈边框，并且在边框与图片之间有着4px的padding，除此之外bootstrap还人性化的为我们的缩略图效果提供了hover效果。

添加标题、描述内容、按钮

我们当然不可能仅仅只展示一张可点击的图片就完了，我们时常还会配上相关的说明文字以及一些按钮等等。在已有的缩略图的基础上，我们需要使用.caption容器，并且在这个容器中放置其它的内容，来达到统一的显示效果。


```html
<!-- 添加到上面代码中的.thumbnail容器内，a标签后 -->
<div class="caption">
    <h2>说明文字</h2>
    <p>这里是说明文字</p>
    <button class="btn btn-info">按钮</button>
    <button class="btn btn-success">按钮</button>
</div>
```
看看效果吧：

缩略图展示

### 警示框

其实在我们的网页中，总是避免不了各种的提示信息，比如我们的登陆界面中，总是避免不了输入错误的情况，就需要使用警示框来提示用户错误信息。Bootstrap为我们提供了一组这样的样式类。

Bootstrap使用.alert来控制警示框的大小边距等样式，然后再用：成功：.alert-success、信息：.alert-info、警告：.alert-warning和错误：.alert-danger、这样的一组样式类,来表示不同的情景颜色。

```html
<div class="alert alert-success" role="alert">恭喜您操作成功！</div>
<!-- ...等等 -->
```
缩略图展示

关闭

除了展示效果之外，如果你还引入了Bootstrap的js文件。那么我们的还可以为我们的警示框非常简单的创造一些交互效果。


```html
<div class="alert alert-success alert-dismissable">
    success操作成功
    <button class="close" data-dismiss="alert">
        <span class="glyphicon glyphicon-remove"></span>
    </button>
</div>
```
可以看到效果如下：（点击后面的icon便可以关闭该提示信息）

缩略图交互

那么好的效果，在实现的时候需要注意一些什么呢？主要有三个步骤：

在普通的警示框.alert的基础上，添加。alert-dismissable类
在button标签中加入close类，实现警示框关闭按钮的样式（我在上面使用了Bootstrap自带的icon图标来实现关闭按钮）
在关闭按钮上添加自定义属性data-dismiss="alert"（Bootstrap中是通过这样的自定义属性，再使用JS检测来实现关闭效果的）
警示框的链接

有时我警示框中除了错误信息之外，还会加入一个链接地址，以便于用户在在新的页面中查找问题去处理他的错误。

Bootstrap仅仅使用了一个.alert-link的类就实现了这样的效果，主要是对于链接样式的高亮显示、加粗，并且颜色相应加深。（除此之外在hover上去后有下划线）

### 进度条

Bootstrap框架对于进度条提供了一个基本样式，一个100%宽度的背景色，然后一个子容器高亮，表示完成进度。其实制作这样进度条非常容易，一般使用两个容器，外容器具有一定的宽度，设置一个背景色，他的子元素设置一个宽度（父容器的宽度比例值如60%），同时设置一个高亮的背景色。

Bootstrap也是这样实现的，外层容器使用.progress类，子容器使用.progress-bar类（别忘记设置宽度）如：

```html
<div class="progress">
       <div class="progress-bar" style="width:80%"></div>
</div>
```
同样它也提供了四个不同的情景颜色。.progress-bar-info..等，添加到子容器原有的类后即可

除了色彩，还可以使进度条的变为条纹的，只需要将progress-striped添加到原有的父容器类后，它同样具有彩色效果。更进一步的是，若在其后再添加一个.active类，可以实现动态的条纹进度条。（必须两个同时使用，使用css3动画实现）我们来试试：

```html
<div class="progress progress-striped active">
    <div class="progress-bar progress-bar-danger" style="width:80%"></div>
</div>
<!-- .... -->
```
条纹进度条

我们还可以在一个进度条内，将不同状态的进度条放置在一起，水平排列，形成叠加进度条.

带标签的显示条
使用很简单，只需要在子容器中添加相应的数字就可以了，不过下面这段代码会有什么效果呢？不妨也自己去试试吧！(在源码中搜索aria-valuenow="0"可看到原因)


```html
<div class="progress">
    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">0%</div>
</div>
```
### 媒体对象

媒体对象一般包括以下几个部分：

- 媒体对像的容器：常使用.media类名表示，用来容纳媒体对象的所有内容
- 媒体对像的对象：常使用.media-object表示，就是媒体对象中的对象，常常是图片
- 媒体对象的主体：常使用.media-body表示，就是媒体对像中的主体内容，可以是任何元素，常常是图片侧边内容
- 媒体对象的标题：常使用.media-heading表示，就是用来描述对象的一个标题，此部分可选
- .pull-left或者.pull-right来控制媒体对象中的对象浮动方式。(如图片在左或者在右)
那么我们可以看到的结构如下：

```html
<div class="media">
    <a class="pull-left" href="#">
        <img class="media-object" src=".." alt="...">
    </a>
    <div class="media-body">
        <h4 class="media-heading">Bootstrap</h4>
        <div>默认样式的媒体对象组件允许在一个内容块的左边或右边展示一个多媒体内容（图像、视频、音频）。</div>
    </div>
</div>
```
可以实现最普通的图片在左，标题与介绍文字在右的媒体对象组。

我们在论坛中常常能看到和Bootstrap中文官网媒体对象组模块类似的阶梯状媒体对象，它是怎么实现的呢？
其实很简单，我们只需要在上一级的.media-body容器最后添加新的额媒体对象容器.media就可以实现这样的阶梯效果

媒体对象

除了这样的阶梯形式，我们还可以在论坛评论系统中看到，评论是平铺着下来的，也就是媒体对象列表。

我们只需要将原来的.media放在.media-list容器中就可以实现，不过既然都说了是列表，那我们还是直接使用ul>li的排列方式吧:

```html
<ul class="media-list">
    <li class="media">…</li>
    <li class="media">…</li>
    <li class="media">…</li>
</ul>
```
Bootstrap同样帮我们清除了，媒体对象列表中的ul>li的默认样式，使展示更急美观

### 列表组

列表组是Bootstrap框架新增的一个组件，可以用来制作列表清单、垂直导航等效果，也可以配合其他的组件制作出更漂亮的组件。它主要包括两个部分：

1. .list-group：列表组容器，常用的是ul元素，当然也可以是ol或者div元素
1. .list-group-item：列表项，常用的是li元素，当然也可以是div元素
如：

##### 带徽章的列表组

带徽章的列表组其实就是将Bootstrap框架中的徽章组件和基础列表组结合在一起的一个效果。具体做法很简单，只需要在.list-group-item中添加徽章组件.badge：

```html
<ul class="list-group">
    <li class="list-group-item">玩转Bootstrap  <span class="badge">5</span></li>
    <li class="list-group-item">基础Bootstrap的网页开发  <span class="badge">12</span></li>
</ul>
```
可以实现笑效果如下：

带徽章的列表

如果在列表组中，我们希望列表项是链接的话，Bootstrap为我们提供了两种方案：

直接将链接置于li.list-group-item容器内，它会有链接下划线的存在
将ul.list-group>li.list-group-item的结构换成div.list-group>a.list-group-item，此时与默认的列表组显示无异(emmet会吧？那就能理解我的代码的意思…)
##### 自定义列表组

除了上面默认的列表组之外，为了更清晰的展示内容，Bootstrap实现了自定义列表组，主要是新增了两个类：

.list-group-item-heading：用来定义列表项头部样式
.list-group-item-text：用来定义列表项主要内容
结构如下编写：

```html
<div class="list-group">
    <a href="##" class="list-group-item">
        <h4 class="list-group-item-heading">图解CSS3</h4>
        <p class="list-group-item-text">...</p>
    </a>
    <a href="##" class="list-group-item">
        <h4 class="list-group-item-heading">Sass中国</h4>
        <p class="list-group-item-text">...</p>
    </a>
</div>
```
##### 列表项的状态设置

和其他的组件一样，列表组也两个状态效果：

.active：表示当前状态
.disabled：表示禁用状态
只需要在相应的列表项上添加。class="list-group-item active">，主要对于该项的背景颜色进行高亮，以及其中的徽章进行了高亮处理

禁用状态，只是添加了一个灰色的背景色，以及文字的暗色处理

除了上面的两个最常用的状态之外，Bootstrap为我们的列表组也提供了不同的情景颜色，只需要在列表项中添加.list-group-item-danger这一系列的类。

## 面板

同样作为一个新增的组件，基础面板非常简单，就是一个div容器运用了.panel样式，产生一个具有边框的文本显示块。由于.panel不控制主题颜色，所以在.panel的基础上增加一个控制颜色的主题.panel-default，另外在里面添加了一个.div.panel-body来放置面板主体内容：

```html
<div class="panel panel-default">
    <!-- panel-default就是那一系列的情景类，设置不同的可以设置不同的颜色 -->
    <div class="panel-body">我是一个基础面板，带有默认主题样式风格</div>
</div>
```
带有头和尾的面板

基础面板看上去太简单了，Bootstrap为了丰富面板的功能，特意为面板增加“面板头部”和“页面尾部”的效果：

- .panel-heading：用来设置面板头部样式
- .panel-footer：用来设置面板尾部样式

```html
<div class="panel panel-default">
    <!-- 这里对于不同的情景颜色，面板头的颜色改变十分明显 -->
    <div class="panel-heading">图解CSS3</div>
    <div class="panel-body">…</div>
    <div class="panel-footer">作者：大漠</div>
</div>
```
面板中嵌套表格

其实面板作为一个用于处理，别的组件完成不了的情况的组件，一般情况下可以把面板理解为一个区域，所以在使用面板的时候，都会在.panel-body放置需要的内容，可能是图片、表格或者列表等。

如果在面板中嵌套表格，只需要将编写好的表格直接放置在面板中即可，不过有着如下两种形式：


```html
<div class="panel panel-default">
    <div class="panel-heading">图解CSS3</div>
    <div class="panel-body">…</div>
    <!-- 这里是放在panel-body后面，实际上我们还可以将table放在panel-body里面 -->
    <table class="table table-bordered">…</table>
    <div class="panel-footer">作者：大漠</div>
</div>
```
两个效果最大的差异是：

1. 放在.panel-body内的表格，实际上就是简单的嵌套，设置了一些padding值等。
1. 放在.panel-body后的表格，会与面板融合在一起，与面板相接的地方，不会有着边框的展示，而是直接展示面板的边框

**在面板中嵌套列表组时，同样是这样的两个差异**
