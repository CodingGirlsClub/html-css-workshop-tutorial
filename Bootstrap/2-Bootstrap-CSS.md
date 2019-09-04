# 基础Bootstrap CSS

> 设置全局 CSS 样式；基本的 HTML 元素均可以通过 class 设置样式并得到漂亮的效果。

## 一、排版 Typography

### 1. 标题

在Bootstrap中使用标题的方式和常规html一样：从`<h1>`到`<h6>`分别从大到小安排标题元素，只不过在Bootstrap中重新设置了其默认样式，从源码中可以看到有如下共性：

字体颜色与字体样式继承自父元素，字体粗细为500，且行高全部设为1.1（也就是font-size的1.1倍）


```css
{
    font-family: inherit;
    font-weight: 500;
    line-height: 1.1;
    color: inherit;
}
```

在不同大小的标题中有着如下区别：

在Bootstrap中对于不同级别标题字体大小设置为：**h1=36px，h2=30px，h3=24px，h4=18px，h5=14px和h6=12px**。
重新设置了`.margin-top`和`.margin-bottom`的值，**h1~h3** 重置后的值都是**20px**；**h4~h6**重置后的值都是**10px**。

除此之外在Bootstrap中为了**让非标题元素和标题使用相同的样式**，还特意定义了`.h1~.h6`六个类名。如下所示：

在Bootstrap中，下面的代码，显示效果相同。

```html
<!--Bootstrap中的标题-->
<h1>Bootstrap标题一</h1>
<h2>Bootstrap标题二</h2>
<h3>Bootstrap标题三</h3>
<h4>Bootstrap标题四</h4>
<h5>Bootstrap标题五</h5>
<h6>Bootstrap标题六</h6>
<!--Bootstrap中让非标题元素和标题使用相同的样式-->
<div class="h1">Bootstrap标题一</div>
<div class="h2">Bootstrap标题二</div>
<div class="h3">Bootstrap标题三</div>
<div class="h4">Bootstrap标题四</div>
<div class="h5">Bootstrap标题五</div>
<div class="h6">Bootstrap标题六</div>
```

### 2. 文本格式

#### 2.1 正文文本
Bootstrap中的文本全局样式如下：

1. 字体大小为14px
1. 行高为1.42867143（约等于20px）
1. 字体颜色为#333
1. p标签外部有着10个像素的下外边距margin-bottom:10px;

#### 2.2 强调
##### 字体风格
```html
<p class="lead">lead</p><!-- 字体变大，行高变大，下外边距变大 -->
<i>i</i><!--无特殊意义， 斜体 -->
<small>small</small><!-- 小号字体-->
<strong>strong</strong><!-- 语气强烈的强调，粗体 -->
<em>em</em><!-- 强调，斜体 -->
<mark>mark</mark>
<del>del</del>
<s>s</s>
<ins>ins</ins>
<u>u</u>
```

##### 强调相关的类
```html
<p class="text-muted">提示，使用浅灰色（#999）</p>
<p class="text-primary">主要，使用蓝色（#428bca）</p>
<p class="text-success">成功，使用浅绿色(#3c763d)</p>
<p class="text-info">通知信息，使用浅蓝色（#31708f）</p>
<p class="text-warning">警告，使用黄色（#8a6d3b）</p>
<p class="text-danger">危险，使用褐色（#a94442）</p>
```

利用「整体学习法」中的「可视化技巧」，把颜色和这6个单词的意义在大脑中联想起来吧 ：）  


### 2.3 文本对齐

```html
<p class="text-left">我居左</p>
<p class="text-center">我居中</p>
<p class="text-right">我居右</p>
<p class="text-justify">我两端对齐</p>
```
请自行阅读官方文档有关概念：改变大小写、缩略语、地址、引用。
### 2.4 列表

在Bootstrap中对于列表的设置与原生的html基本一致，需要注意的有：

1. 在列表之间有10px的下外边距
1. 在嵌套列表中，不含有下边距

