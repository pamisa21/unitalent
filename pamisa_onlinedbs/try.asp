If Not rs.EOF Then
        Response.Write("<table>")
        Response.Write("<tr>")
        For Each x In rs.Fields
            Response.Write("<th>" & x.Name & "</th>")
        Next
        Response.Write("</tr>")
        Do While Not rs.EOF
            Response.Write("<tr>")
            For Each x In rs.Fields
                Response.Write("<td>" & x.Value & "</td>")
            Next
            Response.Write("</tr>")
            rs.MoveNext
        Loop
        Response.Write("</table>")
    Else
        Response.Write("No data found.")
    End If
    rs.Close
    Set rs = Nothing
    
    Set conn = Nothing