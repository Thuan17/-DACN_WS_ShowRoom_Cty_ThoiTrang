//$(document).ready(function () {
//    $('body').on('click', '.btnOutOrder', function () {
//        $.ajax({
//            url: '/admin/WareHouse/Partial_ExportWareHouse',
//            type: 'POST',
//            success: function (rs) {
//                if (rs.success) {
//                    if (res.Code == 1) {
//                        alert("Xuất thành công");
//                       /* LoadCart();*/
//                        /*window.location.href = "/admin/WareHouse/ExportWareHouse";*/
//                    }
//                    else {
//                        if (res.Code == -2) {
//                            alert("Không tìm thấy đơn hàng ");
//                            //swal.fire({
//                            //    icon: "error",
//                            //    title: "Oops...",
//                            //    text: "Something went wrong!",
//                            //    footer: '<a href="#">Why do I have this issue?</a>'
//                            //});
//                            $.ajax({

//                                type: 'GET',
//                                success: function (rs) {
//                                    $('#myForm').html(rs);
//                                }
//                            });
//                        }
//                        if (res.Code == -3) {

//                            alert("Đơn hàng dã hủy trên hệ thống ! Vui lòng kiểm tra lại ");
//                            $.ajax({

//                                type: 'GET',
//                                success: function (rs) {
//                                    $('#myForm').html(rs);
//                                }
//                            });
//                        }
//                        if (res.Code == -4) {

//                            alert("Đơn hàng chưa được xác nhận ");
//                            $.ajax({

//                                type: 'GET',
//                                success: function (rs) {
//                                    $('#myForm').html(rs);
//                                }
//                            });
//                        }
//                        if (res.Code == -5) {

//                            alert("Mã hàng được trả về");
//                            $.ajax({

//                                type: 'GET',
//                                success: function (rs) {
//                                    $('#myForm').html(rs);
//                                }
//                            });
//                        }
//                        if (res.Code == -6) {

//                            alert("Đơn hàng lập lại 2 lần  ");
//                            $.ajax({

//                                type: 'GET',
//                                success: function (rs) {
//                                    $('#myForm').html(rs);
//                                }
//                            });
//                        }

//                    }
//                }
//                else {

//                }
//            }
//        });

//    });

//});


//function LoadCart() {
//    $.ajax({
//        url: '/admin/WareHouse/Partail_ExportToday',
//        type: 'GET',
//        success: function (rs) {
//            $('#load_data').html(rs);
//        }
//    });
//}