let limit = 10
let currentPage = 1
let pagePrev, pageNext
let htmlPagePrev, htmlPageNext
let total_page, total_order

const loadOrder = (data) => {
    let wrapOrder = _$('.order_list')
    let html = ``
    data.forEach(e => {
        
        html +=  /*html*/`<tr>
            <td>${e.id}</td>

            <td class="order-success">
                <a href="javascript:void(0)">
                    <span>${getDateCurrStr(e.created_at)}</span>
                </a>
            </td>

            <td>
                ${e.users.stores.store_name}
            </td>

            <td>
                <a href="javascript:void(0)">
                    ${e.customers.first_name}
                    ${e.customers.last_name}
                </a>
            </td>

            <td class="order-success">
                <span>${e.order_status}</span>
            </td>

            <td>
                <ul>
                    <li>
                        <a href="${_ADMIN_DIR}/detail-orders/${e.id}">
                            <span class="lnr lnr-eye"></span>
                        </a>
                    </li>

                    <li>
                        <a href="javascript:void(0)">
                            <span class="lnr lnr-trash"></span>
                        </a>
                    </li>
                </ul>
            </td>
        </tr>`
    })
    wrapOrder.innerHTML = html
}

const loadPages = (totalOrder) => {
    let pagination = _$('.pagination')
    total_order = totalOrder

    total_page = Math.floor(total_order / limit) + 1

    let htmlPages = ``, htmlPagesPrev = ``, htmlPagesNext = ``

    for (let i = currentPage + 1; i <= currentPage + 3; i++) {
        if (i > total_page) break
        htmlPagesNext += `<li class="page-item ${i == currentPage ? 'active' : ''}">
            <button class="page-link" onclick="genderOrder(${i})">${i}</button>
        </li>`
    }

    for (let i = currentPage - 1; i >= currentPage - 3; i--) {
        if (i < 1) break
        htmlPagesPrev = `<li class="page-item ${i == currentPage ? 'active' : ''}">
            <button class="page-link" onclick="genderOrder(${i})">${i}</button>
        </li>` + htmlPagesPrev
    }

    htmlPages += `<li class="page-item active">
        <button class="page-link" onclick="genderOrder(${currentPage})">${currentPage}</button>
    </li>`

    pagePrev = (currentPage - 1 < 1) ? total_page : currentPage - 1
    pageNext = (currentPage + 1 > total_page) ? 1 : currentPage + 1
    htmlPagePrev = `<li class="page-item">
        <button class="page-link" onclick="genderOrder(${pagePrev})"
            tabindex="-1">Previous</button>
    </li>`
    htmlPageNext = `<li class="page-item">
        <button class="page-link" onclick="genderOrder(${pageNext})"
            tabindex="-1">Next</button>
    </li>`

    pagination.innerHTML = htmlPagePrev + htmlPagesPrev + htmlPages + htmlPagesNext + htmlPageNext
}

const genderOrder = (page) => {
    currentPage = page
    loadPages(total_order)
    window.scrollTo({ top: 0, behavior: 'smooth' })
    http.get(`http://localhost:8080/Orders/get/${currentPage - 1}/${limit}`)
        .then(data => {
            if(data.status == 200) {
                loadOrder(data.data)
            }
        })
        .catch(err => console.log(err))
}
genderOrder(currentPage)

http.get(`http://localhost:8080/Orders/get`)
    .then(data => loadPages(data.length))
    .catch(err => console.log(err))