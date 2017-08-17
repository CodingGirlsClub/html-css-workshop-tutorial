## 1.4 WEB基本知识和历史

Cooking time: 30min active / 30-45min passive

**Learning by Reading(10mins)**: [网络是如何工作的 - 学习 Web 开发 | MDN](https://developer.mozilla.org/zh-CN/docs/Learn/Getting_started_with_the_web/How_the_Web_works)

本小节会覆盖的主题

- 托管主机: 计算机上的文件如何成为公共网站
- 主机的组件和网站架构
- 各种可选主机提供商以及如何选择

#### 本地开发环境

- 打开Atom软件，在桌面创建文件 `index.html`，并用文本编辑器写入你最喜欢的诗篇。
- 现在，`index.html`只是一个保存在你自己电脑上面的文件.
- 你可以通过文件夹（ Windows 电脑）或Finder（Mac电脑）看到文件的地址类似为 `/Users/yangbwen/Desktop/index.html`

> 主机的作用是给这个新创立的文件一个地方，好让互联网上的任何人都可以看见。

#### 这个地方可以是你的电脑吗？

默认设置互联网上随随便便一个人是不能访问你电脑的，但你可以给他们权限。

- 例如：你可以在你的电脑上面设置一个互联网服务器（webserver）。
- 缺点：如果你的电脑关机了别人就不能访问了。
- 通常做法：把你的这些文件放在一个一直开机的地方。

#### 服务器（Server）与主机（Hosting）

托管主机：把你文件的地方通过托管在一台由其他人管理电脑的服务器（server）上。

> 1. 阅读 [服务器 - 维基百科，自由的百科全书](https://zh.wikipedia.org/wiki/%E6%9C%8D%E5%8A%A1%E5%99%A8)
> 2. 阅读后回答：服务器是软件还是硬件？

#### 认识名词：单机 、Client/Server 、 Browser/Server

![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-05-24-client-server.png)

客户端提出请求，服务器端满足客户端（通常）。请求就像问题：客户端询问他们，服务器回答。
对于我们的web讨论，client = browser。虽然任何类型的计算机可以用作服务器，但服务器通常比其他计算机更大和更强大。客户端应用程序在与您交互的客户端计算机上运行（如您的浏览器），
服务器应用程序在其他地方的机器上运行，这样一来客户端或客户端应用程序就可以和服务器应用程序通话

> 1. 使用搜索引擎搜索上述关键词「Client/Server 、 Browser/Server」，阅读自己搜索到的文章。
> 2. 教练带大家讨论C/S 和 B/S。
> 3. 问题：怎么去判断是B/S 还是C/S？例如小程序是哪种模式？微信手机端是哪种模式？微信网页端是哪种模式？

#### 托管客户端应用程序

您的`index.html`和`style.css`文件都是客户端代码（client code），浏览器运行这些文件就会显示页面。
为了使任何人的浏览器都可以加载它们，我们将它们放在其他地方（主机）的计算机上，该计算机上的服务器（server）将是看门人，让任何人的浏览器加载您的文件（客户端代码）。在这个例子中，你的代码是客户端代码，服务器只是作为看门人。

#### 托管主机提供商

|   类别   | 说明（what）                                 | 什么情况下用（when）                             | 比较（why）                                  |
| :----: | :--------------------------------------- | ---------------------------------------- | ---------------------------------------- |
|  文件存储  | 放置文件的地方;示例：S3，Github Pages，Dropbox，百度盘，七牛。 | 当你只需要静态文件即可。                             | 适用于静态页面或客户端应用程序，不足以用于服务器应用               |
| 软件打包服务 | 可以获取域名，可选择预安装软件;示例：wordpress.org，bluehost.com。 | 当你需要一个廉价方法来做网站（例如，为一个小企业），并要一切“能工作而已”，并不需要定制，那么你可以使用此类型。 | 想要创建和管理内容的用户，对于想要更多控制的技术人员或者想要使用软件组件不在允许列表上 |
|   自建   | 可以设置和管理您自己的所有网站组件，包括数据库，服务器，域名等。例如：Amazon EC2，Heroku，Linode，Digital Ocean，阿里云，青云等。 | 当你需要完全控制你的软件或业务要求时；例如，大多数科技公司都是建立自己的网站架构和托管解决方案。 | 更耗时，往往更便宜。需要技术人员来实现和维护，但完全可控，部署/托管任何类型的客户端或服务器应用程序的能力 |

#### 域名托管 Domain hosting

- IP addresses

  > IP被在线电脑用来互相识别，通常是四组数字。
  >   通过简单的方法查找您的IP地址 [What Is My IP Address? ](https://whatismyipaddress.com/)

  阅读 [IP地址 - 维基百科，自由的百科全书](https://zh.wikipedia.org/wiki/IP%E5%9C%B0%E5%9D%80)


- Domains

  ![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-05-24-TLD-domain-url1.jpg)

- Domain Name System (DNS)

  > 将域名转换为允许计算机相互通信的IP地址。通过键入终端（Mac）或命令提示符（PC）查找GCD的IP地址：nslookup girlscodingday.org

  **Advice for Tutors**：教练解释下图

  ![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-05-24-server-dns-forward.jpg)

  ​

- 注册域名 Registrars

  通常用来购买域名。良好的客服、易于使用的管理界面、价格实惠（无隐藏费）、允许将名称转让给其他注册商、ICANN认证

  **Advice for Tutors**：教练说说国内、国外都有哪些买域名的代理机构？国外和国内买域名有哪些优缺点？什么是备案（可选）？

#### 一个网站的日常

1. 在浏览器地址栏中输入网址

2. DNS 将您连接到托管服务器

3. 然后将文件发送回您的计算机进行显示

4. 有时，代码在发给你之前必须进行编译。

   ![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-05-24-browser-request.png)

#### HTML/CSS/Bootstrap/Javascript 对于WEB分别意味着什么?

![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-05-24-images.png)

  **Advice for Tutors**：教练简单讲讲 HTML/CSS/JavaScript 分别是什么以及三者之间的关系。



![](http://ocuwjo7n4.bkt.clouddn.com/blog/2017-05-24-html_with_css_vs_html_css_bootstrap_js.jpg)

  **Advice for Tutors**： 教练讲讲

- 什么是Bootstrap?
- Web 1.0 vs Web 2.0 ?
- 浏览器大战



**Tasks For Tutors**：

1. 给学员演示如何使用Visual Studio Code
   - 打开一个项目
   - 找到index.html
   - 修改html常用标签：title/h1/h3/li/ol
2. 给学员演示Chome Developer Tools的简单用法
   - 快捷键调用开发者工具
   - 怎么看定位页面上某个HTML元素
   - 怎么查看某个HTML元素的CSS样式，以及在开发者工具中调试样式属性
