<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xybm.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" href="css/index.css" type="text/css" />

  <link rel="stylesheet" href="css/xybm.css" type="text/css" />

    <style type="text/css">
        .auto-style36 {
            height: 41px;
            width: 87px;
        }
        .auto-style37 {
            height: 33px;
            width: 87px;
        }
        .auto-style38 {
            height: 37px;
            width: 87px;
        }
        .auto-style39 {
            height: 36px;
            width: 87px;
        }
        .auto-style40 {
            width: 44px;
        }
        .auto-style41 {
            width: 58%;
            float: left;
            height: 500px;
            background-color: #00549c;
        }
    </style>

    </head>
<body>
    <form id="form1" runat="server">

                            <input type="hidden" id="RsCount" value="" />

        <div id="container" class="body_main">
        <div class="topframe">
            <div  class="topframe_1">
                <div  class="topframe_1_1">
                </div>
                <div class="topframe_1_2">
                </div>
            </div>
            <div  class="topframe_2">
                <div  class="topframe_2_1">
                    <div  class="navigation_136245320998259944_1601">
                        <h3 class="title">
                            <span>
                            </span>
                        </h3>
                        <ul class="nav" >
                            <li class="">
                                <a class="topname" href="index.aspx" target="_self">
                                    <span>网站首页</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="#" target="_self">
                                    <span>部门介绍</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="#" target="_self">
                                    <span>培训计划</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="xybm.aspx" target="_self">
                                    <span>学员报名</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="#" target="_self">
                                    <span>在线考试</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="#" target="_self">
                                    <span>鉴定考试</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="#" target="_self">
                                    <span>联系我们</span>
                                </a>
                            </li>
                           
                        </ul>

                    </div>
                </div>
                <div class="topframe_2_2">
                    <div  class="showtime_136245321004571740_1601">
                        
                        <h3>
                            <span>日期时间</span>
                        </h3>
                        <span class="time" >
                        </span>
                        <span  class="xuen">
                        </span>
                        <span  class="xueq">
                        </span>
                        <span class="jxz"> 当前日期：<%=DateTime.Now.ToShortDateString()%></span>
                        </span>

                    </div>
                </div>
             
            </div>
        </div>
            <div class="main">
            <div class="leftframe"
          <div class="leftframe_1">


                <br />
                <br />
                <br />


        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Contacts" NodeIndent="10" Height="355px" Width="167px">
            <HoverNodeStyle Font-Underline="False" />
            <Nodes>
                <asp:TreeNode Text="学员管理" Value="安工学校">
                    <asp:TreeNode Text="学员报名" Value="学员" NavigateUrl="~/xybm.aspx">
                    </asp:TreeNode>
                    <asp:TreeNode Text="学员登录" Value="学员" NavigateUrl="~/index.aspx">
                    </asp:TreeNode>
                    <asp:TreeNode Text="信息修改" Value="学员">
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    

            </div>
        </div>
            <div class="auto-style41">
        <div class="table">       
          <table>
             <tr>
                 <td class="auto-style36">姓名：</td>
                 <td class="auto-style40"> <asp:TextBox ID="txtRequiredField" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style35"> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="姓名不能为空！" ControlToValidate="txtRequiredField" Display="Dynamic" Enabled="False"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style37">密码：</td>
                 <td class="auto-style40"> <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style26"></td>
             </tr>
            <tr>
                 <td class="auto-style38">确认密码：</td>
                 <td class="auto-style40">
                     <asp:TextBox ID="txtPwdConfirm" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
                 <td class="auto-style35">
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="密码输入不一致！" ControlToCompare="txtPwd" 
            ControlToValidate="txtPwdConfirm" Display="Dynamic"></asp:CompareValidator>
                 </td>
             </tr>
              <tr>
                 <td class="auto-style38">

     
                     身份证：</td>
                 <td class="auto-style40">
       <asp:TextBox ID="txtId" runat="server" TextMode="SingleLine"></asp:TextBox>
                 </td>
                 <td class="auto-style35">
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtId" ErrorMessage="身份证错误" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
                 </td>
              </tr>
             <tr>
                 <td class="auto-style36">性别：</td>
                 <td class="auto-style40">
                     <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="89px">
                         <asp:ListItem>男</asp:ListItem>
                         <asp:ListItem>女</asp:ListItem>
                     </asp:RadioButtonList>
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style36">电话：</td>
                 <td class="auto-style40">
                     <asp:TextBox ID="txtPhone" runat="server" TextMode="SingleLine" Height="16px" Width="97px"></asp:TextBox>
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">

     
                     民族：</td>
                 <td class="auto-style40">
                     <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="62px">
                         <asp:ListItem>汉族</asp:ListItem>
                         <asp:ListItem>其他民族</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
            <tr>
                 <td class="auto-style38">

     
                     学历：</td>
                 <td class="auto-style40">
                     <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="66px">
                         <asp:ListItem>专科</asp:ListItem>
                         <asp:ListItem>本科</asp:ListItem>
                         <asp:ListItem>硕士</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style35">
                 </td>
             </tr>
            <tr>
                 <td class="auto-style38">

     
                     工作单位：</td>
                 <td class="auto-style40">
                     <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="90px">
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style35">
                 &nbsp;
                     <asp:TextBox ID="txtmc" runat="server"></asp:TextBox>
                     <asp:Button ID="Button4" runat="server" Text="添加" Height="25px" Width="72px" OnClick="Button4_Click" OnDisposed="Button4_Disposed" />
                     <asp:Button ID="Button5" runat="server" Text="删除" Height="25px" Width="72px" OnClick="Button5_Click" />
                 </td>
             </tr>
            <tr>
                 <td class="auto-style38">

     
                     培训项目：</td>
                 <td class="auto-style40">
                     <asp:DropDownList ID="DropDownList4" runat="server">
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
            <tr>
                 <td class="auto-style38">

     
                     流水号：</td>
                 <td class="auto-style40">
                     <asp:TextBox ID="txtlsh" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style39">

     
                     &nbsp;</td>
                 <td class="auto-style40">

     
         <asp:Button ID="Button1" runat="server" Text="确定" Height="26px" Width="80px" OnClick="Button1_Click" />
        
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
         </table>
               
        </div>               
      
               
            </div>
      </div>
          
      
    </div>
    <div>
    
    </div>
    </form>
</body>
</html>
