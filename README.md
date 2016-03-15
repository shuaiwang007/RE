# RE
正则使用的简单封装，验证用户名、密码、手机号、邮箱等等，只要一句话
> 使用说明：
>将我封装好的TextDetection.h 和TextDetection.m拖进你的工程，并导入头文件，使用时只需一句代码，即 用类去调用TextDetection.h中暴露的类方法就ok了，如Demo中所示：
>
if (![TextDetection validateEmail:_emailTextField.text] && _emailTextField.text.length) {

> NSLog(@"您输入的邮箱格式不正确");

>}
>
>
>

Demo中为了简便起见，我将正则判断的事件放在了touchesEnded里，即触摸空白处收起键盘时。这时，会打印出验证结果
使用者可自定义，可根据需求修改。
赘述，倘若无法导入pod管理的第三方头文件，请选择target -> BuildSettings -> search Paths 下的 User Header Search Paths, 添加 $(PODS_ROOT) 这是很常见的问题，写一下，方便大家用吧。