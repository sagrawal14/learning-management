
 <table>
     <tr>
         <th>first name</th>
         <th> last name</th>
         <th> age</th>
     </tr>
<g:each var="user" in="${allCreatedUsers}">

    <tr>
        <td>${user.myFirstName}</td>
        <td>${user.myLastName}</td>
        <td>(${user.myAge})<td>
    </tr>
</g:each>
</table>