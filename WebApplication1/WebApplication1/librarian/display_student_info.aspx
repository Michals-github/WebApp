<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="display_student_info.aspx.cs" Inherits="WebApplication1.librarian.display_student_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="container-fluid" style="background-color:white;padding:20px">
    <asp:Repeater ID ="r1" runat="server">
        <HeaderTemplate>

        
            <table class="table table-striped">
                <thead>
                 <tr>
                     <th>Zdjęcie</th>
                     <th>Imię</th>
                     <th>Nazwisko</th>
                     <th>Enr no</th>
                     <th>Nazwa Użytkownika</th>
                     <th>Email</th>
                     <th>Kontakt</th>
                     <th>Status</th>
                     <th>Aktywuj</th>
                     <th>Dezaktywuj</th>
                 </tr>
                </thead>
                <tbody>
          </HeaderTemplate> 

        <ItemTemplate>

            <tr>
                <td><img src="../<%#Eval("student_img") %>" height="100" width="100" /></td>
                <td><%#Eval("firstname") %></td>
                <td><%#Eval("lastname") %></td>
                <td><%#Eval("enrollment_no") %></td>
                <td><%#Eval("username") %></td>
                <td><%#Eval("email") %></td>
                <td><%#Eval("cantact") %></td>
                <td><%#Eval("approved") %></td>
                <td><a href="student_active.aspx?id=<%#Eval("id")%>">Aktywuj</a></td>
                <td><a href="student_deactive.aspx?id=<%#Eval("id")%>">Dezaktywuj</a></td>
                
                
                                      
                                     
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </tbody>
            </table>
        </FooterTemplate>

    </asp:Repeater>
        </div>
</asp:Content>
