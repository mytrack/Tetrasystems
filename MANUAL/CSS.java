<<CSS_STYLESHEET


CSS 

selector brace property value 
id class element
element with class  -> p.class


{ CSS Form }
------------------------------
input[type=text],select{}
input[type=submit]{}
input[type=submit]:hover{}
div{}

<div>
	<form action="action.php">
		<label for="fname">First Name</label>
		<input type="text" id="fname" name="firstname">
		<label for="lname">Last Name</label>
		<input type="text" id="lname" name="lastname">

		<label for="country">State</label>
		<select id="country" name="country">
			<option value="korea">Korea</option>
			<option value="korea">Korea</option>
		</select>

		<input type="submit" value="Submit">
	</form>
</div>		

query=====> firstname=Kim&lastname=Sungsoo&country=korea 로 서버로 넘어간다


CSS_STYLESHEET