Bootstrap当然不会就这么简单做一点点修改，它定义了一些关于列表的类给我们使用。

##### 2.4.1 去点列表`.list-unstyled`
```css
list-unstyled {
    padding-left: 0;
    list-style: none;
}
```

从源码中，我们可以看到这样的信息，它除了将项目编号去除之外，还将默认的左边距也清除掉了。


```html
<ol>
    <li class="list-unstyled">
    项目列表
        <ul class="list-unstyled">
        <li>带有项目编号</li>
        <li>带有项目编号</li>
        </ul>
    </li>
</ol>
```
在这样一段代码中，三个列表项会整齐的**排列在一起**，且**都没有项目符号**。

##### 2.4.2 内联列表`.list-inline`
**把垂直列表换成水平列表，而且去掉项目符号（编号），保持水平显示**。内联列表就是为制作水平导航而生。

> 小任务：自己在codepen上面试一试
##### 2.4.3 水平定义列表`.dl-horizontal`

```html
<dl class="dl-horizontal">
    <dt>标题一：</dt>
    <dd>描述内容，我很喜欢前端，也很喜欢响应式布局，它能在个不同大小的屏幕下提供很好的体验，我现在是初学者，但是我会越来强的</dd>
    <dt>标题二：标题二：标题二：标题二：</dt>
    <dd>描述内容</dd>
</dl>
```

**浏览器全屏** 和 **屏幕变小** 显示效果不同，在遇到一个临界值时（小屏），水平定义列表将回复到原始的状态。

这是为什么呢？我们去看看源码吧！
原来在这里添加了一个**媒体查询**，只有屏幕大于768px的时候，添加类名`.dl-horizontal`才具有水平定义列表效果。其实现主要方式：

1. 将dt设置了一个左浮动，并且设置了一个宽度为160px
1. 将dd设置一个margin-left的值为180px，达到水平的效果
1. 当标题宽度超过160px时，将会显示三个省略号

### 2.5 代码 Code

在Bootstrap主要提供了三种代码风格：

1. 使用`<code></code>`来显示单行内联代码——针对于单个单词或单个句子的代码
1. 使用`<pre></pre>`来显示多行块代码——针对于多行代码（也就是成块的代码）
1. 使用`<kbd></kbd>`来显示用户输入代码——表示用户要通过键盘输入的内容

> 需要注意的是，不管使用哪种代码风格，在代码中碰到小于号（<）和大于号（>）都需要使用转义字符来替代

```html
code风格：
<div>Bootstrap的代码风格有三种：<code>&lt;code&gt;</code>、<code>&lt;pre&gt;</code>和<code>&lt;kbd&gt;</code></div>
pre风格：
<div>
<pre>
&lt;ul&gt;
    &lt;li&gt;...&lt;/li&gt;
&lt;/ul&gt;
</pre>
</div>
kbd风格：
<div>请输入<kbd>ctrl+c</kbd>来复制代码，然后使用<kbd>ctrl+v</kbd>来粘贴代码</div>
```

> 小任务：自己在Codepen上面看看效果


### 3. 表格 Table
Bootstrap为表格提供了**1种基础样式**和4**种附加样式**以及**1个支持响应式的表格**。

| 类名  | 表格样式     |
|:-------------: | :------------:|
|`.table` | 基础表格|
|`.table-striped` | 斑马线表格|
|`.table-bordered` | 带边框的表格|
|`.table-hover` | 鼠标悬停高亮的表格|
|`.table-condensed` | 紧凑型表格|
|`.table-responsive` | 响应式表格|

下面说一些注意事项：

1. 后几种表格附加样式，必须在基础样式**.tabl**e之后，例如**<table class="table table-bordered table-hover">**
1. 响应式表格：其原理是在表格外部添加容器把普通表格包裹起来，下面进行详细说明：

