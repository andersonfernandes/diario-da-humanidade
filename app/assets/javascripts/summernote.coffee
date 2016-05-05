$(document).on 'page:change', ->
  $('.summernote').summernote
    height: 300
    toolbar: [
      [
        'style'
        [
          'bold'
          'italic'
          'underline'
          'clear'
        ]
      ]
      [
        'font'
        [
          'strikethrough'
          'superscript'
          'subscript'
        ]
      ]
      [
        'fontsize'
        [ 'fontsize' ]
      ]
      [
        'color'
        [ 'color' ]
      ]
      [
        'para'
        [
          'ul'
          'ol'
          'paragraph'
        ]
      ]
      [
        'height'
        [ 'height' ]
      ]
    ]
  return
