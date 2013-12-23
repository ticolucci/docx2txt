# Docx2TXT

Extract the simplest TXT (I could imagine) from a MS Docx. It just do a best effort to preserve paragraphs.

## How

Instantiate the docx with the location of the file

    doc = Docx2TXT::Docx.new file_path

Later just ask for the txt

    doc.to_txt

## Simple executable

    docx2txt <docxfilepath>

<!-- ## Code status

[![Build Status](https://travis-ci.org/thoughtworks/pacto.png)](https://travis-ci.org/thoughtworks/pacto)
[![Code Climate](https://codeclimate.com/github/thoughtworks/pacto.png)](https://codeclimate.com/github/thoughtworks/pacto)
[![Dependency Status](https://gemnasium.com/thoughtworks/pacto.png)](https://gemnasium.com/thoughtworks/pacto)
[![Coverage Status](https://coveralls.io/repos/thoughtworks/pacto/badge.png)](https://coveralls.io/r/thoughtworks/pacto) -->

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
