<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Welcome Admin</title>
</head>
<style>
     .formPopup {
        display: none;
        margin-top: 100px;
        margin-bottom: 100px;
        margin-right: 150px;
        margin-left: 80px;
        Padding-top: 100px;
        Padding-bottom: 100px;
        Padding-right: 150px;
        Padding-left: 80px;
        background-color: lightblue;
     }
     
     header{
    position: fixed;
    top:0; left: 0; right:0;
    background: #fff;
    padding:1rem 7%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    z-index: 1000;
    box-shadow: var(--box-shadow);
	}
	
	header .navbar a{
	    font-size: 1.7rem;
	    border-radius: .5rem;
	    padding:.5rem 1.5rem;
	    color:var(--light-color);
	}
	
	header .navbar a.active,
	header .navbar a:hover{
	    color:#fff;
	    background: var(--green);
	}
	
	header> nav> a {
		text-decoration: none;
		
	}
	header > nav> a{
		margin-left:5px;
	}
	
	
	form {
  width: 350px;
  position: relative;
}
form .form-field::before {
  font-size: 20px;
  position: absolute;
  left: 15px;
  top: 17px;
  color: #888888;
  content: " ";
  display: block;
  background-size: cover;
  background-repeat: no-repeat;
}

form .form-field {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  margin-bottom: 1rem;
  position: relative;
}
form input {
  font-family: inherit;
  width: 100%;
  outline: none;
  background-color: #fff;
  border-radius: 4px;
  border: none;
  display: block;
  padding: 0.9rem 0.7rem;
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
  font-size: 17px;
  color: #4A4A4A;
  text-indent: 40px;
}
form .btn {
  outline: none;
  border: none;
  cursor: pointer;
  display: inline-block;
  margin: 0 auto;
  padding: 0.9rem 2.5rem;
  text-align: center;
  background-color: #47AB11;
  color: #fff;
  border-radius: 4px;
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
  font-size: 17px;
}
</style>
<body>
		<header>
            <nav class="navbar"> 
                <a class="active" href="#home">Home</a>
                <a onclick="openForm()"  href="#">Add Store</a>
                <a onclick="openFormModify()"  href="#">Modify Store</a>
                <a href="./ViewStoreList.jsp">View</a>
            </nav>
        </header>
 	
 	

    <div class="formPopup" id="popupForm">
        <form action =" ./addstore" method="post">
            <div class="form-field">
                    <input type="text" name="storename" placeholder="Store Name" required>
                  </div>
                
                  <div class="form-field">
                    <input type="text" name="storeaddress" placeholder="Store Address" required>
                  </div>

                  <div class="form-field">
                    <input type="text" name="phone" placeholder="Phone Number" required>
                  </div>               
                 
                  <div class="form-field">
                    <button type="submit" class="btn btn-primary">Submit</button>
                   <button class="btn btn-primary" onclick="closeForm()">Close</button>
                  </div>
        </form>
    </div>


    <div class="formPopup" id="popupFormModify">
        <form action="./ModifyStore" method="get">
            <div class="form-field">
                       <input type="text" name="id" placeholder="Store ID" required>
                   </div>
                    <div class="form-field">
                        <button type="submit" class="btn btn-primary" onclick="openFormMod()">Search</button>
                        <button class="btn btn-primary" onclick="closeFormModify()">Close</button>
                    </div>
        </form>
    </div>

    <div class="formPopup" id="popupFormMod">
        <form >
            <div class="form-field">
                    <input type="text" name="storename" placeholder="Store Name" required>
                  </div>
                
                  <div class="form-field">
                    <input type="text" name="storeaddress" placeholder="Store Address" required>
                  </div>

                  <div class="form-field">
                    <input type="text" name="phone" placeholder="Phone Number" required>
                  </div> 
                  <div class="form-field">
                   <button type="submit" class="btn btn-primary">Submit</button>
                   <button class="btn btn-primary" onclick="closeFormMod()">Close</button>
                    </div>
        </form>
    </div>
</body>
<script >
    function openForm() {
        document.getElementById("popupForm").style.display = "block";
        document.getElementById("popupFormModify").style.display = "none";
      }
      function closeForm() {
        document.getElementById("popupForm").style.display = "none";
      }


      function openFormModify() {
        document.getElementById("popupFormModify").style.display = "block";
        document.getElementById("popupForm").style.display = "none";
      }
      function closeFormModify() {
        document.getElementById("popupFormModify").style.display = "none";
      }
      
      function openFormMod() {
        document.getElementById("popupFormMod").style.display = "block";
        document.getElementById("popupFormModify").style.display = "none";
      }
      function closeFormMod() {
        document.getElementById("popupFormMod").style.display = "none";
        
      }
      

</script>


</html>