```html
<div class="table-responsive"><!-- 关键！容器包裹后实现响应式 -->
  <table class="table table-bordered"><!-- 设置表格样式，带边框的表格 -->
    <thead><!-- 一个表格应该有表头，若直接写tr>td这样的结构，浏览器会自动创建一个tbody包裹 -->
    </thead>
    <tbody><!--与上同理，即使你不创建，浏览器也会自动添加tbody包裹你的代码  -->
    </tbody>
  </table>
</div>
```
----
## 二、表单Forms


> 关于表单的应用自然不需要多说，只要您的的网站可以用户登录，那么不可能不用到表单！表单主要功能是用来与用户做交流的一个网页控件，JavaScript发明之初最大的作用也就是用来进行表单操作。所以表单是每一个前端开发者必须要熟练掌握的东西。

良好的表单设计能够让网页与用户更好的沟通。表单中常见的元素主要包括：**文本输入框、下拉选择框、单选按钮、复选按钮、文本域和按钮等**。其中每个控件所起的作用都各不相同，而且不同的浏览器对表单控件渲染的风格都各有不同。传统的HTML表单就不在这样进行讲解了，下面就开始Bootstrap表单的学习吧！

### 1. 基础表单

在Bootstrap对于基础表单没有做太多的定制效果，仅仅是对于一些元素的**margin、padding和border**进行了一些细化设置。
当然，也不会那么简单，在Bootstrap框架中，通过定制了一个类名`form-control`，也就是说，使用了类名`form-control`，将会实现一些设计上的定制效果。从源码中（2356行，嗯，善用搜索）可以得出结论如下：

1. 宽度变成了100%
1. 设置了一个浅灰色（`#ccc`）的边框
1. 具有4px的圆角
1. 设置阴影效果，并且元素得到焦点之时，阴影和边框效果会有所变化
1. 设置了placeholder(输入框的提示文字)的颜色为`#999`
这个类一般用于输入框，对于其他的类型使用，嗯，你可以试试自己尝试一下。


