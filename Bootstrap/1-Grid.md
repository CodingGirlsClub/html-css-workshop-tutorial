# 布局
> Options for structuring your pages with Bootstrap, including global styles, required scaffolding, grid system, and more.

> #####  自学任务：
>
> 1. 自己先快速阅读 [栅格系统](http://v3.bootcss.com/css/#grid) 文档。
> 2. 到 [Bootstrap可视化布局系统](http://www.bootcss.com/p/layoutit/) 玩一玩，快速体验Bootstrap

## 1. 背景介绍

栅格系统是Bootstrap中的核心，正是因为栅格系统的存在，Bootstrap才能有着如此强大的响应式布局方案。下面是官方文档中的解说：

> Bootstrap 提供了一套响应式、移动设备优先的流式栅格系统，随着屏幕或视口（viewport）尺寸的增加，系统会自动分为最多12列。包含了用于简单的布局选项的预定义类，也包含了用于生成更多语义布局的功能强大的混合类。

我们来理解一下这一段话，可以发现其中最重要的部分就是**移动设备优先**，那么什么是移动设备优先呢？

Bootstrap的基础CSS代码**默认从小屏幕设备**（比如移动设备、平板电脑）开始，然后使用**媒体查询扩展到大屏幕设备**（比如笔记本电脑、台式电脑）上的组件和网格。

有着如下策略：

1. 内容：决定什么是最重要的。
1. 布局：优先设计更小的宽度。
1. 渐进增强：随着屏幕大小增加而添加元素。

## 2. 知识点讲解

1. 数据行（.row）必须包含在容器.container（固定宽度）或.container-fluid（100%宽度）中，以便为其赋予合适的排列（aligment）和内填充（padding）。如：
```html
<div class="container"><!-- 水平居中，两边有margin，最小屏幕时，充满父元素 -->
    <div class="row"></div>
</div>
<!-- 或者 -->
<div class="container-fluid"><!-- 默认一直充满整个父元素 -->
    <div class="row"></div>
</div>
```
2. 在数据行（.row)中可以添加列（column），但列数之和不能超过平分的总列数（在超过时，多余部分会换行显示），默认12。
```html
<div class="container">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"></div>
        <div class="col-md-4"></div>
    </div>
</div>
```
3. 页面上的**具体内容**应当放置于列（column）内，并且只有列（column）可以作为数据行.row容器的**直接子元素**。
4. 预定义的网格类，比如 `.row` 和 `.col-xs-4`，可用于快速创建网格布局。
5. 栅格系统中的列是通过指定**1到12**的值来表示其跨越的范围。例如，三个等宽的列可以使用三个`.col-xs-4`来创建。
  - 如果一“行（row）”中包含了的“列（column）”大于 12，多余的“列（column）”所在的元素将被作为一个整体另起一行排列。
6. 下面媒体查询（media query）的基本结构，根据查看网页的设备的某些重要信息（比如屏幕大小、分辨率、颜色位深等），页面可以分别应用不同的样式甚至替换整个样式表。
```css
@media (media-feature-name: value) {
    /* 符合条件时应用的样式 */
}
```
如果浏览器当前的条件与圆括号中的条件匹配，它就会采用花括号中的那些样式。如果不匹配，浏览器会忽略这些样式。
> 注意：浏览器始终会采用位于 **@media** 代码块之外的样式。满足条件时的媒体查询样式是在其他样式基础上应用的。
为此，条件式媒体查询样式经常要覆盖其他样式，比如隐藏之前的可见元素，把区块移动位置，调整字号等。

## 3. 用法

一图胜千言，通过下表可以详细查看 Bootstrap 的栅格系统是如何在多种屏幕设备上工作的。
![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-06-Grid-parameter.jpg)

### 3.1 基础
那么我们就来看看一些示例吧，下面这种方式是最基本的用法：
<p data-height="558" data-theme-id="0" data-slug-hash="Ypadrx" data-default-tab="html" data-user="sundevilyang" data-embed-version="2" data-pen-title="grid1" class="codepen">See the Pen <a href="http://codepen.io/sundevilyang/pen/Ypadrx/">grid1</a> by Yang Wen (<a href="http://codepen.io/sundevilyang">@sundevilyang</a>) on <a href="http://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>

点击上图右上角的<kbd>Edit on CODEPEN</kbd>看视图效果

#### 任务1
你来试试：
制作一个网格，效果图如下：
![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-06-grid-task-1.png)

### 3.2 列偏移（offset）

在某些情况下，我们不希望相邻的列紧靠在一起，如果你希望不通过额外的margin或其他的手段来实现的话，Bootstrap内置为我们提供了列偏移（offset），这一系列的类来帮助我们实现想要的效果。

只需要给需要偏移的列元素上添加类名 `col-md-offset-*` (**星号代表要偏移的列组合数**)，那么具有这个类名的列就会向右偏移。
这些类实际是通过使用 `*` 选择器为当前元素增加了左侧的边距（margin）。例如：在列元素中添加`.col-md-offset-6` 类将 `.col-md-6`元素向右侧偏移了6个列（column）的宽度。

现在我们的代码是这样的：
<p data-height="265" data-theme-id="0" data-slug-hash="vyRvbR" data-default-tab="html" data-user="sundevilyang" data-embed-version="2" data-pen-title="grid列偏移" class="codepen">See the Pen <a href="http://codepen.io/sundevilyang/pen/vyRvbR/">grid列偏移</a> by Yang Wen (<a href="http://codepen.io/sundevilyang">@sundevilyang</a>) on <a href="http://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>
点击上图右上角的<kbd>Edit on CODEPEN</kbd>看视图效果

从实现的效果我们就能发现一些东西，注意第二段的显示效果与代码，从那里我们可以发现：使用`col-md-offset-*`对列进行向右偏移时，要保证列与偏移列的总数不超过12，不然会致列断行显示。
其实原因也很简单：因为该类是对于列设置`margin-left`，并且我们在上面的源码展示中，也可以看有每一列都有着`float:left`的属性，从这些地方我们就不难发现在（偏移+列宽）超过12时，为何会换行显示了。

#### 任务2

要求：

1. 一个有4列网格。
2. 第一列网格占2格宽不偏移。
3. 第二列、第三列网格占2格宽，并且偏移1个网格。
4. 第四列网格占3格宽，并且偏移1个网格。

效果图如下：
![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-06-grid-task-2.png)

### 3.3 列嵌套
Bootstrap框架的网格系统还支持列的嵌套。你可以在一个列中添加一个或者多个行（`.row`）容器，然后在这个行容器中插入列（像前面介绍的一样使用列）。但在列容器中的行容器（`.row`），宽度为100%时，就是当前外部列的宽度。（其实就是在列中嵌套多个列，下面会有实际效果展示）

<p data-height="464" data-theme-id="0" data-slug-hash="pNLGgj" data-default-tab="html" data-user="sundevilyang" data-embed-version="2" data-pen-title="grid列嵌套" class="codepen">See the Pen <a href="http://codepen.io/sundevilyang/pen/pNLGgj/">grid列嵌套</a> by Yang Wen (<a href="http://codepen.io/sundevilyang">@sundevilyang</a>) on <a href="http://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>
点击上图右上角的<kbd>Edit on CODEPEN</kbd>看视图效果

**注意：嵌套的列总数也需要遵循不超过12列。不然会造成末位列换行显示。**

#### 任务3

要求：

1. 创建一个8-4列网格。（备注：以中屏md（970px）为例）。
1. 在第一个8列网格中插入8-4列网格。
1. 在第二个4列网格中插入9-3列网格。

效果图如下：
![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-06-grid-task-3.png)

### 3.4 列排序
列排序其实就是改变列的方向，就是改变左右浮动，并且设置浮动的距离。在Bootstrap框架的网格系统中是通过添加类名 `col-md-push-*` 和 `col-md-pull-*` (**其中星号代表移动的列组合数**)。

我们来看一个简单的示例：
<p data-height="300" data-theme-id="0" data-slug-hash="NbYeZV" data-default-tab="html" data-user="sundevilyang" data-embed-version="2" data-pen-title="grid列排序" class="codepen">See the Pen <a href="http://codepen.io/sundevilyang/pen/NbYeZV/">grid列排序</a> by Yang Wen (<a href="http://codepen.io/sundevilyang">@sundevilyang</a>) on <a href="http://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>
点击上图右上角的<kbd>Edit on CODEPEN</kbd>看视图效果

> “col-md-4”居左，“col-md-8”居右，如果要互换位置，需要将“col-md-4”向右移动８个列的距离，也就是8个offset ,也就是在“<div class=“col-md-4”>”添加类名“col-md-push-8”，调用其样式。
>
> 也要将“col-md-8”向左移动４个列的距离，也就是4个offset，在“<div class=”col-md-8”>”上添加类名“col-md-pull-4”：

## 4. 实例

#### 4.1 移动设备和桌面屏幕

是否不希望在小屏幕设备上所有列都堆叠在一起？那就使用针对超小屏幕和中等屏幕设备所定义的类吧，即 `.col-xs-* `和 `.col-md-*`。
我把Bootstrap中文官网的代码稍微做了一点修改。主要是将中间的.col-md-4和.col-xs-6两个类调换了一下位置（CSS层叠，说到这应该就不需要做更多的说明了吧。），代码如下：
```html
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-8">.col-xs-12 .col-md-8</div>
        <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
    </div>
    <div class="row">
        <div class="col-md-4 col-xs-6">.col-md-4 .col-xs-6</div>
        <div class="col-md-4 col-xs-6">.col-md-4 .col-xs-6</div>
        <div class="col-md-4 col-xs-6">.col-md-4 .col-xs-6</div>
    </div>
    <div class="row">
        <div class="col-xs-6">.col-xs-6</div>
        <div class="col-xs-6">.col-xs-6</div>
    </div>
</div>
```
宽屏显示效果如下：
![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-06-Grid-mobile-desktop-1.jpg)
窄屏显示效果如下：
![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-06-Grid-mobile-desktop-2.jpg)

其实从上面代码和实际的显示效果，我们就可以看出一些问题来：

1. 在宽屏时，使用`col-md-*`的布局方式，在窄屏时使用`col-xs-*`布局
1. 响应式的列重置与列中设置的类的排列顺序无关。
1. 响应式列重置，在一个 `.row` 仍然存在列超过12时，`col-xs-6` * 3=18。多余列的元素将作为一个*整体单元被另起一行排列。
2.
在了解了上面的这些问题之后是不是明了了一些呢？

举一反三，我们再来看一个更加复杂的例子

### 4.2 手机、平板、桌面

在上面案例的基础上，通过增加使用针对平板设备的 `.col-sm-*` 类，我们来创建更加动态和强大的布局吧。


```html
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-8">.col-xs-12 .col-sm-6 .col-md-8</div>
        <div class="col-xs-6 col-sm-12 col-md-4">.col-xs-6 .col-sm-12 .col-md-4</div>
    </div>
    <div class="row">
        <div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
        <div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
        <div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
    </div>
</div>
```
这一次会比原来的情况更加复杂，一个会有3种情况出现：

##### 宽屏：桌面
![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-06-Grid-mobile-pad-desktop-1.jpg)
##### 中屏：平板
![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-06-Grid-mobile-pad-desktop-2.jpg)
##### 窄屏：手机
![](http://ocuwjo7n4.bkt.clouddn.com/2016-12-06-Grid-mobile-pad-desktop-3.jpg)

然后我们从这一部分代码与实际效果，再加上上面做的一点小总结，对比之后又能发现一些问题：
  1. Bootstrap中对于栅格系统的展示总是优先展示**对应屏幕大小**范围的类（`.col-xs-6`和`.col-sm-4`等等）。
  1. 在为不同大小屏幕，添加多个类一定要记住在基本用法处的表格中的内容，它决定了在不同大小屏幕下的显示与排列。
  1. 若还要继续添加在超大屏幕下的特定显示效果，只需要对列再添加一个`.col-lg-*`的类，就能达到你所想要的。

### 4.3 响应式列重置

除了在上面讲到的内容，在官方文档中还提到了**响应式列重置**，在我看来其实就是以下几点（或者说在这样的条件下可以使用）：

  1. 需要对于不同屏幕大小进行处理，添加多个对于列宽进行处理的类。
  1. 在缩小屏幕时，同一数据行（`.row`）针对小屏幕设置的类的宽度（`.col-sm-*`等等）加起来超过12，余下部分进行换行显示。
  1. 在不同列的高度，有比较大的差异。可以在未超过12与超过12的部分，两者之间添加下面这样的代码：`<div class="clearfix visible-xs-block"></div>`。（`.visible-xs-block`这一系列的类，会在后面进行讲解）
  它最主要的作用是：它是响应式的，会占据未超过12的部分的宽高，且只有在发生列换行显示（堆叠）才进行设置。
  1. 为了便于大家理解，我加一句：把上面那段代码复制到数据行`.row`容器内的最末端，它所占据的宽高和.row是一样的。（内容中有多段这样的代码的时候不成立，原因大家应该都能看出来了）
