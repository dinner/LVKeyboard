自定义键盘
由于ios系统键盘会缓存用户输入的数据到系统文件下，而且是明文存储，存在帐号密码泄漏风险。所以一些涉及资金的app一般都是自定义  
键盘。本项目作者在别人的代码基础上做了些修改，美化了界面，添加了按钮点击效果，去掉了字符输入。使用如下：    

1、导入LVKeyboard.framework，并将其加入项目配置General下面的Embedded Binaries里    

2、调用方式：     

    UITextFiled* tf = [[UITextField alloc]init];     
    
    LVKeyboard* keyboard = [[LVKeyboard alloc] init];      
    
    keyboard.delegate = self;      
    
    tf.inputView = keyboard;       
    
实现LVKeyboard代理：      

- (void)keyboard:(LVKeyboard *)keyboard didClickTextButton:(UIButton *)textBtn string:(NSMutableString *)string;{      
- 
    tf.text = string;       

}        
       
       
- (void)keyboard:(LVKeyboard *)keyboard didClickDeleteButton:(UIButton *)deleteBtn string:(NSMutableString *)string;      
- 
{       

    tf.text = string;       
    
}         

