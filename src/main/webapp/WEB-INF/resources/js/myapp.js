/**
 * Created by SP on 11/13/2017.
 */

$(function(){
    var $table = $('#tableId');

//Execute the below code only where we have this table
    if($table.length){
        var jsonUrl = 'http://192.168.50.60:8000/institution/';
        /*if(window.btnClicked == ''){
            jsonUrl = window.contextRoot + "/searchFRequestBasedOnCriteria" + "/" + window.transIDVar + "/" + window.card_noVar + "/" + window.refNOVar + "/" + window.statusVar;
        }else{
            jsonUrl = window.contextRoot + "/searchAllFRequest";
        }*/
        console.log("Inside the table!");
        $table.DataTable({
            lengthMenu: [[3, 5, 10, -1], ['3 Records', '5 Records', '10 Records', 'ALL']],
            pageLength: 10,
            ajax: {
                url: jsonUrl,
                type: "GET",
                crossDomain: true,
                dataSrc: ''
            },
            columns: [
                {
                    data: 'id'
                },
                {
                    data: 'institution_Name'
                },
                {
                    data: 'address'
                },
                {
                    data: 'city'
                },
                {
                    data: 'state'
                },
                {
                    data: 'contact'
                },
                {
                    data: 'longitude'
                },
                {
                    data: 'latitude'
                },
                {
                    data: 'institution_type'
                }
            ]
        });
    }
});
