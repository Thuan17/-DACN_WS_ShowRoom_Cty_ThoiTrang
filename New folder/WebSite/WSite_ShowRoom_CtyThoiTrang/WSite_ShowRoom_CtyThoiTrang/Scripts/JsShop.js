$(document).ready(function () {
    ShowCoun123()
    $('body').on('click', '.btnAddToCart', function (e) {
        e.preventDefault();
        var id = $(this).data('id');
        var soLuong = 1;
        var tQuantity = $('#quantity_value').text();
        if (tQuantity != '') {
            soLuong = parseInt(tQuantity);
        }

        $.ajax({
            url: '/shoppingcart/addtocart',
            type: 'POST',
            data: { id: id, soLuong: soLuong },
            success: function (rs) {
                if (rs.Success) {
                    $('#checkout_items').html(rs.Count);
                    alert(rs.msg);
                }
            }
        });
    });

    $('body').on('click', '.btnAddToCart123', function (e) {
        e.preventDefault();
        var id = $(this).data('id');
        var soLuong = 1;
        var tQuantity = $('#quantity_value').text();
        if (tQuantity != '') {
            soLuong = parseInt(tQuantity);
        }

        $.ajax({
            url: '/testcart/addtocart',
            type: 'POST',
            data: { id: id, soLuong: soLuong },
            success: function (rs) {
                if (rs.Success) {
                    /*  $('#checkout_items').html(rs.Count);*/
                    /*alert(rs.msg);*/
                    ShowCoun123();
                }
            }
        });
    });






    $('body').on('click', '.btnDelete123', function (e) {
        e.preventDefault();
        var id = $(this).data('id');
        var conf = confirm('Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?');
        if (conf == true) {
            $.ajax({
                url: '/testcart/Delete',
                type: 'POST',
                data: { id: id },
                success: function (rs) {
                    if (rs.Success) {

                        LoadCart123();
                        ShowCoun123();
                    }
                }
            });
        }

    });


   

    $('.btn-dat-hang').on('click', function () {
        // Lấy danh sách ProductId từ các checkbox đã chọn
        var selectedProductIds = getSelectedProductIds();

        // Gọi hàm thực hiện AJAX
        sendAjaxRequest(selectedProductIds);
    });


    $('body').on('click', '.btnUpdate', function (e) {
        e.preventDefault();
        var id = $(this).data("id");
        var quantity = $('#Quantity_' + id).val();
        Update(id, quantity);

    });
  

    $('body').on('click', '.btnDeleteAll', function (e) {
        var selectedProductIds = getSelectedProductIds();
        if (selectedProductIds.length > 0) {
            var conf = confirm('Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?');
            if (conf == true) {
                $.ajax({
                    url: '/TestCart/DeleteAll',
                    type: 'POST',
                    data: { CartItemId: selectedProductIds },
                    success: function (result) {
                        if (result.Success) {
                            $('#checkout_items').html(rs.Count);
                            $('#trow_' + selectedProductIds).remove();
                            LoadCart123();
                        } else {
                            console.error('Lỗi khi xóa tất cả. Lỗi:', result.msg, 'Mã lỗi:', result.code);
                        }
                    },
                    error: function (error) {
                        console.error('Lỗi khi gọi API:', error);
                    }
                });
              
            }
        } else {
            console.warn('Không có sản phẩm nào được chọn để xóa.');
        }
    });


    $('body').on('click', '.btnDelete', function (e) {
        e.preventDefault();
        var id = $(this).data('id');
        var conf = confirm('Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?');
        if (conf == true) {
            $.ajax({
                url: '/shoppingcart/Delete',
                type: 'POST',
                data: { id: id },
                success: function (rs) {
                    if (rs.Success) {
                        $('#checkout_items').html(rs.Count);
                        $('#trow_' + id).remove();
                        LoadCart123();
                    }
                }
            });
        }

    });





    //$('body').on('click', '.btnCancelOrder', function (e) {
    //    e.preventDefault();
    //    var orderId = $(this).attr("href").split("/").pop();
    //    var conf = confirm('Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?');
    //    if (conf == true) {
    //        alert(orderId);
    //        $.ajax({
    //            url: '/User/AddListCancel',
    //            type: 'POST',
    //            data: { id: orderId },
    //            dataType: 'json',
    //            success: function (rs) {
    //                if (result.Success) {
    //                    console.log('Đặt hàng thành công');
    //                    /*window.location.href = '/testCart/CheckOut';*/
    //                } else {
    //                    console.error('Lỗi khi đặt hàng. Lỗi:', result.msg, 'Mã lỗi:', result.code);
    //                }
    //            },
    //            error: function (error) {
    //                console.error('Lỗi khi gọi API:', error);
    //            }
    //        });
    //    }

    //});

    //$('.btnCancelOrder').on('click', function () {
    //    // Lấy danh sách ProductId từ các checkbox đã chọn
    //    var selectedProductIds = getIdOrderDetail();

    //    // Gọi hàm thực hiện AJAX
    //    sendIdOrderDetail(selectedProductIds);
    //});
    
    $('body').on('click', '.btnUpdate', function (e) {
        e.preventDefault();
        var id = $(this).data("id");
        var quantity = $('#Quantity_' + id).val();
        Update(id, quantity);

    });


    $('body').on('click', '.btnCancelOrder', function (e) {
        // Lấy ID của div cha
        var IdOrder = $(this).closest('.IdOrder').attr('id');
        var divId = getIdOrderDetail();
        var id = $(this).data("id");
        alert(IdOrder,divId);

        /* Hiển thị ID trong console để kiểm tra*/
        console.log('ID của div:', divId);

        // Gọi hàm thực hiện AJAX với ID nếu cần
        sendIdOrderDetail(IdOrder,divId);

    });



   
});

