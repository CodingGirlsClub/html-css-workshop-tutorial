## 盒子模型 - Box Model

我们已经具备一些基本的HTML和CSS知识，知道一个网页大概长什么样子。现在我们深入讨论**盒子模型**，看看HTML元素到底如何在浏览器中展示的。

根据[CSS 框模型概述](http://www.w3school.com.cn/css/css_boxmodel.asp)， 网页文档中所有的元素都是矩形的盒子（rectangular box），有宽度（width）、高度（height）、内边距（padding）、边框（border）、外边距（margin）。

> 重要的事情说三遍：
> **网页中的每个元素都是矩形的盒子。**
> **网页中的每个元素都是矩形的盒子。**
> **网页中的每个元素都是矩形的盒子。**

<u>**Advice for tutor**</u>

1. 请教练以下图和代码为例，讲讲盒子的大小

![](http://wy.codingirlsclub.com/blog/2017-06-16-css%20box%20model-1.png)

  ```css
  div {
    width: 267px;
    height: 24px;
    padding: 6px;
    border: 0px;
    margin: 0px;
  }
  ```

> Margin 比较特别，它不会影响盒子本身的大小，但是它会
> 影响和盒子有关的其他内容，因此 margin 是盒模型的一个重要的组成部分。
>
> 盒子本身的大小是这样计算的：
> 
> | 盒子大小       | 计算方法                                     |
> | ---------- | ---------------------------------------- |
> | **Width**  | width + padding-left + padding-right + border-left + border-right |
> | **Height** | height + padding-top + padding-bottom + border-top + border-bottom |
