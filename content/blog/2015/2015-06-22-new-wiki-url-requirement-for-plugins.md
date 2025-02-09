---
:layout: post
:title: New Wiki URL Requirement for Plugins
:nodeid: 570
:created: 1434978221
:tags:
- general
- meta
- plugins
:author: danielbeck
---
Let's say you're browsing the 'Available' tab in the Jenkins plugin manager for interesting-looking plugins. How do you learn more about them, preferably without installing them on your production instance? You click the plugin's name, which usually links to the plugin's wiki page, of course!

Unfortunately, it's possible for plugins to be published without a wiki page, or any other documentation aside from what's provided in the plugin itself. This is really unfortunate, as users rely on wiki pages and similar documentation to learn more about a plugin before installing or upgrading it, like its features, limitations, or recent changes. Additionally, plugin wiki pages have a special section at the top that provides an automatically generated technical overview of the plugin, such as dependencies to other plugins, the minimum compatible Jenkins version, a list of developers, and links to the source code repository and issue tracker component. Everyone learning about or using a plugin benefits from a plugin wiki page and luckily, almost all plugins have one!

To ensure that *every* plugin has at least a basic wiki page with some documentation, we decided to only publish plugins in the Jenkins update center that have and link to a wiki page. To keep the impact to a minimum, we're implementing this plan in several stages.

The first stage went live on June 1: All existing plugins that don't have a (valid) wiki link got a wiki link [assigned by the update center](https://github.com/jenkinsci/backend-update-center2/blob/master/src/main/resources/wiki-overrides.properties) (a so-called 'override'), either to an existing wiki page if there was one, or a generic ["This plugin has no documentation" wiki page](https://wiki.jenkins-ci.org/display/JENKINS/Plugin+Documentation+Missing) otherwise. This ensures that no currently existing plugins get dropped from the update center at this point. Of course, _new_ plugins that don't provide a wiki URL and don't have an override URL will not show up at all.

The second stage will be enabled later this year: We're planning to remove all the overrides mentioned above. At this point, plugins may get removed from the update center if they still don't specify a wiki URL. Of course this isn't our goal, and we'll try to work with plugin authors to prevent this from happening.

So what can you do? Check the [current overrides list](https://github.com/jenkinsci/backend-update-center2/blob/master/src/main/resources/wiki-overrides.properties) to see whether the plugins you care about are affected, and if so, [see the landing page in the wiki](https://wiki.jenkins-ci.org/display/JENKINS/Plugin+Documentation+Missing#PluginDocumentationMissing-HowcanIhelp%3F) to learn what you can do. If you have any questions about this process not covered by the wiki, ask us on the [Jenkins developers mailing list](https://groups.google.com/forum/#!forum/jenkinsci-dev).
