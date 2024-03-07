document.addEventListener('DOMContentLoaded', function() {
    var searchForm = document.getElementById('searchForm');

    if (searchForm) {
        searchForm.addEventListener('submit', function(event) {
            event.preventDefault(); // Ngăn chặn việc gửi form

            var query = document.querySelector('#searchForm input[name="query"]').value;
            window.location.href = '/student?query=' + encodeURIComponent(query);
        });
    }
});
