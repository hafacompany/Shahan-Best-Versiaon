var tableMain = $('#data-table').DataTable({
    "columnDefs": [
        { "targets": [0, 12], "orderable": false },
        { type: 'html-num', targets: [5] } 
    ],
    "pageLength": 250,
    "drawCallback": function () {


    },
});

$(window).on('resize', function () {
    $('#data-table').css("width", "100%");
});

