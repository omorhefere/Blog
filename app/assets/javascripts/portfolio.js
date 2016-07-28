$(document).ready(function () {
  $('#myModal').on('show.bs.modal', function (e) {
    var image = $(e.relatedTarget).attr('src');
    var recipient = image.data('src')
    console.log(image)
    var modal = $(this);
    modal.find('.modal-body').val(recipient);
});

});
