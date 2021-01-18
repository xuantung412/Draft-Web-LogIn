<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegisterDraft.aspx.cs" Inherits="Draft_Web_LogIn.UserRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <html">

    <meta charset="UTF-8">
    <title>Register Tweetworldtravel</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  
     <nav class="navbar navbar-expand-lg" style="background-color: #2a3c58">
        <div class="container">
            <a class="navbar-brand" href="https://demo.tkgplatform.com.au/login"> <img class="logo" src="images/logo.png" style="width: 75%;"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar1" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

   <form method="POST" action="https://demo.tkgplatform.com.au/register" accept-charset="UTF-8"><input name="_token" type="hidden" value="P66sxNQ891oDQUdIPRcURq2j6xA3ixrAt2WKLs5Y">
<div class="wrapper-box-twt">
      <!-- <section class="" style="background-color: #efefef"> -->

        <div class="container login-form-margin">
          <div class="row">
            <div class="col-lg-12 mx-auto box-login-twt">
              <div class="wrapper-box p-3">
   
                <h4 class="">AGENCY DETAILS</h4>
                <div class="row justify-content-center pt-3" style="background: url(images/site/shadow-2.png?v1) 50% 0 no-repeat;">
                  <div class="media-container-column col-lg-12">
                    <div class="row">
                      <div class="col">
                        <div class="row">
                          <div class="col-md-4 col-sm-12">                
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Company Name*
                              </label>
                              <input class="form-control" type="text" required="" name="companyname" id="companyname" placeholder="Company Name">
                            </div>
                          </div>
                         <div class="col-md-4 col-sm-12">                   
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Agency Trading Name*
                              </label>
                              <input class="form-control" type="text" required="" name="tradingname" id="tradingname" placeholder="Trading Name">
                            </div>
                          </div>
                         <div class="col-md-4 col-sm-12">                
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Company Website
                              </label>
                              <input class="form-control" type="text" name="companyweb" id="companyweb" placeholder="Website URL">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                         <div class="col-md-4 col-sm-12">                 
                            <div class="form-group">
                              <label class="form-control-label style-font-label">ATAS Number*
                              </label>
                              <input class="form-control" type="text" required="" name="licensenumber" id="licensenumber" placeholder="ATAS Number">
                            </div>
                          </div>
                          <div class="col-md-4 col-sm-12">                 
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Company Registration Number*
                              </label>
                              <input class="form-control" type="text" required="" name="companyregistration" id="companyregistration" placeholder="ABN">
                            </div>
                          </div>
                          <div class="col-md-4 col-sm-12">                 
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Consortium
                              </label>
                              <input class="form-control" type="text" name="consortium" id="consortium" placeholder="What travel group do you belong to?">
                            </div>
                          </div>
                        </div>
                        <div class="row pt-4">
                         <div class="col-md-4 col-sm-12">              
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Street address*
                              </label>
                              <input class="form-control" type="text" required="" placeholder="Street address" name="street" id="street">
                            </div>
                          </div>
                         <div class="col-md-4 col-sm-12">                
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Postcode*
                              </label>
                              <input class="form-control" type="text" required="" placeholder="Postcode" name="postcode" id="postcode">
                            </div>
                          </div>
                          <div class="col-md-4 col-sm-12">               
                            <div class="form-group">
                              <label class="form-control-label style-font-label">City*
                              </label>
                              <input class="form-control" type="text" required="" placeholder="City" name="city" id="city">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-4 col-sm-12">                
                            <div class="form-group">
                              <label class="form-control-label style-font-label" for="selectbasic">Country*
                              </label>
                              <select name="country" id="country" class="form-control" required="">
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="">---</option>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="Au">Australia</option>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="Gr">Greece</option>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="Ne">New Zealand</option>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="Si">Singapore</option>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="Th">Thailand</option>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="Uk">United Kingdom</option>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="Us">United States</option>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="Ot">Other</option>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </select>
                            </div>
                          </div>
                          <div class="col-md-4 col-sm-12">               
                            <div class="form-group">
                              <label class="form-control-label style-font-label">If Other
                              </label>
                              <input class="form-control" type="text" name="Ifother" id="Ifother" placeholder="If Other Country">
                            </div>
                          </div>
                         <div class="col-md-4 col-sm-12">                
                            <div class="form-group">
                              <label class="form-control-label style-font-label">State/Region*
                              </label>
                              <input class="form-control" type="text" name="state" required="" id="state" placeholder="State/Region">
                            </div>
                          </div>
                        </div>
                        <div class="row">

                          <div class="col-md-6 col-sm-12">  
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Phone*
                              </label>
                              <input class="form-control" type="tel" name="phone" id="phone" pattern="[+]{1}[0-9]{11,14}" placeholder="phone" required="">
                              
                              
                            </div>
                          </div>
                          <div class="col-md-6 col-sm-12">  
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Fax
                              </label>
                              <input class="form-control" type="text" placeholder="Fax" name="fax" id="fax">
                            </div>
                          </div>

                        </div>

                      </div>
                    </div>
                  </div>
                </div>


              </div>
            </div>
          </div>
        </div>


      <div class="container pt-4">
        <div class="row">
          <div class="col-lg-12 mx-auto box-login-twt">
            <div class="wrapper-box p-3">
    <h4 class="">MANAGER’S DETAILS</h4>
    <div class="row justify-content-center pt-3" style="background: url(images/site/shadow-2.png?v1) 50% 0 no-repeat;">
        <div class="media-container-column col-lg-12">
            <div class="row">
                <div class="col">
                    <div class="row">
                     <div class="col-md-4 col-sm-12">              
                        <div class="form-group">
                            <label class="form-control-label style-font-label">First Name*
                            </label>
                            <input class="form-control" type="text" name="firstname" required="" id="firstname" placeholder="First Name">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12">                  
                        <div class="form-group">
                            <label class="form-control-label style-font-label">Surname*
                            </label>
                            <input class="form-control" type="text" name="lastname" required="" id="lastname" placeholder="Last Name">
                        </div>
                    </div>
                   <div class="col-md-4 col-sm-12">          
                        <div class="form-group">
                            <label class="form-control-label style-font-label" for="selectbasic">Job Title*
                            </label>
                            <select name="jobtype" id="jobtype" class="form-control" required="">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="">---</option>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="con">Consultant</option>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="ass">Assistant Team Leader</option>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="tea">Team Leader/Manager</option>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="dir">Director</option>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="own">Owner</option>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
              <div class="col-md-6 col-sm-12">   
                <div class="form-group">
                    <label class="form-control-label style-font-label">E-Mail*
                    </label>
                    <input class="form-control" type="email" name="email" required="" id="email" placeholder="Email">
                    
                </div>
                </div>
    </div>
    <div class="row">
              <div class="col-md-6 col-sm-12">   
                <div class="form-group">
                    <label class="form-control-label style-font-label">Password
                    </label>
                    <input class="form-control" type="password" name="password" required="" id="password" placeholder="Password">
                    
                </div>
                </div>
                  <div class="col-md-6 col-sm-12">   
                <div class="form-group">
                    <label class="form-control-label style-font-label">Confirm Password
                    </label>
                    <input class="form-control" type="password" name="password_confirmation" required="" id="password_confirmation" placeholder="Confirm Password">
                    
                </div>
                </div>
    </div>
  </div>
