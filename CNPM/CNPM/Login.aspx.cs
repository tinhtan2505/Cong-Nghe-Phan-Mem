using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic;
using System.Text;
using System.Collections;

namespace CNPM
{
    public partial class Login : System.Web.UI.Page
    {
        DataQLNSDataContext conn = new DataQLNSDataContext(@"Data Source=DESKTOP-QO35TO8\SQLEXPRESS;Initial Catalog=QuanLyNhanSu;Integrated Security=True");
		public class WebMsgBox
		{
			protected static Hashtable handlerPages = new Hashtable();
			private WebMsgBox()
			{
			}
			public static void Show(string Message)
			{
				if (!(handlerPages.Contains(HttpContext.Current.Handler)))
				{
					Page currentPage = (Page)HttpContext.Current.Handler;
					if (!((currentPage == null)))
					{
						Queue messageQueue = new Queue();
						messageQueue.Enqueue(Message);
						handlerPages.Add(HttpContext.Current.Handler, messageQueue);
						currentPage.Unload += new EventHandler(CurrentPageUnload);
					}
				}
				else
				{
					Queue queue = ((Queue)(handlerPages[HttpContext.Current.Handler]));
					queue.Enqueue(Message);
				}
			}
			private static void CurrentPageUnload(object sender, EventArgs e)
			{
				Queue queue = ((Queue)(handlerPages[HttpContext.Current.Handler]));
				if (queue != null)
				{
					StringBuilder builder = new StringBuilder();
					int iMsgCount = queue.Count;
					builder.Append("<script language='javascript'>");
					string sMsg;
					while ((iMsgCount > 0))
					{
						iMsgCount = iMsgCount - 1;
						sMsg = System.Convert.ToString(queue.Dequeue());
						sMsg = sMsg.Replace("\"", "'");
						builder.Append("alert( \"" + sMsg + "\" );");
					}
					builder.Append("</script>");
					handlerPages.Remove(HttpContext.Current.Handler);
					HttpContext.Current.Response.Write(builder.ToString());
				}
			}
		}
		protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var myQuery = from i in conn.tblUsers
                          where i.username == txtUser.Text.Trim() && i.password == txtPass.Text.Trim()
                          select i;

            if (myQuery.Count() > 0)
            {
                tblUser user = myQuery.First();
                Application["idND"] = user.id;
                Response.Redirect("Default.aspx");
            }
            else
            {
				WebMsgBox.Show("Sai tài khoản!");
            }
        }
    }
}