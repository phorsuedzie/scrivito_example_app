class CampaignPageCreator < LandingPageCreator

  def create
    puts("creating campaign page")
    Page.create({
      _path: "#{seed_creator.sample_pages_path_prefix}/campaign",
      title: "Sample Campaign Page",
      tags: %w[section-widget card-widget column-widget],
      body: [
        download_section,
        services_section("darker"),
        launch_section,
        plans_section,
      ],
    })
  end

  def download_section
    SectionWidget.new({
      bg_color: "none",
      bg_image: seed_creator.img_office_dark,
      padding_size: "medium",
      content: [
        create_small_space,
        CardWidget.new({
          show_heading: "no",
          bg_color: "light",
          color: "default",
          content: [
            create_h1_center("Download your Whitepaper now"),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_whitepaper),
                CallToActionWidget.new({
                  alignment: "center",
                  button_style: "danger",
                  size: "medium",
                  action_link: Scrivito::Link.new({
                    url: seed_creator.pdf_scrivito_paper,
                    title: "Download Scrivito PDF",
                  }),
                })
              ],
              column2: [
                create_small_space,
                PanelGroupWidget.new({
                  layout_type: "accordion",
                  panels: [
                    PanelWidget.new({
                      title: "Best practices",
                      content: [
                        create_text(
                            "<p>This is a small sample campaign page that includes a "\
                            "headline, a panel group displayed as an accordion, images, "\
                            "a call to action, and standard text, arranged using column "\
                            "widgets. All this has been placed on a card.</p>"),
                      ],
                    }),
                    PanelWidget.new({
                      title: "Getting creative",
                      content: [
                        create_text(
                            "<p>This is a small sample campaign page that includes a "\
                            "headline, a panel group displayed as an accordion, images, "\
                            "a call to action, and standard text, arranged using column "\
                            "widgets. All this has been placed on a card.</p>"),
                      ],
                    }),
                    PanelWidget.new({
                      title: "More Content here\n",
                      content: [
                        create_text(
                            "<p>This is a small sample campaign page that includes a "\
                            "headline, a panel group displayed as an accordion, images, "\
                            "a call to action, and standard text, arranged using column "\
                            "widgets. All this has been placed on a card.</p>"),
                      ],
                    }),
                  ],
                }),
              ],
              column1_width: "6",
              column2_width: "6",
              column3_width: "0",
            }),
            create_small_space,
            ColumnWidget.new({
              column1: [
                create_text(
                    "<h3>Latest Testimonial</h3>"\
                    "<p>Each time a working copy is published, Scrivito adds it "\
                    "to your publishing history. It's the key to finding and "\
                    "reactivating content that has meanwhile been altered or removed "\
                    "from your website. If, for example, you need to access an earlier "\
                    "version of a specific page, undelete a widget, or want to "\
                    "completely reset your website content to an earlier state, the "\
                    "publishing history simply lets you do it.</p>"\
                    "<p>You can access the publishing history via the sidebar.</p>"),
              ],
              column2: [
                create_image(seed_creator.img_portrait_1),
              ],
              column1_width: "9",
              column2_width: "3",
              column3_width: "0",
            }),
          ],
        }),
      ],
    })
  end

end
