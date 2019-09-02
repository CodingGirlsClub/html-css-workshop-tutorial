## 解剖网站

### HTML5 Structure

![](http://wy.codingirlsclub.com/blog/2017-05-27-093547.jpg)

**<u>Inquiry Learning</u>**

尝试向你的同学解释下列概念：

`<header>` vs. `<head>` vs. `<h1>`  三者的区别？

**<u>Advice for Tutor</u>**： 向同学们解释下图，使学员脑海中网页结构的画面与HTML元素一一对应起来

![](http://wy.codingirlsclub.com/blog/2017-05-27-091645.jpg)

<u>**Learning by Doing**</u>

1. 找一个你喜欢的网站，调出Chrome开发者工具，向跟你结对的同学互相解剖此网站结构。
2. 打开网站 https://codepen.io/pen/ ， 在HTML编辑框建立自己的第一个HTML文档，**并请教练审阅**。
   - 所有HTML文档都必须符合特定的结构，要求至少包含以下声明和元素：`<!DOCTYPE html>`，`<html>`，`<head>`和`<body>`。
   - 此练习**必须**包含以下HTML标签及其属性。
     - h1
     - p
     - li
     - body
     - meta（ charset属性为utf-8 )
     - title
     - head
     - DOCTYPE
     - html

**<u>Advice for Tutors</u>**:

#### 1. 聊聊HTML的元素嵌套规则。
讲解如何使用Chrome开发者工具定位HTML元素，查看HTML元素的嵌套实例。
#### 2. 聊聊 自闭合元素（self-closing elements）。
例如上面第二个练习题 <meta> 就只有开标签，没有闭标签。其他常见自闭合标签：`<br>`  `<embed>` `<hr>` `<img>` `<input>` `<link>` `<meta>` `<param>` `<source>` `<wbr>`
#### 3. 聊聊三种标签元素的区别与特点：

##### 块元素

```
div,ul,li,dl,dt,dd,p,h1-h6,blockquote
```
块级元素的特点：

- 总在新行上开始，占据一整行
- 默认情况下，其宽度自动填满其父元素宽度
- 宽度始终是与浏览器宽度一样，与内容无关
- 它可以容纳内联元素和其他块元素
- display属性为block
- 块级元素的垂直相邻外边距margin会合并。

##### 内联元素

```
a,b,span,img,input,strong,select,label,em,button,textarea
```
内联元素的特点：

- 和其他元素都在一行上
- 高，行高及外边距和内边距部分可改变
- 宽度只与内容有关
- 行内元素只能容纳文本或者其他行内元素
- display属性为inline
- 水平方向的padding-left、padding-right、margin-left、margin-right都产生边距效果，但竖直方向的padding-top、padding-bottom、margin-top、margin-bottom却不会产生边距效果。
- 不可以设置宽高，其宽度随着内容增加，高度随字体大小而改变，内联元素可以设置外边界，但是外边界不对上下起作用，只能对左右起作用。



##### 空元素

```
br,meta,hr,link,input,img
```
空元素的特点：

- 没有内容的 HTML 内容被称为空元素。空元素是在开始标签中关闭的。
