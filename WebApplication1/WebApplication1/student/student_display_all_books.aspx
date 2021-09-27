<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="student_display_all_books.aspx.cs" Inherits="WebApplication1.student.student_display_all_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Dostępne książki</strong>
                        </div>
                        <div class="card-body">

                            <asp:Repeater ID="r1" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-striped">
                                      <thead>
                                        <tr>
                                          <th scope="col">Okładka</th>
                                            <th scope="col">Tytuł</th>
                                            <th scope="col">Autor</th>
                                            <th scope="col">Nr isbn</th>
                                            <th scope="col">Dostępna Ilość</th>


                                          
                                        </tr>
                                      </thead>
                                        <tbody>
                               </HeaderTemplate>

                                <ItemTemplate>
                                    <tr>
                                      <td><img src="../librarian/<%#Eval("books_image") %>" height="100" width="100" /></td>
                                      <td><%#Eval("books_title") %></td>
                                      <td><%#Eval("books_author_name") %></td>
                                      <td><%#Eval("books_isbn") %></td>
                                      <td><%#Eval("available_qty") %></td>
                                      
                                     
                                    </tr>
                                </ItemTemplate>

                                <FooterTemplate>
                                    </tbody>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>

                            
                              
                                
                                
                             
                        </div>
                    </div>
                </div>

</asp:Content>
