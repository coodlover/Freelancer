# Freelancer

## day 1 任务：

1. 熟悉github 协作的流程（每人在公共库中push一个测试文本）
2. 注册AWS账号，以及申请教育支持
3. 本项目涉及的关键词：前后端分离，Unit Test， CQRS（读写分离），
		Continuous Integration（代码连续性），performance test（性能测试），Microservice[微服务，云部署组件、API]、Container（Docker、Docker Compose)、Container Ochestration（Kubernetes）
4. 项目构思：
		页面：homepage（search bar，导航栏，tasks/根据用户类型展示），
			employee的界面（history work，profile，竞拍，推荐项目），管理员封禁的界面，employer的界面（发布项目，profile）

	数据库设计：见思维导图

## day 2 任务：

1. 数据库设计：利用powerdesign设计关系型数据库部分，参考freelancer设计数据库，总体包含work和user两个大类，其余是关联类。用户与项目之间有三种关系——完成项目（do_work），发布项目（issue_work），申请项目（propose_work）。skill是一个标签类，建表之后大部分时间可以作为静态的数据库存储，用于体现用户包含哪些技能，以及项目需求哪些技能。对于管理员，目前设想大概只有封禁用户的权利了，未来再看看吧。
2. 后端框架搭建：
3. 前端框架搭建：

## day 3 任务：

1. 爬虫（郑世民）：
2. 后端（谢厚）：LoginController，SkillController的接口实现。
3. 前端组件（蒋钊）：
4. 前端页面（张澳）：结合组件，给页面分配router，修改了form有关组件中的验证条件，以及构建了相关页面。
