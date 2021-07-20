// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
//= require zeroclipboard
//= require jquery
//= require jquery_ujs
//= require_tree
//= require bootstrap-sprockets
//= require bootstrap-select
//= require clipboard
//= require money-format

//= require action_cable
//= require_self
//= require_tree ./channels
//= require jquery.autosize
//= require bootag.js
//= require json-formatter
//= require clipboard


"./app/assets/javascripts/"

$(document).ready(function(){
    console.log("clipboard");

    var clipboard = new Clipboard('.clipboard-btn');

    function ids() {
        return "#add_client, " +
        "#add_all_client, " +
        "#add_all_client_1, " +
        "#add_all_client_2, " +
        "#create_client_ul, " +
        "#create_client_ip, " +
        "#create_dul, " +
        "#create_trust," +
        "#add_compliance," +
        "#add_buh_account," +
        "#add_actualization," +
        "#add_rur," +
        "#add_usd," +
        "#add_eur," +
        "#create_corp, " +
        "#create_account," +
        "#add_other_cash_acc," +
        "#fee," +
        "#cur," +
        "#add_ban," +
        "#add_nib_role," +
        "#delete_compliance," +
        "#add_code_word," +
        ".icon-upload-csv"
    }

    $(".loader").hide();

    $(document).ajaxStart(function(){
        $(".lds-hourglass").show();
        $(".loader").show();
        $('#create_client_container').css("filter", "blur(2px)")
    });

    $(document).ajaxStop(function(){
        $('#create_client_container').css("filter", "blur(0px)")
        $(".lds-hourglass").hide();
        $(".loader").hide();
    });

    $('#open-from-browser').click(function() {
        console.log('close');
        $('#modal').modal('hide')
    } )

    $(document).ready(function() {
        $('#add_from_file').hide();
        $('#add_from_file2').click(function() {
            $('#add_from_file').show('500');
            $('#add_from_file2').hide();
        })

        $('#upload_dump').hide();
        $('#upload_dump2').click(function() {
            $('#upload_dump').show('500');
            $('#upload_dump2').hide();
        })
    })

});
