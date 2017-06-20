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
   | ---------------------------------------- | ---------------------- |
   |  [color](http://www.w3school.com.cn/cssref/pr_text_color.asp) | 设置文本颜色      |
   | [direction](http://www.w3school.com.cn/cssref/pr_text_direction.asp) | 设置文本方向。     |
   | [line-height](http://www.w3school.com.cn/cssref/pr_dim_line-height.asp) | 设置行高。       |
   | [letter-spacing](http://www.w3school.com.cn/cssref/pr_text_letter-spacing.asp) | 设置字符间距。     |
   | [text-align](http://www.w3school.com.cn/cssref/pr_text_text-align.asp) | 对齐元素中的文本。   |
   | [text-decoration](http://www.w3school.com.cn/cssref/pr_text_text-decoration.asp) | 向文本添加修饰。    |
   | [text-indent](http://www.w3school.com.cn/cssref/pr_text_text-indent.asp) | 缩进元素中文本的首行。 |

- 你知道下列CSS**字体属性**的效果吗？     


  | 属性              | 描述                                     |
  | ---------------------------------------- | ---------------------- |
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
  | ---------------------------------------- | ---------------------- |
  | [list-style](http://www.w3school.com.cn/cssref/pr_list-style.asp) | 简写属性。用于把所有用于列表的属性设置于一个声明中。 |
  | [list-style-image](http://www.w3school.com.cn/cssref/pr_list-style-image.asp) | 将图象设置为列表项标志。               |
  | [list-style-position](http://www.w3school.com.cn/cssref/pr_list-style-position.asp) | 设置列表中列表项标志的位置。             |
  | [list-style-type](http://www.w3school.com.cn/cssref/pr_list-style-type.asp) | 设置列表项标志的类型。                |

- 你知道下列CSS**表格属性**的效果吗？


   | 属性                                       | 描述                 |
   | ---------------------------------------- | ---------------------- |
   | [border-collapse](http://www.w3school.com.cn/cssref/pr_tab_border-collapse.asp) | 设置是否把表格边框合并为单一的边框。 |
   | [border-spacing](http://www.w3school.com.cn/cssref/pr_tab_border-spacing.asp) | 设置分隔单元格边框的距离。      |
   | [caption-side](http://www.w3school.com.cn/cssref/pr_tab_caption-side.asp) | 设置表格标题的位置。         |
   | [empty-cells](http://www.w3school.com.cn/cssref/pr_tab_empty-cells.asp) | 设置是否显示表格中的空单元格。    |
   | [table-layout](http://www.w3school.com.cn/cssref/pr_tab_table-layout.asp) | 设置显示单元、行和列的算法。     |

##### 值 - Value

  **<u>Inquiry Learning</u>**

  值为若干单词，则要给值加引号。用双引号还是单引号呢？

  **<u>Learning by Reading</u>**

  其他常用术语 [CSS Terms and Definitions](https://www.impressivewebs.com/css-terms-definitions/)
