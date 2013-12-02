module Nanoc::Helpers
    module Post
        def get_pretty_date(post)
            if post[:created_at]
                Date.parse(post[:created_at].to_s).strftime('%B %-d, %Y')
            else
                ""
            end
        end
    end
end