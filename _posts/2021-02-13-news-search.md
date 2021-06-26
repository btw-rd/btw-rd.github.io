---
layout: post
title: "Web News Search"
date: 2021-02-13
tags: [code, databases, tech art, web crawl, etl, amazon web services, backend, frontend, web app]
---
<style>video{float:left; width:60%; padding-right: 20px}</style>

<video autoplay muted loop>
    <source src="{{site.url}}/code/news-search/news-search.mp4" type="video/mp4">
</video>

A pipeline for web news archival and search. Consists of three parts: an ETL tool which transfers articles from Common Crawl archives to an Amazon Elasticsearch index, a Java application which implements a REST API for search queries, and a React frontend which allows users to easily set up searches and preview results.  

The ETL tool was created with Java and Maven; it was deployed to an Amazon EC2 virtual machine and run automatically every 2 hours via cron. The ETL tool quried a public S3 bucket provided by Common Crawl, downloading any new archive files and processing them into individual objects to be added to an Elasticsearch index. The objects included page title, URL, text, and metadata such as language and date.  

The REST API web app was created with Java and Tomcat. It ran on Amazon Elastic Beanstalk such that new virtual machines could be spun up and automatically load-balanced as needed. The main search parameter was text in the body of the archived documents. Additional optional parameters included metadata such as language and date as well as modifiers for the number of results and offset from the start of the search (effectively creating paged results).  

The front end was built with React and served via a public S3 bucket. Three main search controls were provided at the top of the page: a text box for the main parameter, a date control, and a dropdown of language options. The page initiated a search every time one of the parameters changes, providing live feedback after every letter typed; safeguards were put in place to ensure stale query results were not displayed. Each result entry shows the title, URL, and a snippet of text trimmed intelligently so as not to cut off words. The count and offset parameters were hidden behind the scenes. Upon loading, 10 results were displayed; 10 more could be loaded by clicking a button at the end of the results list.  

Created with guidance for Stephen Tarzia's Scalable System Architecture course at Northwestern University.
