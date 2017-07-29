<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FingerPrintRecognition.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   

<div>
    <table style="width:100%;">
        <tr>
           <td colspan="5" style=" text-align:center;" >Right Hand</td>
            <td colspan="5"  style="text-align:center;">Left Hand</td>
        </tr>
        
        <tr>

          <%--Right Hand--%>

          <%--Finger 1--%>               
            <td>
                <table>
                    <tr>
                        <td>Finger 1</td>
                    </tr>
                    <tr>
                        <td>
                            Type of print
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:DropDownList ID="FingerType1" runat="server" >                                
                                <asp:ListItem Value="1">WP</asp:ListItem>
                                <asp:ListItem Value="2">WU</asp:ListItem>
                                <asp:ListItem Value="3">WDS</asp:ListItem>
                                <asp:ListItem Value="4">WDSU</asp:ListItem>
                                <asp:ListItem Value="5">WD</asp:ListItem>
                                <asp:ListItem Value="6">WDU</asp:ListItem>
                                <asp:ListItem Value="7">WA</asp:ListItem>
                                <asp:ListItem Value="8">WLU</asp:ListItem>
                                <asp:ListItem Value="9">WAC</asp:ListItem>
                                <asp:ListItem Value="10">WDSC</asp:ListItem>
                                <asp:ListItem Value="11">WDSUC</asp:ListItem>
                                <asp:ListItem Value="12">WDC</asp:ListItem>
                                <asp:ListItem Value="13">WDUC</asp:ListItem>
                                <asp:ListItem Value="14">WLUC</asp:ListItem>
                                <asp:ListItem Value="15">WR</asp:ListItem>
                                <asp:ListItem Value="16">WDSR</asp:ListItem>
                                <asp:ListItem Value="17">WDR</asp:ListItem>
                                <asp:ListItem Value="18">WLR</asp:ListItem>
                                <asp:ListItem Value="19">WRC</asp:ListItem>
                                <asp:ListItem Value="20">WDSRC</asp:ListItem>
                                <asp:ListItem Value="21">WDRC</asp:ListItem>
                                <asp:ListItem Value="22">WLRC</asp:ListItem>
                                <asp:ListItem Value="23">LDVU</asp:ListItem>
                                <asp:ListItem Value="24">LDU</asp:ListItem>
                                <asp:ListItem Value="25">LVU</asp:ListItem>
                                <asp:ListItem Value="26">LU</asp:ListItem>
                                <asp:ListItem Value="27">LDVUC</asp:ListItem>
                                <asp:ListItem Value="28">LDUC</asp:ListItem>
                                <asp:ListItem Value="29">LVUC</asp:ListItem>
                                <asp:ListItem Value="30">LUC</asp:ListItem>
                                <asp:ListItem Value="31">LDVR</asp:ListItem>
                                <asp:ListItem Value="32">LDR</asp:ListItem>
                                <asp:ListItem Value="33">LVR</asp:ListItem>
                                <asp:ListItem Value="34">LR</asp:ListItem>
                                <asp:ListItem Value="35">LDVRC</asp:ListItem>
                                <asp:ListItem Value="36">LDRC</asp:ListItem>
                                <asp:ListItem Value="37">LVRC</asp:ListItem>
                                <asp:ListItem Value="38">LRC</asp:ListItem>
                                <asp:ListItem Value="39">LA</asp:ListItem>
                                <asp:ListItem Value="40">LAR</asp:ListItem>
                                <asp:ListItem Value="41">LAC</asp:ListItem>
                                <asp:ListItem Value="42">LARC</asp:ListItem>
                                <asp:ListItem Value="43">AT</asp:ListItem>
                                <asp:ListItem Value="44">A</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           Ridge Count
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="RidgeCount1" runat="server" Text="10"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Finger Strength
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="FingerStrength1" runat="server"  Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Total Score
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TotalScore1" runat="server" Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </td>
             
            
            <%--Finger 2--%>
             <td>
                <table>
                    <tr>
                        <td>Finger 2</td>
                    </tr>
                    <tr>
                        <td>
                            Type of print
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:DropDownList ID="FingerType2" runat="server">
                                <asp:ListItem Value="1">WP</asp:ListItem>
                                <asp:ListItem Value="2">WU</asp:ListItem>
                                <asp:ListItem Value="3">WDS</asp:ListItem>
                                <asp:ListItem Value="4">WDSU</asp:ListItem>
                                <asp:ListItem Value="5">WD</asp:ListItem>
                                <asp:ListItem Value="6">WDU</asp:ListItem>
                                <asp:ListItem Value="7">WA</asp:ListItem>
                                <asp:ListItem Value="8">WLU</asp:ListItem>
                                <asp:ListItem Value="9">WAC</asp:ListItem>
                                <asp:ListItem Value="10">WDSC</asp:ListItem>
                                <asp:ListItem Value="11">WDSUC</asp:ListItem>
                                <asp:ListItem Value="12">WDC</asp:ListItem>
                                <asp:ListItem Value="13">WDUC</asp:ListItem>
                                <asp:ListItem Value="14">WLUC</asp:ListItem>
                                <asp:ListItem Value="15">WR</asp:ListItem>
                                <asp:ListItem Value="16">WDSR</asp:ListItem>
                                <asp:ListItem Value="17">WDR</asp:ListItem>
                                <asp:ListItem Value="18">WLR</asp:ListItem>
                                <asp:ListItem Value="19">WRC</asp:ListItem>
                                <asp:ListItem Value="20">WDSRC</asp:ListItem>
                                <asp:ListItem Value="21">WDRC</asp:ListItem>
                                <asp:ListItem Value="22">WLRC</asp:ListItem>
                                <asp:ListItem Value="23">LDVU</asp:ListItem>
                                <asp:ListItem Value="24">LDU</asp:ListItem>
                                <asp:ListItem Value="25">LVU</asp:ListItem>
                                <asp:ListItem Value="26">LU</asp:ListItem>
                                <asp:ListItem Value="27">LDVUC</asp:ListItem>
                                <asp:ListItem Value="28">LDUC</asp:ListItem>
                                <asp:ListItem Value="29">LVUC</asp:ListItem>
                                <asp:ListItem Value="30">LUC</asp:ListItem>
                                <asp:ListItem Value="31">LDVR</asp:ListItem>
                                <asp:ListItem Value="32">LDR</asp:ListItem>
                                <asp:ListItem Value="33">LVR</asp:ListItem>
                                <asp:ListItem Value="34">LR</asp:ListItem>
                                <asp:ListItem Value="35">LDVRC</asp:ListItem>
                                <asp:ListItem Value="36">LDRC</asp:ListItem>
                                <asp:ListItem Value="37">LVRC</asp:ListItem>
                                <asp:ListItem Value="38">LRC</asp:ListItem>
                                <asp:ListItem Value="39">LA</asp:ListItem>
                                <asp:ListItem Value="40">LAR</asp:ListItem>
                                <asp:ListItem Value="41">LAC</asp:ListItem>
                                <asp:ListItem Value="42">LARC</asp:ListItem>
                                <asp:ListItem Value="43">AT</asp:ListItem>
                                <asp:ListItem Value="44">A</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           Ridge Count
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="RidgeCount2" runat="server" Text="10"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Finger Strength
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="FingerStrength2" runat="server"  Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Total Score
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TotalScore2" runat="server" Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </td> 
            
            <%--Finger 3--%>
             <td>
                <table>
                    <tr>
                        <td>Finger 3</td>
                    </tr>
                    <tr>
                        <td>
                            Type of print
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:DropDownList ID="FingerType3" runat="server">
                                <asp:ListItem Value="1">WP</asp:ListItem>
                                <asp:ListItem Value="2">WU</asp:ListItem>
                                <asp:ListItem Value="3">WDS</asp:ListItem>
                                <asp:ListItem Value="4">WDSU</asp:ListItem>
                                <asp:ListItem Value="5">WD</asp:ListItem>
                                <asp:ListItem Value="6">WDU</asp:ListItem>
                                <asp:ListItem Value="7">WA</asp:ListItem>
                                <asp:ListItem Value="8">WLU</asp:ListItem>
                                <asp:ListItem Value="9">WAC</asp:ListItem>
                                <asp:ListItem Value="10">WDSC</asp:ListItem>
                                <asp:ListItem Value="11">WDSUC</asp:ListItem>
                                <asp:ListItem Value="12">WDC</asp:ListItem>
                                <asp:ListItem Value="13">WDUC</asp:ListItem>
                                <asp:ListItem Value="14">WLUC</asp:ListItem>
                                <asp:ListItem Value="15">WR</asp:ListItem>
                                <asp:ListItem Value="16">WDSR</asp:ListItem>
                                <asp:ListItem Value="17">WDR</asp:ListItem>
                                <asp:ListItem Value="18">WLR</asp:ListItem>
                                <asp:ListItem Value="19">WRC</asp:ListItem>
                                <asp:ListItem Value="20">WDSRC</asp:ListItem>
                                <asp:ListItem Value="21">WDRC</asp:ListItem>
                                <asp:ListItem Value="22">WLRC</asp:ListItem>
                                <asp:ListItem Value="23">LDVU</asp:ListItem>
                                <asp:ListItem Value="24">LDU</asp:ListItem>
                                <asp:ListItem Value="25">LVU</asp:ListItem>
                                <asp:ListItem Value="26">LU</asp:ListItem>
                                <asp:ListItem Value="27">LDVUC</asp:ListItem>
                                <asp:ListItem Value="28">LDUC</asp:ListItem>
                                <asp:ListItem Value="29">LVUC</asp:ListItem>
                                <asp:ListItem Value="30">LUC</asp:ListItem>
                                <asp:ListItem Value="31">LDVR</asp:ListItem>
                                <asp:ListItem Value="32">LDR</asp:ListItem>
                                <asp:ListItem Value="33">LVR</asp:ListItem>
                                <asp:ListItem Value="34">LR</asp:ListItem>
                                <asp:ListItem Value="35">LDVRC</asp:ListItem>
                                <asp:ListItem Value="36">LDRC</asp:ListItem>
                                <asp:ListItem Value="37">LVRC</asp:ListItem>
                                <asp:ListItem Value="38">LRC</asp:ListItem>
                                <asp:ListItem Value="39">LA</asp:ListItem>
                                <asp:ListItem Value="40">LAR</asp:ListItem>
                                <asp:ListItem Value="41">LAC</asp:ListItem>
                                <asp:ListItem Value="42">LARC</asp:ListItem>
                                <asp:ListItem Value="43">AT</asp:ListItem>
                                <asp:ListItem Value="44">A</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           Ridge Count
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="RidgeCount3" runat="server" Text="10"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Finger Strength
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="FingerStrength3" runat="server"  Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Total Score
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TotalScore3" runat="server" Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </td>

            <%--Finger 4--%>
             <td>
                <table>
                    <tr>
                        <td>Finger 4</td>
                    </tr>
                    <tr>
                        <td>
                            Type of print
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:DropDownList ID="FingerType4" runat="server">
                                <asp:ListItem Value="1">WP</asp:ListItem>
                                <asp:ListItem Value="2">WU</asp:ListItem>
                                <asp:ListItem Value="3">WDS</asp:ListItem>
                                <asp:ListItem Value="4">WDSU</asp:ListItem>
                                <asp:ListItem Value="5">WD</asp:ListItem>
                                <asp:ListItem Value="6">WDU</asp:ListItem>
                                <asp:ListItem Value="7">WA</asp:ListItem>
                                <asp:ListItem Value="8">WLU</asp:ListItem>
                                <asp:ListItem Value="9">WAC</asp:ListItem>
                                <asp:ListItem Value="10">WDSC</asp:ListItem>
                                <asp:ListItem Value="11">WDSUC</asp:ListItem>
                                <asp:ListItem Value="12">WDC</asp:ListItem>
                                <asp:ListItem Value="13">WDUC</asp:ListItem>
                                <asp:ListItem Value="14">WLUC</asp:ListItem>
                                <asp:ListItem Value="15">WR</asp:ListItem>
                                <asp:ListItem Value="16">WDSR</asp:ListItem>
                                <asp:ListItem Value="17">WDR</asp:ListItem>
                                <asp:ListItem Value="18">WLR</asp:ListItem>
                                <asp:ListItem Value="19">WRC</asp:ListItem>
                                <asp:ListItem Value="20">WDSRC</asp:ListItem>
                                <asp:ListItem Value="21">WDRC</asp:ListItem>
                                <asp:ListItem Value="22">WLRC</asp:ListItem>
                                <asp:ListItem Value="23">LDVU</asp:ListItem>
                                <asp:ListItem Value="24">LDU</asp:ListItem>
                                <asp:ListItem Value="25">LVU</asp:ListItem>
                                <asp:ListItem Value="26">LU</asp:ListItem>
                                <asp:ListItem Value="27">LDVUC</asp:ListItem>
                                <asp:ListItem Value="28">LDUC</asp:ListItem>
                                <asp:ListItem Value="29">LVUC</asp:ListItem>
                                <asp:ListItem Value="30">LUC</asp:ListItem>
                                <asp:ListItem Value="31">LDVR</asp:ListItem>
                                <asp:ListItem Value="32">LDR</asp:ListItem>
                                <asp:ListItem Value="33">LVR</asp:ListItem>
                                <asp:ListItem Value="34">LR</asp:ListItem>
                                <asp:ListItem Value="35">LDVRC</asp:ListItem>
                                <asp:ListItem Value="36">LDRC</asp:ListItem>
                                <asp:ListItem Value="37">LVRC</asp:ListItem>
                                <asp:ListItem Value="38">LRC</asp:ListItem>
                                <asp:ListItem Value="39">LA</asp:ListItem>
                                <asp:ListItem Value="40">LAR</asp:ListItem>
                                <asp:ListItem Value="41">LAC</asp:ListItem>
                                <asp:ListItem Value="42">LARC</asp:ListItem>
                                <asp:ListItem Value="43">AT</asp:ListItem>
                                <asp:ListItem Value="44">A</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           Ridge Count
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="RidgeCount4" runat="server" Text="10"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Finger Strength
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="FingerStrength4" runat="server"  Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Total Score
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TotalScore4" runat="server" Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </td>

            <%--Finger 5--%>
             <td>
                <table>
                    <tr>
                        <td>Finger 5</td>
                    </tr>
                    <tr>
                        <td>
                            Type of print
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:DropDownList ID="FingerType5" runat="server">
                                <asp:ListItem Value="1">WP</asp:ListItem>
                                <asp:ListItem Value="2">WU</asp:ListItem>
                                <asp:ListItem Value="3">WDS</asp:ListItem>
                                <asp:ListItem Value="4">WDSU</asp:ListItem>
                                <asp:ListItem Value="5">WD</asp:ListItem>
                                <asp:ListItem Value="6">WDU</asp:ListItem>
                                <asp:ListItem Value="7">WA</asp:ListItem>
                                <asp:ListItem Value="8">WLU</asp:ListItem>
                                <asp:ListItem Value="9">WAC</asp:ListItem>
                                <asp:ListItem Value="10">WDSC</asp:ListItem>
                                <asp:ListItem Value="11">WDSUC</asp:ListItem>
                                <asp:ListItem Value="12">WDC</asp:ListItem>
                                <asp:ListItem Value="13">WDUC</asp:ListItem>
                                <asp:ListItem Value="14">WLUC</asp:ListItem>
                                <asp:ListItem Value="15">WR</asp:ListItem>
                                <asp:ListItem Value="16">WDSR</asp:ListItem>
                                <asp:ListItem Value="17">WDR</asp:ListItem>
                                <asp:ListItem Value="18">WLR</asp:ListItem>
                                <asp:ListItem Value="19">WRC</asp:ListItem>
                                <asp:ListItem Value="20">WDSRC</asp:ListItem>
                                <asp:ListItem Value="21">WDRC</asp:ListItem>
                                <asp:ListItem Value="22">WLRC</asp:ListItem>
                                <asp:ListItem Value="23">LDVU</asp:ListItem>
                                <asp:ListItem Value="24">LDU</asp:ListItem>
                                <asp:ListItem Value="25">LVU</asp:ListItem>
                                <asp:ListItem Value="26">LU</asp:ListItem>
                                <asp:ListItem Value="27">LDVUC</asp:ListItem>
                                <asp:ListItem Value="28">LDUC</asp:ListItem>
                                <asp:ListItem Value="29">LVUC</asp:ListItem>
                                <asp:ListItem Value="30">LUC</asp:ListItem>
                                <asp:ListItem Value="31">LDVR</asp:ListItem>
                                <asp:ListItem Value="32">LDR</asp:ListItem>
                                <asp:ListItem Value="33">LVR</asp:ListItem>
                                <asp:ListItem Value="34">LR</asp:ListItem>
                                <asp:ListItem Value="35">LDVRC</asp:ListItem>
                                <asp:ListItem Value="36">LDRC</asp:ListItem>
                                <asp:ListItem Value="37">LVRC</asp:ListItem>
                                <asp:ListItem Value="38">LRC</asp:ListItem>
                                <asp:ListItem Value="39">LA</asp:ListItem>
                                <asp:ListItem Value="40">LAR</asp:ListItem>
                                <asp:ListItem Value="41">LAC</asp:ListItem>
                                <asp:ListItem Value="42">LARC</asp:ListItem>
                                <asp:ListItem Value="43">AT</asp:ListItem>
                                <asp:ListItem Value="44">A</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           Ridge Count
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="RidgeCount5" runat="server" Text="10"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Finger Strength
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="FingerStrength5" runat="server"  Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Total Score
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TotalScore5" runat="server" Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </td>

            <%--Left Hand--%>
            <%--Finger 6--%>               
            <td>
                <table>
                    <tr>
                        <td>Finger 1</td>
                    </tr>
                    <tr>
                        <td>
                            Type of print
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:DropDownList ID="FingerType6" runat="server" >                                
                                <asp:ListItem Value="1">WP</asp:ListItem>
                                <asp:ListItem Value="2">WU</asp:ListItem>
                                <asp:ListItem Value="3">WDS</asp:ListItem>
                                <asp:ListItem Value="4">WDSU</asp:ListItem>
                                <asp:ListItem Value="5">WD</asp:ListItem>
                                <asp:ListItem Value="6">WDU</asp:ListItem>
                                <asp:ListItem Value="7">WA</asp:ListItem>
                                <asp:ListItem Value="8">WLU</asp:ListItem>
                                <asp:ListItem Value="9">WAC</asp:ListItem>
                                <asp:ListItem Value="10">WDSC</asp:ListItem>
                                <asp:ListItem Value="11">WDSUC</asp:ListItem>
                                <asp:ListItem Value="12">WDC</asp:ListItem>
                                <asp:ListItem Value="13">WDUC</asp:ListItem>
                                <asp:ListItem Value="14">WLUC</asp:ListItem>
                                <asp:ListItem Value="15">WR</asp:ListItem>
                                <asp:ListItem Value="16">WDSR</asp:ListItem>
                                <asp:ListItem Value="17">WDR</asp:ListItem>
                                <asp:ListItem Value="18">WLR</asp:ListItem>
                                <asp:ListItem Value="19">WRC</asp:ListItem>
                                <asp:ListItem Value="20">WDSRC</asp:ListItem>
                                <asp:ListItem Value="21">WDRC</asp:ListItem>
                                <asp:ListItem Value="22">WLRC</asp:ListItem>
                                <asp:ListItem Value="23">LDVU</asp:ListItem>
                                <asp:ListItem Value="24">LDU</asp:ListItem>
                                <asp:ListItem Value="25">LVU</asp:ListItem>
                                <asp:ListItem Value="26">LU</asp:ListItem>
                                <asp:ListItem Value="27">LDVUC</asp:ListItem>
                                <asp:ListItem Value="28">LDUC</asp:ListItem>
                                <asp:ListItem Value="29">LVUC</asp:ListItem>
                                <asp:ListItem Value="30">LUC</asp:ListItem>
                                <asp:ListItem Value="31">LDVR</asp:ListItem>
                                <asp:ListItem Value="32">LDR</asp:ListItem>
                                <asp:ListItem Value="33">LVR</asp:ListItem>
                                <asp:ListItem Value="34">LR</asp:ListItem>
                                <asp:ListItem Value="35">LDVRC</asp:ListItem>
                                <asp:ListItem Value="36">LDRC</asp:ListItem>
                                <asp:ListItem Value="37">LVRC</asp:ListItem>
                                <asp:ListItem Value="38">LRC</asp:ListItem>
                                <asp:ListItem Value="39">LA</asp:ListItem>
                                <asp:ListItem Value="40">LAR</asp:ListItem>
                                <asp:ListItem Value="41">LAC</asp:ListItem>
                                <asp:ListItem Value="42">LARC</asp:ListItem>
                                <asp:ListItem Value="43">AT</asp:ListItem>
                                <asp:ListItem Value="44">A</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           Ridge Count
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="RidgeCount6" runat="server" Text="10"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Finger Strength
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="FingerStrength6" runat="server"  Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Total Score
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TotalScore6" runat="server" Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </td>
             
            
            <%--Finger 7--%>
             <td>
                <table>
                    <tr>
                        <td>Finger 2</td>
                    </tr>
                    <tr>
                        <td>
                            Type of print
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:DropDownList ID="FingerType7" runat="server">
                                <asp:ListItem Value="1">WP</asp:ListItem>
                                <asp:ListItem Value="2">WU</asp:ListItem>
                                <asp:ListItem Value="3">WDS</asp:ListItem>
                                <asp:ListItem Value="4">WDSU</asp:ListItem>
                                <asp:ListItem Value="5">WD</asp:ListItem>
                                <asp:ListItem Value="6">WDU</asp:ListItem>
                                <asp:ListItem Value="7">WA</asp:ListItem>
                                <asp:ListItem Value="8">WLU</asp:ListItem>
                                <asp:ListItem Value="9">WAC</asp:ListItem>
                                <asp:ListItem Value="10">WDSC</asp:ListItem>
                                <asp:ListItem Value="11">WDSUC</asp:ListItem>
                                <asp:ListItem Value="12">WDC</asp:ListItem>
                                <asp:ListItem Value="13">WDUC</asp:ListItem>
                                <asp:ListItem Value="14">WLUC</asp:ListItem>
                                <asp:ListItem Value="15">WR</asp:ListItem>
                                <asp:ListItem Value="16">WDSR</asp:ListItem>
                                <asp:ListItem Value="17">WDR</asp:ListItem>
                                <asp:ListItem Value="18">WLR</asp:ListItem>
                                <asp:ListItem Value="19">WRC</asp:ListItem>
                                <asp:ListItem Value="20">WDSRC</asp:ListItem>
                                <asp:ListItem Value="21">WDRC</asp:ListItem>
                                <asp:ListItem Value="22">WLRC</asp:ListItem>
                                <asp:ListItem Value="23">LDVU</asp:ListItem>
                                <asp:ListItem Value="24">LDU</asp:ListItem>
                                <asp:ListItem Value="25">LVU</asp:ListItem>
                                <asp:ListItem Value="26">LU</asp:ListItem>
                                <asp:ListItem Value="27">LDVUC</asp:ListItem>
                                <asp:ListItem Value="28">LDUC</asp:ListItem>
                                <asp:ListItem Value="29">LVUC</asp:ListItem>
                                <asp:ListItem Value="30">LUC</asp:ListItem>
                                <asp:ListItem Value="31">LDVR</asp:ListItem>
                                <asp:ListItem Value="32">LDR</asp:ListItem>
                                <asp:ListItem Value="33">LVR</asp:ListItem>
                                <asp:ListItem Value="34">LR</asp:ListItem>
                                <asp:ListItem Value="35">LDVRC</asp:ListItem>
                                <asp:ListItem Value="36">LDRC</asp:ListItem>
                                <asp:ListItem Value="37">LVRC</asp:ListItem>
                                <asp:ListItem Value="38">LRC</asp:ListItem>
                                <asp:ListItem Value="39">LA</asp:ListItem>
                                <asp:ListItem Value="40">LAR</asp:ListItem>
                                <asp:ListItem Value="41">LAC</asp:ListItem>
                                <asp:ListItem Value="42">LARC</asp:ListItem>
                                <asp:ListItem Value="43">AT</asp:ListItem>
                                <asp:ListItem Value="44">A</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           Ridge Count
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="RidgeCount7" runat="server" Text="10"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Finger Strength
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="FingerStrength7" runat="server"  Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Total Score
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TotalScore7" runat="server" Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </td> 
            
            <%--Finger 8--%>
             <td>
                <table>
                    <tr>
                        <td>Finger 3</td>
                    </tr>
                    <tr>
                        <td>
                            Type of print
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:DropDownList ID="FingerType8" runat="server">
                                <asp:ListItem Value="1">WP</asp:ListItem>
                                <asp:ListItem Value="2">WU</asp:ListItem>
                                <asp:ListItem Value="3">WDS</asp:ListItem>
                                <asp:ListItem Value="4">WDSU</asp:ListItem>
                                <asp:ListItem Value="5">WD</asp:ListItem>
                                <asp:ListItem Value="6">WDU</asp:ListItem>
                                <asp:ListItem Value="7">WA</asp:ListItem>
                                <asp:ListItem Value="8">WLU</asp:ListItem>
                                <asp:ListItem Value="9">WAC</asp:ListItem>
                                <asp:ListItem Value="10">WDSC</asp:ListItem>
                                <asp:ListItem Value="11">WDSUC</asp:ListItem>
                                <asp:ListItem Value="12">WDC</asp:ListItem>
                                <asp:ListItem Value="13">WDUC</asp:ListItem>
                                <asp:ListItem Value="14">WLUC</asp:ListItem>
                                <asp:ListItem Value="15">WR</asp:ListItem>
                                <asp:ListItem Value="16">WDSR</asp:ListItem>
                                <asp:ListItem Value="17">WDR</asp:ListItem>
                                <asp:ListItem Value="18">WLR</asp:ListItem>
                                <asp:ListItem Value="19">WRC</asp:ListItem>
                                <asp:ListItem Value="20">WDSRC</asp:ListItem>
                                <asp:ListItem Value="21">WDRC</asp:ListItem>
                                <asp:ListItem Value="22">WLRC</asp:ListItem>
                                <asp:ListItem Value="23">LDVU</asp:ListItem>
                                <asp:ListItem Value="24">LDU</asp:ListItem>
                                <asp:ListItem Value="25">LVU</asp:ListItem>
                                <asp:ListItem Value="26">LU</asp:ListItem>
                                <asp:ListItem Value="27">LDVUC</asp:ListItem>
                                <asp:ListItem Value="28">LDUC</asp:ListItem>
                                <asp:ListItem Value="29">LVUC</asp:ListItem>
                                <asp:ListItem Value="30">LUC</asp:ListItem>
                                <asp:ListItem Value="31">LDVR</asp:ListItem>
                                <asp:ListItem Value="32">LDR</asp:ListItem>
                                <asp:ListItem Value="33">LVR</asp:ListItem>
                                <asp:ListItem Value="34">LR</asp:ListItem>
                                <asp:ListItem Value="35">LDVRC</asp:ListItem>
                                <asp:ListItem Value="36">LDRC</asp:ListItem>
                                <asp:ListItem Value="37">LVRC</asp:ListItem>
                                <asp:ListItem Value="38">LRC</asp:ListItem>
                                <asp:ListItem Value="39">LA</asp:ListItem>
                                <asp:ListItem Value="40">LAR</asp:ListItem>
                                <asp:ListItem Value="41">LAC</asp:ListItem>
                                <asp:ListItem Value="42">LARC</asp:ListItem>
                                <asp:ListItem Value="43">AT</asp:ListItem>
                                <asp:ListItem Value="44">A</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           Ridge Count
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="RidgeCount8" runat="server" Text="10"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Finger Strength
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="FingerStrength8" runat="server"  Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Total Score
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TotalScore8" runat="server" Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </td>

            <%--Finger 9--%>
             <td>
                <table>
                    <tr>
                        <td>Finger 4</td>
                    </tr>
                    <tr>
                        <td>
                            Type of print
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:DropDownList ID="FingerType9" runat="server">
                                <asp:ListItem Value="1">WP</asp:ListItem>
                                <asp:ListItem Value="2">WU</asp:ListItem>
                                <asp:ListItem Value="3">WDS</asp:ListItem>
                                <asp:ListItem Value="4">WDSU</asp:ListItem>
                                <asp:ListItem Value="5">WD</asp:ListItem>
                                <asp:ListItem Value="6">WDU</asp:ListItem>
                                <asp:ListItem Value="7">WA</asp:ListItem>
                                <asp:ListItem Value="8">WLU</asp:ListItem>
                                <asp:ListItem Value="9">WAC</asp:ListItem>
                                <asp:ListItem Value="10">WDSC</asp:ListItem>
                                <asp:ListItem Value="11">WDSUC</asp:ListItem>
                                <asp:ListItem Value="12">WDC</asp:ListItem>
                                <asp:ListItem Value="13">WDUC</asp:ListItem>
                                <asp:ListItem Value="14">WLUC</asp:ListItem>
                                <asp:ListItem Value="15">WR</asp:ListItem>
                                <asp:ListItem Value="16">WDSR</asp:ListItem>
                                <asp:ListItem Value="17">WDR</asp:ListItem>
                                <asp:ListItem Value="18">WLR</asp:ListItem>
                                <asp:ListItem Value="19">WRC</asp:ListItem>
                                <asp:ListItem Value="20">WDSRC</asp:ListItem>
                                <asp:ListItem Value="21">WDRC</asp:ListItem>
                                <asp:ListItem Value="22">WLRC</asp:ListItem>
                                <asp:ListItem Value="23">LDVU</asp:ListItem>
                                <asp:ListItem Value="24">LDU</asp:ListItem>
                                <asp:ListItem Value="25">LVU</asp:ListItem>
                                <asp:ListItem Value="26">LU</asp:ListItem>
                                <asp:ListItem Value="27">LDVUC</asp:ListItem>
                                <asp:ListItem Value="28">LDUC</asp:ListItem>
                                <asp:ListItem Value="29">LVUC</asp:ListItem>
                                <asp:ListItem Value="30">LUC</asp:ListItem>
                                <asp:ListItem Value="31">LDVR</asp:ListItem>
                                <asp:ListItem Value="32">LDR</asp:ListItem>
                                <asp:ListItem Value="33">LVR</asp:ListItem>
                                <asp:ListItem Value="34">LR</asp:ListItem>
                                <asp:ListItem Value="35">LDVRC</asp:ListItem>
                                <asp:ListItem Value="36">LDRC</asp:ListItem>
                                <asp:ListItem Value="37">LVRC</asp:ListItem>
                                <asp:ListItem Value="38">LRC</asp:ListItem>
                                <asp:ListItem Value="39">LA</asp:ListItem>
                                <asp:ListItem Value="40">LAR</asp:ListItem>
                                <asp:ListItem Value="41">LAC</asp:ListItem>
                                <asp:ListItem Value="42">LARC</asp:ListItem>
                                <asp:ListItem Value="43">AT</asp:ListItem>
                                <asp:ListItem Value="44">A</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           Ridge Count
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="RidgeCount9" runat="server" Text="10"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Finger Strength
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="FingerStrength9" runat="server"  Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Total Score
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TotalScore9" runat="server" Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </td>

            <%--Finger 10--%>
             <td>
                <table>
                    <tr>
                        <td>Finger 5</td>
                    </tr>
                    <tr>
                        <td>
                            Type of print
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:DropDownList ID="FingerType10" runat="server">
                                <asp:ListItem Value="1">WP</asp:ListItem>
                                <asp:ListItem Value="2">WU</asp:ListItem>
                                <asp:ListItem Value="3">WDS</asp:ListItem>
                                <asp:ListItem Value="4">WDSU</asp:ListItem>
                                <asp:ListItem Value="5">WD</asp:ListItem>
                                <asp:ListItem Value="6">WDU</asp:ListItem>
                                <asp:ListItem Value="7">WA</asp:ListItem>
                                <asp:ListItem Value="8">WLU</asp:ListItem>
                                <asp:ListItem Value="9">WAC</asp:ListItem>
                                <asp:ListItem Value="10">WDSC</asp:ListItem>
                                <asp:ListItem Value="11">WDSUC</asp:ListItem>
                                <asp:ListItem Value="12">WDC</asp:ListItem>
                                <asp:ListItem Value="13">WDUC</asp:ListItem>
                                <asp:ListItem Value="14">WLUC</asp:ListItem>
                                <asp:ListItem Value="15">WR</asp:ListItem>
                                <asp:ListItem Value="16">WDSR</asp:ListItem>
                                <asp:ListItem Value="17">WDR</asp:ListItem>
                                <asp:ListItem Value="18">WLR</asp:ListItem>
                                <asp:ListItem Value="19">WRC</asp:ListItem>
                                <asp:ListItem Value="20">WDSRC</asp:ListItem>
                                <asp:ListItem Value="21">WDRC</asp:ListItem>
                                <asp:ListItem Value="22">WLRC</asp:ListItem>
                                <asp:ListItem Value="23">LDVU</asp:ListItem>
                                <asp:ListItem Value="24">LDU</asp:ListItem>
                                <asp:ListItem Value="25">LVU</asp:ListItem>
                                <asp:ListItem Value="26">LU</asp:ListItem>
                                <asp:ListItem Value="27">LDVUC</asp:ListItem>
                                <asp:ListItem Value="28">LDUC</asp:ListItem>
                                <asp:ListItem Value="29">LVUC</asp:ListItem>
                                <asp:ListItem Value="30">LUC</asp:ListItem>
                                <asp:ListItem Value="31">LDVR</asp:ListItem>
                                <asp:ListItem Value="32">LDR</asp:ListItem>
                                <asp:ListItem Value="33">LVR</asp:ListItem>
                                <asp:ListItem Value="34">LR</asp:ListItem>
                                <asp:ListItem Value="35">LDVRC</asp:ListItem>
                                <asp:ListItem Value="36">LDRC</asp:ListItem>
                                <asp:ListItem Value="37">LVRC</asp:ListItem>
                                <asp:ListItem Value="38">LRC</asp:ListItem>
                                <asp:ListItem Value="39">LA</asp:ListItem>
                                <asp:ListItem Value="40">LAR</asp:ListItem>
                                <asp:ListItem Value="41">LAC</asp:ListItem>
                                <asp:ListItem Value="42">LARC</asp:ListItem>
                                <asp:ListItem Value="43">AT</asp:ListItem>
                                <asp:ListItem Value="44">A</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           Ridge Count
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="RidgeCount10" runat="server" Text="10"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Finger Strength
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="FingerStrength10" runat="server"  Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                           Total Score
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TotalScore10" runat="server" Text="NA" BorderStyle="None"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </td>


                 
        </tr>
    </table>

</div>
<center>
<div> <asp:Button ID="CalculateBTN" runat="server" Text="Calculate" OnClick="CalculateBTN_Click" /></div>
</center>
    </form>
</body>
</html>