```html
<form role="form">
  <div class="form-group"><!-- form-group这个类在在这里用于控制表单之间的间隔，之后会有另外介绍 -->
    <label for="exampleInputEmail1">邮箱：</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="请输入您的邮箱地址">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">密码</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="请输入您的邮箱密码">
  </div>
</form>
```
效果如下：
![](http://wy.codingirlsclub.com/2016-12-07-form1.jpg)

##### 内联表单

还是上面那一段代码：我们只需要给form加上下面`.form-inline`这个类就可以实现表单元素在一行排列：
![](http://wy.codingirlsclub.com/2016-12-07-form3.jpg)

##### 水平表单

Bootstrap框架默认的表单是垂直显示风格，除了上面的内联表达之外，很多时候我们需要的是水平表单风格。在Bootstrap框架中要实现水平表单效果，必须满足以下两个条件：

1. 在<form>元素是使用类名.form-horizontal，作用如下：
    - 设置表单控件padding和margin值。
    - 改变“form-group”的表现形式，类似于栅格系统的“row”。
2. 配合Bootstrap框架的栅格系统。（栅格布局会在以后的章节中详细讲解）
    - 例如：使用<div class="col-sm-6"></div>将我们的input进行包裹，具体情况到栅格布局的时候再说
    -
可以实现下面的效果，（同样处于媒体查询中）
![](http://wy.codingirlsclub.com/2016-12-07-form2.jpg)


### 2. 表单控件

##### 输入框input

单行文本框在html编写时，我们都需要**设置type属性为text**，在Bootstrap中也必须正确的添加type的类型，因为在这里是使用CSS的属性选择器如：`input[type="text"]`来进行样式设置的！
为了让控件在各种表单风格中样式不出错，需要添加类名`form-control`，如：`<input type="email" class="form-control" placeholder="请输入您的邮箱">`

> 任务：自行阅读Bootstrap文档以下内容
>
> - 下拉选择框select
> - 文本域textarea
> - 复选框checkbox和单选按钮radio
> - 表单控件大小
> - 表单控件状态
> - 验证状态
> - 表单提示信息

### 3. 按钮 Buttons

我们创建的按钮通常通过下面这几种形式：:

- `input[type="submit"]`：提交按钮
- `input[type="button"]`：普通按钮
- `input[type="reset"]`：重置按钮
- `<button></button>`：按钮元素，（默认行为是提交）

**在Bootstrap框架中的按钮都是采用`<button>`来实现。**

### 1. 情景按钮
也正如我们前面所说，Bootstrop对于按钮也做了不同情景下的类，用不同的颜色展示很好的描述了当前的状态。
![](http://wy.codingirlsclub.com/2016-12-07-form-btn1-1.jpg)
![](http://wy.codingirlsclub.com/2016-12-07-form-btn2.png)
> 记住一点！Bootstrap中的按钮，**第一前提是必须添加b`tn`这个类**，其他的各种类，都只能添加到其后。所以一个按钮应该是这个样子的：`<button class="btn btn-info" >信息按钮</button>`，若还有其他的样式，往`btn-info`后添加，充分利用css的层叠特性。


### 2. 按钮大小

Bootstrap有着很对相似的类（学习完后总结一下吧颜色，大小等等），比如现在要说的，改变按钮的大小，当然你可以自定义，但是Bootstrap默认为我们提供了一些，添加到btn类后就行！
![](http://wy.codingirlsclub.com/2016-12-07-form-btn-size.png)

### 3. 块状按钮

Bootstrap框架中提供了一个类名btn-block。使用这个类名就可以让按钮充满整个容器，并且这个按钮不会有任何的padding和margin值。在实际当中，常把这种按钮称为块状按钮。同样添加到btn类后即可生效

### 4. 活动与禁用状态

Bootstrap框架针对按钮的状态做了一些特殊处理。主要分为两种：活动状态和禁用状态。

##### 活动状态

Bootstrap按钮的活动状态主要包括按钮的悬浮状态(`:hover`)，点击状态(`:active`)和焦点状态（`:focus`）几种。

通过在源码中我们可以看到，Bootstrap对于每一种风格的按钮都做了单独的定制。需要进行修改的话可以参考源码！

##### 禁用状态

在Bootstrap框架中，要禁用按钮有两种实现方式：
- 在标签中添加disabled属性
- 在元素标签中添加类名`.disabled`
-----
## 三、 图片 Images
在Bootstrap框架中对于图像的样式风格提供以下几种风格：

- `.img-responsive`：响应式图片，主要针对于响应式设计
- `.img-rounded`：圆角图片
- `.img-circle`：圆形图片
- `.img-thumbnail`：缩略图片，相框效果

直接把类名添加到img标签上就行了！

> 注意：
> 设置图片大小时，由于样式没有对图片做大小上的样式限制，所以在实际使用的时候，需要通过其他的方式来处理图片大小。比如说控制图片容器大小。（注意不可以通过css样式直接修改img图片的大小，这样操作就不响应了）

### 图标 Icons by Glyphicons

这里说的图标就是Web制作中常看到的小icon图标，包括250多个来自 Glyphicon Halflings 的字体图标，Bootstrap框架中图标都是glyphicons.com这个商业网站提供的，并且免费授权给Bootstrap框架使用。

不过，大家普遍更愿意使用[Font Awesome](http://fontawesome.io/)，使用方法非常简单：

1. 在页面顶部添加  `<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>`
2. 添加 `.fa .icon_name` 到 `<i>`标签。 这里的icon_name 到Font Awesome网站查询：http://fontawesome.io/icons/
如下列代码：
    ```html
    <div class="list-group">
      <a class="list-group-item" href="#"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp; Home</a>
      <a class="list-group-item" href="#"><i class="fa fa-book fa-fw" aria-hidden="true"></i>&nbsp; Library</a>
      <a class="list-group-item" href="#"><i class="fa fa-pencil fa-fw" aria-hidden="true"></i>&nbsp; Applications</a>
      <a class="list-group-item" href="#"><i class="fa fa-cog fa-fw" aria-hidden="true"></i>&nbsp; Settings</a>
    </div>
    ```
