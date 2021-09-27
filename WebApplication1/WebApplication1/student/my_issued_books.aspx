<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="my_issued_books.aspx.cs" Inherits="WebApplication1.student.my_issued_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <div class="breadcrumbs">
        <div class="col-sm-3">
            <div class="page-header float-left">
                <div class="page-title">
                    <h1>Wypożyczone książki</h1>
                </div>
            </div>
        </div>

    </div>

    <div class="container-fluid" style="min-height:500px;background-color:white">
        <asp:Repeater ID="d1" runat="server">

        <HeaderTemplate>

        
            <table class="table table-bordered">
                <thead>
                 <tr>
                     <th>Numer Enr Studenta</th>
                     <th>ISBN Wypożyczonej Książki</th>
                     <th>Data Wypożyczenia</th>
                     <th>Termin Oddania</th>
                     <th>Nazwa Użytkownika</th>
                     <th>Czy Książka Zwrócona</th>
                     <th>Data Oddania</th>
                     <th>Opóźnienie(dni)</th>
                     <th>Kara (PLN)</th>
                 </tr>
                </thead>
                <tbody>
          </HeaderTemplate> 

        <ItemTemplate>

            <tr>
                
                <td><%#Eval("student_enrollment_no") %></td>
                <td><%#Eval("books_isbn") %></td>
                <td><%#Eval("books_issue_date") %></td>
                <td><%#Eval("books_approx_return_date") %></td>
                <td><%#Eval("student_username") %></td>
                <td><%#Eval("is_books_return") %></td>
                <td><%#Eval("books_returned_date") %></td>
                <td><%#Eval("lateday") %></td>
                <td><%#Eval("penalty") %></td>
               
               
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </tbody>
            </table>
        </FooterTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
