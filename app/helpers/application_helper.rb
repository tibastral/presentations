module ApplicationHelper
  def github_banner
    link_to "http://github.com/tibastral/presentations", :class => 'fork-on-github' do
      image_tag "http://bit.ly/github-red-banner-right", :alt => "Fork me on GitHub"
    end
  end
end
