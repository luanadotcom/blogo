---
title: "Moving the Blog Around"
date: 2019-10-14T13:24:25+01:00
draft: true
---

I have played around the idea of having a blog to post simple stuff I'm learning about and have given it a shot a couple of times during the past year. I've started out playing with [Jekyll](https://jekyllrb.com/) and [GitHub Pages](https://pages.github.com/) but I ended up leaving it aside and got back to it when I had to renew my domain. 

I did a bit of a trial with [Hugo](https://gohugo.io/) and GitHub Pages but there's no native way to host it as with Jekyll, so that had to work out with two repos, one to generate the page files and the `*.github.io` repo as a submole on the first repo which the generated page files were sent to. Yes, it __was__ as clunky as it sounds.

So on the mindset of changes I decided to try [Netlify](https://app.netlify.com/) after hearing only great things of it.

Tell you about a seamless switch! In 5 minutes I had the website running out of Netlify. I just:

1. Removed the `*.github.io` submodule from the Hugo repo where I build the site;

1. Changed the `publishDir` value in my `config.toml` to `public` as it's the default (it was previously my submodule's directory);

1. Added a new site on Netlify out of my Hugo repo, it is an easy step to step to add a repo to build your site;

1. Added my custom domain to the site on Netlify and updated the nameservers on my DNS' provider to use Netlify's nameservers.

And that was it! Now any new push to my Hugo repo deploys the blog in a seamless fashion. :collision:

I was quite pleased with the simplicity of the process. Netlify has a nice [comparison page](https://www.netlify.com/github-pages-vs-netlify/) between its services and GitHub Pages if you want to compare further. 

