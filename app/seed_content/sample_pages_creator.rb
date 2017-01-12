class SamplePagesCreator < BaseSeedContentCreator

  def create
    puts("creating sample pages")
    Page.create({
      _path: seed_creator.sample_pages_path_prefix,
      title: "Sample Pages",
      child_order: [
        seed_creator.landing_page,
        seed_creator.campaign_page,
        seed_creator.gallery_page,
        seed_creator.contact_page,
        seed_creator.pricing_page,
      ],
    })
  end

end
