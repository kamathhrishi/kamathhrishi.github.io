// get the ninja-keys element
const ninja = document.querySelector('ninja-keys');

// add the home and posts menu items
ninja.data = [{
    id: "nav-",
    title: "",
    section: "Navigation",
    handler: () => {
      window.location.href = "/";
    },
  },{id: "nav-projects",
          title: "projects",
          description: "Projects by Hrishikesh Kamath, including TheMarketCast.ai, StrataLens AI, a distributed web search engine in Rust, and PySyft.",
          section: "Navigation",
          handler: () => {
            window.location.href = "/projects/";
          },
        },{id: "nav-blog",
          title: "blog",
          description: "Essays by Hrishikesh Kamath on AI agents, retrieval, web search, and investing, published on Substack.",
          section: "Navigation",
          handler: () => {
            window.location.href = "/blog/";
          },
        },{id: "nav-portfolio",
          title: "portfolio",
          description: "Domains owned by Hrishikesh Kamath, including themarketcast.ai, stratalens.ai, and noleaf.app.",
          section: "Navigation",
          handler: () => {
            window.location.href = "/portfolio/";
          },
        },];
