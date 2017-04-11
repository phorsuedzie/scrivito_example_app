class PricingPageCreator < BaseSeedContentCreator

  def create
    puts("creating pricing page")
    Page.create({
      _path: "#{seed_creator.sample_pages_path_prefix}/pricing",
      title: "Sample Pricing Page",
      tags: %w[section-widget card-widget call-to-action-widget column-widget],
      body: [
        SectionWidget.new({
          bg_color: "white",
          padding_size: "small",
          content: [
            create_h2_center("Sample Pricing Page"),
            create_text_center(
                "<p>This page was created using Column, Card, Headline, Text "\
                "and Call-To-Action widgets.<br>"\
                "You can test the responsiveness of this page and all others using the "\
                "preview size selector available on the Scrivito sidebar to the right.</p>"),
          ],
        }),

        SectionWidget.new({
          bg_color: "white",
          bg_image: seed_creator.img_orange_blue,
          padding_size: "medium",
          content: [
            create_columns([
              [
                CardWidget.new({
                  bg_color: "light",
                  show_heading: "no",
                  content: [
                    create_h3_center("Basic"),
                    create_h5_center("€10 / month"),
                    create_text(
                        "<ul>"\
                        "<li>Unlimited widgets</li>"\
                        "<li>1 GB storage</li>"\
                        "<li>No reports</li>"\
                        "<li>Ads</li>"\
                        "</ul>"),
                    create_button_center("medium", "primary", "Select Basic"),
                  ],
                }),
              ],
              [
                CardWidget.new({
                  bg_color: "light",
                  show_heading: "no",
                  content: [
                    create_h3_center("Plus"),
                    create_h5_center("€20 / month"),
                    create_text(
                        "<ul>"\
                        "<li>Unlimited widgets</li>"\
                        "<li>5 GB storage</li>"\
                        "<li>10 reports per month</li>"\
                        "<li>No ads</li>"\
                        "</ul>"),
                    create_button_center("medium", "success", "Select Plus"),
                  ],
                }),
              ],
              [
                CardWidget.new({
                  bg_color: "light",
                  show_heading: "no",
                  content: [
                    create_h3_center("Premium"),
                    create_h5_center("€30 / month"),
                    create_text(
                        "<ul>"\
                        "<li>Unlimited widgets</li>"\
                        "<li>20 GB storage</li>"\
                        "<li>50 reports per month</li>"\
                        "<li>No ads</li>"\
                        "</ul>"),
                    create_button_center("medium", "info", "Select Premium"),
                  ],
                }),
              ],
              [
                CardWidget.new({
                  bg_color: "light",
                  show_heading: "no",
                  content: [
                    create_h3_center("Business"),
                    create_h5_center("€40 / month"),
                    create_text(
                        "<ul>"\
                        "<li>Unlimited widgets</li>"\
                        "<li>Unlimited storage</li>"\
                        "<li>Unlimited reports</li>"\
                        "<li>No ads</li>"\
                        "</ul>"),
                    create_button_center("medium", "warning", "Select Business"),
                  ],
                }),
              ],
            ]),
          ],
        }),
      ],
    })
  end

end
