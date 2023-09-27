
const genderDetailOrder = (id) => {
    const handleOrderDetail = (data) => {
        let order = data[0].orders
        
        let wrap = _$('#order-details')
        let title = _$('.title_detail')
        let list_table = _$('.list_table')
        let table_foot = _$('.table_foot')
        let listItemHTML = ``, trackingHtml = ``
        let total_money = 0
        let discount = order.discount_amount
        let ship_fee = order.shipping_fee
        let list_tracking = _$('.list_tracking')
        data.forEach(e => {
            let discountItemProduct = e.discount_amout + ((e.discount_percentage/100)*e.unit_price)
            let subtotalItemProduct = (e.unit_price * e.quantity) - discountItemProduct
            listItemHTML += `<tr>
                <td>
                    <a href="/product/${e.products.product_code}-${e.products.id}">${e.order_detail_name != null && e.order_detail_name != '' ? e.order_detail_name : e.products.product_name}</a>&nbsp;<strong>x ${e.quantity}</strong><br>
                    SHOP : <a href="#">${e.orders.users.stores.store_name} - ${e.orders.users.first_name} ${e.orders.users.last_name}</a>
                </td>
                <td>${formatVND(subtotalItemProduct)}</td>
            </tr>`
            trackingHtml += `<tr>
                        <td class="order">${e.id}</td>
                        <td class="date">${getDateCurrStr(e.date_allocated)}</td>
                        <td class="status">${order.order_status}</td>
                        <td class="total">${formatVND(subtotalItemProduct)} x ${e.quantity}</td>
                        <td class="action"><a href="${order.id_order_ghn != null ? 'https://donhang.ghn.vn/?order_code=' + order.id_order_ghn : 'javascript:Swal.fire(\'Message\', \'Đơn hàng đang chờ shop xác nhận đơn hàng\', \'info\')'}" class="btn btn-rounded">Theo dõi đơn hàng</a>
                        </td>
                    </tr>`

            total_money += subtotalItemProduct
        })
        let html = /*html */``
        table_foot.innerHTML = `<tr>
                        <th>Tạm tính:</th>
                        <td>${formatVND(total_money)}</td>
                    </tr>
                    <tr>
                        <th>Phí ship:</th>
                        <td>${formatVND(ship_fee)}</td>
                    </tr>
                    <tr>
                        <th>Khuyến mãi:</th>
                        <td>${formatVND(discount)}</td>
                    </tr>
                    <tr>
                        <th>Phương thức thanh toán:</th>
                        <td>${order.paymentTypes.payment_name}</td>
                    </tr>
                    <tr class="total">
                        <th class="border-no">Tổng tiền:</th>
                        <td class="border-no">${formatVND(total_money - discount + ship_fee)}</td>
                </tr>`
        list_table.innerHTML = listItemHTML
        title.innerHTML = `Đơn hàng #${order.id} được tạo vào lúc ${getDateCurrStr(order.created_at)} và đang trong trạng thái ${order.order_status}.`
        list_tracking.innerHTML = trackingHtml
        _$('.customer_address').innerHTML = `${order.ship_address1}, <span class="customer_ward"> ${order.ship_ward} </span>, <span class="customer_state"> ${order.ship_state} </span>, <span class="customer_city"> ${order.ship_city}, <span class="customer_country"> ${order.ship_country} </span>`
        _$('.box-address-checkout__info').innerHTML = `<span class="customer_name">${order.ship_name}</span> | <span>${order.ship_phone}</span>`
    }

    http.get(`${_URL_MAIN}/OrderDetail/get/orderid/${id}`)
        .then(data => handleOrderDetail(data))
}

const orderList = () => {
    const idCustomer = _$('#idCustomer').value

    const handleOrders = (data) => {
        let wrapOrders = _$('.ordersList')
        let html = ``
        data = data.reverse()
        data.forEach(e => {
            html += `<tr>
                <td class="order-id">#${e.id}</td>
                <td class="order-date">${getDateCurrStr(e.created_at)}</td>
                <td class="order-status">${e.order_status}</td>
                <td class="order-total">
                    <span class="order-price">${e.ship_address1}</span>
                </td>
                <td class="order-action">
                    <a href="#order-details" onclick="genderDetailOrder(${e.id})"
                        class="link-to-tab btn btn-outline btn-default btn-block btn-sm btn-rounded">View</a>
                </td>
            </tr>`
        })
        wrapOrders.innerHTML = html
    }

    http.get(`${_URL_MAIN}/Orders/get/customerid/${idCustomer}`)
        .then(data => handleOrders(data))
}

orderList()

function customerInvalid() {

    let first_name = _$('#first_name')
    let last_name = _$('#last_name')
    let billing_address = _$('#billing_address')
    let shipping_address = _$('#shipping_address')
    let city = _$('#city')
    let country = 'Việt Nam'
    let state = _$('#state')
    let ward = _$('#ward')
    let phone = _$('#phone')
    let code = _$('#code')
    let company = _$('#company')
    let birthday = _$('#birthday')
    let updated_at = getDateCurr()

    if(!first_name || first_name.value.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng nhập tên đệm của bạn', 'info')
        return false
    }

    if(!last_name || last_name.value.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng nhập tên của bạn', 'info')
        return false
    }

    if(!billing_address || billing_address.value.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng nhập địa chỉ thanh toán', 'info')
        return false
    }

    if(!shipping_address || shipping_address.value.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng nhập địa chỉ giao hàng', 'info')
        return false
    }

    if(!city || city.options[_$('#city').selectedIndex].text.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng chọn Tỉnh / Thành Phố của bạn', 'info')
        return false
    }

    if(!state || state.options[_$('#state').selectedIndex].text.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng chọn Quận / Huyện của bạn', 'info')
        return false
    }

    if(!ward || ward.options[_$('#ward').selectedIndex].text.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng chọn Phường / Xã của bạn', 'info')
        return false
    }

    if(!phone || phone.value.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng nhập số điện thoại', 'info')
        return false
    }

    if(!code || code.value.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng nhập mã CMND / CCCD', 'info')
        return false
    }

    let result = {
        id: idCustomer.value,
        first_name: first_name.value,
        last_name: last_name.value,
        billing_address: billing_address.value,
        shipping_address: shipping_address.value,
        city: city.options[_$('#city').selectedIndex].text,
        country: country.value,
        state: state.options[_$('#state').selectedIndex].text,
        ward: ward.options[_$('#ward').selectedIndex].text,
        phone: phone.value,
        code: code.value,
        email: email.value,
        company: company.value,
        birthday: birthday.value,
        gender: _$('#nam').checked ? true : false,
        updated_at
    }

    return result
}

