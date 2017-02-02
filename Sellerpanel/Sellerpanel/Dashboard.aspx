<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Sellerpanel.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:HiddenField ID="hfRefId" runat="server" />
    <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <div id="widget-config" class="modal hide">
        <div class="modal-header">
            <button data-dismiss="modal" class="close" type="button">
                ×</button>
            <h3>
                Widget Settings</h3>
        </div>
        <div class="modal-body">
            <p>
                Here will be a configuration form</p>
        </div>
    </div>
    <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <!-- BEGIN PAGE CONTAINER-->
    <div class="container-fluid">
        <!-- BEGIN PAGE HEADER-->
        <div class="row-fluid">
            <div class="span12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    Master Categories</h3>
                
                <!-- END PAGE TITLE & BREADCRUMB-->
            </div>
        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->
        <div id="page">
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
                <div class="span12">
                    <!-- BEGIN SAMPLE FORM PORTLET-->
                    <div class="widget box blue">
                        <div class="widget-body form">
                            <!-- BEGIN FORM-->
                            <form action="#" class="form-horizontal">
                            <div class="row-fluid">
                                <div class="span12">
                                    <!-- BEGIN PORTLET-->
                                    <div class="row-fluid">
                                        <div class="span12">
                                            <div class="widget box purple">
                                                <div class="widget-title">
                                                    <h4>
                                                        <i class="icon-reorder"></i>Add New Category</h4>
                                                    <div class="tools">
                                                        <a href="javascript:;" class="collapse"></a><a href="javascript:;" class="reload">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="widget-body form">
                                                    <!-- BEGIN FORM-->
                                                    <div class="control-group">
                                                        <div class="controls">
                                                        <asp:HiddenField ID="hfId" runat="server" />
                                                            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        </div>
                                                    </div>
                                                     <div class="control-group">
                                                        <label class="control-label">
                                                            Category Name</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="txtCategoryName" style="width:260px;" runat="server" CssClass="span6 m-wrap"> </asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfSampleName" runat="server" ErrorMessage="*"
                                                                Display="Dynamic" ForeColor="Red" ValidationGroup="vgSave" Font-Size="16px"
                                                                ControlToValidate="txtCategoryName"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label">
                                                            Category Desc.</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="txtDesc" style="width:260px;" runat="server" CssClass="span6 m-wrap"> </asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvtxtDesc" runat="server" ErrorMessage="*"
                                                                Display="Dynamic" ForeColor="Red" ValidationGroup="vgSave" Font-Size="16px"
                                                                ControlToValidate="txtDesc"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="form-actions">
                                                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn blue"
                                                            ValidationGroup="vgSave" />
                                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"
                                                            CssClass="btn" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           
                            <div class="row-fluid">
                                <div class="span12">
                                    <!-- BEGIN PORTLET-->
                                    <div class="row-fluid">
                                        <div class="span12">
                                            <div class="widget box purple">
                                                <div class="widget-title">
                                                    <h4>
                                                        <i class="icon-reorder"></i>Sample Type Details
                                                    </h4>
                                                    <div class="tools">
                                                        <a href="javascript:;" class="collapse"></a><a href="javascript:;" class="reload">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="widget-body form">
                                                    <!-- BEGIN FORM-->
                                                    
                                                    <div class="control-group">
                                                        <div class="controls">
                                                            <asp:Label ID="lblmessage1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        </div>
                                                    </div>
                              <asp:GridView ID="gvSampleType" runat="server" AutoGenerateColumns="false" 
                            CssClass="table table-striped table-hover table-bordered" 
                            onrowcommand="gvSampleType_RowCommand">
                            <Columns>
                            <asp:BoundField HeaderText="Category Name" DataField="CategoryCode" />
                            <asp:BoundField HeaderText="Category Desc" DataField="CategoryDesc" />
                            <asp:BoundField HeaderText="Created Date" DataField="Created_Date" DataFormatString="{0:dd/MM/yyyy}" />
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbtnEdit" runat="server" CommandName="Edt" CommandArgument='<%# Eval("Id") %>'>Edit</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbtnDelete" runat="server" CommandName="Del" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('Are you sure you want to delete?');" >Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                                                    
                                                    <!-- END FORM-->
                                                </div>
                                            </div>
                                            <!-- END PORTLET-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </form>
                            <!-- END FORM-->
                        </div>
                    </div>
                    <!-- END SAMPLE FORM PORTLET-->
                </div>
            </div>
            <!-- END PAGE CONTENT-->
        </div>
        <!-- END PAGE CONTENT-->
        </div>
    <!-- END PAGE CONTAINER-->
    <asp:HiddenField runat="server" ID="hdnId" />
</asp:Content>
