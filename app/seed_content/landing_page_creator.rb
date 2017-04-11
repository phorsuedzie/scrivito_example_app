class LandingPageCreator < BaseSeedContentCreator

  def create
    puts("creating landing page")
    Page.create({
      _path: "#{seed_creator.sample_pages_path_prefix}/landing",
      title: "Sample Landing Page",
      tags: %w[section-widget card-widget column-widget],
      body: [
        hero_section,
        launch_section,
        clients_section,
        services_section("light"),
        plans_section,
        team_section,
        maps_section,
      ],
    })
  end

  def hero_section
    SectionWidget.new({
      bg_color: "light",
      bg_image: seed_creator.img_gradient,
      padding_size: "medium",
      content: [
        create_h1("You are doing it right!"),
        create_small_space,
        ColumnWidget.new({
          column1: [
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_orbits),
              ],
              column2: [
                create_text(
                    "<h3>Fast Integration</h3>"\
                    "<p>Getting started is easy. Just "\
                    "drop the Scrivito gem into your Rails app, "\
                    "provide your API credentials, and you're done.</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_graph),
              ],
              column2: [
                create_text(
                    "<h3>Easy Editing</h3>"\
                    "<p>Launch your app and immediately start editing content "\
                    "in your browser. Add widgets, arrange them or add images "\
                    "using drag and drop, format your text and experience the "\
                    "ease of in-place editing.</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_earth_globe),
              ],
              column2: [
                create_text(
                    "<h3>Fast and Reliable Website</h3>"\
                    "<p>Visitors tend to leave a website after four seconds at "\
                    "most if loading times are slow. The Scrivito SDK is hooked "\
                    "to a CDN, making your content instantly available all over "\
                    "the world.</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
          ],
          column2: [
            create_image(seed_creator.img_laptop),
          ],
          column1_width: "5",
          column2_width: "7",
          column3_width: "0",
        }),
      ],
    })
  end

  def launch_section
    SectionWidget.new({
      padding_size: "medium",
      bg_color: "light",
      content: [
        ColumnWidget.new({
          column1: [
            create_h2("Launch your project"),
            create_h4("Become successful"),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_person),
              ],
              column2: [
                create_text(
                    "<p>This sample landing page consists of several sections "\
                    "on the top level.</p>"\
                    "<ul><li>Inside the sections, heavy use of columns is made.</li>"\
                    "<li>There are even columns inside of columns!</li>"\
                    "<li>Have you noticed the section background images?</li>"\
                    "</ul><p>Resize your browser window or use size selector from "\
                    "the sidebar to see how responsive the layout is.</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
          ],
          column2: [
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_copy),
              ],
              column2: [
                create_text(
                    "<h3>Widgets</h3>"\
                    "<p>This is a text widget. The headline is part of the text, "\
                    "so it can be easily formatted. If you want to set an anchor or "\
                    "change the alignment, use a headline widget instead.</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_mouse),
              ],
              column2: [
                create_text(
                    "<h3>Widgets</h3>"\
                    "<p>This is a text widget. The headline is part of the text, "\
                    "so it can be easily formatted. If you want to set an anchor or "\
                    "change the alignment, use a headline widget instead.</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_network),
              ],
              column2: [
                create_text(
                    "<h3>Widgets</h3>"\
                    "<p>This is a text widget. The headline is part of the text, "\
                    "so it can be easily formatted. If you want to set an anchor or "\
                    "change the alignment, use a headline widget instead.</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
          ],
          column1_width: "7",
          column2_width: "5",
          column3_width: "0",
        }),
      ],
    })
  end

  def clients_section
    SectionWidget.new({
      bg_color: "dark",
      padding_size: "medium",
      content: [
        create_h2_center("Our Clients"),
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
    })
  end

  def services_section(bg_color)
    SectionWidget.new({
      padding_size: "medium",
      bg_color: bg_color,
      content: [
        create_h2_center("Our Services — Your Benefits"),
        create_small_space,
        ColumnWidget.new({
          column1: [
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_graph),
              ],
              column2: [
                create_text(
                    "<h3>Networking</h3>"\
                    "<p>This is really a must-have. "\
                    "We wonder how you got along without this "\
                    "for such a long time!</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_orbits),
              ],
              column2: [
                create_text(
                    "<h3>Technology</h3>"\
                    "<p>This is really a must-have. "\
                    "We wonder how you got along without this "\
                    "for such a long time!</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_radio),
              ],
              column2: [
                create_text(
                    "<h3>Mobile support</h3>"\
                    "<p>This is really a must-have. "\
                    "We wonder how you got along without this "\
                    "for such a long time!</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
          ],
          column2: [
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_earth_globe),
              ],
              column2: [
                create_text(
                    "<h3>Global availability</h3>"\
                    "<p>This is really a must-have. "\
                    "We wonder how you got along without this "\
                    "for such a long time!</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_person),
              ],
              column2: [
                create_text(
                    "<h3>User management</h3>"\
                    "<p>This is really a must-have. "\
                    "We wonder how you got along without this "\
                    "for such a long time!</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_tools),
              ],
              column2: [
                create_text(
                    "<h3>Easy setup</h3>"\
                    "<p>This is really a must-have. "\
                    "We wonder how you got along without this "\
                    "for such a long time!</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
          ],
          column3: [
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_paper_plane),
              ],
              column2: [
                create_text(
                    "<h3>Fast delivery</h3>"\
                    "<p>This is really a must-have. "\
                    "We wonder how you got along without this "\
                    "for such a long time!</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_mouse),
              ],
              column2: [
                create_text(
                    "<h3>Authoring</h3>"\
                    "<p>This is really a must-have. "\
                    "We wonder how you got along without this "\
                    "for such a long time!</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
            ColumnWidget.new({
              column1: [
                create_image(seed_creator.img_icon_copy),
              ],
              column2: [
                create_text(
                    "<h3>Working copies</h3>"\
                    "<p>This is really a must-have. "\
                    "We wonder how you got along without this "\
                    "for such a long time!</p>"),
              ],
              column1_width: "3",
              column2_width: "9",
              column3_width: "0",
            }),
          ],
          column1_width: "4",
          column2_width: "4",
          column3_width: "4",
        }),
      ],
    })
  end

  def plans_section
    SectionWidget.new({
      bg_color: "darker",
      padding_size: "medium",
      content: [
        create_h2_center("Our Plans"),
        create_small_space,
        create_columns([
          [
            CardWidget.new({
              bg_color: "white",
              show_heading: "no",
              content: [
                create_h3_center("Personal"),
                create_h5_center("€5 / month"),
                create_text(
                    "<ul>"\
                    "<li>Basic widgets</li>"\
                    "<li>1 GB storage</li>"\
                    "<li>1 report per month</li>"\
                    "<li>Small Ads</li>"\
                    "</ul>"),
                create_button_center("medium", "primary", "Select Personal"),
              ],
            }),
          ],
          [
            CardWidget.new({
              bg_color: "white",
              show_heading: "no",
              content: [
                create_h3_center("Small Business"),
                create_h5_center("€20 / month"),
                create_text(
                    "<ul>"\
                    "<li>Unlimited widgets</li>"\
                    "<li>10 GB storage</li>"\
                    "<li>10 reports per month</li>"\
                    "<li>No ads</li>"\
                    "</ul>"),
                create_button_center("medium", "success", "Select Small Business"),
              ],
            }),
          ],
          [
            CardWidget.new({
              bg_color: "white",
              show_heading: "no",
              content: [
                create_h3_center("Enterprise"),
                create_h5_center("€99 / month"),
                create_text(
                    "<ul>"\
                    "<li>Unlimited widgets</li>"\
                    "<li>100 GB storage</li>"\
                    "<li>100 reports each month</li>"\
                    "<li>No ads</li>"\
                    "</ul>"),
                create_button_center("medium", "info", "Select Enterprise"),
              ],
            }),
          ],
        ]),
      ],
    })
  end

  def team_section
    SectionWidget.new({
      bg_color: "white",
      bg_image: seed_creator.img_office_light,
      padding_size: "small",
      content: [
        create_h2_center("Our Team"),
        create_small_space,
        ColumnWidget.new({
          column1: [
            CardWidget.new({
              bg_color: "white",
              color: "default",
              show_heading: "no",
              content: [
                create_image(seed_creator.img_portrait_2),
                create_h2_center("Maria Guadi"),
                create_h5_center("Financial Manager"),
                create_columns([
                  [ create_image(seed_creator.img_icon_facebook) ],
                  [ create_image(seed_creator.img_icon_twitter) ],
                  [ create_image(seed_creator.img_icon_linkedin) ],
                  [ create_image(seed_creator.img_icon_email) ],
                ]),
              ],
            }),
          ],
          column2: [
            CardWidget.new({
              bg_color: "white",
              color: "default",
              show_heading: "no",
              content: [
                create_image(seed_creator.img_portrait_3),
                create_h2_center("Kate Brown"),
                create_h5_center("Marketing Manager"),
                create_columns([
                  [ create_image(seed_creator.img_icon_facebook) ],
                  [ create_image(seed_creator.img_icon_googleplus) ],
                  [ create_image(seed_creator.img_icon_youtube) ],
                  [ create_image(seed_creator.img_icon_rss) ],
                ]),
              ],
            }),
          ],
          column3: [
            CardWidget.new({
              bg_color: "white",
              color: "default",
              show_heading: "no",
              content: [
                create_image(seed_creator.img_portrait_4),
                create_h2_center("Julia Exon"),
                create_h5_center("Sales Manager"),
                create_columns([
                  [ create_image(seed_creator.img_icon_linkedin) ],
                  [ create_image(seed_creator.img_icon_rss) ],
                  [ create_image(seed_creator.img_icon_twitter) ],
                  [ create_image(seed_creator.img_icon_email) ],
                ]),
              ],
            }),
          ],
          column1_width: "4",
          column2_width: "4",
          column3_width: "4",
        }),
      ],
    })
  end

  def maps_section
    SectionWidget.new({
      bg_color: "white",
      padding_size: "small",
      content: [
        GoogleMapsWidget.new({
          height: "100",
        }),
      ],
    })
  end

end
