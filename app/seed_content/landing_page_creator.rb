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
        create_h1("We are your consulting company"),
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
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<h3>Reliable Website</h3>"\
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<p>Lorem ipsum dolor sit amet, consectetur elit, "\
                    "sed do eiusmotempor in ut labore et dolore magna aliqua.</p>"\
                    "<ul><li>Ut enim ad minim veniam, quis nostrud</li>"\
                    "<li>Exercitation ullamco laboris nisi</li>"\
                    "<li>Commodo consequat</li>"\
                    "<li>Duis aute irure dolor in reprehenderit</li>"\
                    "<li>Laudantium, totam rem aperiam</li></ul>"),
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
                    "<h3>Hello Headline</h3>"\
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<h3>Hello Headline</h3>"\
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<h3>Hello Headline</h3>"\
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                "<h3>Latest Testimonials</h3>"\
                "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, "\
                "sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, "\
                "consectetur elit, sed do eiusmotempor in ut labore et "\
                "dolore magna aliqua. Ut enim ad minim veniam, "\
                "quis nostrud Exercitation ullamco laboris nisi ommodo "\
                "consequat ipsum dolor sit amet, consectetur adipisicing elit, "\
                "sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, "\
                "consectetur elit, sed do eiusmotempor in ut labore et "\
                "dolore magna aliqua. Ut enim ad minim veniam, "\
                "quis nostrud Exercitation ullamco laboris nisi ommodo "\
                "consequat.</p>"),
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
        create_h2_center("Our Services"),
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
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<h3>Future proof</h3>"\
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<h3>Maps</h3>"\
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<h3>Users</h3>"\
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<h3>Easy to use</h3>"\
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                    "<p>Lorem ipsum dolor sit amet, "\
                    "consectetur adipisicing elit, "\
                    "sed do eiusmod tempor incididunt.</p>"),
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
                create_h3_center("Beginner"),
                create_h5_center("€5 / month"),
                create_text(
                    "<ul>"\
                    "<li>Limited widgets</li>"\
                    "<li>1GB storage</li>"\
                    "<li>1 report each month</li>"\
                    "<li>Small Ads</li>"\
                    "</ul>"),
                create_button_center("medium", "primary", "Select Beginner"),
              ],
            }),
          ],
          [
            CardWidget.new({
              bg_color: "white",
              show_heading: "no",
              content: [
                create_h3_center("Advanced"),
                create_h5_center("€20 / month"),
                create_text(
                    "<ul>"\
                    "<li>Unlimited widgets</li>"\
                    "<li>10GB storage</li>"\
                    "<li>10 reports each month</li>"\
                    "<li>No ads</li>"\
                    "</ul>"),
                create_button_center("medium", "success", "Select Advanced"),
              ],
            }),
          ],
          [
            CardWidget.new({
              bg_color: "white",
              show_heading: "no",
              content: [
                create_h3_center("Pro"),
                create_h5_center("€99 / month"),
                create_text(
                    "<ul>"\
                    "<li>Unlimited widgets</li>"\
                    "<li>100GB storage</li>"\
                    "<li>100 reports each month</li>"\
                    "<li>No ads</li>"\
                    "</ul>"),
                create_button_center("medium", "info", "Select Pro"),
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
