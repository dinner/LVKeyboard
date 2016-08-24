自定义键盘
由于ios系统键盘会缓存用户输入的数据到系统文件下，而且是明文存储，存在帐号密码泄漏风险。所以一些涉及资金的app一般都是自定义键盘。本项目作者在别人的代码基础上做了些修改，美化了界面，添加了按钮点击效果，去掉了字符输入。使用如下：＜/br＞
1、导入LVKeyboard.framework，并将其加入项目配置General下面的Embedded Binaries里＜/br＞
2、调用方式：＜/br＞
    UITextFiled* tf = [[UITextField alloc]init];＜/br＞
    LVKeyboard* keyboard = [[LVKeyboard alloc] init];＜/br＞
    keyboard.delegate = self;＜/br＞
    tf.inputView = keyboard;＜/br＞
实现LVKeyboard代理：＜/br＞
- (void)keyboard:(LVKeyboard *)keyboard didClickTextButton:(UIButton *)textBtn string:(NSMutableString *)string;{＜/br＞
    tf.text = string;＜/br＞
}＜/br＞
＜/br＞
- (void)keyboard:(LVKeyboard *)keyboard didClickDeleteButton:(UIButton *)deleteBtn string:(NSMutableString *)string;＜/br＞
{＜/br＞
    tf.text = string;＜/br＞
}＜/br＞