const changeProfile = () => {
    let profile = customerInvalid()

    if(!profile) {
        return false
    }

    http.put(`${_URL_MAIN}/Customer/update`, profile)
    .then(rs => {
        Swal.fire('Success', 'Chỉnh sửa thành công', 'success')
        .then(rp => window.location.reload())
    })
}

function passwordValid() {
    let currentPass = _$('#cur-password')
    let newPass = _$('#new-password')
    let confirmPass = _$('#conf-password')

    if(!currentPass || currentPass.value.replaceAll(' ', '').length < 3) {
        Swal.fire('Message', 'Vui lòng nhập mật khẩu hiện tại từ 3 kí tự trở lên.', 'info')
        return false
    }

    if(!newPass || newPass.value.replaceAll(' ', '').length < 6) {
        Swal.fire('Message', 'Vui lòng nhập mật khẩu mới từ 6 kí tự trở lên.', 'info')
        return false
    }

    if(!confirmPass || confirmPass.value.replaceAll(' ', '').length < 6 || confirmPass.value != newPass.value) {
        Swal.fire('Message', 'Nhập lại mật khẩu mới chưa chính xác', 'info')
        return false
    }

    return {
        newPass: newPass.value, currentPass: currentPass.value
    }
}

const changePassword = () => {
    let newPassword = passwordValid()

    if(!newPassword) return

    http.post(`${_URL_MAIN}/Customer/changepassword`, newPassword)
    .then(data => {
        if(data.status == 200) {
            Swal.fire('Success', data.data, 'success')
            .then(rs => window.location.reload())
        } else {
            Swal.fire('Message', data.data, 'error')
        }
    })
}
let currentCity = _$('#city').getAttribute('data-current')
renderCity('#city', currentCity)

function defaultInfoSeller() {
    shopFullName.value = first_name.value + ' ' + last_name.value
    shopPhone.value = phone.value
    shopCode.value = code.value
    shopEmail.value = email[0].value
}

function sellerInvalid() {

    if(!shopFullName || shopFullName.value.replaceAll(' ', '') == '' || shopFullName.value.replaceAll(' ', '').length < 3) {
        Swal.fire('Message', 'Vui lòng nhập tên cửa hàng từ 3 ký tự', 'info')
        return false
    }

    if(!shopPhone || shopPhone.value.replaceAll(' ', '') == '' || !shopPhone.value.replaceAll(' ', '').match(/^\d{10}$/)) {
        Swal.fire('Message', 'Vui lòng nhập đúng định dạng số điện thoại cửa hàng', 'info')
        return false
    }

    if(!shopCode || shopCode.value.replaceAll(' ', '') == '' || !shopCode.value.replaceAll(' ', '').match(/^\d{12}$/)) {
        Swal.fire('Message', 'Vui lòng nhập đúng định dạng CMND / CCCD', 'info')
        return false
    }

    if(!shopEmail || shopEmail.value.replaceAll(' ', '') == '' || !shopEmail.value.replaceAll(' ', '').match(/^\S+@\S+\.\S+$/)) {
        Swal.fire('Message', 'Vui lòng nhập đúng định dạng email của cửa hàng', 'info')
        return false
    }

    if(!shopType || shopType.options[_$('#shopType').selectedIndex].text.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng chọn loại hình Cá nhân / Doanh nghiệp', 'info')
        return false
    }

    if(!shopCategory || shopCategory.options[_$('#shopCategory').selectedIndex].text.replaceAll(' ', '') == '') {
        Swal.fire('Message', 'Vui lòng chọn ngành hàng chủ yếu của shop', 'info')
        return false
    }

    let result = {
        name: shopFullName.value,
        phone: shopPhone.value,
        code: shopCode.value,
        email: shopEmail.value,
        type: shopType.value,
        category: {
            id: shopCategory.value
        },
        customer: {
            id: idCustomer.value
        },
    }

    return result
}

const sellerOpen = (btn) => {

    let seller = sellerInvalid()

    if(!seller) {
        return false
    }

    btn.style.pointerEvents = 'none';
    btn.innerHTML = 'Đang gửi yêu cầu..'

    http.post(`${_URL_MAIN}/Seller/add`, seller)
    .then(rs => {
        if(rs.status == 200) {
            Swal.fire('Success', rs.data.msg, 'success')
            .then(() => window.location.reload())
        } else {
            Swal.fire('Message', rs.data, 'info')
            .then(() => window.location.reload())
        }
    })
}

http.get(`${_URL_MAIN}/ShopCategories/get/level/0`)
.then(data => {
    let html = ''
    data.forEach(e => {
        html += `<option value="${e.id}">${e.category_name}</option>`
    })

    shopCategory.innerHTML = html
})