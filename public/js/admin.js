$(document).ready(function() {
    var UserTable = function () {
    
        var usertable = function () {
    
            var table = $('#user_table');
    
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
                    [0, 'asc']
                ],
                "lengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "All"] // change per page values here
                ],
                "pageLength": 10, // set the initial value,
                "columnDefs": [{  // set default column settings
                    'orderable': false,
                    'targets': [0]
                }, {
                    "searchable": false,
                    "targets": [0]
                }] 
            });
    
            var oTableColReorder = new $.fn.dataTable.ColReorder( oTable );
    
            var tableWrapper = $('#user_table_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper
            tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

            table.on('change', '.state', function() {
                $.ajax({
                    url : '/admin/user/change_state',
                    method : 'post',
                    data : {
                        state : $(this).val(),
                        user_id : $(this).parents('tr').eq(0).attr('user_id')
                    },
                    success : function(data) {
                        toastr['success']('State is changed successfully.');
                    },
                    error : function() {
                        toastr['error']('Happening any errors in user state');
                    }
                })
            });
        }
    
        return {
    
            //main function to initiate the module
            init: function () {
    
                if (!jQuery().dataTable) {
                    return;
                }
    
                console.log('me 1');
    
                usertable();
    
                console.log('me 2');
            }
    
        };
    
    }();

    var CategoryTable = function () {

        var categorytable = function () {
    
            function restoreRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);
    
                for (var i = 0, iLen = jqTds.length; i < iLen; i++) {
                    oTable.fnUpdate(aData[i], nRow, i, false);
                }
    
                oTable.fnDraw();
            }
    
            function editRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);
                jqTds[0].innerHTML = '<input type="text" class="form-control input-small category" style="width:100%!important;" value="' + aData[0] + '">';
                jqTds[1].innerHTML = '<a class="edit btn btn-sm blue save" href="" title="save"><i class="fa fa-save"></i></a>&nbsp;<a class="cancel btn btn-sm yellow" href="" title="cancel"><i class="fa fa-times"></i></a>';
            }
    
            function saveRow(oTable, nRow, cat_id) {
                var jqInputs = $('input', nRow);
                if(jqInputs[0].value == ''){
                    toastr['error']('Please enter category.');
                    return false;
                }else {
                    $.ajax({
                        url : '/admin/category/save',
                        method : 'post',
                        data : {
                            category : jqInputs[0].value,
                            cat_id : cat_id
                        },
                        success : function (data) {
                            if(data.msg == 'save') {
                                toastr['success']('Successfully saved.');
                                $(nRow).attr('cat_id', data.category._id);
                                var append_html = '<option value="'+data.category._id+'">'+data.category.name+'</option>';
                                $('#category').append(append_html);
                                $('#category').select2();
                            } else {
                                toastr['success']('Successfully updated.');
                                $('#category>option').each(function() {
                                    if($(this).val() === data.category._id) {
                                        $(this).text(data.category.name);
                                    }
                                })
                            }
                            oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                            oTable.fnUpdate('<a class="edit btn btn-sm green" href="" title="edit"><i class="fa fa-pencil"></i></a>&nbsp;<a class="delete btn btn-sm red" href="" title="delete"><i class="fa fa-trash"></i></a>', nRow, 1, false);
                            oTable.fnDraw();
                            
                            $('.edit').removeAttr('disabled');
                            $('.delete').removeAttr('disabled');
                            $('#btn_add').removeAttr('disabled');
                            return true;
                        },
                        error : function() {
                            toastr['error']('Happening any errors in server.');
                            return false;
                        }
                    })
                    
                }
                
            }
    
            function cancelEditRow(oTable, nRow) {
                var jqInputs = $('input', nRow);
                oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate('<a class="edit btn btn-sm green" href="" title="edit"><i class="fa fa-pencil"></i></a>', nRow, 1, false);
                oTable.fnDraw();
            }
    
            var table = $('#category_table');
    
            var oTable = table.dataTable({
    
                // Uncomment below line("dom" parameter) to fix the dropdown overflow issue in the datatable cells. The default datatable layout
                // setup uses scrollable div(table-scrollable) with overflow:auto to enable vertical scroll(see: assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js). 
                // So when dropdowns used the scrollable div should be removed. 
                //"dom": "<'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r>t<'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
    
                "lengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "All"] // change per page values here
                ],
    
                // Or you can use remote translation file
                //"language": {
                //   url: '//cdn.datatables.net/plug-ins/3cfcc339e89/i18n/Portuguese.json'
                //},
    
                // set the initial value
                "pageLength": 10,
    
                "language": {
                    "lengthMenu": " _MENU_ records",
                    "search": "",
                },
                "columnDefs": [{ // set default column settings
                    'orderable': true,
                    'targets': [0]
                }, {
                    "searchable": true,
                    "targets": [0]
                }],
                "order": [
                    [0, "asc"]
                ] // set first column as a default sort by asc
            });
    
            var tableWrapper = $("#category_table_wrapper");
    
            tableWrapper.find(".dataTables_length select").select2({
                showSearchInput: false //hide search box with special css class
            }); // initialize select2 dropdown
    
            var nEditing = null;
            var nNew = false;
    
            $('#btn_add').click(function (e) {
                console.log('click')
                e.preventDefault();
                $('.edit').attr('disabled', 'disabled');
                $('.delete').attr('disabled', 'disabled');
                $(this).attr('disabled', 'disabled');
    
                var aiNew = oTable.fnAddData(['', '']);
                var nRow = oTable.fnGetNodes(aiNew[0]);
                editRow(oTable, nRow);
                nEditing = nRow;
                nNew = true;
            });
            
            table.on('keydown', '.category', function(e) {
                if(e.which === 13) {
                    var flag;
                    
                    var nRow = $(this).parents('tr')[0];
                    if(!$(this).parents('tr').eq(0).attr('cat_id')) {
                        cat_id = '';
                    } else {
                        cat_id = $(this).parents('tr').eq(0).attr('cat_id');
                    }
                    if(saveRow(oTable, nEditing, cat_id)){
                        nEditing = null;
                    }
                }
            });

            table.on('click', '.delete', function (e) {
                e.preventDefault();
    
                var nRow = $(this).parents('tr')[0];
                var cat_id = $(this).parents('tr').eq(0).attr('cat_id');
                bootbox.dialog({
                    message: "Are you sure to delete this row ?",
                    title: "<i class='fa fa-trash'></i> DELETE",
                    buttons: {
                      success: {
                        label: "YES",
                        className: "green",
                        callback: function() {
                            $.ajax({
                                url : '/admin/category/delete',
                                method : 'post',
                                data : {
                                    cat_id : cat_id
                                },
                                success : function(data) {
                                    $('#category>option').each(function() {
                                        if($(this).val() == data.category._id) {
                                            $(this).remove();
                                        }
                                    });
                                    toastr['success']('Successfully deleted.');
                                    oTable.fnDeleteRow(nRow);
                                },
                                error : function() {
                                    toastr['error']('Happening any errors in server.');
                                }
                            })
                        }
                      },
                      danger: {
                        label: "NO",
                        className: "red",
                        callback: function() {

                        }
                      },
                    }
                });
    
            });
    
            table.on('click', '.cancel', function (e) {
                e.preventDefault();
                if (nNew) {
                    oTable.fnDeleteRow(nEditing);
                    nEditing = null;
                    nNew = false;
                } else {
                    restoreRow(oTable, nEditing);
                    nEditing = null;
                }
                
                $('.edit').removeAttr('disabled');
                $('.delete').removeAttr('disabled');
                $('#btn_add').removeAttr('disabled');
            });
    
            table.on('click', '.edit', function (e) {
                e.preventDefault();
    
                $('.edit').attr('disabled', 'disabled');
                $('.delete').attr('disabled', 'disabled');
                $('#btn_add').attr('disabled', 'disabled');
                /* Get the row as a parent of the link that was clicked on */
                var nRow = $(this).parents('tr')[0];
    
                if (nEditing !== null && nEditing != nRow) {
                    /* Currently editing - but not this row - restore the old before continuing to edit mode */
                    restoreRow(oTable, nEditing);
                    editRow(oTable, nRow);
                    nEditing = nRow;
                } else if (nEditing == nRow && $(this).hasClass('save')) {
                    /* Editing this row and want to save it */
                    var flag;
                    if(!$(this).parents('tr').eq(0).attr('cat_id')) {
                        cat_id = '';
                    } else {
                        cat_id = $(this).parents('tr').eq(0).attr('cat_id');
                    }
                    if(saveRow(oTable, nEditing, cat_id)){
                        nEditing = null;
                    }
                    
                } else {
                    /* No edit in progress - let's start one */
                    editRow(oTable, nRow);
                    nEditing = nRow;
                }
            });

            var save = function() {
                
            }
        }
    
        return {
    
            //main function to initiate the module
            init: function () {
                categorytable();
            }
    
        };
    
    }();

    var IndustryTable = function () {

        var industrytable = function () {
    
            function restoreRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);
    
                for (var i = 0, iLen = jqTds.length; i < iLen; i++) {
                    oTable.fnUpdate(aData[i], nRow, i, false);
                }
    
                oTable.fnDraw();
            }
    
            function editRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);
                jqTds[0].innerHTML = '<input type="text" class="form-control input-small industry" focused style="width:100%!important;" value="' + aData[0] + '">';
                jqTds[1].innerHTML = '<a class="industry_edit btn btn-sm blue industry_save" href="" title="save"><i class="fa fa-save"></i></a>&nbsp;<a class="industry_cancel btn btn-sm yellow" href="" title="cancel"><i class="fa fa-times"></i></a>';
            }
    
            function saveRow(oTable, nRow, industry_id) {
                var jqInputs = $('input', nRow);
                if(jqInputs[0].value == ''){
                    toastr['error']('Please enter category.');
                    return false;
                }else {
                    $.ajax({
                        url : '/admin/industry/save',
                        method : 'post',
                        data : {
                            industry : jqInputs[0].value,
                            industry_id : industry_id
                        },
                        success : function (data) {
                            if(data.msg == 'industry_save') {
                                toastr['success']('Successfully saved.');
                                $(nRow).attr('industry_id', data.category._id);
                            } else {
                                toastr['success']('Successfully updated.');
                            }
                            oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                            oTable.fnUpdate('<a class="industry_edit btn btn-sm green" href="" title="edit"><i class="fa fa-pencil"></i></a>&nbsp;<a class="industry_delete btn btn-sm red" href="" title="delete"><i class="fa fa-trash"></i></a>', nRow, 1, false);
                            oTable.fnDraw();
                            
                            $('.industry_edit').removeAttr('disabled');
                            $('.industry_delete').removeAttr('disabled');
                            $('#btn_industry_add').removeAttr('disabled');
                            return true;
                        },
                        error : function() {
                            toastr['error']('Happening any errors in server.');
                            return false;
                        }
                    })
                    
                }
                
            }
    
            function cancelEditRow(oTable, nRow) {
                var jqInputs = $('input', nRow);
                oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate('<a class="industry_edit btn btn-sm green" href="" title="edit"><i class="fa fa-pencil"></i></a>', nRow, 1, false);
                oTable.fnDraw();
            }
    
            var table = $('#industry_table');
    
            var oTable = table.dataTable({
    
                // Uncomment below line("dom" parameter) to fix the dropdown overflow issue in the datatable cells. The default datatable layout
                // setup uses scrollable div(table-scrollable) with overflow:auto to enable vertical scroll(see: assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js). 
                // So when dropdowns used the scrollable div should be removed. 
                //"dom": "<'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r>t<'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
    
                "lengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "All"] // change per page values here
                ],
    
                // Or you can use remote translation file
                //"language": {
                //   url: '//cdn.datatables.net/plug-ins/3cfcc339e89/i18n/Portuguese.json'
                //},
    
                // set the initial value
                "pageLength": 10,
    
                "language": {
                    "lengthMenu": " _MENU_ records",
                    "search": "",
                },
                "columnDefs": [{ // set default column settings
                    'orderable': true,
                    'targets': [0]
                }, {
                    "searchable": true,
                    "targets": [0]
                }],
                "order": [
                    [0, "asc"]
                ] // set first column as a default sort by asc
            });
    
            var tableWrapper = $("#industry_table_wrapper");
    
            tableWrapper.find(".dataTables_length select").select2({
                showSearchInput: false //hide search box with special css class
            }); // initialize select2 dropdown
    
            var nEditing = null;
            var nNew = false;
    
            $('#btn_industry_add').click(function (e) {
                e.preventDefault();
                $('.industry_edit').attr('disabled', 'disabled');
                $('.industry_delete').attr('disabled', 'disabled');
                $(this).attr('disabled', 'disabled');
    
                var aiNew = oTable.fnAddData(['', '']);
                var nRow = oTable.fnGetNodes(aiNew[0]);
                editRow(oTable, nRow);
                nEditing = nRow;
                nNew = true;
            });
            
            table.on('keydown', '.industry', function(e) {
                if(e.which === 13) {
                    var flag;
                    
                    var nRow = $(this).parents('tr')[0];
                    if(!$(this).parents('tr').eq(0).attr('industry_id')) {
                        industry_id = '';
                    } else {
                        industry_id = $(this).parents('tr').eq(0).attr('industry_id');
                    }
                    if(saveRow(oTable, nEditing, industry_id)){
                        nEditing = null;
                    }
                }
            });

            table.on('click', '.industry_delete', function (e) {
                e.preventDefault();
    
                var nRow = $(this).parents('tr')[0];
                var industry_id = $(this).parents('tr').eq(0).attr('industry_id');
                bootbox.dialog({
                    message: "Are you sure to delete this row ?",
                    title: "<i class='fa fa-trash'></i> DELETE",
                    buttons: {
                      success: {
                        label: "YES",
                        className: "green",
                        callback: function() {
                            $.ajax({
                                url : '/admin/industry/delete',
                                method : 'post',
                                data : {
                                    industry_id : industry_id
                                },
                                success : function(data) {
                                    toastr['success']('Successfully deleted.');
                                    oTable.fnDeleteRow(nRow);
                                },
                                error : function() {
                                    toastr['error']('Happening any errors in server.');
                                }
                            })
                        }
                      },
                      danger: {
                        label: "NO",
                        className: "red",
                        callback: function() {

                        }
                      },
                    }
                });
    
            });
    
            table.on('click', '.industry_cancel', function (e) {
                e.preventDefault();
                if (nNew) {
                    oTable.fnDeleteRow(nEditing);
                    nEditing = null;
                    nNew = false;
                } else {
                    restoreRow(oTable, nEditing);
                    nEditing = null;
                }
                
                $('.industry_edit').removeAttr('disabled');
                $('.industry_delete').removeAttr('disabled');
                $('#btn_industry_add').removeAttr('disabled');
            });
    
            table.on('click', '.industry_edit', function (e) {
                e.preventDefault();
    
                $('.industry_edit').attr('disabled', 'disabled');
                $('.industry_delete').attr('disabled', 'disabled');
                $('#btn_industry_add').attr('disabled', 'disabled');
                /* Get the row as a parent of the link that was clicked on */
                var nRow = $(this).parents('tr')[0];
    
                if (nEditing !== null && nEditing != nRow) {
                    /* Currently editing - but not this row - restore the old before continuing to edit mode */
                    restoreRow(oTable, nEditing);
                    editRow(oTable, nRow);
                    nEditing = nRow;
                } else if (nEditing == nRow && $(this).hasClass('industry_save')) {
                    /* Editing this row and want to save it */
                    var flag;
                    if(!$(this).parents('tr').eq(0).attr('industry_id')) {
                        industry_id = '';
                    } else {
                        industry_id = $(this).parents('tr').eq(0).attr('industry_id');
                    }
                    if(saveRow(oTable, nEditing, industry_id)){
                        nEditing = null;
                    }
                    
                } else {
                    /* No edit in progress - let's start one */
                    editRow(oTable, nRow);
                    nEditing = nRow;
                }
            });

        }
    
        return {
    
            //main function to initiate the module
            init: function () {
                industrytable();
            }
    
        };
    
    }();

    var PostTable = function () {
    
        var posttable = function () {
    
            var table = $('#post_table');
    
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
                "columns": [
                    { "width": "10%" },
                    { "width": "40%" },
                    { "width": "20%" },
                    { "width": "20%" },
                    { "width": "10%" },
                  ],
                "order": [
                    [3, 'desc']
                ],
                "lengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "All"] // change per page values here
                ],
                "pageLength": 10, // set the initial value,
                "columnDefs": [{  // set default column settings
                    'orderable': false,
                    'targets': [0]
                }, {
                    "searchable": false,
                    "targets": [0]
                }] 
            });
    
            var oTableColReorder = new $.fn.dataTable.ColReorder( oTable );
    
            var tableWrapper = $('#post_table_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper
            tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

            $('#btn_save').click(function() {
                var category_id = $('#category').val();
                var content = CKEDITOR.instances.content.getData();
                console.log($('#category>:selected').text());
                var category = $('#category>:selected').text();
                $.ajax({
                    url : '/post/save',
                    method : 'post',
                    data : {
                        category_id : category_id,
                        category : category,
                        content : content
                    },
                    success : function (data) {
                        toastr['success']('Successfully posted.');
                        CKEDITOR.instances.content.setData('');
                        var content = get_skip_content(data.post.content);
                        oTable.fnAddData([data.post.category, content, data.post.poster, data.post.created_at, '<button class="btn btn-sm btn-danger btn_view" post_id="'+data.post._id+'"><i class="icon-eye"></i> View</button>']);
                        
                    },
                    error : function () {
                        toastr['error']('Happening any errors in server.');
                    }
                });
            });

            var get_skip_content = function(content) {
                var str = '';
                cotent = content.split('<p>');
                for(var j = 0 ; j < cotent.length ; j ++) {
                    str = str + cotent[j];
                }
                str_arr = str.split('</p>');
                var new_str = '';
                for(var j = 0 ; j < str_arr.length ; j ++) {
                    new_str = new_str + str_arr[j];
                }
                new_str = new_str.slice(0, 65)+'......';
                return new_str;
            }
            $.ajax({
                url : '/post/get',
                method : 'get',
                success : function(data) {
                    for(var i = 0 ; i < data.posts.length ; i ++ ){
                        
                        var content = get_skip_content(data.posts[i].content);
                        console.log(content)
                        
                        oTable.fnAddData([data.posts[i].category, content, data.posts[i].poster, data.posts[i].created_at, '<button class="btn btn-sm btn-danger btn_view" post_id="'+data.posts[i]._id+'"><i class="icon-eye"></i> View</button>']);
                        
                    }
                },
                error : function() {
                    toastr['error']('Happening any errors in post side.');
                }
            });

            table.on('click', '.btn_view', function() {
                $.ajax({
                    url : '/post/preview',
                    method :'post',
                    data : {
                        post_id : $(this).attr('post_id')
                    },
                    success : function(data) {
                        $('#preview_body').html(data.post.content);
                        $('#label_name').html(data.post.poster);
                        $('#label_created_at').html(data.post.created_at);
                        $('#label_category').html(data.post.category);
                        $('#preview').modal('show');
                    },
                    error : function() {
                        toastr['error']('Happening any errors in post preview.')
                    }
                })
            })
        }
    
        return {
    
            //main function to initiate the module
            init: function () {
    
                if (!jQuery().dataTable) {
                    return;
                }
                posttable();
            }
    
        };
    
    }();

    UserTable.init();
    CategoryTable.init();
    IndustryTable.init();
    PostTable.init();

    $('#category').select2();

    

})