

const loadComment = (data) => {
    let wrapComment = document.querySelector('.product_rating')
    let html = ``
    data = data.reverse()
    data.forEach(e => {
        html +=  /*html*/`<li class="comment">
        <div class="comment-body">
            <figure class="comment-avatar">
                <img src="https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png" alt="Commenter Avatar" width="90" height="90">
            </figure>
            <div class="comment-content">
                <h4 class="comment-author">
                    <a href="#">${e.customers.last_name}</a>
                    <span class="comment-date">${getDateCurrStr(e.created_at)}</span>
                </h4>
                <div class="ratings-container comment-rating">
                    <div class="ratings-full">
                        <span class="ratings" id="ratings_star" style="width:${e.rating*20}%;"></span>
                        <span class="tooltiptext tooltip-top"></span>
                    </div>
                </div>
                <p>${e.comment}</p>
                <div class="comment-action">
                    <a href="javascript:void(0)" class="btn btn-secondary btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize" 
                    onclick="deleteComment(${e.id})">
                        <i class="bi bi-bookmark-x" >X</i>Delete
                    </a>
                    
                </div>
            </div>
        </div>
    </li>`
    })
    wrapComment.innerHTML = html
}
http.get(`http://localhost:8080/ProductReviews/get/productid/${ _$('#product_id').value * 1}`)
    .then(data => loadComment(data))
    .catch(err => console.log(err))

    function commentInvalid(type = 0) {
        // let product_id = _$('#product_id')
        // let customer_id = _$('#customer_id')
        let rating = _$('#rating')
        let comment = _$('#comment')
        // let created_at = _$('#created_at')
        // let updated_at = _$('#updated_at')
        
        
    
        // if(!product_id || product_id.value.replaceAll(' ', '') == '') {
        //     Swal.fire('Message', 'Vui lòng nhập tên sản phẩm', 'info')
        //     return false
        // }
    
        // if(!customer_id || customer_id.value.replaceAll(' ', '') == '') {
        //     Swal.fire('Message', 'Vui lòng nhập mã sản phẩm (slug)', 'info')
        //     return false
        // }
    
        if(!rating || rating.value.replaceAll(' ', '') == '') {
            Swal.fire('Message', 'Vui lòng nhập số đánh giá', 'info')
            return false
        }
    
        if(!comment || comment.value.replaceAll(' ', '') == '') {
            Swal.fire('Message', 'Vui lòng nhập đánh giá sản phẩm', 'info')
            return false
        }
    
        // if(!created_at || created_at.value.replaceAll(' ', '') == '') {
        //     Swal.fire('Message', 'Vui lòng nhập số lượng trên mỗi đơn vị', 'info')
        //     return false
        // }
        // if(!updated_at || updated_at.value.replaceAll(' ', '') == '') {
        //     Swal.fire('Message', 'Vui lòng nhập số lượng trên mỗi đơn vị', 'info')
        //     return false
        // }
    
        let result = {
            products: {
                id: _$('#product_id').value * 1,
            },
            customers: {
                id: _$('#idCustomer').value * 1,
            } ,
            rating: rating.value * 1,
            comment: comment.value,
            // created_at: created_at.value,
            // updated_at: updated_at.value
        }

        return result
    }
    const addComment = () => {
    
        let newComment = commentInvalid()
    
        if(!newComment) {
            return false
        }
        console.log(newComment);
        

        http.post(`${_URL_MAIN}/ProductReviews/add`, newComment)
        .then(data => {
            Swal.fire('Success', 'Thêm đánh giá thành công', 'success')
            .then(rs => window.location.reload())
        })
        
    }

    function deleteComment(id) {
        Swal.fire({
            title: "Are you sure ?",
            text: "Xóa comment hở?",
            icon: "info",
            showCancelButton: true,
            cancelButtonColor: '#d33',
            confirmButtonText: 'Oke'
        }).then(isDeleted => {
            if (isDeleted.isConfirmed) {
                
                http.delete(`http://localhost:8080/ProductReviews/delete/${id}`)
                .then(data => {
                    Swal.fire('Success', 'Xóa comment thành công!! desu~~', 'success')
                    window.location.reload()    
                })
                .catch(err => Swal.fire('Message', 'Đã có lỗi xãy ra, vui lòng thử lại', 'info'))
            }
        })
    }

    function rating_star(event,element, value){
        event.preventDefault();
        _$('.rating-stars .active')?.classList.remove('active')
        element.classList.add('active')
        document.getElementById("rating").value = value;
    }
    
    const arr =[ _$('.rating-stars')];
    let sum = 0;
    for(a=0; a < arr.length; a++){
        sum +=a;
    }
    const avg = sum / arr.length;
    document.getElementById("avr_rating").value=avg;