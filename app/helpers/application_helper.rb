module ApplicationHelper
  def github_banner
    link_to "http://github.com/tibastral/presentations", :class => 'fork-on-github' do
      image_tag "http://bit.ly/github-red-banner-right", :alt => "Fork me on GitHub"
    end
  end

  def format_oldness created_at
    if created_at < 2.months.ago
      "more-than-two-month-old"
    elsif created_at < 1.month.ago
      "more-than-one-month-old"
    else
      ""
    end
  end
end
