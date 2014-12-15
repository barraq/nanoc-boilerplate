module Nanoc::Helpers
  module Utils

    # Split a file `extension` into a two parts `ext` and `kind` where
    # `ext` is the output file extension (e.g. html, xml, etc.) and `kind`
    # is the input file extension (e.g. md, html, etc.).
    #
    # @param [String] extension is the file extension, e.g. `html.md`, `xml`.
    # @param [String] default is the default output extension if none is specified.
    #
    def split_ext(extension, default: nil)
      ext, kind = extension.split('.')
      [if kind then
         ext
       else
         default
       end, kind || ext]
    end
  end
end