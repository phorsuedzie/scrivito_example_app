class SeedContentCreator < BaseSeedContentCreator

  def self.create
    workspace_title = "Example #{SecureRandom.hex(6)}"
    workspace = find_or_create_workspace(workspace_title)
    Scrivito::Workspace.current = workspace
    new(seed_creator: nil).create
    workspace.publish
  end

  def self.find_or_create_workspace(workspace_title)
    Scrivito::Workspace.find_by_title(workspace_title) ||
        Scrivito::Workspace.create(title: workspace_title)
  end

  def create
    Obj.all.each do |obj|
      puts("clearing path #{obj.path}")
      obj.update(_path: nil)
    end
    Obj.all.each do |obj|
      puts("destroying #{obj.id}")
      obj.destroy
    end
    home_page
    search_page
  end

  def home_page
    @home_page ||= HomePageCreator.new({
      seed_creator: self,
      child_order: [
        blog_overview_page,
        hierarchy_start_page,
        widgets_start_page,
        sample_pages_start_page,
      ],
    }).create
  end

  def blog_overview_page
    @blog_overview_page ||= BlogPagesCreator.new(seed_creator: self).create
  end

  def campaign_page
    @campaign_page ||= CampaignPageCreator.new(seed_creator: self).create
  end

  def contact_page
    @contact_page ||= ContactPageCreator.new(seed_creator: self).create
  end

  def gallery_page
    @gallery_page ||= GalleryPageCreator.new(seed_creator: self).create
  end

  def hierarchy_start_page
    @hierarchy_start_page ||= HierarchyPagesCreator.new(seed_creator: self).create
  end

  def landing_page
    @landing_page ||= LandingPageCreator.new(seed_creator: self).create
  end

  def pricing_page
    @pricing_page ||= PricingPageCreator.new(seed_creator: self).create
  end

  def sample_pages_path_prefix
    "/sample_pages"
  end

  def sample_pages_start_page
    @sample_pages_start_page ||= SamplePagesCreator.new(seed_creator: self).create
  end

  def search_page
    @search_page ||= SearchPageCreator.new(seed_creator: self).create
  end

  def widgets_pages_path_prefix
    "/widgets"
  end

  def widgets_start_page
    @widgets_start_page ||= WidgetsPagesCreator.new(seed_creator: self).create
  end

  def pdf_scrivito_paper
    @pdf_scrivito ||= upload_pdf_obj("scrivito-paper.pdf", "Scrivito Paper PDF")
  end

  %w[
    aqua.jpg
    beach-night.jpg
    boats.jpg
    city-1.jpg
    city-2.jpg
    city-skyline.jpg
    football.jpg
    gradient.jpg
    icon-copy.png
    icon-earth-globe.png
    icon-email.png
    icon-facebook.png
    icon-googleplus.png
    icon-graph.png
    icon-linkedin.png
    icon-mouse.png
    icon-network.png
    icon-newspaper.png
    icon-orbits.png
    icon-paper-plane.png
    icon-person.png
    icon-radio.png
    icon-rss.png
    icon-tools.png
    icon-twitter.png
    icon-youtube.png
    laptop.png
    mountain-lake.jpg
    office-dark.jpg
    office-light.jpg
    orange-blue.jpg
    portrait-1.jpg
    portrait-2.jpg
    portrait-3.jpg
    portrait-4.jpg
    red-gerbera.jpg
    street.jpg
    sun.jpg
    sunset.jpg
    whitepaper.png
    yellow.jpg
  ].each do |filename|
    basename = filename.gsub(/\..*$/, '')
    name = "img_#{basename.underscore}"
    title = basename.titleize
    var_name = "@#{name}"
    define_method(name) do
      unless instance_variable_defined?(var_name)
        instance_variable_set(var_name, upload_image_obj(filename, title))
      end
      instance_variable_get(var_name)
    end
  end

  private

  def upload_image_obj(name, title)
    puts("creating image #{name}")
    Image.create({
      _permalink: name,
      blob: File.new(Rails.root.join("scrivito_content/#{name}")),
      title: title,
    })
  end

  def upload_pdf_obj(name, title)
    puts("creating pdf #{name}")
    Download.create({
      _permalink: name,
      blob: File.new(Rails.root.join("scrivito_content/#{name}")),
      title: title,
    })
  end

end
