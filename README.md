## Table of Contents

- [Introduction](#introduction)
- [What you'll need](#what-youll-need)
- [General change recommendations](#general-change-recommendations)
- [housekeeping](#housekeeping)
- [How to make a blog post](#how-to-make-a-blog-post)
- [Updates on User Guides](#updates-on-user-guides)
- [Updates on User Guides](#updates-on-user-guides)
- [How to make a blog post](#how-to-make-a-blog-post)
- [How to make a User Guide](#how-to-make-a-user-guide)
- [How to make a ByteRubpedia Entry](#how-to-make-a-moneropedia-entry)
- [How to update the Team page](#how-to-update-the-team-page)
- [How to update the Roadmap](#how-to-update-the-roadmap)
- [How to add a new Merchant](#how-to-add-a-new-merchant)
- [How to add a question to the FAQ](#how-to-add-a-question-to-the-faq)
- [How to add a publication to the Library](#how-to-add-a-publication-to-the-library)
- [How to translate a page](#how-to-translate-a-page)
- [How to add a new language](#how-to-add-a-new-language)

## Introduction
This README here to walk you through everything you need to know to make changes, edits, or even completely new pages for the new [getmonero.org website](https://getmonero.org/). It'll definitely be a bit of a ride, so strap yourself in.
Feel free to skip down to a relevant section if you already know what you need.

If you need support about something related to the website, plese join `#monero-site` [Freenode/IRC](irc://chat.freenode.net/#monero-site), [Matrix](https://matrix.to/#/!txpwSzQzkuUaVbtsIx:matrix.org) and MatterMost. For general info about ByteRub join `#monero`. We'll do whatever we can to help you.

## What you'll need

* Jekyll: [getmonero.org](https://getmonero.org/) is made using a simple, static website generator called [Jekyll](https://jekyllrb.com/). You will need it installed on your system to test any changes that you made. Follow the instructions on the website to get up and going:
  * Install Ruby dependencies as suggested [in the Jekyll documentation](https://jekyllrb.com/docs/installation/)
  * Install Bundler: `gem install bundler`
  * Install Jekyll with all dependencies (run from the project directory): `bundle`

* GitHub/GitLab: Pretty much everything in ByteRub is hosted on [GitHub](https://github.com/byterubpay) or [getmonero GitLab](https://repo.getmonero.org/users/byterubpay/projects) and uses Git as the primary version control system. If you're not familiar with how to use Git, you can check out [this tutorial](https://guides.github.com/activities/hello-world/) for a good overview. It will take you through pretty much everything you'll need to know to edit the website. If you haven't already, register on GitLab and fork the [ByteRub Website repository](https://repo.getmonero.org/byterubpay/monero-site).

*Note: If you're confused, feel free to click other files in the same directory (folder) that you are in for the step that you are on to see some working examples. Compare them to the instructions and you should understand better.*

Once you have the above list of things, it's typically a good idea to build the website from your local computer to make sure it works before you make any changes. To do this, complete the following steps:

1. Navigate to your local `monero-site` repository.
2. Serve the website: `bundle exec jekyll serve --baseurl ''`. If you want, you can speedup thi process by loading only the last blog post instead of all of them. Simply add `--limit_posts 1` to the command above. The resulting command will be `bundle exec jekyll serve --limit_posts 1 --baseurl ''`.
3. Open a browser and go to [http://127.0.0.1:4000](http://127.0.0.1:4000).
4. If all went well, you should see the ByteRub website and you're ready to make changes.


## General change recommendations
The average ByteRub user that will want to contribute to the website should probably start looking for issues labelled [⛑️ help needed](https://repo.getmonero.org/byterubpay/monero-site/issues?label_name%5B%5D=%E2%9B%91%EF%B8%8F++help+needed) or making blog posts, user guides or ByteRubpedia entries; all of which are covered in this document. If this is all you want to do, don't worry, it's actually not a daunting task at all.

If you are a web developer and would like to make large macro-level changes, it would be best to open an issue first or to get in contact with the developers on `#monero-site` (IRC/Freenode, MatterMost, Matrix).

This website is completely open-source however and anything and everything is available for changing should the community deem it necessary.

Every section from here on out will talk about how to make a specific type of web page. It will start with a bullet point list of what to do for the advanced among you that just want a quick overview. For those who are still learning this list is followed by a detailed explanation, starting with example front matter. Any variable in the front matter written in all caps you are expected to change (make sure your changes are not all caps though). It will then lead you through the rest of the process until it's time to type your content.

A few random points of note:

- After [a discussion](https://repo.getmonero.org/byterubpay/monero-site/issues/982), the community decided to include only open source wallets in the 'Downloads' section of the website. Requests to add closed source wallets to that page will be rejected.
- All external links must have `https://` in front of them or they will not redirect properly.
- If you want to add a new page to the navigation, you should go to ALL LANGUAGES in the `_data/lang` folder and add the page.
- It is strongly strongly STRONGLY encouraged that if you make a change, you - at the minimum - test it on your local machine before submitting a PR. Sometimes unexpected things may happen due to a change. If you change a page, check the whole page on multiple screen sizes and browsers to make sure there wasn't any collateral damage.

## Housekeeping

### Editing the Site
When you make an edit to ANY page on the English language of this website, PLEASE copy your changes into the corresponding language files as well.

The ByteRub Localization workgroup will do their best to keep tabs on all changes of the site, but it'd be nice to notify them that you've changed a page so they can make sure the equivalent pages are changed accordingly in the other languages.

### GitLab Issues
We ask that if you open an issue on the site that you remain available for clarifying questions or corrections. We do our best to close issues that are resolved when we make changes to the site, but If your issue is resolved by a contributor and the issue is not closed we ask that you close it in a timely manner. A contributor may ask you to close an issue after it's confirmed fixed. Please review the changes to the site and close your issue if you can verify that it's fixed.

### Pull Requests
Contributors should use [issue keywords](https://docs.gitlab.com/ee/user/project/issues/automatic_issue_closing.html) to make it easier for maintainers to close issues when they merge. Include close, closes, closed, fix, fixes, fixed, resolve, resolves, resolved, etc in the commit message or pull request description, so that the correct issue can be closed if your PR is merged. (Example: 'fixes #1234' could close Issue 1234 when merged.)

Pull requests allow others to make comments or review your changes to the site. We ask that you remain available to comment or make changes to your PR. Sometimes someone else's changes might make your changes conflict with the current site. If that happens you may need to rebase your PR.

## Updates on User Guides
User guides and developer guides may need regular updates, either to fix typos, to add explanations regarding new features, to update screenshots, and so on.
As those guides are translated in several languages, it could be hard to keep all languages version up to date with the English version.
To keep track of those changes, guides are versioned using a snippet at the top of each localized (\_i18n/en/resources/\*-guides) file:
```
{% assign version = '1.1.0' | split: '.' %}
```
This snippet is responsible for keeping track of the language version.

The based version (English version) is however also tracked in the `Front Matter` from the /resources/user-guides/ or /resources/developer-guides/ directory file:
```
mainVersion:
  - "1"
  - "1"
  - "0"
```

- First number is the Major version number
- Second number is the Minor version number
- Third number is the build number.

When you update a guide, you are responsible for updating this version tracking in every file involved in your update:

- For an update on English files, you will update the version tracking number in the `Front Matter` of /resources/\*-guides/ and in \_i18n/en/resources/\*-guides
- For an update on localized files, you will update the version tracking number in the \_i18n/<local>/resources/\*-guides only, and
  - You will not update to a higher Major or Minor version number than the reference English guide
  - If you want to update to a higher Major or Minor version number, you should update the English version accordingly so that English is always the highest Major.Minor version.

And you will increment the version number in the following way:

- Cosmetic change only (typo, rephrasing, screenshot update with exact same field names and positions): Increment the third number (build number). We do not want to even warn the user about this update in another language.
- Changes that add instructions or explanations (or screenshot updates with different field names and positions), without making the old version misleading for users: Increment the second number (Minor version number) and reset the third to 0. We want to let the user know the English version could be more accurate and helpful to read.
- Changes that makes the old version false, or misleading to users: Increment the first number (Major version number) and reset the second and third to 1.0. We want to discourage users from reading this too outdated version that could lead them to do wrong things (for instance, buy the wrong algo of mining power on nicehash, after a pow change).

## How to make a blog post

### 1. Quick Start
* Make new .md file in \_posts (named whatever, no spaces)
* Front Matter (below)
* Write Blog Post
* Test/Build
* Submit PR

### 2. Make a file
Navigate to the \_posts folder of the website and make a new file. Be sure the file name has no spaces and the ending is .md

### 3. Front Matter
```
---
layout: post
title: CHANGE TO YOUR TITLE
summary: A BRIEF ONE OR TWO SENTENCE SUMMARY
tags:  [CHOOSE, RELEVANT, TAGS, AND, SEPARATE, THEM, BY, COMMAS, KEEP, THE, BRACKETS]
author: YOUR NAME OR HANDLE HERE
---
```

### 4. Write
After the front matter is finished you are free to write the remainder of your blog post in markdown.

### 5. Build/Test
Build your website using `jekyll serve` if it's not rebuilding automatically and test that your page appears in the 'News' section of the website, as well as the sidebars.

### 6. Submit Pull Request
You're all done. Submit a PR and wait for it to be reviewed and merged. Be sure to make any changes if requested.

## How to make a User Guide

### 1. Quick Start

* Create file in /resources/user-guides with an .md ending and no spaces in filename.
* Create file in /\_i18n/en/resources/user-guides with the exact same filename as above ending in .md
* Write User Guide
* Add versioning snippet
* Copy User Guide file to ALL LANGUAGES in /\_i18n/[ALL LANGUAGES]/resources/user-guides
* set translation to false in the snippet the top of each language version of your User Guide, except the original language
* Add guide using markdown in the correct category, and in alphabetic order, in ALL LANGUAGES to /\_i18n/[ALL LANGUAGES]/resources/user-guides/index.md being careful not to mess with any indentation
* Test/Build
* Submit PR

### 2. Make a file
Navigate to the /resources/user-guides folder and make a new file. Be sure the file name has no spaces and the ending is .md

### 3. Content of file
```
---
layout: user-guide
title: TITLE OF YOUR USER GUIDE
permalink: /resources/user-guides/NAME-OF-FILE-GOES-HERE.html
mainVersion:
  - "1"
  - "1"
  - "0"
---

{% tf resources/user-guides/NAME-OF-FILE-GOES-HERE.md %}
```

Copy this exactly and merely change the files names where indicated.

### 4. Create file in localization folders
Navigate to the /i18n/ folder and choose the correct folder for your language. Navigate further into the `resources/user-guides` folders and make a .md file with the EXACT SAME filename as the you made before.

### 5. Write
Write your user guide. Be succinct but thorough. Remember, people will be using your guides when they need help. Make sure all the information is there. Feel free to use images or screenshots if necessary to help get your point across.

The title should be at the top of the User Guide using a single `#` for an H1 tag. Titles will not be automatically put on these pages as with other pages. There should be NO front matter on this file.

Add the version snippet at the top of your guide (before your title):
```
{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
```
Your version should start at `1.1.0` as it is the first Major, first Minor, and no cosmetic changes have occurred.

### 6. Copy User Guide file into all languages
Copy your file and navigate to each language file in the /i18n folder. In each language folder (INCLUDING template) go to the resources/user-guides folder and paste your user guide (don't worry, you don't have to translate it) there. This is very important, and the site will not build if the file with the same name is not in each language folder.

As you paste into each folder, open up the file and edit the snippet at the top of the file (before your title) to mark it untranslated:
`{% include disclaimer.html translated="false" version=page.version %}`. This does not need to be done in the original language that the User Guide was written in.

### 7. Add Guide to the 'User Guide' landing page of EACH LANGUAGE
In the /\_i18n/[ORIGINAL LANGUAGE OF USER GUIDE]/resources/user-guides folder, find the file labeled index.md and open it.

DO NOT CHANGE ANYTHING IN THIS DOCUMENT BESIDES WHAT YOU ARE INSTRUCTED TO.

This file will look quite different because it's HTML. Don't panic. Simply Ctrl + F (i.e. the find feature) and search for the category that you want to put your User Guide in. You will see there are some sections that are not indented like the others. They are flush with the left side of the screen. **Do not change the indentation.** You can put markdown in these areas.

Once you've identified the non-indented area under the category you would like your User Guide to be under, you can use markdown to insert your link with the others in alphabetic order. `[TITLE OF USER GUIDE]({{site.baseurl}}/LINK-TO-USER-GUIDE.html)`. Please note that the file name in between the parentheses must be EXACTLY the same name as the permalink you made in step 5.3, but with a `.html` at the end instead of `.md` and the snippet `{{site.baseurl}}/` before the link.

In the event that you think your User Guide should be in a new Category that doesn't exist yet, contact rehrar to make one for you.

Repeat the above process for each language version of this index page INCLUDING THE template.

### 8. Build/Test
Build your website using `jekyll serve` if it's not rebuilding automatically and test that your link appears in the correct category and that it leads to your User Guide when clicked. Test your User Guide in the browser and contact rehrar if there are any bugs.

### 9. Submit Pull Request
You're all done. Submit a PR and wait for it to be reviewed and merged. Be sure to make any changes if requested.

## How to make a ByteRubpedia Entry

### 1. Make a Global file
Navigate to the /resources/moneropedia folder and make a new file. Be sure the file name has no spaces and the ending is .md
Fil this file with this exact content:
```
---
layout: moneropedia
---

@moneropedia_article

{% t global.lang_tag %}
{% tf resources/moneropedia/account.md %}

```

### 2. Make the localized File
Navigate to the /\_i18n/en/resources/moneropedia folder and make a new file. give it the same <name>.md than in previous step.
Start the file with the front Matter:
```
---
entry: "PUT THE NAME OF THE TERM HERE IN QUOTE, THIS IS HOW IT WILL SHOW UP ON THE LANDING PAGE"
terms: ["PUT", "TERMS", "HERE", "EXPLAINED", "BELOW"]
summary: "PUT SUMMARY OF YOUR ENTRY HERE IN QUOTES"
---
```

There are two things to highlight:  
The `terms:` section of the front matter can be filled with as many terms as you would like. This is how other ByteRubpedia entries will link to this page. You can link to other ByteRubpedia entries as well in your page by putting an ampersand before the term used, i.e. `@THE-TERM-USED`. This will make an automatic link in the ByteRubpedia entry to the referred term, replace the @term with the word used in that terms `entry:` area of the front matter, and on hover it will show the summary. How cool is that?  
The lines must not contain trailing whitespace, and it must be no blank lines added, otherwise the site with not build correctly.

### 3. Write
Write your ByteRubpedia entry. Remember that you can link to other ByteRubpedia entries using `@term-used-in-entry` as described above. Just go to the .md file of the ByteRubpedia entry you want to link to and use any of the terms in the `terms:` field of the front matter. Be sure to write whichever one you choose EXACTLY as shown and preceded by an ampersand.

### 4. Copy to other languages
Copy the file from the /\_i18n/en/resources/moneropedia folder to the other /\_i18n/<language>/resources/moneropedia folders and add the untranslated snippet at the same time just after the front matter, so it looks like:
```
---
entry: "PUT THE NAME OF THE TERM HERE IN QUOTE, THIS IS HOW IT WILL SHOW UP ON THE LANDING PAGE"
terms: ["PUT", "TERMS", "HERE", "EXPLAINED", "BELOW"]
summary: "PUT SUMMARY OF YOUR ENTRY HERE IN QUOTES"
---

{% include untranslated.html %}
```

### 5. Build/Test
Build your website using `jekyll serve` if it's not rebuilding automatically and test check the link to your entry is appearing on the alphabetical list of ByteRubpedia entries and that it leads to your entry when clicked. Test your ByteRubpedia entry in the browser and contact rehrar if there are any bugs.

### 6. Submit Pull Request
You're all done. Submit a PR and wait for it to be reviewed and merged. Be sure to make any changes if requested.

## How to update the Team page

If you are acting on behalf of another individual, please make sure you get their permission first before adding them onto the Team page.

### 1. Change the .yml file
Navigate to the `/_data/` folder and open `team.yml`. You will notice a long list separated by main `-area:` tags.

**DO NOT MESS WITH THE FORMATTING OR INDENTATION OF ANYTHING OR JEKYLL WILL NOT BUILD PROPERLY!**

Find the area that you want to update and copy the code below:
```
- name:
  url:
```
Put the name or handle of the person in the `name` section and in the  `url:` section put the link to their GitHub or GitLab URL (it must have https:// at the beginning). If they have no GitHub, then you may leave it blank, it won't mess anything up.

**Make sure the indentation is EXACTLY the same as the other proposals in the area. If it's not the jekyll build WILL fail.**

Save the file.

### 2. Build/Test
Build your website using `jekyll serve` if it's not rebuilding automatically. If the build fails and you receive an error, you may have messed up somewhere in the `team.yml` file back in 8.1. Go back to that section and check the indentation. Yes, it's stupid. Yes, it has to be perfect.

If the build is successful, go to the Team page `/community/team/` and check to see that the contributor is showing up in the correct place. Click their GitHub or GitLab link (if applicable) and make sure it redirects correctly. Test the page and let rehrar know if there are any bugs.

### 3. Submit a Pull Request
You're all done. Submit a PR and wait for it to be reviewed and merged. Be sure to make any changes if requested.

## How to update the Roadmap

### 1. Edit the .yml file
Navigate to the `/_data/` folder and open `roadmap.yml`. You will notice a list separated by hyphenated `-year` tags.

**DO NOT MESS WITH THE FORMATTING OR INDENTATION OF ANYTHING OR JEKYLL WILL NOT BUILD PROPERLY!**

Find the year that you want to update and copy the code below:
```
- name:
  date:
  status:
```
and paste it in the correct year's `accomplishments:` section IN THE CHRONOLOGICAL ORDER that it will be in. So if there is a accomplishment that happened/is happening before the one you are inputting, make sure it is higher up than yours. If there is an accomplishment that happened/is happening AFTER yours, make sure it is after yours. If you don't have exact dates, just do your best to estimate.

Fill in the data as follows:
* `name:` The name of the accomplishment. Try to keep it short, a sentence or two at most.
* `date:` When the accomplishment happened (past) or when it is expected to happen (future)
* `status:` If the task is done, put `completed`, if the task is currently in the works put `ongoing`, and if work on the task has not yet started to your knowledge, but is expected to, put `upcoming`.

**Make sure the indentation is EXACTLY the same as the other proposals in the area. If it's not the jekyll build WILL fail.**

Save the file.

### 2. Build/Test
Build your website using `jekyll serve` if it's not rebuilding automatically. If the build fails and you receive an error, you may have messed up somewhere in the `roadmap.yml` file back in 10.1. Go back to that section and check the indentation. Yes, it's stupid. Yes, it has to be perfect.

If the build is successful, go to the Events page `/resources/roadmap/` and check to see that the newly added accomplishment is showing up in the correct place in the correct year. Test the page and let rehrar know if there are any bugs.

### 3. Submit a Pull Request
You're all done. Submit a PR and wait for it to be reviewed and merged. Be sure to make any changes if requested.

## How to add a new Merchant

### 1. Edit the .yml file
Navigate to the `/_data/` folder and open `merchants.yml`. You will notice a list separated by hyphenated `-category` tags.

**DO NOT MESS WITH THE FORMATTING OR INDENTATION OF ANYTHING OR JEKYLL WILL NOT BUILD PROPERLY!**

Find the category that best describes your business/service and copy the code below:
```
- name:
  url:
```
and paste it in the correct category under the `merchants:` section.

Fill in the data as follows:
* `name:` The name of the business/service.
* `url:` The external url of the business/service. This link must have http:// (or https://) at the beginning if it is an external link.

**Make sure the indentation is EXACTLY the same as the other proposals in the area. If it's not the jekyll build WILL fail.**

Save the file.

### 2. Build/Test
Build your website using `jekyll serve` if it's not rebuilding automatically. If the build fails and you receive an error, you may have messed up somewhere in the `merchants.yml` file back in 10.1. Go back to that section and check the indentation. Yes, it's stupid. Yes, it has to be perfect.

If the build is successful, go to the Merchants page `/community/merchants/` and check to see that the business is showing up in the correct category and that the link is redirecting correctly. Test the page and let rehrar know if there are any bugs.

### 3. Submit a Pull Request
You're all done. Submit a PR and wait for it to be reviewed and merged. Be sure to make any changes if requested.

## How to add a question to the FAQ

### 1. Copy/Paste Code
Navigate to the `/get-started/faq` folder and open the `index.md` file. Inside you will see HTML code, but you will see it is very repetitive.

Copy the code below:
```
<div class="tab">
    <input id="tab-CHANGETHIS" type="checkbox" name="tabs" class="accordian">
    <label for="tab-CHANGETHIS" class="accordian">CHANGE QUESTION</label>

<div class="tab-content" markdown="1">

CHANGE ANSWER

</div>

</div>
```
And paste it at the very bottom of the file (literally underneath everything else).

Now we're going to change just a couple of things. Find the section with:
```
<input id="tab-CHANGETHIS" type="checkbox" name="tabs" class="accordian">
<label for="tab-CHANGETHIS" class="accordian">CHANGE QUESTION</label>
```

and change the sections in between the quotes that say 'CHANGETHIS'. Leave the first part `tab-` alone. You can change it to anything really, as long as they are identical in the input and label, but it's good to see what number is on the last FAQ question (i.e. `tab-nine`) and make it the next number.

Now inside the label tag you're going to find where it says 'CHANGE QUESTION' and change it to the Question you want answered.

Lastly, find the words 'CHANGE ANSWER' and change it to the answer of your question.

**DO NOT MESS WITH THE INDENTATION HERE. The div that has `markdown=1` MUST be flush with the left side, the answer to the question must start flush with the left side, and the `</div>` MUST be flush with the left side.**

### 2. Build/Test
Build your website using `jekyll serve` if it's not rebuilding automatically. If the build is successful, go to the FAQ page `/get-started/faq/` and check to see that your question is showing up and, when clicked, the answer drops down. If not, check to make sure that the `id="tab-CHANGETHIS"` in the input and the `for="CHANGETHIS"` in the label are identical to each other. Test the page and let rehrar know if there are any bugs.

### 3. Submit a Pull Request
You're all done. Submit a PR and wait for it to be reviewed and merged. Be sure to make any changes if requested.

## How to add a publication to the Library

### 1. Add your file
Navigate to the `/library/` folder and drop your publication file here.

Please remind to minimize the size of your publication. For PDF, you'll find a large amount of service to compress your file with a minimal loss in quality.

### 2. Edit the .yml files
Navigate to the `/_i18n/` folder and open `en.yml`.

Go down until you find the `library` section. You will notice a list separated by hyphenated `-category` tags in a `books:` section.

**DO NOT MESS WITH THE FORMATTING OR INDENTATION OF ANYTHING OR JEKYLL WILL NOT BUILD PROPERLY!**

Find the category that best corresponds your publication and copy the code below:
```
- name: "<name>"
  file: "<filename>"
  abstract: >
    <abstract><br>
    <on multiple lines>
```
and paste it in the correct category under the `publications:` section.

For books, paste it in alphabetical order. For magazines, past it at the top.

Fill in the placeholders as follows:
* `<name>` The name of the publication, as it should be displayed.
* `<file>` The filename you have dropped in `/library/` folder, including extension.
* `<abstract>`,`<on multiple lines>` An abstract for your publication, formatted with html newlines `<br>`

**Make sure the indentation is EXACTLY the same as the other proposals in the area. If it's not the jekyll build WILL fail.**

Save the file.

open other `*.yml` files and copy the same code to it, in the exact same place.

### 3. Build/Test
Build your website using `jekyll serve` if it's not rebuilding automatically. If the build fails and you receive an error, you may have messed up somewhere in a `*.yml` file back in 13.1. Go back to that section and check the indentation. Yes, it's stupid. Yes, it has to be perfect.

If the build is successful, go to the Library page `/library/` and check to see that the publication is showing up in the correct category and that the link is downloading correctly. Test the page and let rehrar know if there are any bugs.

### 4. Submit a Pull Request
You're all done. Submit a PR and wait for it to be reviewed and merged. Be sure to make any changes if requested.

## How to translate a page
In this section you'll find the info you need to translate a page and add a new translation, but keep in mind that ByteRub has a [Localization Workgroup](https://github.com/monero-ecosystem/monero-translations) who coordinate and give support to translators-volunteers. You can find an updated guide and an example of the workflow we use on our [Guide on Taiga](https://taiga.getmonero.org/project/erciccione-monero-localization/wiki/translating-monero-website), also, for live support/request of infos, come chat on `#monero-translations` (Freenode/IRC, riot/matrix, MatterMost).

### 1. Quickstart
* Navigate to the correct language in the /i18n folder and find the page you wish to translate
* Click the file and translate the page, not touching any HTML or markdown
* Remove `{% include untranslated.html %}` from the page
* Test/Build
* Submit PR

### 2. Navigate to correct file
Go to the /i18n folder and find the two letter code for the language you wish to translate for. Enter that folder and find the file you wish to translate. The filenames are all in English and MUST NOT BE CHANGED.

### 3. Translate the file
Here you can do your translation. Depending on the page, you may have to maneuver around some HTML or markdown. In general, anything between two tags (such as `<p>TRANSLATE THIS</p>`) should be fine. Testing is VERY important, so do NOT skip it. If during testing, the page appears different from the original English page (besides the translated text, of course), you did something wrong and may have to start again.

#### 3.1. Notes for ByteRubpedia Entries
ByteRubpedia entries have two specificities:

* The Front Matter:  
ByteRubpedia Fron should be translated for both *entry:* and *summary:* elements. However, *terms:* should be extanded with their translation, leaving the English words **untouched**.
This is really important for compatibility purposes. With this, if a new guide is added to the site, an English term on the untranslated version of the guide in another language could be linked to the moneropedia article (of the same language).

* The old *untranslated* snippet must be removed, therefore the next section is irrelevant here.

Finally, your entry should go from:
```
---
entry: "Entry name in English"
terms: ["English", "terms"]
summary: "English summary."
---

{% include untranslated.html %}
```
To:
```
---
entry: "Translated entry name"
terms: ["English", "terms", "translated", "terms"]
summary: "Translated summary."
---
```

### 4. set the 'translated' snippet to true
Somewhere on the page (usually the top) should be a snippet that says `{% include disclaimer.html translated="false" version=page.version %}`. Simply change this to `{% include disclaimer.html translated="true" version=page.version %}`. This will remove the orange bar from the bottom saying the page is untranslated.

### 5. Build/Test
Build your website using `jekyll serve` if it's not rebuilding automatically.

If the build is successful, go to the correct page in the correct language and check to see that everything is translated, and that the page looks identical to the original English page (besides the translated text). Test the page and let rehrar know if there are any bugs.

### 6. Submit a Pull Request
You're all done. Submit a PR and wait for it to be reviewed and merged. Be sure to make any changes if requested.

## How to add a new language
Whoo boy, this is the big one. Please follow all directions exactly.

### 1. \_config.yml file
Navigate to the root folder of the whole website and find the file labeled `_config.yml`. Open it and find the line that says `languages:`. Add your two letter language code (Google it if you don't know it) in between the brackets after the others already present. You will need to put a comma after the previous last one.

Example:
```
languages: ["en", "es", "NEW LANG HERE"]
```
Save and exit the file.

### 2. \_data folder
Navigate to the `_data/lang` folder and copy the `en` folder. Paste it into the same folder and the copy renamed to the two letter language code of the language you will be translated to.
**The 'en' folder itself should still be there. It should not be renamed. There should be a new folder in addition to the ones that were already there.**

Translate the content of the files. Do not touch anything labeled `url`, and in the roadmap.yml ONLY translate the `name:` content.

### 3. \_i18n folder
Navigate to the \_i18n folder and duplicate the en.yml file. Rename the duplicate to the two letter language code of your language with a `.yml` at the end and change all sections marked 'translated: "yes"' to 'translated: "no"'. Change back to 'yes' once you have translated that section. Now duplicate the `en` folder and rename it with the correct language code.
**The original folder and yml file themselves should still be there. They should not be renamed. There should be a new folder and yml file in addition to the ones that were already there.**

Enter the .yml file and translate everything there.

### 4. Translate
If you will be translating the content, please refer to section '[How to translate a page](#how-to-translate-a-page)' in this README for instructions on translating pages.

### 5. Build/Test
Build your website using `jekyll serve`. If the build is successful, navigate to any page on the site and check to make sure that your language is appearing in the dropdown for languages on both mobile and desktop.

### 6. Submit a Pull Request
You're all done. Submit a PR and wait for it to be reviewed and merged. Be sure to make any changes if requested.
