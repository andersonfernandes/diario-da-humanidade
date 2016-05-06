$(document).on('page:change', function() {
  $('.summernote').summernote({
    height: 300,
    toolbar: [['style', ['bold', 'italic', 'underline', 'clear']],
              ['font', ['fontname', 'strikethrough', 'superscript', 'subscript']],
              ['fontsize', ['fontsize']], ['color', ['color']],
              ['para', ['ul', 'ol', 'paragraph']],
              ['height', ['height']]]
  });
});
