<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="icon" href="../images/people.png" />
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="../fonts/icomoon/style.css" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/login.bootstrap.min.css" />

    <!-- Style -->
    <link rel="stylesheet" href="assets/css/login.style.css" />

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
    />

    <title>Kitchen Basket</title>
  </head>
  <body style="overflow: hidden;">
    <div class="content" style="height: 93vh">
      <h3>
        Welcome to <span style="font-weight: 700">Kitchen Basket</span> 
      </h3>
      <div class="container">
        <div class="row">
          <div class="col-md-6 order-md-2">
            <img
              src="assets/img/vegetable.jpg"
              alt="Image"
              class="img-fluid"
            />
          </div>
          <div class="col-md-6 contents">
            <div class="row justify-content-center">
              <div class="col-md-8">
                <div class="mb-4">
                  <h3>Log In to <strong> Admin</strong></h3>
                </div>
                <form action="loginServer" method="post">
                  <div class="form-group first">
                    <label for="username">Username</label>
                    <input name="username" type="text" class="form-control" id="username" />
                  </div>
                  <div class="form-group last mb-4">
                    <label for="password">Password</label>
                    <input
                    name="password"
                      type="password"
                      class="form-control"
                      id="id_password"
                    />
                    <i
                      class="far fa-eye-slash"
                      id="togglePassword"
                      style="
                        display: flex;
                        float: right;
                        margin-top: -35px;
                        position: relative;
                      "
                    ></i>
                  </div>
                  <input
                    type="submit"
                    value="Login"
                    class="btn text-white btn-block btn-primary"
                    style="background-color: #3ac162; border-color: #3ac162"
                  />
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer
        style="
          display: flex;
          justify-content: center;
          position: sticky;
          background-color: #3ac162;
          padding: 10px 10px;
          bottom: 0;
        "
      >
        @Copyright | Kitchen Basket | 2022- All Right Reserved.
      </footer>
    </div>

    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/login.main.js"></script>
    <script src="assets/js/show-fun.js"></script>
  </body>
</html>
