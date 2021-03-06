// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree
//= require disqus_rails
//= require d3.v3
//= require social-share-button


$(document).ready(function () {

  $('#navbar').collapse('hide');
  // hide project divs when you first open profile page
  $('#biography').hide();
  $('#experience').hide();
  $('#skills').hide();

  // keep footer at the bottom of the page.
  //highlight links of page you're on
  $('.dropdown-toggle').dropdown();
  // click project tab and to activate it and show projects
  $('#one').click(function (e) {
    e.preventDefault();
    $('#biography').tab('show');
    $('#experience').hide();
    $('#skills').hide();
    $('#biography').show();
  });
  // click Comments tab and to activate it, hide projects amd show comments.
  $('#two').click(function (e) {
    e.preventDefault();
    $('#experience').tab('show');
    $('#biography').hide();
    $('#experience').show();
    $('#skills').hide();
  });

  $('#three').click(function (e) {
    e.preventDefault();
    $('#skills').tab('show');
    $('#biography').hide();
    $('#experience').hide();
    $('#skills').show();
  });


});
