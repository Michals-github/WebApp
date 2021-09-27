<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="display_all_books.aspx.cs" Inherits="WebApplication1.librarian.display_all_books" %>
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
                                          <th scope="col">okładka</th>
                                            <th scope="col">tytuł</th>
                                            <th scope="col">autor</th>
                                            <th scope="col">isbn</th>
                                            <th scope="col">dostępna ilość</th>
                                            <th scope="col">Edycja</th>
                                            <th scope="col">Usuń pozycję</th>


                                          
                                        </tr>
                                      </thead>
                                        <tbody>
                               </HeaderTemplate>

                                <ItemTemplate>
                                    <tr>
                                      <td><img src="<%#Eval("books_image") %>" height="100" width="100" /></td>
                                      <td><%#Eval("books_title") %></td>
                                      <td><%#Eval("books_author_name") %></td>
                                      <td><%#Eval("books_isbn") %></td>
                                      <td><%#Eval("available_qty") %></td>
                                      <td><a href="edit_books.aspx?id=<%#Eval("id")%>">Edytuj</a></td>
                                      <td><a href="delete_fiiles.aspx?id2=<%#Eval("id")%>">Usuń</a></td>
                                      
                                     
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
