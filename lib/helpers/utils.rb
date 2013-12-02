module Nanoc::Helpers
    module Utils
        def split_ext(extension, default=nil)
            ext, kind = extension.split('.')

            [ext || default, kind]
        end
    end
end