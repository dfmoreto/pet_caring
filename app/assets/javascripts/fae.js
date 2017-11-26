// This file is compiled into fae/application.js
// use this as another manifest file if you have a lot of javascript to add
// or just add your javascript directly to this file

// Uncomment the following line if you want to use Trumbowyg HTML Editor
// //= require fae/vendor/trumbowyg

$(document).on("ready turbolinks:load", function(){
  $("select#discount_kind").change(function(){
    select_discount_label();
  });
  select_discount_label();
});

function select_discount_label(){
  let kind = $("select#discount_kind").val();
  let symbol = (kind == 1) ? "$" : "%";
  $("label.input-symbol--prefix[for='discount_value']").html(symbol);
}
