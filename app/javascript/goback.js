document.addEventListener('DOMContentLoaded', function() {
    var backButton = document.getElementById('backButton');

    if (backButton) {
        backButton.addEventListener('click', function() {
            window.location.href = '/student'; // Đường dẫn đến trang danh sách sinh viên
        });
    }
});