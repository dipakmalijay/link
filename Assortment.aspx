<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Assortment.aspx.cs" Inherits="Assortment" %>

<%@ Register TagPrefix="uc1" TagName="title" Src="~/UcTitle.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="Scripts/Assortment.js" type="text/javascript"></script>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/webkit.js" />
        </Scripts>
    </asp:ScriptManager>
    <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:HiddenField ID="hdfvalue" runat="server" />
            <asp:HiddenField ID="hdfWt" runat="server" />
            <script type="text/javascript" language="javascript">

                function AutoCompleteExtender2_ItemSelected(source, eventArgs) {
                    source.get_element().value = eventArgs.get_value();
                } 
            </script>
            <script type="text/javascript">
                $(document).ready(function () {
                    $(".trigger").click(function () {
                        $(".panel").toggle("slow");
                        $(this).toggleClass("active");
                        return false;
                    });
                    $(window).scroll(function () {
                        $('.panel').animate({
                            top: ($(window).scrollTop() + 100)
                        }, 20);
                        $('.trigger').animate({
                            top: ($(window).scrollTop() + 100)
                        }, 20);
                    });
                });
            </script>
            <link href="css/style.css" rel="stylesheet" type="text/css" />
            <table width="100%" cellpadding="0" cellspacing="0">
                <tr style="background-color: #E5E5E5;">
                    <td align="left">
                        <table width="100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 30%">
                                    <asp:ImageButton ID="btnPrev" ToolTip="Previous" onmouseover="showImg('btnPrev','Images/icons/mouseover/previous.png');"
                                        onmouseout="showImg('btnPrev','Images/icons/enabled/previous.png');" ImageUrl="~/Images/icons/enabled/previous.png"
                                        runat="server" OnClick="btnPrev_Click" />&nbsp;
                                    <asp:ImageButton ID="btnNext" ToolTip="Next" onmouseover="showImg('btnNext','Images/icons/mouseover/next.png');"
                                        onmouseout="showImg('btnNext','Images/icons/enabled/next.png');" ImageUrl="~/Images/icons/enabled/next.png"
                                        runat="server" OnClick="btnNext_Click" />&nbsp;
                                    <asp:ImageButton ID="btnFind" ToolTip="Find" onmouseover="showImg('btnFind','Images/icons/mouseover/find.png');"
                                        onmouseout="showImg('btnFind','Images/icons/enabled/find.png');" ImageUrl="~/Images/icons/enabled/find.png"
                                        runat="server" OnClick="btnFind_Click" />&nbsp;
                                    <asp:ImageButton ID="btnNew" ToolTip="New" onmouseover="showImg('btnNew','Images/icons/mouseover/new.png');"
                                        onmouseout="showImg('btnNew','Images/icons/enabled/new.png');" ImageUrl="~/Images/icons/enabled/new.png"
                                        runat="server" OnClick="btnNew_Click" />&nbsp;
                                    <asp:ImageButton ID="btnEdit" ToolTip="Edit" onmouseover="showImg('btnEdit','Images/icons/mouseover/edit.png');"
                                        onmouseout="showImg('btnEdit','Images/icons/enabled/edit.png');" ImageUrl="~/Images/icons/enabled/edit.png"
                                        runat="server" OnClick="btnEdit_Click" />&nbsp;
                                    <asp:ImageButton ID="btnDelete" ToolTip="Delete" onmouseover="showImg('btnDelete','Images/icons/mouseover/delete.png');"
                                        onmouseout="showImg('btnDelete','Images/icons/enabled/delete.png');" ImageUrl="~/Images/icons/enabled/delete.png"
                                        runat="server" OnClick="btnDelete_Click" />&nbsp;
                                    <asp:ImageButton ID="btnSave" ToolTip="Save" onmouseover="showImg('btnSave','Images/icons/mouseover/save.png');"
                                        onmouseout="showImg('btnSave','Images/icons/enabled/save.png');" ImageUrl="~/Images/icons/enabled/save.png"
                                        runat="server" OnClick="btnSave_Click" />&nbsp;
                                    <asp:ImageButton ID="btnPreview" ToolTip="Print Preview" onmouseover="showImg('btnPreview','Images/icons/mouseover/print_preview.png');"
                                        onmouseout="showImg('btnPreview','Images/icons/enabled/print_preview.png');"
                                        ImageUrl="~/Images/icons/enabled/print_preview.png" runat="server" OnClick="btnPreview_Click" />&nbsp;
                                    <asp:ImageButton ID="btnPrint" ToolTip="Print" onmouseover="showImg('btnPrint','Images/icons/mouseover/print.png');"
                                        onmouseout="showImg('btnPrint','Images/icons/enabled/print.png');" ImageUrl="~/Images/icons/enabled/print.png"
                                        runat="server" OnClick="btnPrint_Click1" />&nbsp;
                                </td>
                                <td align="left">
                                    <div id="divLable" style="display: none">
                                        <table width="250px" class="MessageTd">
                                            <tr>
                                                <td style="width: 37px" valign="top">
                                                </td>
                                                <td align="left" style="width: 213px" valign="top">
                                                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                                <td align="right" class="ucTitle">
                                    <uc1:title ID="DivTitle" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="height: 5px">
                    </td>
                </tr>
            </table>
            <table width="95%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td id="tdError" runat="server" align="left">
                        <table width="700px" class="ErrorTd">
                            <tr>
                                <td style="width: 37px" valign="top">
                                </td>
                                <td align="left" style="width: 600px" valign="top">
                                    <asp:Label ID="lblError" runat="server" Height="35px" Width="580px" Text="aaaaaaaaq"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="pnlTop" runat="server">
                            <table cellpadding="0" cellspacing="0" border="0" width="95%">
                                <tr>
                                    <td width="90px">
                                        Location :
                                        <asp:Label Text="*" CssClass="MindatoryFields" runat="server"></asp:Label>
                                    </td>
                                    <td align="left" style="height: 35px">
                                        <cc1:ComboBox ID="drpLocation" runat="server" DropDownStyle="DropDownList" AutoCompleteMode="SuggestAppend"
                                            AutoPostBack="true" OnSelectedIndexChanged="drpLocation_SelectedIndexChanged"
                                            CssClass="" AppendDataBoundItems="true">
                                        </cc1:ComboBox>
                                        <asp:ImageButton ID="btnAddLocation" Style="vertical-align: bottom;" onmouseover="showImg('btnAddLocation','Images/icons/mouseover/addnew.png');"
                                            onmouseout="showImg('btnAddLocation','Images/icons/enabled/addnew.png');" ImageUrl="~/Images/icons/enabled/addnew.png"
                                            runat="server" OnClick="btnAddLocation_Click" />
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="1" rowspan="5">
                                        <asp:Panel ID="Panel6" runat="server" GroupingText="Item Details" Width="320px">
                                            <table id="tblItemDetls" width="100%">
                                                <tr>
                                                    <td>
                                                        Shape
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="txtShape" runat="server" MaxLength="127" class="field" Width="120px"
                                                            Style="text-align: left; height: 18px" ReadOnly="true"></asp:Label>
                                                    </td>
                                                    <td>
                                                        Cut
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="txtCut" runat="server" MaxLength="127" Width="120px" Style="text-align: left;
                                                            height: 18px" class="field" ReadOnly="true"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Clarity
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="txtClarity" runat="server" MaxLength="127" Width="120px" Style="text-align: left;
                                                            height: 18px" class="field" ReadOnly="true"></asp:Label>
                                                    </td>
                                                    <td>
                                                        Polish
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="txtPolish" runat="server" MaxLength="127" Width="120px" Style="text-align: left;
                                                            height: 18px" class="field"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Color
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="txtColor" runat="server" MaxLength="127" Width="120px" Style="text-align: left;
                                                            height: 18px" class="field" ReadOnly="true"></asp:Label>
                                                    </td>
                                                    <td>
                                                        Sym
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="txtSym" runat="server" MaxLength="127" Width="120px" Style="text-align: left;
                                                            height: 18px" class="field" ReadOnly="true"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Shade
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="txtShade" runat="server" MaxLength="127" Width="120px" Style="text-align: left;
                                                            height: 18px" class="field" ReadOnly="true"></asp:Label>
                                                    </td>
                                                    <td>
                                                        Fluor
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="txtFluor" runat="server" MaxLength="127" class="field" Width="120px"
                                                            Style="text-align: left; height: 18px" ReadOnly="true"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Voucher No
                                        <asp:Label ID="Label1" Text="*" CssClass="MindatoryFields" runat="server"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtVoucherNo" runat="server" MaxLength="127"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqMemoNo" runat="server" ControlToValidate="txtVoucherNo"
                                            ValidationGroup="Grp1" Display="None" ErrorMessage="Please Enter Voucher No !"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Date
                                        <asp:Label ID="Label2" Text="*" CssClass="MindatoryFields" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtDate" runat="server" ToolTip="DD-MMM-YYY" Width="143px" CssClass="textDate"></asp:TextBox>
                                        <img runat="server" alt="Open Calendar" border="0" height="15" style="vertical-align: bottom;
                                            margin: 0px 0px 3px -20px; width: 13px;" onclick="setYears(1950, 2025); showCalender(this, 'ContentPlaceHolder1_txtDate');"
                                            src="Scripts/calendar.gif" id="Img3" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Prepaired By
                                        <asp:Label ID="Label3" Text="*" CssClass="MindatoryFields" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <cc1:ComboBox ID="drpPre" runat="server" DropDownStyle="DropDownList" AutoCompleteMode="SuggestAppend"
                                            CssClass="" AppendDataBoundItems="true">
                                        </cc1:ComboBox>
                                        <asp:ImageButton ID="btnAddPre" Style="vertical-align: bottom;" onmouseover="showImg('btnAddPre','Images/icons/mouseover/addnew.png');"
                                            onmouseout="showImg('btnAddPre','Images/icons/enabled/addnew.png');" ImageUrl="~/Images/icons/enabled/addnew.png"
                                            runat="server" OnClick="btnAddPre_Click" />
                                        <asp:RequiredFieldValidator ID="reqRec" runat="server" ControlToValidate="drpPre"
                                            InitialValue="Select" ValidationGroup="Grp1" Display="None" ErrorMessage="Please Select Prepaired By !"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Item Packet
                                        <asp:Label ID="Label4" Text="*" CssClass="MindatoryFields" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <table cellspacing="0" cellpadding="0" border="0">
                                            <tr>
                                                <td style="height: 35px" width="242px">
                                                    <cc1:ComboBox ID="drpItem" runat="server" DropDownStyle="DropDownList" AutoCompleteMode="SuggestAppend"
                                                        CssClass="" AppendDataBoundItems="false" AutoPostBack="true" OnSelectedIndexChanged="drpItem_SelectedIndexChanged">
                                                    </cc1:ComboBox>
                                                    <asp:ImageButton ID="btnAddItem" Style="vertical-align: bottom;" onmouseover="showImg('btnAddItem','Images/icons/mouseover/addnew.png');"
                                                        onmouseout="showImg('btnAddItem','Images/icons/enabled/addnew.png');" ImageUrl="~/Images/icons/enabled/addnew.png"
                                                        runat="server" OnClick="btnAddItem_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Stock Currency
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drpCurr" CssClass="csdrpCurr" runat="server" DropDownStyle="DropDownList"
                                            AutoCompleteMode="SuggestAppend" Width="149px" AutoPostBack="true" AppendDataBoundItems="true"
                                            OnSelectedIndexChanged="drpCurr_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:ImageButton ID="btnAddCurr" Style="vertical-align: bottom;" onmouseover="showImg('btnAddCurr','Images/icons/mouseover/addnew.png');"
                                            onmouseout="showImg('btnAddCurr','Images/icons/enabled/addnew.png');" ImageUrl="~/Images/icons/enabled/addnew.png"
                                            runat="server" OnClick="btnAddCurr_Click" />&nbsp;<asp:TextBox ID="txtCurr" runat="server"
                                                Style="display: none" Width="60px" CssClass="textNumber cstxtStkCurr" MaxLength="10"
                                                onKeyPress="return NumericalDataValue(event,this,10,4)">
                                            </asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Item Type
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="rdoF" runat="server" Text="Finished" GroupName="grpRdo" AutoPostBack="true"
                                            Checked="true" OnCheckedChanged="rdoF_CheckedChanged" />&nbsp;
                                        <asp:RadioButton ID="rdoR" runat="server" GroupName="grpRdo" Text="Rejected" AutoPostBack="true"
                                            OnCheckedChanged="rdoR_CheckedChanged" />
                                    </td>
                                    <td colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Size
                                    </td>
                                    <td align="left" rowspan="3">
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td>
                                                    <%--<asp:TextBox ID="txtSize" runat="server" Width="100px" MaxLength="127" Style="text-align: left"
                                                        onKeyPress="return NumericalDataValue(event,this,10,2)"></asp:TextBox>--%>
                                                    <asp:Label ID="txtSize" runat="server" class="field" Width="100px" Style="text-align: right;
                                                        height: 18px"></asp:Label>
                                                </td>
                                                <td height="22px">
                                                    Rate
                                                    <asp:Label ID="Label5" Text="*" CssClass="MindatoryFields" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpRate" Width="100px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpRate_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:HiddenField ID="hdfPrevRate" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtWeight" AutoPostBack="true" runat="server" MaxLength="127" Width="97px"
                                                        Style="text-align: right" onKeyPress="return NumericalDataValue(event,this,10,2)"
                                                        onChange="changeTAmt()" OnTextChanged="txtWeight_TextChanged"></asp:TextBox>
                                                </td>
                                                <td height="30px">
                                                    Amount
                                                </td>
                                                <td>
                                                    <asp:Label ID="txtAmount" runat="server" class="field" Width="100px" Style="text-align: right;
                                                        height: 18px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" height="22px">
                                                    <asp:Label ID="lblCvRate" runat="server" Width="100px" Style="text-align: right;
                                                        height: 18px" class="field"></asp:Label>
                                                </td>
                                                <td class="style2" height="22px">
                                                    &nbsp;
                                                </td>
                                                <td class="style2">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td colspan="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Weight
                                        <asp:Label ID="Label6" Text="*" CssClass="MindatoryFields" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="22px">
                                        Cv Rate
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="pnlGrid" runat="server">
                            <table cellpadding="0" cellspacing="0" border="0" width="100%x" style="border-color: #950000">
                                <tr>
                                    <td>
                                        <asp:HiddenField ID="hdfRow" runat="server" />
                                        <asp:Panel ID="panelScroll" runat="server" Width="100%">
                                            <asp:GridView ID="gvItem" runat="server" AutoGenerateColumns="false" Width="100%"
                                                DataKeyNames="Asrtd_Id" HeaderStyle-CssClass="GridHeader" OnRowCancelingEdit="gvItem_RowCancelingEdit"
                                                OnRowCommand="gvItem_RowCommand" OnRowDataBound="gvItem_RowDataBound" OnRowDeleting="gvItem_RowDeleting"
                                                OnRowEditing="gvItem_RowEditing" OnRowUpdating="gvItem_RowUpdating" OnSelectedIndexChanging="gvItem_SelectedIndexChanging"
                                                RowStyle-CssClass="GridRow" ShowFooter="false" CssClass="csgrid" GridLines="None">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sr.No." ItemStyle-HorizontalAlign="Right">
                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <%# Container.DataItemIndex + 1 %>
                                                            <asp:Label ID="lblIdE" runat="server" Text='<%# Eval("Asrtd_Id") %>' Visible="false"></asp:Label>
                                                            <asp:Label ID="lblContextKeyE" runat="server" Text="" Visible="false"></asp:Label>
                                                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="true"
                                                                ShowSummary="false" ValidationGroup="Grp2" />
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderStyle-Width="150px" HeaderText="Item Batch No" ItemStyle-HorizontalAlign="Left">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="lblItemIdE" runat="server" Text='<%# Eval("Asrtd_ItmId") %>' Visible="false"></asp:Label>
                                                            <asp:TextBox ID="txtItemE" runat="server" autocomplete="off" AutoPostBack="true"
                                                                MaxLength="127" CssClass="cstxtItemE" OnTextChanged="txtItemE_TextChanged" Text='<%# Eval("Itm_No") %>'
                                                                Width="90px"></asp:TextBox>
                                                            <cc1:AutoCompleteExtender ID="autoComplete2" runat="server" BehaviorID="AutoCompleteEx11"
                                                                CompletionInterval="1000" CompletionListCssClass="autocomplete_completionListElement"
                                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                CompletionSetCount="20" ContextKey="" DelimiterCharacters=";, :" EnableCaching="true"
                                                                MinimumPrefixLength="1" OnClientItemSelected="AutoCompleteExtender2_ItemSelected"
                                                                ServiceMethod="GetCompletionList" ServicePath="AutoComplete.asmx" ShowOnlyCurrentWordInCompletionListItem="true"
                                                                TargetControlID="txtItemE">
                                                            </cc1:AutoCompleteExtender>
                                                            <asp:ImageButton ID="btnSearch" runat="server" CommandName="cmdItmSearch" ImageUrl="~/Images/viewIcon.png"
                                                                Style="height: 20px; width: 20px" />
                                                            <asp:RequiredFieldValidator ID="reqItem" runat="server" ControlToValidate="txtItemE"
                                                                Display="None" ErrorMessage="Please Enter Item Batch No !" ValidationGroup="Grp2"></asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <%# Eval("Itm_No") %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Currency" ControlStyle-Width="70px" ItemStyle-Width="70px">
                                                        <ItemTemplate>
                                                            <%# Eval("Curr_Name") %>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:DropDownList ID="drpStkCurr" runat="server" Width="70px" AutoPostBack="true"
                                                                CssClass="csdrpStkCurr" OnSelectedIndexChanged="drpStkCurr_SelectedIndexChanged">
                                                            </asp:DropDownList>
                                                            <asp:HiddenField runat="server" ID="hdnStkCurrId" Value='<%# Eval("Curr_Id") %>' />
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="60px" HeaderText="Shape" ItemStyle-Width="60px">
                                                        <ItemTemplate>
                                                            <%# Eval("Shape") %>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:Label ID="lblShapeE" runat="server" Text='<%# Eval("Shape") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="50px" HeaderText="Clarity">
                                                        <ItemTemplate>
                                                            <%# Eval("Clarity") %>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:Label ID="lblClarityE" runat="server" Text='<%# Eval("Clarity") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="50px" HeaderText="Colour">
                                                        <ItemTemplate>
                                                            <%# Eval("Colour") %>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:Label ID="lblColourE" runat="server" Text='<%# Eval("Colour") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="50px" HeaderText="Size">
                                                        <ItemTemplate>
                                                            <%# Eval("ItmSize") %>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:Label ID="lblSizeE" runat="server" Text='<%# Eval("ItmSize") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="60px" HeaderStyle-HorizontalAlign="Right"
                                                        HeaderText="Weight" ItemStyle-HorizontalAlign="Right">
                                                        <ItemTemplate>
                                                            <%# Convert.ToDouble((Eval("Asrtd_Weight")== DBNull.Value ? "0.000" : Eval("Asrtd_Weight"))).ToString(Convert.ToString(Session["WtDecimal"]))%>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="txtWeightE" runat="server" CssClass="textNumber" MaxLength="10"
                                                                onChange='<%# "changeAmtE(" + Convert.ToString(Container.DataItemIndex) +")" %>'
                                                                onKeyPress="return NumericalDataValue(event,this,10,2)" Text='<%# Eval("Asrtd_Weight") %>'
                                                                Width="50px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="reqWeight" runat="server" ControlToValidate="txtWeightE"
                                                                Display="None" ErrorMessage="Please Enter Weight !" ValidationGroup="Grp2"></asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="70px" HeaderText="Curnt Cost Rt CV Rate" ItemStyle-HorizontalAlign="Right"
                                                        HeaderStyle-Width="75px" HeaderStyle-HorizontalAlign="Right">
                                                        <ItemTemplate>
                                                            <%# Convert.ToDouble((Eval("Asrtd_CCRate") == DBNull.Value ? 0 : Eval("Asrtd_CCRate"))).ToString(Convert.ToString(Session["RateDecimal"]))%>
                                                            <br />
                                                            <%# Convert.ToDouble((Eval("Asrtd_CVRate") == DBNull.Value ? 0 : Eval("Asrtd_CVRate"))).ToString(Convert.ToString(Session["RateDecimal"]))%>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:Label ID="lblCCRateE" runat="server" Width="60px" Text='<%# Convert.ToDouble((Eval("Asrtd_CCRate") == DBNull.Value ? 0 : Eval("Asrtd_CCRate"))).ToString(Convert.ToString(Session["RateDecimal"]))%>'
                                                                CssClass="textNumber"></asp:Label>
                                                            <br />
                                                            <asp:Label ID="lblCvRateE" runat="server" Width="60px" Text='<%# Convert.ToDouble((Eval("Asrtd_CVRate") == DBNull.Value ? 0 : Eval("Asrtd_CVRate"))).ToString(Convert.ToString(Session["RateDecimal"]))%>'
                                                                CssClass="textNumber"></asp:Label>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="60px" HeaderStyle-HorizontalAlign="Right"
                                                        HeaderText="Cost Rt" ItemStyle-HorizontalAlign="Right">
                                                        <ItemTemplate>
                                                            <%# Convert.ToDouble((Eval("Asrtd_CRate") == DBNull.Value ? 0 : Eval("Asrtd_CRate"))).ToString(Convert.ToString(Session["RateDecimal"]))%>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="txtCRateE" runat="server" CssClass="textNumber" MaxLength="10" onChange='<%# "changeAmtE(" + Convert.ToString(Container.DataItemIndex) +")" %>'
                                                                onKeyPress="return NumericalDataValue(event,this,10,2)" Text='<%# Eval("Asrtd_CRate") %>'
                                                                Width="60px"></asp:TextBox>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="70px" FooterStyle-HorizontalAlign="Right"
                                                        HeaderText="Amount" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                        <ItemTemplate>
                                                            <%# Convert.ToDouble((Eval("Asrtd_Amount") == DBNull.Value ? "0.00" : Eval("Asrtd_Amount"))).ToString(Convert.ToString("#0.00"))%>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:Label ID="lblAmtE" runat="server" CssClass="textNumber" Text='<%# Eval("Asrtd_Amount") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="70px" FooterStyle-HorizontalAlign="Right"
                                                        HeaderText="Amount" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                        <ItemTemplate>
                                                            <%# Convert.ToDouble((Eval("Asrtd_BasedCurrAmt") == DBNull.Value ? "0.00" : Eval("Asrtd_BasedCurrAmt"))).ToString(Convert.ToString("#0.00"))%>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:Label ID="lblBasedE" runat="server" CssClass="textNumber" Text='<%# Eval("Asrtd_BasedCurrAmt") %>'></asp:Label>
                                                            <asp:TextBox ID="txtBasedAmtE" runat="server" Text='<%# Eval("Asrtd_BasedCurrAmt") %>'
                                                                Style="display: none"></asp:TextBox>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ControlStyle-Width="35px" FooterStyle-HorizontalAlign="Right"
                                                        HeaderText="Avg %" ItemStyle-HorizontalAlign="Right">
                                                        <ItemTemplate>
                                                            <%# Eval("Asrtd_Avg") %>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:Label ID="lblAvgE" runat="server" CssClass="textNumber" Text='<%# Eval("Asrtd_Avg") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderStyle-Width="60px" HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="lnkEdit" runat="server" CommandName="Edit" ImageUrl="~/Images/icons/enabled/edit.png" />
                                                            <asp:ImageButton ID="linkDeleteItem" runat="server" CommandName="Delete" ImageUrl="~/Images/icons/enabled/delete.png" />
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:ImageButton ID="lnkUpdate" runat="server" CommandName="Update" OnClientClick='<%# "javascript:return validRow(" +  Convert.ToInt32(Container.DataItemIndex ) +" );" %>'
                                                                ImageUrl="~/Images/icons/enabled/save.png" />
                                                            <asp:ImageButton ID="lnkCancel" runat="server" CommandName="Cancel" ImageUrl="~/Images/icons/enabled/new.png" />
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EmptyDataTemplate>
                                                </EmptyDataTemplate>
                                            </asp:GridView>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="pnlBottom" runat="server">
                            <table cellpadding="0" cellspacing="0" width="80%">
                                <tr>
                                    <td colspan="3">
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">
                                        Verified by
                                    </td>
                                    <td>
                                        <cc1:ComboBox ID="drpVer" runat="server" DropDownStyle="DropDownList" AutoCompleteMode="SuggestAppend"
                                            AppendDataBoundItems="true" Width="250px">
                                        </cc1:ComboBox>
                                        <asp:ImageButton ID="AddVer" Style="vertical-align: bottom;" onmouseover="showImg('AddVer','Images/icons/mouseover/addnew.png');"
                                            onmouseout="showImg('AddVer','Images/icons/enabled/addnew.png');" ImageUrl="~/Images/icons/enabled/addnew.png"
                                            runat="server" OnClick="AddVer_Click" />
                                    </td>
                                    <td rowspan="2" align="left">
                                        <asp:Panel ID="Panel3" runat="server" GroupingText="Total" Width="400px">
                                            <table>
                                                <tr>
                                                    <td>
                                                        Weight
                                                    </td>
                                                    <td width="20%">
                                                        <asp:Label ID="lblTotWt" runat="server" class="field" Width="70px" Style="text-align: right;
                                                            height: 18px" Text="0.00"></asp:Label>
                                                    </td>
                                                    <td>
                                                        Amount
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblTotAmt" runat="server" class="field" Width="90px" Style="text-align: right;
                                                            height: 18px" Text="0.00"></asp:Label>
                                                    </td>
                                                    <td>
                                                        Avg %
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblTotAvg" runat="server" class="field" Width="55px" Style="text-align: right;
                                                            height: 18px" Text="0.00"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Bal Wt
                                                    </td>
                                                    <td width="20%">
                                                        <asp:Label ID="lblBalWt" runat="server" class="field" Width="70px" Style="text-align: right;
                                                            height: 18px" Text="0.00"></asp:Label>
                                                    </td>
                                                    <td>
                                                        Rt / Amt
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblBalRate" runat="server" class="field" Width="90px" Style="text-align: right;
                                                            height: 18px" Text="0.00"></asp:Label>
                                                    </td>
                                                    <td colspan="2">
                                                        <asp:Label ID="lblBalAmt" runat="server" class="field" Width="102px" Style="text-align: right;
                                                            height: 18px" Text="0.00"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3" style="text-align: right">
                                                        Adjust Amount
                                                    </td>
                                                    <td width="20%">
                                                        <asp:TextBox ID="txtTotAmtAdj" Style="text-align: right" OnChange="javascript:AmountAdj(this)"
                                                            onKeyPress="return NumericalDataValue(event,this,10,2)" runat="server" Width="90px"></asp:TextBox>
                                                    </td>
                                                    <td colspan="2">
                                                        <span style="color: Red; width: 70px">-0.99 to 0.99 </span>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Remark
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtRemark" runat="server" Width="250px" MaxLength="6000" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class='panel' style="width: 110px; overflow-x: auto;">
                            <asp:GridView ID="gvCurrRate" CssClass="csgvCurrRate" runat="server" RowStyle-CssClass="GridRow"
                                HeaderStyle-CssClass="GridHeader" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:TemplateField HeaderText="Currency" HeaderStyle-Width="55px">
                                        <ItemTemplate>
                                            <span id="lblCurrency" style="width: 55px">
                                                <%# Eval("Curr_Name") %></span>
                                            <asp:TextBox Style="display: none" ID="txtCurrId" runat="server" Text='<%# Eval("Curr_Id") %>'
                                                CssClass='<%# "cstxtCurrId" + Convert.ToString(Container.DataItemIndex) %>'></asp:TextBox>
                                            <asp:TextBox Style="display: none" ID="txtAsrtCId" runat="server" Text='<%# Eval("AsrtC_Id") %>'
                                                CssClass='<%# "cstxtAsrtCId" + Convert.ToString(Container.DataItemIndex) %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Rate" HeaderStyle-HorizontalAlign="Right">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtAsrtCCurrRate" onKeyPress="return NumericalDataValue(event,this,10,2)"
                                                runat="server" Width="55px" Text='<%# Eval("AsrtC_CurrRate") %>' CssClass='<%# "textNumber cstxtCurrRate" + Convert.ToString(Container.DataItemIndex) %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="btnDummy" runat="server" Style="display: none;" />
                        <asp:Panel ID="Panel1" runat="server" Style="display: none; width: 408px; height: 300px;
                            background-color: Maroon; color: White; padding: 5px 5px 5px 5px;">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="btnAddSave" runat="server" Text="Submit" OnClick="btnAddSave_Click" />&nbsp;&nbsp;<asp:Button
                                            ID="Button2" runat="server" Text="Cancel" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Name :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Address :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Street :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        LandMark :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtLand" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    City :
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    State :
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Country :
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    Pin :
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Phone :
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                                                    <td>
                                                        Mob :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Fax :
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
                                                    <td>
                                                        Email :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1"
                            TargetControlID="btnDummy" CancelControlID="Button2" DropShadow="false" Drag="True"
                            X="-1" Y="-1">
                        </cc1:ModalPopupExtender>
                        <div id="blanket" style="opacity: 0.65; filter: alpha(opacity=65); position: absolute;
                            z-index: 9001; top: 0px; left: 0px; width: 100%;">
                        </div>
                    </td>
                </tr>
            </table>
            <table id="calenderTable">
                <tbody id="calenderTableHead">
                    <tr>
                        <td colspan="4" align="left">
                            <select onchange="showCalenderBody(createCalender(document.getElementById('selectYear').value, this.selectedIndex, false));"
                                id="selectMonth">
                                <option value="0">January</option>
                                <option value="1">February</option>
                                <option value="2">March</option>
                                <option value="3">April</option>
                                <option value="4">May</option>
                                <option value="5">June</option>
                                <option value="6">July</option>
                                <option value="7">August</option>
                                <option value="8">September</option>
                                <option value="9">October</option>
                                <option value="10">November</option>
                                <option value="11">December</option>
                            </select>
                        </td>
                        <td colspan="2" align="center">
                            <select onchange="showCalenderBody(createCalender(this.value, document.getElementById('selectMonth').selectedIndex, false));"
                                id="selectYear">
                            </select>
                        </td>
                        <td align="right">
                            <a href="#" onclick="closeCalender();">X</a>
                        </td>
                    </tr>
                </tbody>
                <tbody id="calenderTableDays">
                    <tr style="">
                        <td>
                            Su
                        </td>
                        <td>
                            Mo
                        </td>
                        <td>
                            Tu
                        </td>
                        <td>
                            We
                        </td>
                        <td>
                            Thu
                        </td>
                        <td>
                            Fr
                        </td>
                        <td>
                            Sa
                        </td>
                    </tr>
                </tbody>
                <tbody id="calender">
                </tbody>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="updateProgress1" AssociatedUpdatePanelID="updatePanel1" runat="server">
        <ProgressTemplate>
            <div id="divup" class="divUpdateProgress">
                <table width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="divUpdateProgressHeading">
                            Please Wait ...
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img id="img2" src="Images/iconBusy.gif" alt="Loading....." />
                        </td>
                    </tr>
                </table>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .style2
        {
            height: 20px;
        }
    </style>
</asp:Content>
