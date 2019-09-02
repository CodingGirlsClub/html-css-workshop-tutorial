## 动手 - 修改更多CSS样式

1. 在 css 文件夹中添加一个新文件 `custom.css`,  并在 index.html 文件中的<head>元素引用，如下图

   ![](http://wy.codingirlsclub.com/blog/2017-06-17-013128.jpg)

2. 使用 *类选择器*、 *id选择器* 、 *派生选择器*  给 `index.html` 中的元素添加样式。  
**观察 index.html中的文章预览元素(仅截取`<div class="post-preview">`标签中的内容)：**
	```html
	<div class="post-preview">
	    <a href="post.html">
	        <h2 class="post-title">
	            Man must explore, and this is exploration at its greatest
	        </h2>
	        <h3 class="post-subtitle">
	            Problems look mighty small from 150 miles up
	        </h3>
	    </a>
	    <p class="post-meta">Posted by <a href="#">Start Bootstrap</a> on September 24, 2014</p>
	</div>
	```
	- 把 `<div class="post-preview">`改为    `<div class="container" id="post">`
	- 请在 `custom.css`中添加下列内容并保存，**然后我们来看看CSS中如何使用选择器（注意阅读注释内容）：**
	```css
	/*这里的“*”是通配符，意思是该页面中所有的元素都会被加上*后面大括号里的样式，
	对应图中页面中所有的标签都有红色的上边框*/
	*{
	    border:1px solid red;
	}
	/*类选择器：这里使用.post-title的方式选中所有具有类名为post-title的元素，这里的样式使他们大小一样，都有绿色的边框*/
	.post-title{
	    background-color: #777;
	    border: 10px solid green;
	}

	/*id选择器：这里使用#post的方式选中具有id属性值为post的元素，添加样式，改变它的背景色为白色, 边框为绿色点线*/
	#post{
	    border: 5px dotted green;
	    background-color: #FFF;
	}

	/*派生选择器：这里的空格代表元素层级关系，选中了class属性值为“post-meta”的元素包含链接的元素，使用派生选择器会使得你的css代码层次更清晰，更有可读性”*/
	.post-meta a {
	    background-color: blue
	}
	```
3. 自己练习更多CSS属性
