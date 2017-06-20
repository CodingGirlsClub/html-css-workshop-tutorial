# Intro to HTML  & CSS


## Intro to HTML
本章节目标

1. 了解一个网站的结构
2. 能阅读和理解所给源码中的HTML
3. 学会使用文本编辑器Atom阅读、修改HTML源码




### 初识HTML

**<u>Inquiry Learning</u>**

*尝试向你的同学解释下列概念：*

1. 什么是文本（Text）？
2. 什么是超文本（HyperText）?
3. 什么是标记语言（Markup Language）?
4. 什么是网页（也叫HTML 文档）？

**<u>Learning by Reading</u>**  

阅读 [W3C School HTML 教程](http://www.w3school.com.cn/html/index.asp) 到「HTML 内联框架」章节



### HTML常用术语

![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-05-27-html-tag-1.gif)

#### 元素 - Element

**<u>Inquiry Learning</u>**

1. 什么是HTML元素(HTML Element)？
2. HTML文档和HTML元素什么关系？

#### 标签 - Tag

**<u>Inquiry Learning</u>**

什么是HTML标签（HTML Tag）？

#### 属性 - Attribute

**<u>Inquiry Learning</u>**

1. 什么是属性？  
2. 标签和属性是什么关系？
3. 能否识别属性的name/value形式？

##### 两个重要属性

- class

  **<u>Learning by Reading</u>**   [HTML class 属性](http://www.w3school.com.cn/tags/att_standard_class.asp) & [HTML 类](http://www.w3school.com.cn/html/html_classes.asp)

- id

  **<u>Learning by Reading</u>**   [HTML id 属性](http://www.w3school.com.cn/tags/att_standard_id.asp)




### 解剖网站

#### HTML5 Structure

![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-05-27-093547.jpg)

**<u>Inquiry Learning</u>**

尝试向你的同学解释下列概念：

<header> vs. <head> vs. <h1> 三者的区别？

**<u>Advice for Tutor</u>**： 向同学们解释下图，使学员脑海中网页结构的画面与HTML元素一一对应起来

![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-05-27-091645.jpg)

<u>**Learning by Doing**</u>

1. 找一个你喜欢的网站，调出Chrome开发者工具，向跟你结对的同学互相解剖此网站结构。
2. 打开网站 https://codepen.io/pen/ ， 在HTML编辑框建立自己的第一个HTML文档，并请教练审阅。
   - 所有HTML文档都必须符合特定的结构，要求至少包含以下声明和元素：<DOCTYPE html>，<html>，<head>和<body>。
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

1. 聊聊HTML的元素嵌套规则。讲解如何使用Chrome开发者工具定位HTML元素，查看HTML元素的嵌套实例。
2. 聊聊 自闭合元素（self-closing elements）。例如上面第二个练习题 <meta> 就只有开标签，没有闭标签。其他常见自闭合标签：`<br>`  `<embed>` `<hr>` `<img>` `<input>` `<link>` `<meta>` `<param>` `<source>` `<wbr>`
3. 聊聊 如何使用 https://validator.w3.org/ 代码验证工具检查HTML代码质量，有三种方式：网址；上传代码文件；直接输入代码。还有 [CSS 验证器](http://jigsaw.w3.org/css-validator/)




### 动手 - 修改更多HTML元素

![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-06-11-213738.jpg)

1. 把导航栏的英文换成中文，并添加一列「报名 Girls Coding Day」，链接到  https://girlscodingday.org/ （**考察知识点**：考察学员 Lists，参考 [HTML 列表](http://www.w3school.com.cn/html/html_lists.asp)）

2. 修改<header>元素中的内容 （ **考察知识点**： Text-Based Element ,  参考 [HTML 文本格式化](http://www.w3school.com.cn/html/html_formatting.asp)）

   - 修改<h1>元素中内容为「Girls Coding Day」

   - 增加<h3>标签 （**考察知识点**： Headings系列）

   - <span>标签嵌套一个<a>标签（链接为 Bootstrap模板下载地址 https://startbootstrap.com/template-overviews/clean-blog/）   （**考察知识点**： Paragraphs，Opening Links in a New Window， 参考资料 [HTML 链接](http://www.w3school.com.cn/html/html_links.asp) ）

   - 将博客二字加粗（**考察知识点**：Bold Text with Strong）

   - 将制作二字变成斜体（**考察知识点**：Italicize Text with Emphasis）

     **<u>Inquiry Learning</u>** ：

     1. 什么是块元素？
     2. 什么是内联元素？
     3. Div元素和span元素哪个是块元素？哪个是内联元素？

     **Learning by Reading** ： 阅读 [HTML <div> 和 <span>](http://www.w3school.com.cn/html/html_blocks.asp) ， 理解块元素和内联元素

   - 去 https://unsplash.com/ 下载图片到`img`文件夹，修改图片名字，替换掉背景图 （**考察知识点**：Image， 参考资料 [HTML 图像](http://www.w3school.com.cn/html/html_images.asp)）

3. 修改<footer>元素中的内容

   - 修改twitter图标为微信图标

   - facebook图标为微博图标， 如果有微博请链接到自己的微博

     <u>**Advice for tutor**</u>

     - 什么是 Font Awesome （参考：[Font Awesome 中文网](http://www.fontawesome.com.cn/get-started/) ） ？
     - 怎么使用 Font Awesome ?

   - 添加邮箱图标，点击图标可以发送邮件。邮件需要包含主题（subject)和正文(body)  (参考： [Mailto Links | CSS-Tricks](https://css-tricks.com/snippets/html/mailto-links/)) (备注：Linking to an Email Address)

   - 修改copyright段落内容，改成表格样式。（**考察知识点**：Organizing Data with Tables， 参考 [HTML 表格](http://www.w3school.com.cn/html/html_tables.asp) ）




## Intro to CSS

本章节目标

1. 引用样式CSS

2. 了解CSS基本知识练习其基本用法

3. 使用编辑器Atom重置CSS样式

   ​

### 初识CSS

**<u>Inquiry Learning</u>**

*尝试向你的同学解释下列概念：*

1. 什么是层叠样式表（*Cascading Style Sheets*）？
2. CSS 规则的两个主要构成部分是什么？
3. HTML和CSS什么关系？

**<u>Learning by Reading</u>**  

阅读[CSS 教程](http://www.w3school.com.cn/css/index.asp) 到 「CSS 伪元素」章节

#### 引用 CSS

##### 1. HTML 外部样式表

为了让CSS效果能在HTML中显示出来，我们需要在HTML文档中引用CSS文件。引用CSS最好的办法是把所有的样式代码放在额外的一个文件中，在HTML文档中的<head>元素中引用此文件。

**<u>Inquiry Learning</u>** ： 想一想这样引用CSS的好处？

##### 2. 另外两种引用CSS的方法：

- 内部样式表
- 内联样式


**<u>Inquiry Learning</u>** ： 当同一个 HTML 元素被不止被以上三种方法定义时，会使用哪个样式呢？  

**<u>Learning by Reading</u>** ：阅读 [HTML CSS](http://www.w3school.com.cn/html/html_css.asp) & [CSS 简介](http://www.w3school.com.cn/css/css_intro.asp) & [如何创建 CSS](http://www.w3school.com.cn/css/css_howto.asp)



### CSS常用术语

![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-06-16-ct_css_selector.gif)



#### 选择器 - Selector

**<u>Inquiry Learning</u>**

1. 选择器跟HTML元素什么关系？
2. 如何把相同的声明赋给多个HTML元素？ 提示：*选择器分组*
3. 子元素会继承父元素的样式，子元素不想继承，该怎么办呢？
4. 什么是「*派生选择器*、*id 选择器*、*类选择器*、*属性选择器*、*伪类* 」？
5. *类选择器* 可以在单个HTML文档中出现多次，*id选择器* 也可是在单个HTML文档中出现多次吗？
6. *id选择器* 和 *派生选择器* 可以混合使用吗？

#### 声明 - Declaration

**<u>Inquiry Learning</u>**

1. 属性和值用哪个英文标点符合隔开呢？
2. 一个属性可以包含多个值吗？
3. 如果要定义不止一个声明，需要用哪个**英文标点**符号将每个声明分开？
4. 属性和值一定要英文小写吗？

##### 属性 - Property

>  大概了解各个属性的效果，不要求熟练掌握。

**<u>Inquiry Learning</u>**

- 你知道下列CSS**背景属性**都有什么样式效果吗？


   | 属性       | 描述   |
   | ---------------------------------------- | ---------------------- |
   | [background](http://www.w3school.com.cn/cssref/pr_background.asp) | 简写属性，作用是将背景属性设置在一个声明中。 |
   | [background-attachment](http://www.w3school.com.cn/cssref/pr_background-attachment.asp) | 背景图像是否固定或者随着页面的其余部分滚动。 |
   | [background-color](http://www.w3school.com.cn/cssref/pr_background-color.asp) | 设置元素的背景颜色。             |
   | [background-image](http://www.w3school.com.cn/cssref/pr_background-image.asp) | 把图像设置为背景。              |
   | [background-position](http://www.w3school.com.cn/cssref/pr_background-position.asp) | 设置背景图像的起始位置。           |
   | [background-repeat](http://www.w3school.com.cn/cssref/pr_background-repeat.asp) | 设置背景图像是否及如何重复。         |


- 你知道下列CSS**文本属性**的效果吗？


   | 属性    | 描述          |
   | ----------------------|-----------|
   |  [color](http://www.w3school.com.cn/cssref/pr_text_color.asp) | 设置文本颜色      |
   | [direction](http://www.w3school.com.cn/cssref/pr_text_direction.asp) | 设置文本方向。     |
   | [line-height](http://www.w3school.com.cn/cssref/pr_dim_line-height.asp) | 设置行高。       |
   | [letter-spacing](http://www.w3school.com.cn/cssref/pr_text_letter-spacing.asp) | 设置字符间距。     |
   | [text-align](http://www.w3school.com.cn/cssref/pr_text_text-align.asp) | 对齐元素中的文本。   |
   | [text-decoration](http://www.w3school.com.cn/cssref/pr_text_text-decoration.asp) | 向文本添加修饰。    |
   | [text-indent](http://www.w3school.com.cn/cssref/pr_text_text-indent.asp) | 缩进元素中文本的首行。 |

- 你知道下列CSS**字体属性**的效果吗？     


  | 属性              | 描述                                     |
  | ---------------------------------------- | -------------------------------------- |
  | [font](http://www.w3school.com.cn/cssref/pr_font_font.asp) | 简写属性。作用是把所有针对字体的属性设置在一个声明中。            |
  | [font-family](http://www.w3school.com.cn/cssref/pr_font_font-family.asp) | 设置字体系列。                                |
  | [font-size](http://www.w3school.com.cn/cssref/pr_font_font-size.asp) | 设置字体的尺寸。                               |
  | [font-size-adjust](http://www.w3school.com.cn/cssref/pr_font_font-size-adjust.asp) | 当首选字体不可用时，对替换字体进行智能缩放。（CSS2.1 已删除该属性。） |
  | [font-stretch](http://www.w3school.com.cn/cssref/pr_font_font-stretch.asp) | 对字体进行水平拉伸。（CSS2.1 已删除该属性。）             |
  | [font-style](http://www.w3school.com.cn/cssref/pr_font_font-style.asp) | 设置字体风格。                                |
  | [font-variant](http://www.w3school.com.cn/cssref/pr_font_font-variant.asp) | 以小型大写字体或者正常字体显示文本。                     |
  | [font-weight](http://www.w3school.com.cn/cssref/pr_font_weight.asp) | 设置字体的粗细。                               |

- 你知道如何设置**链接样式**吗？

- 你知道下列CSS**列表属性**的效果吗？


  | 属性    | 描述  |
  | ------------------ | -------------------- |
  | [list-style](http://www.w3school.com.cn/cssref/pr_list-style.asp) | 简写属性。用于把所有用于列表的属性设置于一个声明中。 |
  | [list-style-image](http://www.w3school.com.cn/cssref/pr_list-style-image.asp) | 将图象设置为列表项标志。               |
  | [list-style-position](http://www.w3school.com.cn/cssref/pr_list-style-position.asp) | 设置列表中列表项标志的位置。             |
  | [list-style-type](http://www.w3school.com.cn/cssref/pr_list-style-type.asp) | 设置列表项标志的类型。                |

- 你知道下列CSS**表格属性**的效果吗？


   | 属性                                       | 描述                 |
   | ---------------------------------------- | ------------------ |
   | [border-collapse](http://www.w3school.com.cn/cssref/pr_tab_border-collapse.asp) | 设置是否把表格边框合并为单一的边框。 |
   | [border-spacing](http://www.w3school.com.cn/cssref/pr_tab_border-spacing.asp) | 设置分隔单元格边框的距离。      |
   | [caption-side](http://www.w3school.com.cn/cssref/pr_tab_caption-side.asp) | 设置表格标题的位置。         |
   | [empty-cells](http://www.w3school.com.cn/cssref/pr_tab_empty-cells.asp) | 设置是否显示表格中的空单元格。    |
   | [table-layout](http://www.w3school.com.cn/cssref/pr_tab_table-layout.asp) | 设置显示单元、行和列的算法。     |

##### 值 - Value

**<u>Inquiry Learning</u>**

1. 值为若干单词，则要给值加引号。用双引号还是单引号呢？

**<u>Learning by Reading</u>** ：其他常用术语 [CSS Terms and Definitions](https://www.impressivewebs.com/css-terms-definitions/)



### 盒子模型 - Box Model

我们已经具备一些基本的HTML和CSS知识，知道一个网页大概长什么样子。现在我们深入讨论**盒子模型**，看看HTML元素到底如何在浏览器中展示的。

根据[CSS 框模型概述](http://www.w3school.com.cn/css/css_boxmodel.asp)， 网页文档中所有的元素都是矩形的盒子（rectangular box），有宽度（width）、高度（height）、内边距（padding）、边框（border）、外边距（margin）。

> 重要的事情说三遍：
> **网页中的每个元素都是矩形的盒子。**
> **网页中的每个元素都是矩形的盒子。**
> **网页中的每个元素都是矩形的盒子。**

<u>**Advice for tutor**</u>

1. 请教练以下图和代码为例，讲讲盒子的大小

![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-06-16-css%20box%20model-1.png)

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
> | 盒子大小       | 计算方法                                     |
> | ---------- | ---------------------------------------- |
> | **Width**  | width + padding-left + padding-right + border-left + border-right |
> | **Height** | height + padding-top + padding-bottom + border-top + border-bottom |

### 使用Chrome开发者工具调试样式

<u>**Advice for tutor**</u>

请教练使用Chrome开发者工具，简单演示如何调试盒子模型属性以及其他样式。

![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-06-16-Girls_Coding_Day_s_Blog.png)

![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-06-16-css-rule-anatomy.png)



### 动手 - 修改更多CSS样式

1. 在 css 文件夹中添加一个新文件 `custom.css`,  并在 index.html 文件中的<head>元素引用，如下图

   ![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-06-17-013128.jpg)

2. 使用 *类选择器*、 *id选择器* 、 *派生选择器*  给 `index.html` 中的元素添加样式

3. 对一些属性
