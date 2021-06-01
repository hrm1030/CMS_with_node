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
                    "search": "Search:",
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
                jqTds[0].innerHTML = '<input type="text" class="form-control input-small" value="' + aData[0] + '">';
                jqTds[1].innerHTML = '<a class="edit btn btn-sm blue" href="" title="save"><i class="fa fa-save"></i></a>&nbsp;<a class="cancel btn btn-sm yellow" href="" title="cancel"><i class="fa fa-times"></i></a>';
            }
    
            function saveRow(oTable, nRow) {
                var jqInputs = $('input', nRow);
                oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate('<a class="edit btn btn-sm green" href="" title="edit"><i class="fa fa-pencil"></i></a>&nbsp;<a class="delete btn btn-sm yellow" href="" title="delete"><i class="fa fa-trash"></i></a>', nRow, 1, false);
                oTable.fnDraw();
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
                e.preventDefault();
    
                if (nNew && nEditing) {
                    if (confirm("Previose row not saved. Do you want to save it ?")) {
                        saveRow(oTable, nEditing); // save
                        $(nEditing).find("td:first").html("Untitled");
                        nEditing = null;
                        nNew = false;
    
                    } else {
                        oTable.fnDeleteRow(nEditing); // cancel
                        nEditing = null;
                        nNew = false;
                        
                        return;
                    }
                }
    
                var aiNew = oTable.fnAddData(['', '']);
                var nRow = oTable.fnGetNodes(aiNew[0]);
                editRow(oTable, nRow);
                nEditing = nRow;
                nNew = true;
            });
    
            table.on('click', '.delete', function (e) {
                e.preventDefault();
    
                if (confirm("Are you sure to delete this row ?") == false) {
                    return;
                }
    
                var nRow = $(this).parents('tr')[0];
                oTable.fnDeleteRow(nRow);
                alert("Deleted! Do not forget to do some ajax to sync with backend :)");
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
            });
    
            table.on('click', '.edit', function (e) {
                e.preventDefault();
    
                /* Get the row as a parent of the link that was clicked on */
                var nRow = $(this).parents('tr')[0];
    
                if (nEditing !== null && nEditing != nRow) {
                    /* Currently editing - but not this row - restore the old before continuing to edit mode */
                    restoreRow(oTable, nEditing);
                    editRow(oTable, nRow);
                    nEditing = nRow;
                } else if (nEditing == nRow && this.innerHTML == "Save") {
                    /* Editing this row and want to save it */
                    saveRow(oTable, nEditing);
                    nEditing = null;
                    alert("Updated! Do not forget to do some ajax to sync with backend :)");
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
                categorytable();
            }
    
        };
    
    }();

    UserTable.init();
    CategoryTable.init();

    $('.select2me').select2();

    $('#btn_save').click(function() {
        var category = $('#category').val();
        var content = CKEDITOR.instances.content.getData();
        console.log(content);
    })
})