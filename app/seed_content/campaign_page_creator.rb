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
                            "<p>Accordions can be created by using a Panel Group "\
                            "widget and applying the <strong>accordion</strong> "\
                            "style to it. Lorem ipsum dolor sit amet, consectetur "\
                            "adipisicing elit, sed do eiusmod tempor incididunt. "\
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "\
                            "sed do eiusmod tempor incididunt.Lorem ipsum dolor sit amet, "\
                            "consectetur adipisicing elit, sed do eiusmod tempor "\
                            "incididunt.</p><p>Lorem ipsum dolor sit amet, "\
                            "consectetur adipisicing elit, sed do eiusmod tempor "\
                            "incididunt.Lorem ipsum dolor sit amet, consectetur "\
                            "adipisicing elit, sed do eiusmod tempor incididunt. "\
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "\
                            "sed do eiusmod tempor incididunt.</p>"),
                      ],
                    }),
                    PanelWidget.new({
                      title: "More Headlines",
                      content: [
                        create_text(
                            "<p>Accordions can be created by using a Panel Group "\
                            "widget and applying the <strong>accordion</strong> "\
                            "style to it. Lorem ipsum dolor sit amet, consectetur "\
                            "adipisicing elit, sed do eiusmod tempor incididunt.</p>"),
                      ],
                    }),
                    PanelWidget.new({
                      title: "More Content here\n",
                      content: [
                        create_text(
                            "<p>Accordions can be created by using a Panel Group "\
                            "widget and applying the <strong>accordion</strong> "\
                            "style to it.Lorem ipsum dolor sit amet, consectetur "\
                            "adipisicing elit, sed do eiusmod tempor incididunt. "\
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "\
                            "sed do eiusmod tempor incididunt.</p>"),
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
                    "<h3>Latest Testimonials</h3>"\
                    "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, "\
                    "consectetur elit, sed do eiusmotempor in ut labore et dolore "\
                    "magna aliqua. Ut enim ad minim veniam, quis nostrud Exercitation "\
                    "ullamco laboris nisi ommodo consequat ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, sed do eiusmod tempor incididunt. "\
                    "Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmotempor "\
                    "in ut labore et dolore magna aliqua. Ut enim ad minim veniam, "\
                    "quis nostrud Exercitation ullamco laboris nisi ommodo consequat.</p>"),
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
