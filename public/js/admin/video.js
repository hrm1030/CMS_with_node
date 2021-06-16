$(document).ready(function() {
    var VideoTable = function () {
    
        var videotable = function () {
    
            var table = $('#video_table');
    
            /* Fixed header extension: http://datatables.net/extensions/keytable/ */
    
            var oTable = table.dataTable({
                // Internationalisation. For more info refer to http://datatables.net/manual/i18n
                "language": {
                    "aria": {
                        "sortAscending": ": activate to sort column ascending",
                        "sortDescending": ": activate to sort column descending"
                    },
                    "emptyTable": "No data available in table",
                    "info": "Showing _START_ to _END_ of _TOTAL_ entries",
                    "infoEmpty": "No entries found",
                    "infoFiltered": "(filtered1 from _MAX_ total entries)",
                    "lengthMenu": "_MENU_ records",
                    "search": "",
                    "zeroRecords": "No matching records found"
                },
                "order": [
                    [1, 'desc']
                ],
                "lengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "All"] // change per page values here
                ],
                "pageLength": 5, // set the initial value,
                "columnDefs": [{  // set default column settings
                    'orderable': false,
                    'targets': [0]
                }, {
                    "searchable": false,
                    "targets": [0]
                }] 
            });
    
            var oTableColReorder = new $.fn.dataTable.ColReorder( oTable );
    
            var tableWrapper = $('#video_table_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper
            tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown
            
            $('#btn_add').click(function() {
                $('#videoModal').modal('show');
            });

            table.on('click', '.btn_delete', function() {
                var video_id = $(this).parents('tr').eq(0).attr('training_id');
                var nRow = $(this).parents('tr')[0];
                $.ajax({
                    url : '/admin/video_delete',
                    method : 'post',
                    data : {
                        video_id : video_id
                    },
                    success : function(data) {
                        oTable.fnDeleteRow(nRow);
                    }
                })
            })

            $('input[type=file]').change(function() {
                $('#video').val('enable');
            });

            $('#btn_video_save').click(function() {
                var video = $('#video').val();
                var title = $('#title').val();
                var description = $('#description').val();

                if(video == '')
                {
                    toastr['error']('Please select video.');
                }
                if(title == '')
                {
                    toastr['error']('Please enter title.');
                }
                if(description == '')
                {
                    toastr['error']('Please type description.');
                }
                if(video != '' && title != '' && description != '')
                {
                    var data = new FormData();
                    $.each($('#video_file')[0].files, function(i, file) {
                        data.append('file-'+i, file);
                    });
                    $.ajax({
                        url: '/admin/videoupload',
                        data: data,
                        cache: false,
                        contentType: false,
                        processData: false,
                        method: 'POST',
                        type: 'POST', // For jQuery < 1.9
                        success: function(data){
                            var video_name = data.video_name;
                            $.ajax({
                                url : '/admin/training_save',
                                method : 'post',
                                data : {
                                    title : title,
                                    description : description,
                                    url : '../../videos/trainings/'+video_name
                                },
                                success : function(data) {
                                    toastr['success']('Successfully saved.');
                                    var video_html = `<video style="width: 70%;" controls title="${data.video.description}" class="video_li">
                                                        <source src="${data.video.url}" type="video/mp4">
                                                    </video>`;
                                    var button_html = `<button class="btn blue btn_edit"><i class="fa fa-pencil" title="edit"></i></button>&nbsp;
                                    <button class="btn btn-danger btn_delete" title="delete"><i class="fa fa-trash"></i></button>`
                                    oTable.fnAddData([video_html, button_html]);
                                    $('#videoModal').modal('hide');
                                }
                            });
                            
                        }
                    });
                }
            })

        }
    
        return {
    
            //main function to initiate the module
            init: function () {
    
                if (!jQuery().dataTable) {
                    return;
                }
                videotable();
            }
    
        };
    
    }();
    VideoTable.init();
})