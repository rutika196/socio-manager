<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  
<!-- Mirrored from thevectorlab.net/flatlab/inbox.html by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 15 Apr 2015 08:37:16 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/chairman/img/favicon.html">

    <title>Inbox</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/chairman/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/chairman/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath}/chairman/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/chairman/css/jquery.fileupload-ui.css" rel="stylesheet" type="text/css" >
      <!--right slidebar-->
      <link href="${pageContext.request.contextPath}/chairman/css/slidebars.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/chairman/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/chairman/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath}/chairman/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/chairman/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" class="">
      <!--header start-->
      	<%@include file="header.jsp" %>
      <!--header end-->
      <!--sidebar start-->
      	<%@include file="menu.jsp" %>
       <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!--mail inbox start-->
              <div class="mail-box">
                  <aside class="sm-side">
                      <div class="user-head">
                          <a href="javascript:;" class="inbox-avatar">
                              <img src="${pageContext.request.contextPath}/chairman/img/mail-avatar.jpg" alt="">
                          </a>
                          <div class="user-name">
                              <h5><a href="#">Jonathan Smith</a></h5>
                              <span><a href="#">jsmith@gmail.com</a></span>
                          </div>
                          <a href="javascript:;" class="mail-dropdown pull-right">
                              <i class="fa fa-chevron-down"></i>
                          </a>
                      </div>
                      <div class="inbox-body">
                          <a class="btn btn-compose" data-toggle="modal" href="#myModal">
                              Compose
                          </a>
                          <!-- Modal -->
                          <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                          <h4 class="modal-title">Compose</h4>
                                      </div>
                                      <div class="modal-body">
                                          <form class="form-horizontal" role="form">
                                              <div class="form-group">
                                                  <label  class="col-lg-2 control-label">To</label>
                                                  <div class="col-lg-10">
                                                      <input type="text" class="form-control" id="inputEmail1" placeholder="">
                                                  </div>
                                              </div>
                                              <div class="form-group">
                                                  <label  class="col-lg-2 control-label">Cc / Bcc</label>
                                                  <div class="col-lg-10">
                                                      <input type="text" class="form-control" id="cc" placeholder="">
                                                  </div>
                                              </div>
                                              <div class="form-group">
                                                  <label class="col-lg-2 control-label">Subject</label>
                                                  <div class="col-lg-10">
                                                      <input type="text" class="form-control" id="inputPassword1" placeholder="">
                                                  </div>
                                              </div>
                                              <div class="form-group">
                                                  <label class="col-lg-2 control-label">Message</label>
                                                  <div class="col-lg-10">
                                                      <textarea name="" id="" class="form-control" cols="30" rows="10"></textarea>
                                                  </div>
                                              </div>

                                              <div class="form-group">
                                                  <div class="col-lg-offset-2 col-lg-10">
                                                      <span class="btn green fileinput-button">
                                                        <i class="fa fa-plus fa fa-white"></i>
                                                        <span>Attachment</span>
                                                        <input type="file" multiple=""  name="files[]">
                                                      </span>
                                                      <button type="submit" class="btn btn-send">Send</button>
                                                  </div>
                                              </div>
                                          </form>
                                      </div>
                                  </div><!-- /.modal-content -->
                              </div><!-- /.modal-dialog -->
                          </div><!-- /.modal -->
                      </div>
                      <ul class="inbox-nav inbox-divider">
                          <li class="active">
                              <a href="#"><i class="fa fa-inbox"></i> Inbox <span class="label label-danger pull-right">2</span></a>

                          </li>
                          <li>
                              <a href="#"><i class="fa fa-envelope-o"></i> Sent Mail</a>
                          </li>
                          <li>
                              <a href="#"><i class="fa fa-bookmark-o"></i> Important</a>
                          </li>
                          <li>
                              <a href="#"><i class=" fa fa-external-link"></i> Drafts <span class="label label-info pull-right">30</span></a>
                          </li>
                          <li>
                              <a href="#"><i class=" fa fa-trash-o"></i> Trash</a>
                          </li>
                      </ul>
                      <ul class="nav nav-pills nav-stacked labels-info inbox-divider">
                          <li> <h4>Labels</h4> </li>
                          <li> <a href="#"> <i class=" fa fa-sign-blank text-danger"></i> Work </a> </li>
                          <li> <a href="#"> <i class=" fa fa-sign-blank text-success"></i> Design </a> </li>
                          <li> <a href="#"> <i class=" fa fa-sign-blank text-info "></i> Family </a>
                          <li> <a href="#"> <i class=" fa fa-sign-blank text-warning "></i> Friends </a>
                          <li> <a href="#"> <i class=" fa fa-sign-blank text-primary "></i> Office </a>
                          </li>
                      </ul>
                      <ul class="nav nav-pills nav-stacked labels-info ">
                          <li> <h4>Buddy online</h4> </li>
                          <li> <a href="#"> <i class=" fa fa-circle text-success"></i> Jhone Doe <p>I do not think</p></a>  </li>
                          <li> <a href="#"> <i class=" fa fa-circle text-danger"></i> Sumon <p>Busy with coding</p></a> </li>
                          <li> <a href="#"> <i class=" fa fa-circle text-muted "></i> Anjelina Joli <p>I out of control</p></a>
                          <li> <a href="#"> <i class=" fa fa-circle text-muted "></i> Jonathan Smith <p>I am not here</p></a>
                          <li> <a href="#"> <i class=" fa fa-circle text-muted "></i> Tawseef <p>I do not think</p></a>
                          </li>
                      </ul>

                      <div class="inbox-body text-center">
                          <div class="btn-group">
                              <a href="javascript:;" class="btn mini btn-primary">
                                  <i class="fa fa-plus"></i>
                              </a>
                          </div>
                          <div class="btn-group">
                              <a href="javascript:;" class="btn mini btn-success">
                                  <i class="fa fa-phone"></i>
                              </a>
                          </div>
                          <div class="btn-group">
                              <a href="javascript:;" class="btn mini btn-info">
                                  <i class="fa fa-cog"></i>
                              </a>
                          </div>
                      </div>

                  </aside>
                  <aside class="lg-side">
                      <div class="inbox-head">
                          <h3>Inbox</h3>
                          <form class="pull-right position" action="#">
                              <div class="input-append">
                                  <input type="text"  placeholder="Search Mail" class="sr-input">
                                  <button type="button" class="btn sr-btn"><i class="fa fa-search"></i></button>
                              </div>
                          </form>
                      </div>
                      <div class="inbox-body">
                         <div class="mail-option">
                             <div class="chk-all">
                                 <input type="checkbox" class="mail-checkbox mail-group-checkbox">
                                 <div class="btn-group" >
                                     <a class="btn mini all" href="#" data-toggle="dropdown">
                                         All
                                         <i class="fa fa-angle-down "></i>
                                     </a>
                                     <ul class="dropdown-menu">
                                         <li><a href="#"> None</a></li>
                                         <li><a href="#"> Read</a></li>
                                         <li><a href="#"> Unread</a></li>
                                     </ul>
                                 </div>
                             </div>

                             <div class="btn-group">
                                 <a class="btn mini tooltips" href="#" data-toggle="dropdown" data-placement="top" data-original-title="Refresh">
                                     <i class=" fa fa-refresh"></i>
                                 </a>
                             </div>
                             <div class="btn-group hidden-phone">
                                 <a class="btn mini blue" href="#" data-toggle="dropdown">
                                     More
                                     <i class="fa fa-angle-down "></i>
                                 </a>
                                 <ul class="dropdown-menu">
                                     <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                                     <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                                     <li class="divider"></li>
                                     <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                 </ul>
                             </div>
                             <div class="btn-group">
                                 <a class="btn mini blue" href="#" data-toggle="dropdown">
                                     Move to
                                     <i class="fa fa-angle-down "></i>
                                 </a>
                                 <ul class="dropdown-menu">
                                     <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                                     <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                                     <li class="divider"></li>
                                     <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                 </ul>
                             </div>

                             <ul class="unstyled inbox-pagination">
                                 <li><span>1-50 of 234</span></li>
                                 <li>
                                     <a href="#" class="np-btn"><i class="fa fa-angle-left  pagination-left"></i></a>
                                 </li>
                                 <li>
                                     <a href="#" class="np-btn"><i class="fa fa-angle-right pagination-right"></i></a>
                                 </li>
                             </ul>
                         </div>
                          <table class="table table-inbox table-hover">
                            <tbody>
                              <tr class="unread">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message  dont-show">Vector Lab</td>
                                  <td class="view-message ">Lorem ipsum dolor imit set.</td>
                                  <td class="view-message  inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                                  <td class="view-message  text-right">9:27 AM</td>
                              </tr>
                              <tr class="unread">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Mosaddek Hossain</td>
                                  <td class="view-message">Hi Bro, How are you?</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">March 15</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Dulal khan</td>
                                  <td class="view-message">Lorem ipsum dolor sit amet</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">June 15</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Facebook</td>
                                  <td class="view-message">Dolor sit amet, consectetuer adipiscing</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">April 01</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star inbox-started"></i></td>
                                  <td class="view-message dont-show">Mosaddek <span class="label label-danger pull-right">urgent</span></td>
                                  <td class="view-message">Lorem ipsum dolor sit amet</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">May 23</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star inbox-started"></i></td>
                                  <td class="view-message dont-show">Facebook</td>
                                  <td class="view-message">Dolor sit amet, consectetuer adipiscing</td>
                                  <td class="view-message inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                                  <td class="view-message text-right">March 14</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star inbox-started"></i></td>
                                  <td class="view-message dont-show">Rafiq</td>
                                  <td class="view-message">Lorem ipsum dolor sit amet</td>
                                  <td class="view-message inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                                  <td class="view-message text-right">January 19</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Facebook <span class="label label-success pull-right">megazine</span></td>
                                  <td class="view-message view-message">Dolor sit amet, consectetuer adipiscing</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">March 04</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Mosaddek</td>
                                  <td class="view-message view-message">Lorem ipsum dolor sit amet</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">June 13</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Facebook <span class="label label-info pull-right">family</span></td>
                                  <td class="view-message view-message">Dolor sit amet, consectetuer adipiscing</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">March 24</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star inbox-started"></i></td>
                                  <td class="view-message dont-show">Mosaddek</td>
                                  <td class="view-message">Lorem ipsum dolor sit amet</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">March 09</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star inbox-started"></i></td>
                                  <td class="dont-show">Facebook</td>
                                  <td class="view-message">Dolor sit amet, consectetuer adipiscing</td>
                                  <td class="view-message inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                                  <td class="view-message text-right">May 14</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Sumon</td>
                                  <td class="view-message">Lorem ipsum dolor sit amet</td>
                                  <td class="view-message inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                                  <td class="view-message text-right">February 25</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="dont-show">Facebook</td>
                                  <td class="view-message view-message">Dolor sit amet, consectetuer adipiscing</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">March 14</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Dulal</td>
                                  <td class="view-message">Lorem ipsum dolor sit amet</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">April 07</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Twitter</td>
                                  <td class="view-message">Dolor sit amet, consectetuer adipiscing</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">July 14</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star inbox-started"></i></td>
                                  <td class="view-message dont-show">Sumon</td>
                                  <td class="view-message">Lorem ipsum dolor sit amet</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">August 10</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Facebook</td>
                                  <td class="view-message view-message">Dolor sit amet, consectetuer adipiscing</td>
                                  <td class="view-message inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                                  <td class="view-message text-right">April 14</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Mosaddek</td>
                                  <td class="view-message">Lorem ipsum dolor sit amet</td>
                                  <td class="view-message inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                                  <td class="view-message text-right">June 16</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star inbox-started"></i></td>
                                  <td class="view-message dont-show">Sumon</td>
                                  <td class="view-message">Lorem ipsum dolor sit amet</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">August 10</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                  <td class="view-message dont-show">Facebook</td>
                                  <td class="view-message view-message">Dolor sit amet, consectetuer adipiscing</td>
                                  <td class="view-message inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                                  <td class="view-message text-right">April 14</td>
                              </tr>
                          </tbody>
                          </table>
                      </div>
                  </aside>
              </div>
              <!--mail inbox end-->
          </section>
      </section>
      <!--main content end-->
      <!-- Right Slidebar start -->
      <div class="sb-slidebar sb-right sb-style-overlay">
          <h5 class="side-title">Online Customers</h5>
          <ul class="quick-chat-list">
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="${pageContext.request.contextPath}/chairman/img/chat-avatar2.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <strong>John Doe</strong>
                          <small>Dream Land, AU</small>
                      </div>
                  </div><!-- media -->
              </li>
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="${pageContext.request.contextPath}/chairman/img/chat-avatar.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <div class="media-status">
                              <span class=" badge bg-important">3</span>
                          </div>
                          <strong>Jonathan Smith</strong>
                          <small>United States</small>
                      </div>
                  </div><!-- media -->
              </li>

              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="${pageContext.request.contextPath}/chairman/img/pro-ac-1.png" class="media-object">
                      </a>
                      <div class="media-body">
                          <div class="media-status">
                              <span class=" badge bg-success">5</span>
                          </div>
                          <strong>Jane Doe</strong>
                          <small>ABC, USA</small>
                      </div>
                  </div><!-- media -->
              </li>
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="${pageContext.request.contextPath}/chairman/img/avatar1.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <strong>Anjelina Joli</strong>
                          <small>Fockland, UK</small>
                      </div>
                  </div><!-- media -->
              </li>
              <li class="online">
                  <div class="media">
                      <a href="#" class="pull-left media-thumb">
                          <img alt="" src="${pageContext.request.contextPath}/chairman/img/mail-avatar.jpg" class="media-object">
                      </a>
                      <div class="media-body">
                          <div class="media-status">
                              <span class=" badge bg-warning">7</span>
                          </div>
                          <strong>Mr Tasi</strong>
                          <small>Dream Land, USA</small>
                      </div>
                  </div><!-- media -->
              </li>
          </ul>
          <h5 class="side-title"> pending Task</h5>
          <ul class="p-task tasks-bar">
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Dashboard v1.3</div>
                          <div class="percent">40%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">
                              <span class="sr-only">40% Complete (success)</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Database Update</div>
                          <div class="percent">60%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 60%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar progress-bar-warning">
                              <span class="sr-only">60% Complete (warning)</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Iphone Development</div>
                          <div class="percent">87%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 87%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" class="progress-bar progress-bar-info">
                              <span class="sr-only">87% Complete</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Mobile App</div>
                          <div class="percent">33%</div>
                      </div>
                      <div class="progress progress-striped">
                          <div style="width: 33%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar progress-bar-danger">
                              <span class="sr-only">33% Complete (danger)</span>
                          </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="#">
                      <div class="task-info">
                          <div class="desc">Dashboard v1.3</div>
                          <div class="percent">45%</div>
                      </div>
                      <div class="progress progress-striped active">
                          <div style="width: 45%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="45" role="progressbar" class="progress-bar">
                              <span class="sr-only">45% Complete</span>
                          </div>
                      </div>

                  </a>
              </li>
              <li class="external">
                  <a href="#">See All Tasks</a>
              </li>
          </ul>
      </div>
      <!-- Right Slidebar end -->
      <!--footer start-->
      	<%@include file="footer.jsp" %>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath}/chairman/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/chairman/js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="${pageContext.request.contextPath}/chairman/js/slidebars.min.js"></script>

  <!-- BEGIN:File Upload Plugin JS files-->
  <script src="${pageContext.request.contextPath}/chairman/js/vendor/jquery.ui.widget.js"></script>
  <!-- The Templates plugin is included to render the upload/download listings -->
  <script src="${pageContext.request.contextPath}/chairman/js/vendor/tmpl.min.js"></script>
  <!-- The Load Image plugin is included for the preview images and image resizing functionality -->
  <script src="${pageContext.request.contextPath}/chairman/js/vendor/load-image.min.js"></script>
  <!-- The Canvas to Blob plugin is included for image resizing functionality -->
  <script src="${pageContext.request.contextPath}/chairman/js/vendor/canvas-to-blob.min.js"></script>
  <!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
  <script src="${pageContext.request.contextPath}/chairman/js/jquery.iframe-transport.js"></script>
  <!-- The basic File Upload plugin -->
  <script src="${pageContext.request.contextPath}/chairman/js/jquery.fileupload.js"></script>
  <!-- The File Upload file processing plugin -->
  <script src="${pageContext.request.contextPath}/chairman/js/jquery.fileupload-fp.js"></script>
  <!-- The File Upload user interface plugin -->
  <script src="${pageContext.request.contextPath}/chairman/js/jquery.fileupload-ui.js"></script>


    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/chairman/js/common-scripts.js"></script>


  </body>

<!-- Mirrored from thevectorlab.net/flatlab/inbox.html by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 15 Apr 2015 08:37:30 GMT -->
</html>