//huy don han 

function getIdOrderDetail() {
    var selectedProductIds = [];

    // Sử dụng class để chọn tất cả các div có class là "yourDivClass"
    $(".yourDivClass").each(function () {
        // Lấy ID từ mỗi div và thêm vào mảng
        var divId = $(this).attr("id");
        selectedProductIds.push(divId);
    });

    return selectedProductIds;
}
//gui list vao Huy don hang
function sendIdOrderDetail(id,selectedProductIds) {
    if (selectedProductIds.length > 0) {
        $.ajax({
            url: '/user/AddListCancel',
            type: 'POST',
            data: { id:id,productIds: selectedProductIds },
            dataType: 'json',
            success: function (result) {
                // Xử lý kết quả từ server nếu cần
                if (result.Success) {
                    console.log('Đặt hàng thành công');
                } else {
                    console.error('Lỗi khi đặt hàng. Lỗi:', result.msg, 'Mã lỗi:', result.code);
                }
            },
            error: function (error) {
                console.error('Lỗi khi gọi API:', error);
            }
        });
    } else {
        console.warn('Danh sách productIds rỗng. Không có gì để gửi.');
    }
}




//chi lay 1 checkbox
function getSelectedProductIds() {
    var selectedProductIds = [];
    $('.cbkItem:checked').each(function () {
        selectedProductIds.push($(this).data('id'));
    });
    return selectedProductIds;
}



//gui list vao dat hang
function sendAjaxRequest(selectedProductIds) {
    $.ajax({
        url: '/TestCart/DatHang',
        type: 'POST',
        data: { productIds: selectedProductIds },
        dataType: 'json',
        success: function (result) {
            // Xử lý kết quả từ server nếu cần
            if (result.Success) {
                console.log('Đặt hàng thành công');
                window.location.href = '/testCart/CheckOut';
            } else {
                console.error('Lỗi khi đặt hàng. Lỗi:', result.msg, 'Mã lỗi:', result.code);
            }
        },
        error: function (error) {
            console.error('Lỗi khi gọi API:', error);
        }
    });
}


















function ShowCoun123() {
    $.ajax({
        url: '/TestCart/ShowCount',
        type: 'GET',
        success: function (rs) {
            $('#checkout_items').html(rs.Count);
        }
    });
}




function LoadCart() {
    $.ajax({
        url: '/shoppingcart/Partial_ItemCart',
        type: 'GET',
        success: function (rs) {
            $('#load_data').html(rs);
        }
    });
}

function LoadCart123() {
    $.ajax({
        url: '/TestCart/Partial_ItemCart',
        type: 'GET',
        success: function (rs) {
            $('#load_data123').html(rs);
        }
    });
}




function DeleteAll() {
    $.ajax({
        url: '/shoppingcart/DeleteAll',
        type: 'POST',
        success: function (rs) {
            if (rs.Success) {
                LoadCart();
            }
        }
    });
}
