---
:layout: post
:title: Juseppe, a custom update site for Jenkins
:nodeid: 574
:created: 1436891798
:tags:
- general
- guest post
:author: danielbeck
---
*This is a guest post by Kirill Merkushev at Yandex. I met him at JUC Europe where he showed me the project he was working on: Juseppe. It looked really interesting, so I asked him to write this guest post.*

When you write your first custom Jenkins plugin for internal use, it's easy enough to deploy it on one or maybe two Jenkins instances. You can save it on your local drive and upload the HPI file via the Jenkins Plugin Manager as needed. It's easy to do this for a few releases. But as your experience grows, the number of plugins and their releases grows as well. The plugins directory on your local drive soon looks like a garbage dump, and it's difficult to find that most recent version of any plugin. And if you have a lot of Jenkins instances coordinating updates of your plugins may cause a lot of pain.
 
A similar situation is when you contribute a much-needed patch to an existing plugin, but you don't have the time to wait until your pull request is be merged and a new release is cut. Or you may need to patch a plugin in ways not suitable for distribution, and decide to effectively fork the plugin for use on your Jenkins instances. How are you going to do this?
 
A solution avoiding the problems from these situations is to set up your own update site to serve your private plugin builds. Juseppe allows you to do this quickly and easily.

## What is Juseppe?

*Juseppe* is an acronym for *Jenkins Update Site Embedded for Plugin Publishing Easily*. Juseppe can help you set up a Jenkins update site in just a few minutes.

### Features

* Generates signed `update-center.json` and `release-history.json`
* Works with HPI files directly (stored in one folder), no need to set up a Maven repository
* Watches for changes in the plugin folder and regenerates JSON files when changes are detected
* Serves generated files and plugin files with built-in Jetty web server
* Can be run in a "generate-only" mode when you want to use a different web server for these files.

### How can I get Juseppe?

It ships as a Docker container, or can be built from source. Visit [the GitHub project page](https://github.com/yandex-qatools/juseppe) to learn more. The complete user guide is available in [the GitHub project wiki](https://github.com/yandex-qatools/juseppe/wiki/Complete-Guide-of-own-update-center-using-Juseppe).