</div>

            </div>
          </div>
        </div>
      </div>


     
      <div class="container pt-4">
        <div class="row">
          <div class="col-lg-6 box-login-twt">
            <div class="wrapper-box p-3">
              <div class="checkbox text-center">
                                                  <label class="pl-1 pr-1 pt-1">
                                        <input type="checkbox" value="check" name="checkboxform" class="checkboxform">
                                        <span class="cr"><i class="cr-icon fa fa-check"></i></span>I have read and agree to the <a href="https://www.tkgplatform.com/privacy-policy" class=".twt-blue">Privacy Policy*</a>
                                    </label>
</div>
            </div>
          </div>
        </div>
      </div>

<div class="container p-0 mt-4 pb-5">
   <div id="html_element"><div style="width: 304px; height: 78px;"><div><iframe src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LdiyAYaAAAAAGMmumKx4GpRqYum7rompPXTuua8&amp;co=aHR0cHM6Ly9kZW1vLnRrZ3BsYXRmb3JtLmNvbS5hdTo0NDM.&amp;hl=en&amp;v=r8jtf1oixV0IGff4hgB4EzDF&amp;size=normal&amp;cb=nfldpz2junis" width="304" height="78" role="presentation" name="a-wj5hm594qgn0" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div><iframe style="display: none;"></iframe></div>
  <div class="col-md-2 p-0">
      <button class="twt-button twt-blue-button my-3" onclick="validate()" id="btn_submit">SEND</button>

  </div>

