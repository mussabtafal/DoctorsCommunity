<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  <link rel="stylesheet" type="text/css" href="/css/allPosts.css">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Posts page</title>
  </head>
  <body>
  	<div class="container-fluid">
  <div class="row">
       <div class="nav-container bg-secondary">
         <nav class="navbar navbar-expand-lg navbar-light">
           <div class="container-fluid">
           <a class="navbar-brand" href="/"><img alt="" src="/img/logoBLUE.jpg"  height="40px" style="border-radius: 7px;"></a>
             <button
               class="navbar-toggler"
               type="button"
               data-bs-toggle="collapse"
               data-bs-target="#navbarTogglerDemo02"
               aria-controls="navbarTogglerDemo02"
               aria-expanded="false"
               aria-label="Toggle navigation"
             >
               <span class="navbar-toggler-icon"></span>
             </button>
             <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
               <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                 <li class="nav-item">
                   <a class="nav-link active" aria-current="page" href="/"
                     >Home</a
                   >
                 </li>
                 <li class="nav-item">
                   <a class="nav-link" aria-current="page" href="#"
                     >Register</a
                   >
                 </li>
                 <li class="nav-item">
                   <a class="nav-link" aria-current="page" href="#">Section</a>
                 </li>
                 <li class="nav-item">
                   <a class="nav-link" aria-current="page" href="/#about"
                     >About us</a
                   >
                 </li>
               </ul>
               <form class="d-flex">
                 <input
                   class="form-control me-2"
                   type="search"
                   placeholder="Search"
                   aria-label="Search"
                 />
                 <button class="btn btn-primary" type="submit">
                   Search
                 </button>
               </form>
             </div>
           </div>
         </nav>
       </div>
     </div>
      <div class="row pt-5">
      		<h1>Doctor's Community</h1>
      		<h3>Welcome, <c:out value="${currentUser.username}"></c:out></h3>
      </div>
      <div class="row justify-content-between p-3">
      		<div class="col-8 overflow-auto border border-dark" style="height:600px; border-radius:10px;">
      		   	<c:forEach items="${posts}" var="post">
					<div class="m-3 p-2 overflow-auto" style="border:solid 2px LightGray; border-radius:15px; height: 150px;">
						<h3 class="text-start"><span style="font-size:15px; color:Gray;">Posted by:</span> <c:out value="${post.postUser.username}">
						</c:out> <span style="font-size:15px; color:Gray;">on <fmt:formatDate value="${post.createdAt}" type="date" pattern="dd-MMM-yyyy"/></span></h3>
						<p style="font-size:20px;"><c:out value="${post.description}"></c:out></p>
					</div>
					<div class="row text-end me-2">
						<a href="/posts/${post.id}"><button type="button" class="btn btn-outline-secondary">Advise</button></a>
					</div>
				</c:forEach>    
          	</div>
      		<div class="col-3 text-center" style="height:200px;">
	     	   <h5>Featured Categories</h5>
	           <a class="btn btn-primary mb-1" href="/category/Cardiac" role="button">link to Cardiac conditions</a>
	           <a class="btn btn-primary mb-1" href="/category/Respiratory" role="button">link to Respiratory conditions</a>
	           <a class="btn btn-primary mb-1" href="/category/gastrologic" role="button">link to gastrological conditions</a>
	           <a class="btn btn-primary mb-1" href="/category/Orthopedic" role="button">link to Orthopedic conditions</a>
	           <a class="btn btn-primary mb-1" href="/category/Genital " role="button">link to Genital conditions</a>
	           <a class="btn btn-primary mb-1" href="/category/Musculoskeletal" role="button">link to Musculoskeletal condtions</a>
	           <a class="btn btn-primary mb-1" href="/category/Dermatologic" role="button">link to Dermatological conditions</a>
	           <a class="btn btn-primary mb-1" href="/category/Urologic" role="button">link to Urological conditions</a>
      		</div>
       </div>
  	</div>
    <footer class="text-center text-lg-start text-white bg-secondary" >
                <!-- Grid container -->
                <div class="container p-4 pb-0">
                    <!-- Section: Links -->
                    <section class="">
                        <!--Grid row-->
                        <div class="row">
                            <!-- Grid column -->
                            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                                <h6 class="text-uppercase mb-4 font-weight-bold">
                                    Company name
                                </h6>
                                <p>
                                    Here you can use rows and columns to organize your footer
                                    content. Lorem ipsum dolor sit amet, consectetur adipisicing
                                    elit.
                                </p>
                            </div>
                            <!-- Grid column -->

                            <hr class="w-100 clearfix d-md-none" />

                            <!-- Grid column -->
                            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                                <h6 class="text-uppercase mb-4 font-weight-bold">Products</h6>
                                <p>
                                    <a class="text-white">MDBootstrap</a>
                                </p>
                                <p>
                                    <a class="text-white">MDWordPress</a>
                                </p>
                                <p>
                                    <a class="text-white">BrandFlow</a>
                                </p>
                                <p>
                                    <a class="text-white">Bootstrap Angular</a>
                                </p>
                            </div>
                            <!-- Grid column -->

                            <hr class="w-100 clearfix d-md-none" />

                            <!-- Grid column -->
                            <hr class="w-100 clearfix d-md-none" />

                            <!-- Grid column -->
                            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                                <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
                                <p><i class="fas fa-home mr-3"></i> Axsos Academy, NY 10012, US</p>
                                <p><i class="fas fa-envelope mr-3"></i> info@gmail.com</p>
                                <p><i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
                                <p><i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                 <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                     <h6 class="text-uppercase mb-4 font-weight-bold">Follow us</h6>

                     <!-- Facebook -->
                      <a class="btn btn-primary btn-floating m-1" style="background-color: black; href="#!"
                         role="button"><img alt="" src="/img/facebook-logo.jpg"  height="40px" style="border-radius: 7px;"></a>

                     <!-- Twitter -->
                       <a class="btn btn-primary btn-floating m-1" style="background-color: black; href="#!"
                         role="button"><img alt="" src="/img/Twitter.png"  height="40px" style="border-radius: 7px;"></a>


                     <!-- Linkedin -->
                     <a class="btn btn-primary btn-floating m-1" style="background-color: black; href="#!"
                         role="button"><img alt="" src="/img/linked.png"  height="40px" style="border-radius: 7px;"></a>
                     <!-- Github -->
                    <a class="btn btn-primary btn-floating m-1" style="background-color: black; href="#!"
                         role="button"><img alt="" src="/img/github.png"  height="40px" style="border-radius: 7px;"></a>
                 
                        </div>
                        <!--Grid row-->
                    </section>
                    <!-- Section: Links -->
                </div>
                <!-- Grid container -->

                <!-- Copyright -->
                <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
                    � 2020 Copyright:
                    <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
                </div>
                <!-- Copyright -->
            </footer>   		
  </body>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
</html>