let limit = 5
let currentPage = 1
let pagePrev, pageNext
let htmlPagePrev, htmlPageNext
let total_page, total_vendor

const loadVendorStore = (data) => {
    let wrapVendorStore = document.querySelector('.vendor-js')
    let html = ``
    data.forEach(e => {
        html +=  /*html*/`<tr>
        <td>${e.id}</td>

        <td>${e.store_code}</td>

        <td>${e.store_name}</td>

        <td>${e.address}</td>

        <td>${e.phone}</td>

        <td>
                <img src="${!!e.image.match('http|https') ? e.image : '/' + e.image}" class="img-fluid"
                    alt="" width="80px">
        </td>

        <td>${getDateCurrStr(e.created_at)}</td>

        <td>
            <ul>
                <li>
                    <a href="order-detail.html">
                        <span class="lnr lnr-eye"></span>
                    </a>
                </li>

                <li>
                    <a href="./edit/vendors/${e.id}">
                        <span class="lnr lnr-pencil"></span>
                    </a>
                </li>

                <li>
                    <a href="javascript:void(0)" onclick="deleteStore(${e.id})">
                            <i class="far fa-trash-alt theme-color"></i>
                    </a>
                </li>
            </ul>
        </td>
    </tr>`
    })
    wrapVendorStore.innerHTML = html
}

const loadPages = (totalVendor) => {
    let pagination = _$('.pagination')
    total_vendor = totalVendor

    total_page = Math.floor(total_vendor / limit) + 1

    let htmlPages = ``, htmlPagesPrev = ``, htmlPagesNext = ``

    for (let i = currentPage + 1; i <= currentPage + 3; i++) {
        if (i > total_page) break
        htmlPagesNext += `<li class="page-item ${i == currentPage ? 'active' : ''}">
            <button class="page-link" onclick="genderVendor(${i})">${i}</button>
        </li>`
    }

    for (let i = currentPage - 1; i >= currentPage - 3; i--) {
        if (i < 1) break
        htmlPagesPrev = `<li class="page-item ${i == currentPage ? 'active' : ''}">
            <button class="page-link" onclick="genderVendor(${i})">${i}</button>
        </li>` + htmlPagesPrev
    }

    htmlPages += `<li class="page-item active">
        <button class="page-link" onclick="genderVendor(${currentPage})">${currentPage}</button>
    </li>`

    pagePrev = (currentPage - 1 < 1) ? total_page : currentPage - 1
    pageNext = (currentPage + 1 > total_page) ? 1 : currentPage + 1
    htmlPagePrev = `<li class="page-item">
        <button class="page-link" onclick="genderVendor(${pagePrev})"
            tabindex="-1">Previous</button>
    </li>`
    htmlPageNext = `<li class="page-item">
        <button class="page-link" onclick="genderVendor(${pageNext})"
            tabindex="-1">Next</button>
    </li>`

    pagination.innerHTML = htmlPagePrev + htmlPagesPrev + htmlPages + htmlPagesNext + htmlPageNext
}

const genderVendor = (page) => {
    currentPage = page
    loadPages(total_vendor)
    window.scrollTo({ top: 0, behavior: 'smooth' })
    http.get(`http://localhost:8080/ShopStores/get/${currentPage - 1}/${limit}`)
        .then(data => loadVendorStore(data))
        .catch(err => console.log(err))
}
genderVendor(currentPage)

http.get(`http://localhost:8080/ShopStores/get`)
    .then(data => loadPages(data.length))
    .catch(err => console.log(err))

function deleteStore(id) {
    Swal.fire({
        title: "Are you sure ?",
        text: "Xóa cửa hàng đúng hong?",
        icon: "info",
        showCancelButton: true,
        cancelButtonColor: '#d33',
        confirmButtonText: 'Oke'
    }).then(isDeleted => {
        if (isDeleted.isConfirmed) {

            http.delete(`http://localhost:8080/ShopStores/delete/${id}`)
                .then(data => {
                    Swal.fire('Success', 'Xóa cửa hàng thành công', 'success')
                    window.location.reload()
                })
                .catch(err => Swal.fire('Message', 'Đã có lỗi xãy ra, vui lòng thử lại', 'info'))
        }
    })
}