</div>
 

      </div></form>



<div class="clearfix"></div>
<footer class="footer">
    <div class="container">
      <p class="m-0 text-center text-white">© TKG Platform</p>
  </div>
</footer>

<!-- /.login-box -->

<!-- jQuery -->
<!-- <script src="../../plugins/jquery/jquery.min.js"></script> -->
<!-- Bootstrap 4 -->
<!-- <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script> -->
<!-- iCheck -->
<!-- <script src="../../plugins/iCheck/icheck.min.js"></script> -->
<script type="text/javascript" async="" src="https://www.gstatic.com/recaptcha/releases/r8jtf1oixV0IGff4hgB4EzDF/recaptcha__en.js" crossorigin="anonymous" integrity="sha384-cIN2qskPjCnyJJulsKDG+cD5Wi3buGp1YQMnWMCuYOOtMHvU/xRFNjwulcPURQ69"></script><script src="https://demo.tkgplatform.com.au/packages/pingpong/admin/components/jquery/dist/jquery.min.js"></script>
<!-- <script src="https://demo.tkgplatform.com.au/packages/pingpong/admin/components/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script> -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&amp;render=explicit" async="" defer=""></script>
 <script type="text/javascript">
      var onloadCallback = function() {
        grecaptcha.render('html_element', {
          'sitekey' : '6LdiyAYaAAAAAGMmumKx4GpRqYum7rompPXTuua8'
        });
      };
      
      
 </script>





<style type="text/css">
.footer {
  /*position: absolute;*/
   position: fixed;
  bottom: 0;
  padding-top: 5px;
  width: 100%;
  height: 40px;
  background-color: #2a3c58;
}
/*blue color of tweet world travel group*/
.twt-blue{
    color:#3183ab;
}
.btn-login{
    border-radius: 5px;
    height: 40px;
    color: #fff;
}
.login-box{
    /*width: 450px;*/
}
.mt-twt {
    margin-top: 20px;
}
.mt-twt a {
    color: #000;
}
.login-box-msg{    font-weight: bold;
    font-size: 22px;
    text-align: left;}
.wrapper-box-twt{
  background-color: #efefef;
}    
.box-login-twt {
    background-color: #fffdfd;
    border: 1px solid #e4e4e4;
}
.login-form-margin {
    padding-top: 50px;
}


/*tweet world travel button style*/
.twt-button {
    margin: 0;
    border: none;
    overflow: visible;
    font: inherit;
    display: inline-block;
    box-sizing: border-box;
    padding: 0 30px;
    vertical-align: middle;
    font-size: .875rem;
    line-height: 30px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    transition: .1s ease-in-out;
    transition-property: color,background-color,border-color;
}
.twt-blue-button {
    min-height: 34px !important;
    border-radius: 5px;
    background-color: #3183ab;
    color: #fff;
    transition: .3s all;
}
.twt-blue-button:hover {
    border: 1px solid #3183ab;
    background-color: #fff;
    color: #3183ab;
}

.twt-button:not(:disabled) {
    cursor: pointer;
}

</style>

</html">
</asp:Content>
