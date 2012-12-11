Houston Ruby Brigade Wave
=========================

CarrierWave
============

Uses
-----

* upload photo
* download photo from url
* upload file (pdf, word, whatever)
* process image thumbnails
* Store files locally, or in the Cloud

It's sorta like / Geaniology
----------------------------

* acts_as_attachment
* attachment_fu
* paperclip

Usage
-----

* generate an Uploader
* Mount the uploader in a model
* Migrate a string "photo", "file", "image" to the model
* Profit

Why an Uploader?
----------------

* You can re-use uploaders
* You can test uploaders in isolation

Installation Steps
------------------

1. Add to gemfile: `gem 'carrierwave'`
2. bundle that thing
3. `rails g profile name photo`
4. `rails g uploader image`
5. add to photo.rb: `mounts_uploader :photo, ImageUploader

Hints
----

1. Always use Fog, even in development
2. Don't use Fog in test mode [really, don't even process attachments in test]
3. Know what resize_to_fill vs resize_and_page
4. Create your buckets ahead of time
5. For PDFs and files, add 

```
config.fog_attributes = {"Content-Disposition" => "attachment;"}
```

Pad vs Fill
-----------

Difficult for nearly every client. It's about RATIOS

Original
--------

![img](http://i.imgur.com/yH3MM.jpg)

resize_to_fill
--------------

![fill](http://i.imgur.com/jxG6X.jpg)

resize_and_pad
--------------

![pad](http://i.imgur.com/XE0h3.jpg)
