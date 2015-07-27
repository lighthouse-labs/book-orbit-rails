--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bookmarks; Type: TABLE; Schema: public; Owner: bookorb; Tablespace: 
--

CREATE TABLE bookmarks (
    id integer NOT NULL,
    url character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    title character varying(255),
    keywords character varying(255),
    "desc" character varying(255)
);


ALTER TABLE public.bookmarks OWNER TO bookorb;

--
-- Name: bookmarks_id_seq; Type: SEQUENCE; Schema: public; Owner: bookorb
--

CREATE SEQUENCE bookmarks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.bookmarks_id_seq OWNER TO bookorb;

--
-- Name: bookmarks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bookorb
--

ALTER SEQUENCE bookmarks_id_seq OWNED BY bookmarks.id;


--
-- Name: bookmarks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bookorb
--

SELECT pg_catalog.setval('bookmarks_id_seq', 547, true);


--
-- Name: bookmarks_users; Type: TABLE; Schema: public; Owner: bookorb; Tablespace: 
--

CREATE TABLE bookmarks_users (
    id integer NOT NULL,
    user_id integer,
    bookmark_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.bookmarks_users OWNER TO bookorb;

--
-- Name: bookmarks_users_collections; Type: TABLE; Schema: public; Owner: bookorb; Tablespace: 
--

CREATE TABLE bookmarks_users_collections (
    id integer NOT NULL,
    bookmarks_user_id integer,
    collection_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.bookmarks_users_collections OWNER TO bookorb;

--
-- Name: bookmarks_users_collections_id_seq; Type: SEQUENCE; Schema: public; Owner: bookorb
--

CREATE SEQUENCE bookmarks_users_collections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.bookmarks_users_collections_id_seq OWNER TO bookorb;

--
-- Name: bookmarks_users_collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bookorb
--

ALTER SEQUENCE bookmarks_users_collections_id_seq OWNED BY bookmarks_users_collections.id;


--
-- Name: bookmarks_users_collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bookorb
--

SELECT pg_catalog.setval('bookmarks_users_collections_id_seq', 846, true);


--
-- Name: bookmarks_users_id_seq; Type: SEQUENCE; Schema: public; Owner: bookorb
--

CREATE SEQUENCE bookmarks_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.bookmarks_users_id_seq OWNER TO bookorb;

--
-- Name: bookmarks_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bookorb
--

ALTER SEQUENCE bookmarks_users_id_seq OWNED BY bookmarks_users.id;


--
-- Name: bookmarks_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bookorb
--

SELECT pg_catalog.setval('bookmarks_users_id_seq', 568, true);


--
-- Name: collections; Type: TABLE; Schema: public; Owner: bookorb; Tablespace: 
--

CREATE TABLE collections (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.collections OWNER TO bookorb;

--
-- Name: collections_id_seq; Type: SEQUENCE; Schema: public; Owner: bookorb
--

CREATE SEQUENCE collections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.collections_id_seq OWNER TO bookorb;

--
-- Name: collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bookorb
--

ALTER SEQUENCE collections_id_seq OWNED BY collections.id;


--
-- Name: collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bookorb
--

SELECT pg_catalog.setval('collections_id_seq', 312, true);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: bookorb; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO bookorb;

--
-- Name: users; Type: TABLE; Schema: public; Owner: bookorb; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    username character varying(255),
    password_digest character varying(255),
    email character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO bookorb;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: bookorb
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO bookorb;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bookorb
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bookorb
--

SELECT pg_catalog.setval('users_id_seq', 129, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bookorb
--

ALTER TABLE ONLY bookmarks ALTER COLUMN id SET DEFAULT nextval('bookmarks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bookorb
--

ALTER TABLE ONLY bookmarks_users ALTER COLUMN id SET DEFAULT nextval('bookmarks_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bookorb
--

ALTER TABLE ONLY bookmarks_users_collections ALTER COLUMN id SET DEFAULT nextval('bookmarks_users_collections_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bookorb
--

ALTER TABLE ONLY collections ALTER COLUMN id SET DEFAULT nextval('collections_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bookorb
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: bookmarks; Type: TABLE DATA; Schema: public; Owner: bookorb
--

COPY bookmarks (id, url, created_at, updated_at, title, keywords, "desc") FROM stdin;
1	https://github.com/louischatriot/nedb	2014-08-05 20:36:55.542592	2014-08-05 20:36:55.542592	louischatriot/nedb · GitHub	\N	nedb - Embedded datastore for node.js
2	https://github.com/blog/517-unicorn	2014-08-05 22:11:52.009647	2014-08-05 22:11:52.009647	Unicorn! · GitHub	\N	Build software better, together.
3	http://stackoverflow.com/questions/2003505/how-to-delete-a-git-branch-both-locally-and-remotely	2014-08-05 22:54:56.879356	2014-08-05 22:54:56.879356	github - How to delete a Git branch both locally and remotely? - Stack Overflow	\N	\N
4	http://d.pr/f/V0Gz/3kJwGMre	2014-08-05 22:55:58.645724	2014-08-05 22:55:58.645724	\n        GitWorkflow.pdf • Droplr\n    	\N	Easy cloud file sharing for Mac, Windows, and iOS.
5	http://daringfireball.net/projects/markdown/syntax#code	2014-08-05 22:58:17.500696	2014-08-05 22:58:17.500696	Daring Fireball: Markdown Syntax Documentation	\N	\N
6	https://github.com/github/gitignore	2014-08-05 22:59:54.270123	2014-08-05 22:59:54.270123	github/gitignore · GitHub	\N	A collection of useful .gitignore templates
7	http://blog.codinghorror.com/a-visual-explanation-of-sql-joins/	2014-08-05 23:00:39.135801	2014-08-05 23:00:39.135801	A Visual Explanation of SQL Joins	\N	
8	http://www.railstutorial.org/book#table-rails_directory_structure	2014-08-05 23:01:43.826754	2014-08-05 23:01:43.826754	Frontmatter\n | Ruby on Rails Tutorial |  Softcover.io	\N	\N
9	http://serversforhackers.com/editions/2014/07/01/ssh-tricks/	2014-08-05 23:02:50.310061	2014-08-05 23:02:50.310061	SSH Tricks | Servers for Hackers	\N	Amazing things you can do with SSH
10	http://www.logodesignlove.com/brand-identity-style-guides	2014-08-05 23:11:04.752482	2014-08-05 23:11:04.752482	Brand identity style guides from around the world | Logo Design Love	\N	It's interesting to see how style guides are presented, so I collected a few.
11	https://www.ruby-toolbox.com/projects/best_in_place	2014-08-06 00:16:33.242642	2014-08-06 00:16:33.242642	https://www.ruby-toolbox.com/projects/best_in_place	\N	\N
12	https://github.com/astopo/book-orbit	2014-08-06 00:25:32.580194	2014-08-06 00:25:32.580194	astopo/book-orbit · GitHub	\N	Contribute to book-orbit development by creating an account on GitHub.
13	http://www.whatisthis.com	2014-08-06 00:25:50.485039	2014-08-06 00:25:50.485039	Compare Prices & Buy Computers, Broadband Plans, Cell Phones & MP3 Players Online - USA United States of America	\N	\N
14	https://github.com/yourabi/twitter-typeahead-rails	2014-08-06 00:25:52.582366	2014-08-06 00:25:52.582366	yourabi/twitter-typeahead-rails · GitHub	\N	twitter-typeahead-rails - Rails asset gem for Twitters typeahead.js jquery plugin
15	http://www.yomama.com	2014-08-06 00:27:50.675121	2014-08-06 00:27:50.675121	yomama.com	\N	yomama.com
16	http://guides.rubyonrails.org/active_record_querying.html	2014-08-06 00:29:19.197044	2014-08-06 00:29:19.197044	Active Record Query Interface — Ruby on Rails Guides	\N	\N
18	http://github.com	2014-08-06 00:30:57.692138	2014-08-06 00:30:57.692138	GitHub · Build software better, together.	\N	Build software better, together.
19	http://nba.com	2014-08-06 00:31:37.716368	2014-08-06 00:31:37.716368	NBA.com	\N	The official site of the National Basketball Association. Includes news, features, multimedia, player profiles, chat transcripts, schedules and statistics.
20	https://github.com/lighthouse-labs/lighthouse_forum/wiki/Tutorial	2014-08-06 00:33:13.545016	2014-08-06 00:33:13.545016	https://github.com/lighthouse-labs/lighthouse_forum/wiki/Tutorial	\N	\N
22	http://richonrails.com/articles/allowing-file-uploads-with-carrierwave	2014-08-06 00:46:17.779412	2014-08-06 00:46:17.779412	Allowing File Uploads with CarrierWave - RichOnRails.com	\N	This article will show you how to allow user file uploads via the CarrierWave gem.
23	http://www.really.com	2014-08-06 00:55:42.053412	2014-08-06 00:55:42.053412	Really.com	\N	\N
24	http://www.magee.com	2014-08-06 00:56:03.91582	2014-08-06 00:56:03.91582	Magee Enterprises, Inc.	\N	\N
25	http://www.hello.com	2014-08-06 00:56:22.091135	2014-08-06 00:56:22.091135	hello.com	\N	\N
26	http://www.hithere.com	2014-08-06 00:57:28.707823	2014-08-06 00:57:28.707823	http://www.hithere.com	\N	\N
27	http://www.excuseme.com	2014-08-06 00:59:27.602935	2014-08-06 00:59:27.602935	excuseme.com	\N	\N
28	http://www.ocd.com	2014-08-06 01:00:35.629143	2014-08-06 01:00:35.629143	Welcome to O'Connor & Drew, P.C. | South Shore Massachusetts Accounting & Tax Firm	\N	Certified Public Accountants providing accounting, financial, tax, and audit services. We are located in Braintree, Massachusetts and Winchester, Massachusetts. Highly experienced South Shore Accounting Firm.
29	http://example.com	2014-08-06 01:03:47.608895	2014-08-06 01:03:47.608895	Example Domain	\N	\N
30	https://www.ruby-toolbox.com/	2014-08-06 02:21:23.900898	2014-08-06 02:21:23.900898	https://www.ruby-toolbox.com/	\N	\N
31	http://railscasts.com/	2014-08-06 02:22:01.667784	2014-08-06 02:22:01.667784	Ruby on Rails Screencasts - RailsCasts	\N	Short Ruby on Rails screencasts containing tips, tricks and tutorials. Great for both novice and experienced web developers.
32	http://24ways.org/2010/calculating-color-contrast/	2014-08-06 05:52:45.360555	2014-08-06 05:52:45.360555	Calculating Color Contrast ◆ 24 ways	\N	\N
33	http://bookorb.it/murat	2014-08-06 06:42:17.243826	2014-08-06 06:42:17.243826	Book Orbit	\N	A layout example with a side menu that hides on mobile, just like the Pure website.
34	http://espn.com	2014-08-06 07:01:45.324408	2014-08-06 07:01:45.324408	ESPN: The Worldwide Leader In Sports	\N	ESPN.com provides comprehensive sports coverage.  Complete sports information including NFL, MLB, NBA, College Football, College Basketball scores and news.
35	http://www.sitepoint.com/8-essential-skills-developers-can-learn-in-a-weekend/	2014-08-06 14:36:08.466644	2014-08-06 14:36:08.466644	8 Essential Skills Developers Can Learn in a Weekend	\N	There's no shortage of new things to learn in the web development world. Shaumik Daityari presents some of the best skills you can learn in a weekend
36	http://api.rubyonrails.org/classes/ActiveRecord/Migration.html	2014-08-06 15:41:48.15003	2014-08-06 15:41:48.15003	ActiveRecord::Migration	\N	\N
37	http://www.brandworkz.com/	2014-08-06 16:00:14.229546	2014-08-06 16:00:14.229546	Brand Asset Management | Digital Asset Management | Brandworkz	\N	Brandworkz provides software for brand management with Digital Asset Management and brand asset management
38	https://brandfolder.com/features	2014-08-06 16:46:36.595717	2014-08-06 16:46:36.595717	Features | Brandfolder	\N	Learn about the features you get from both a Free Public Brandfolder and Brandfolder Pro.
39	http://www.facebook.com	2014-08-06 16:56:16.768014	2014-08-06 16:56:16.768014	Welcome to Facebook - Log In, Sign Up or Learn More	\N	Facebook is a social utility that connects people with friends and others who work, study and live around them. People use Facebook to keep up with...
40	http://www.sitepoint.com/build-online-store-rails/	2014-08-06 17:43:50.851953	2014-08-06 17:43:50.851953	Build an Online Store with Rails	\N	Learn to create an online store from scratch using Rails, Redis, and Foundation.
41	https://developers.google.com/analytics/devguides/reporting/embed/v1/	2014-08-06 21:54:22.788602	2014-08-06 21:54:22.788602	What Is The Embed API - Overview - Google Analytics — Google Developers	\N	\N
42	http://isotope.metafizzy.co/	2014-08-06 21:58:37.744567	2014-08-06 21:58:37.744567	Isotope	\N	filter & sort magical layouts
43	http://www.motionographer.com	2014-08-06 22:07:28.878796	2014-08-06 22:07:28.878796	Motionographer  Sharing the best in moving media.	\N	\N
47	https://github.com/teambox/teambox/wiki/Installing-on-Ubuntu-using-Apache-and-Unicorn	2014-08-06 23:16:44.499141	2014-08-06 23:16:44.499141	Installing on Ubuntu using Apache and Unicorn · teambox/teambox Wiki · GitHub	\N	teambox - This is the legacy version of Teambox - the award-winning collaboration solution, inspired by Basecamp, Yammer and Twitter.
48	http://kimrudolph.de/blog/rails-single-page-application-tutorial/	2014-08-07 18:47:25.868803	2014-08-07 18:47:25.868803	Single page web application built with Rails 4	\N	Random tutorials
49	http://en.wikipedia.org/wiki/Operational_transformation	2014-08-07 22:35:45.671926	2014-08-07 22:35:45.671926	Operational transformation - Wikipedia, the free encyclopedia	\N	\N
50	http://scripti.st/portfolio	2014-08-07 22:47:48.813931	2014-08-07 22:47:48.813931	Portfolio - Scriptist	\N	Sydney based web developer specialising in seriously fancy stuff - passionate about HTML5, CSS3, and the future of JavaScript & jQuery.
51	https://forwardhq.com/	2014-08-07 23:06:21.758419	2014-08-07 23:06:21.758419	Share localhost over the Web — Forward	\N	Forward is the easiest way to share a web project on your localhost over the internet
52	https://github.com/lighthouse-labs/sinatra-skeleton	2014-08-07 23:10:18.776658	2014-08-07 23:10:18.776658	https://github.com/lighthouse-labs/sinatra-skeleton	\N	\N
53	http://pow.cx	2014-08-07 23:23:06.391369	2014-08-07 23:23:06.391369	Pow: Zero-configuration Rack server for Mac OS X	\N	\N
54	https://github.com/sethvargo/powify	2014-08-07 23:23:16.885374	2014-08-07 23:23:16.885374	sethvargo/powify · GitHub	\N	powify - Powify is an easy-to-use wrapper for 37 signal's pow
55	http://pokeapi.co/	2014-08-07 23:28:23.241273	2014-08-07 23:28:23.241273	\n      pokéapi - The Pokemon RESTful API\n    	\N	Pokeapi The Pokemon RESTful API
56	http://gionkunz.github.io/chartist-js/	2014-08-07 23:30:53.216231	2014-08-07 23:30:53.216231	Chartist - Simple responsive charts	\N	Create responsive, scalable and good looking charts with chartist.js.
57	http://www.smashingmagazine.com/2014/06/11/building-with-gulp/	2014-08-07 23:35:55.371682	2014-08-07 23:35:55.371682	Building With Gulp | Smashing Magazine	\N	This article is about using Gulp to change your development workflow, making it faster and more efficient.
58	http://guides.rubyonrails.org/action_controller_overview.html	2014-08-08 00:49:45.625564	2014-08-08 00:49:45.625564	Action Controller Overview — Ruby on Rails Guides	\N	\N
59	http://stackoverflow.com/questions/4931131/require-ruby-gems-in-rails-controller	2014-08-08 00:51:01.463926	2014-08-08 00:51:01.463926	apache2 - Require ruby gems in rails controller - Stack Overflow	\N	\N
60	http://css-tricks.com/clever-uses-step-easing/	2014-08-08 03:56:54.370643	2014-08-08 03:56:54.370643	Clever Uses for Step Easing | CSS-Tricks	\N	The following is a guest post by Julian Shapiro. Julian has been working on Velocity.js recently, which he has written about here on CSS-Tricks before. Jul
61	https://docs.google.com/a/functionalimperative.com/spreadsheet/ccc?key=0Apetaj9U_idedFAzU3dUZnRMY1cwcmZZLThzbGxBNkE#gid=0	2014-08-08 15:29:23.531884	2014-08-08 15:29:23.531884	Sign in - Google Accounts	\N	\N
62	http://api.rubyonrails.org/classes/ActiveRecord/QueryMethods.html	2014-08-08 16:29:07.968843	2014-08-08 16:29:07.968843	ActiveRecord::QueryMethods	\N	\N
63	http://harvesthq.github.io/chosen/	2014-08-08 19:24:03.885517	2014-08-08 19:24:03.885517	Chosen: A jQuery Plugin by Harvest to Tame Unwieldy Select Boxes	\N	\N
64	http://www.scribbletribe.com/how-to-style-the-select-dropdown/	2014-08-08 19:27:13.805581	2014-08-08 19:27:13.805581	Scribbletribe | How to style the Select Dropdown	\N	In our first tutorial we’re going to show you how to style the select dropdown using Javascript and CSS.
65	http://www.cssreset.com/how-to-keep-footer-at-bottom-of-page-with-css/	2014-08-08 20:19:10.415257	2014-08-08 20:19:10.415257	How To Keep The Footer At The Bottom of the Page with CSS	\N	This tutorial demonstrates how to keep the footer at the bottom of the page on short documents or pages with little content, using CSS and HTML
66	https://developer.mozilla.org/en-US/docs/Web/CSS/background-position	2014-08-08 20:19:47.236851	2014-08-08 20:19:47.236851	background-position - CSS | MDN	\N	The background-position CSS property sets the initial position, relative to the background position layer defined by background-origin for each defined background image.
67	http://blog.spoongraphics.co.uk/articles/50-illustrator-tutorials-every-designer-should-see	2014-08-08 20:21:48.269403	2014-08-08 20:21:48.269403	50 Illustrator Tutorials Every Designer Should See	\N	\N
68	http://adamalbrecht.com/2013/12/12/creating-a-simple-modal-dialog-directive-in-angular-js/	2014-08-08 20:22:24.484358	2014-08-08 20:22:24.484358	\n      How to Create a Simple Modal Dialog Directive in Angular.js · \n      Adam Albrecht\n    	\N	Adam Albrecht is an independent ruby and javascript developer in Columbus, Ohio
69	http://www.clicktorelease.com/blog/how-to-make-clouds-with-css-3d	2014-08-08 20:22:48.981407	2014-08-08 20:22:48.981407	How to make clouds with CSS 3D - Blog - Clicktorelease	\N	
73	http://css3generator.com/	2014-08-08 20:26:30.48413	2014-08-08 20:26:30.48413	CSS3 Generator	\N	CSS3 Generator
74	http://codepen.io/connormulcahey/pen/fHlGh	2014-08-08 21:41:05.6278	2014-08-08 21:41:05.6278	Minimal Search Form - CodePen	\N	...
79	http://learnxinyminutes.com/docs/javascript/	2014-08-10 04:48:53.865675	2014-08-10 04:48:53.865675	Learn javascript in Y Minutes	\N	
80	https://www.npmjs.org/package/mongo-migrate	2014-08-10 22:22:41.503639	2014-08-10 22:22:41.503639	mongo-migrate	\N	\N
81	https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf	2014-08-11 17:22:59.146602	2014-08-11 17:22:59.146602	https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf	\N	\N
82	http://buildingrails.com/a/ruby_hashes_cheat_guide_for_beginners	2014-08-11 17:34:26.024324	2014-08-11 17:34:26.024324	Building Rails	\N	
83	http://ejohn.org/apps/learn/	2014-08-11 18:47:41.218163	2014-08-11 18:47:41.218163	Learning Advanced JavaScript	\N	\N
84	http://stackoverflow.com/questions/18770517/rails-4-how-to-use-document-ready-with-turbo-links	2014-08-12 04:21:08.391227	2014-08-12 04:21:08.391227	javascript - Rails 4: how to use $(document).ready() with turbo-links - Stack Overflow	\N	\N
85	http://www.sitepoint.com/introduction-jquery-scroll-based-animations/	2014-08-12 04:27:11.324052	2014-08-12 04:27:11.324052	An Introduction to jQuery Scroll-based Animations	\N	George Martsoukos provides an introduction to creating scroll-based animations and effects using jQuery.
87	http://stackoverflow.com/questions/5647632/capture-screenshots-for-a-ruby-on-rails-application	2014-08-12 16:54:47.125724	2014-08-12 16:54:47.125724	Capture screenshots for a Ruby on Rails application - Stack Overflow	\N	\N
88	http://addyosmani.com/resources/essentialjsdesignpatterns/book/	2014-08-12 17:15:41.206681	2014-08-12 17:15:41.206681	Learning JavaScript Design Patterns	\N	An open-source book on JavaScript Design Patterns
89	https://github.com/kossnocorp/jquery.turbolinks	2014-08-12 17:29:56.696441	2014-08-12 17:29:56.696441	kossnocorp/jquery.turbolinks · GitHub	\N	jquery.turbolinks - jQuery plugin for drop-in fix binded events problem caused by Turbolinks
90	https://github.com/Adaptv/adapt-strap	2014-08-12 19:59:17.558393	2014-08-12 19:59:17.558393	Adaptv/adapt-strap · GitHub	\N	adapt-strap - AngularJS ui components/utilities based on AngularJS 1.2+ and bootstrap 3
93	http://mercury.io/blog/free-ios-7-illustrator-vector-ui-kit-for-iphone-and-ipad	2014-08-13 14:56:42.881664	2014-08-13 14:56:42.881664	Free iOS 7 Illustrator Vector UI Kit for iPhone and iPad «  Mercury Intermedia | Premium mobile apps | iOS & Android	\N	Award-winning mobile app strategy, design, development and platform solutions for iOS and Android.
94	http://css3.bradshawenterprises.com/transitions/	2014-08-13 22:53:06.033099	2014-08-13 22:53:06.033099	CSS transitions | CSS transitions, CSS transforms and CSS animation	\N	How to use CSS transitions to animate content in Safari, Chrome, Firefox, Opera and Internet Explorer 10
95	http://www.thinkful.com/	2014-08-14 23:15:40.932924	2014-08-14 23:15:40.932924	Learn to Code With a Mentor & Become a Web Developer | Thinkful	\N	Thinkful is the online school you need to become a web developer. Build real projects at your own pace with ongoing support from your own mentor. Join today.
96	http://underscorejs.org/	2014-08-15 04:12:43.212861	2014-08-15 04:12:43.212861	Underscore.js	\N	\N
97	http://handlebarsjs.com/	2014-08-15 04:14:13.069981	2014-08-15 04:14:13.069981	Handlebars.js: Minimal Templating on Steroids	\N	\N
98	http://www.thmsbfft.fr/#/twocomputers	2014-08-15 04:14:44.452975	2014-08-15 04:14:44.452975	Thomas Buffet • Designer	\N	Graphic + Interactive Design, between man & computer.
99	http://chimera.labs.oreilly.com/books/1234000001808/index.html	2014-08-15 17:57:38.964934	2014-08-15 17:57:38.964934	Node: Up and Running	\N	\N
100	http://www.nodebeginner.org/	2014-08-15 17:57:52.57933	2014-08-15 17:57:52.57933	The Node Beginner Book » A comprehensive Node.js tutorial	\N	A comprehensive Node.js tutorial for beginners: Learn how to build a full blown web application with server-side JavaScript
101	https://www.youtube.com/watch?v=v2ifWcnQs6M	2014-08-15 18:01:52.223557	2014-08-15 18:01:52.223557	Douglas Crockford: The JavaScript Programming Language - YouTube	\N	In this 2007 presentation at Yahoo!, which is meant to be the beginning of a three-course sequence (followed by "Theory of the DOM" and then "Advanced JavaSc...
102	http://onepagelove.com/	2014-08-15 20:28:20.327104	2014-08-15 20:28:20.327104	One Page Love	\N	One Page Love is a one page website design gallery showcasing the best single page website designs from around the web.
103	http://www.sitepoint.com/5-sites-fantastic-creative-commons-design-resources/?utm_content=buffer740cd&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer	2014-08-16 20:20:04.840003	2014-08-16 20:20:04.840003	5 Sites For Fantastic Creative Commons Design Resources	\N	Creative Commons offers some great options for designers of all types. Elio shows us some neat tricks to take best advantage of this design goldmine.
104	http://trentwalton.com/2012/02/13/css-column-breaks/	2014-08-16 23:29:32.42586	2014-08-16 23:29:32.42586	CSS Column Breaks | Trent Walton	\N	\N
105	http://html5-demos.appspot.com/static/css/filters/index.html	2014-08-16 23:51:45.378833	2014-08-16 23:51:45.378833	CSS Filters	\N	\N
106	http://www.onyx-europe.com/	2014-08-17 13:24:53.305362	2014-08-17 13:24:53.305362	About ONYX: ONYX creative engineering | concept design | mechanical design | project management | product development	\N	\N
107	http://www.coroflot.com	2014-08-17 13:25:59.650364	2014-08-17 13:25:59.650364	Coroflot — Design Jobs & Portfolios	\N	\N
108	http://NBA.com	2014-08-17 18:15:30.520577	2014-08-17 18:15:30.520577	NBA.com	\N	The official site of the National Basketball Association. Includes news, features, multimedia, player profiles, chat transcripts, schedules and statistics.
109	http://cwbuecheler.com/web/tutorials/2013/node-express-mongo/	2014-08-18 02:17:29.947562	2014-08-18 02:17:29.947562	Tutorial - Getting Started With Node.js, Express, MongoDB | Christopher Buecheler - Web, Writing, Cocktails and More	\N	The Dead-Simple Step-by-Step Tutorial for Front-End Developers to Getting Up and Running with Node.JS, Express, Jade, and MongoDB
110	http://cwbuecheler.com/web/tutorials/2014/restful-web-app-node-express-mongodb/	2014-08-18 04:03:46.95628	2014-08-18 04:03:46.95628	Creating a Simple RESTful Web App with Node.js, Express, and MongoDB | Christopher Buecheler - Web, Writing, Cocktails and More	\N	Learn the basics of REST and use them to build an easy, fast, single-page web app.
111	http://nodejs.org/documentation/api/	2014-08-18 21:47:11.964522	2014-08-18 21:47:11.964522	API Docs | node.js	\N	\N
112	https://www.youtube.com/watch?v=AEE7DY2AYvI	2014-08-19 00:51:51.034844	2014-08-19 00:51:51.034844	MEAN Stack Intro: Build an end-to-end application - YouTube	\N	In this MEAN SF Developers talk, we introduce each technology and build an application end-to-end with live coding. See how all the pieces work together. Git...
113	http://www.smashingmagazine.com/2014/08/19/mastering-a-programming-language-using-spaced-repetition/	2014-08-19 13:52:42.171036	2014-08-19 13:52:42.171036	Tips For Mastering A Programming Language Using Spaced Repetition | Smashing Magazine	\N	Mattan Griffel shares best practices that he discovered from using spaced repetition to learn and master a programming language.
114	http://www.sitepoint.com/use-google-maps-rails/	2014-08-19 14:53:41.767184	2014-08-19 14:53:41.767184	Use Google Maps with Rails	\N	\N
115	http://makethumbnails.com/#dropzone	2014-08-19 16:04:01.885118	2014-08-19 16:04:01.885118	Let's make thumbnails - just drop some images here.	\N	\N
116	http://learn-swift.co/?sslid=MzW1tDQxNQEA&sseid=Mzc1MAEA&jobid=89e9c592-27ea-4631-8b4f-e7d65ca53219	2014-08-19 16:30:17.000949	2014-08-19 16:30:17.000949	Learn Swift: A no-frills introduction to Swift	\N	A no-frills introduction to Swift for busy and/or curious people
117	http://scotch.io/tutorials/javascript/scraping-the-web-with-node-js	2014-08-19 17:59:47.147182	2014-08-19 17:59:47.147182	Scraping the Web With Node.js ♥ Scotch	\N	Before web based API’s became the prominent way of sharing data between services we had web scraping. Web scraping is a technique in data extraction where you pull information from websites. There are many ways this can be accomplished. It...
118	http://google.ca	2014-08-20 21:15:23.137975	2014-08-20 21:15:23.137975	Google	\N	\N
119	http://google.com	2014-08-20 21:15:50.139826	2014-08-20 21:15:50.139826	Google	\N	Search the world's information, including webpages, images, videos and more. Google has many special features to help you find exactly what you're looking for.
120	http://www.nczonline.net/blog/2010/08/10/what-is-a-non-blocking-script/	2014-08-21 15:43:17.63852	2014-08-21 15:43:17.63852	What is a non-blocking script? | NCZOnline	\N	It was just a couple of years ago that Steve Souders introduced the concept of blocking vs. non-blocking into the common lexicon of web developers around the
121	http://youmightnotneedjquery.com/	2014-08-22 16:26:24.853601	2014-08-22 16:26:24.853601	You Might Not Need jQuery	\N	Examples of how to do common event, element, ajax and utility operations with plain javascript.
122	https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date	2014-08-22 16:38:23.00571	2014-08-22 16:38:23.00571	Date - JavaScript | MDN	\N	Creates a JavaScript Date instance that represents a single moment in time. Date objects are based on a time value that is the number of milliseconds since 1 January, 1970 UTC.
123	http://fastly.com	2014-08-22 18:06:54.483554	2014-08-22 18:06:54.483554	Fastly | Fastly - The Next Gen CDN	\N	We're the smartest CDN on the planet. That means microsecond response. Unheard of extensibility. Flexibility. Talk to our engineers. Test us. Try us. Free.
124	http://www.sitepoint.com/10-tips-git-next-level	2014-08-22 23:33:50.641807	2014-08-22 23:33:50.641807	10 Tips to Push Your Git Skills to the Next Level	\N	Shaumik covers 10 Git techniques that will help you take your Git knowledge and skills to a more advanced level, improving your workflow.
125	http://www.photonstorm.com/phaser/tutorial-making-your-first-phaser-game	2014-08-23 20:09:29.228636	2014-08-23 20:09:29.228636	Photon Storm  » Blog Archive   » Tutorial: Making your first Phaser game	\N	\N
126	http://gametest.mobi/phaser/docs/Phaser.html	2014-08-23 20:10:23.765433	2014-08-23 20:10:23.765433	http://gametest.mobi/phaser/docs/Phaser.html	\N	\N
130	http://www.html5gamedevs.com/forum/14-phaser/	2014-08-23 20:13:53.885071	2014-08-23 20:13:53.885071	Phaser - HTML5 Game Devs Forum	\N	The HTML5 Game Developers Forum
132	http://www.codevinsky.com/phaser-2-0-tutorial-flappy-bird-part-1/	2014-08-23 23:45:44.258006	2014-08-23 23:45:44.258006	Phaser 2.0 Tutorial: Flappy Bird (Part 1)	\N	
134	http://c3js.org/	2014-08-28 00:40:08.769138	2014-08-28 00:40:08.769138	C3.js | D3-based reusable chart library	\N	D3 based reusable chart library
136	https://github.com/underscorediscovery/realtime-multiplayer-in-html5	2014-08-28 22:01:03.096975	2014-08-28 22:01:03.096975	underscorediscovery/realtime-multiplayer-in-html5 · GitHub	\N	realtime-multiplayer-in-html5 - Read the full article: http://buildnewgames.com/real-time-multiplayer/ An example using node.js, socket.io and HTML5 Canvas to explain and demonstrate realtime multiplayer games in the browser.
137	http://buildnewgames.com/real-time-multiplayer/	2014-08-28 22:01:21.293169	2014-08-28 22:01:21.293169	Real Time Multiplayer in HTML5 - Build New Games	\N	Real Time Multiplayer in HTML5 Jul 18th, 2012 | by Sven Bergström Multiplayer and browsers When you consider making multiplayer games, there are …
183	http://en.wikipedia.org/wiki/Merge_sort#Top-down_implementation_using_lists	2014-09-04 15:50:05.899468	2014-09-04 15:50:05.899468	Merge sort - Wikipedia, the free encyclopedia	\N	\N
138	http://www.eventbrite.com/e/2nd-annual-vancouver-engineering-startup-crawl-tickets-8815817347	2014-08-29 21:40:08.185244	2014-08-29 21:40:08.185244	 2nd Annual Vancouver Engineering Startup Crawl Tickets, Vancouver, BC - Eventbrite 	\N	Eventbrite - Robyn Sater presents 2nd Annual Vancouver Engineering Startup Crawl - Tuesday, September 9, 2014 at Four Vancouver tech startup offices. Find event and ticket information.
139	http://golang.org/doc/effective_go.html	2014-08-29 21:40:40.528738	2014-08-29 21:40:40.528738	Effective Go - The Go Programming Language	\N	\N
140	http://www.usingcsp.com/cspbook.pdf	2014-08-29 21:41:25.238054	2014-08-29 21:41:25.238054	http://www.usingcsp.com/cspbook.pdf	\N	\N
141	https://axiomzen.co/	2014-08-29 21:42:32.622007	2014-08-29 21:42:32.622007	Axiom Zen | Technology Catalysts	\N	Axiom Zen is an idea catalyst, bespoke design studio, and software engineering foundry. An entrepreneurial collective of builders and creatives. We create, partner with, and build products for iconic companies shaping the future of digital life.
142	http://www.cambiaresearch.com/articles/15/javascript-char-codes-key-codes	2014-08-31 05:53:44.73988	2014-08-31 05:53:44.73988	\r\n\tJavascript Char Codes (Key Codes) - Cambia Research\r\nUntitled Page	\N	\N
143	http://www.paulirish.com/2009/random-hex-color-code-snippets/	2014-09-01 01:03:06.264088	2014-09-01 01:03:06.264088	Random hex color code generator in JavaScript - Paul Irish	\N	\N
144	https://github.com/jonom/jquery-focuspoint	2014-09-01 16:42:21.039388	2014-09-01 16:42:21.039388	jonom/jquery-focuspoint · GitHub	\N	jquery-focuspoint - jQuery plugin for 'responsive cropping'. Dynamically crop images to fill available space without cutting out the image's subject. Great for full-screen images.
145	http://stackoverflow.com/questions/4978133/getting-gps-metadata-from-a-picture-with-paperclip	2014-09-02 12:46:15.324653	2014-09-02 12:46:15.324653	ruby on rails - Getting GPS metadata from a picture with Paperclip - Stack Overflow	\N	\N
146	http://stackoverflow.com/questions/1703511/ruby-geolocation-gem-plugins	2014-09-02 12:46:25.877944	2014-09-02 12:46:25.877944	Ruby Geolocation Gem/Plugins - Stack Overflow	\N	\N
147	http://www.rubygeocoder.com/	2014-09-02 12:46:36.780097	2014-09-02 12:46:36.780097	Ruby Geocoder	\N	\N
148	https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet	2014-09-02 13:16:25.416557	2014-09-02 13:16:25.416557	Markdown Cheatsheet · adam-p/markdown-here Wiki · GitHub	\N	markdown-here - Google Chrome, Firefox, and Thunderbird extension that lets you write email in Markdown and render it before sending.
149	https://github.com/pandabeat	2014-09-02 19:59:48.012639	2014-09-02 19:59:48.012639	pandabeat · GitHub	\N	pandabeat has 1 repository written in CSS and Ruby. Follow their code on GitHub.
150	http://stackoverflow.com/questions/1153856/string-negation-using-regular-expressions	2014-09-02 21:45:46.392855	2014-09-02 21:45:46.392855	regex - String negation using regular expressions - Stack Overflow	\N	\N
151	http://www.regex101.com	2014-09-02 22:03:43.5219	2014-09-02 22:03:43.5219	Online regex tester and debugger: JavaScript, Python, PHP, and PCRE	\N	Online regex tester, debugger with highlighting for PHP, PCRE, Python and JavaScript.
152	http://regex101.com/	2014-09-02 22:07:13.52963	2014-09-02 22:07:13.52963	Online regex tester and debugger: JavaScript, Python, PHP, and PCRE	\N	Online regex tester, debugger with highlighting for PHP, PCRE, Python and JavaScript.
153	http://ndpsoftware.com/git-cheatsheet.html	2014-09-03 04:54:20.196661	2014-09-03 04:54:20.196661	Git Cheatsheet • NDP Software	\N	Interactive Git Cheatsheet, categorizing commands based on what they affect.
154	http://teaorbit.com/marlon	2014-09-03 05:08:22.6288	2014-09-03 05:08:22.6288	tea orbit	\N	\N
155	http://javascript.about.com/library/blctmarquee1.htm	2014-09-03 05:24:42.702669	2014-09-03 05:24:42.702669	Continuous Text Marquee	\N	This script allows you to display one or more marquees containing text that will scroll continuously without a break except when the mouse is moved over them.
156	http://git-scm.com/book/en/Git-Basics-Viewing-the-Commit-History	2014-09-03 05:42:54.97781	2014-09-03 05:42:54.97781	Git - Viewing the Commit History	\N	\N
157	http://compass.lighthouselabs.ca/welcome	2014-09-03 14:57:49.532567	2014-09-03 14:57:49.532567	Compass	\N	LaserShark
158	http://ndpsoftware.com/git-cheatsheet.html#loc=index;	2014-09-03 15:45:54.682491	2014-09-03 15:45:54.682491	Git Cheatsheet • NDP Software	\N	Interactive Git Cheatsheet, categorizing commands based on what they affect.
159	http://git-scm.com/book/en/Git-Basics	2014-09-03 15:49:37.352534	2014-09-03 15:49:37.352534	Git - Git Basics	\N	\N
160	http://git-scm.com/book/en/Git-Branching	2014-09-03 15:49:50.793878	2014-09-03 15:49:50.793878	Git - Git Branching	\N	\N
161	http://www.cs.bu.edu/teaching/unix/reference/	2014-09-03 15:54:12.316936	2014-09-03 15:54:12.316936	UNIX Commands and Concepts	\N	\N
166	http://compass.lighthouselabs.ca/days/w1d1	2014-09-03 15:55:56.296742	2014-09-03 15:55:56.296742	Compass	\N	LaserShark
168	http://teaorbit.com/lighthouse-september	2014-09-03 15:57:58.062108	2014-09-03 15:57:58.062108	tea orbit	\N	\N
169	http://ruby-doc.org/core-2.1.1/Object.html	2014-09-03 17:45:07.717916	2014-09-03 17:45:07.717916	Class: Object (Ruby 2.1.1) 	\N	  Class : Object  -   Ruby 2.1.1 
170	http://mashable.com/2013/07/11/lorem-ipsum/	2014-09-03 23:17:04.077138	2014-09-03 23:17:04.077138	56 Unique Lorem Ipsum Generators	\N	Spice up your filler text and design projects with these hilarious lorem ipsum generators.
171	http://www.raywenderlich.com/61078/write-simple-node-jsmongodb-web-service-ios-app	2014-09-04 01:16:07.814878	2014-09-04 01:16:07.814878	How To Write A Simple Node.js/MongoDB Web Service for an iOS App - Ray Wenderlich	\N	Learn how to create a simple Node.js and MongoDB web service for an iOS app in this tutorial.
172	http://www.reactive.io/tips/2009/01/11/the-difference-between-ruby-symbols-and-strings/	2014-09-04 04:02:55.916377	2014-09-04 04:02:55.916377	The Difference Between Ruby Symbols and Strings - Reactive.TIPS - The Official Blog of Reactive.IO	\N	The Difference Between Ruby Symbols and Strings
173	https://github.com/bbatsov/ruby-style-guide	2014-09-04 04:12:14.492078	2014-09-04 04:12:14.492078	bbatsov/ruby-style-guide · GitHub	\N	ruby-style-guide - A community-driven Ruby coding style guide
174	http://stackoverflow.com/questions/80357/match-all-occurrences-of-a-regex	2014-09-04 15:40:52.739274	2014-09-04 15:40:52.739274	ruby - Match All Occurrences of a Regex - Stack Overflow	\N	\N
175	http://www.regular-expressions.info/ruby.html	2014-09-04 15:41:48.953559	2014-09-04 15:41:48.953559	Ruby Regexp Class - Regular Expressions in Ruby	\N	\N
176	http://regexone.com/lesson/15	2014-09-04 15:42:03.775289	2014-09-04 15:42:03.775289	RegexOne - Learn Regular Expressions - Lesson 15: Other special characters	\N	RegexOne provides a set of interactive lessons and examples to help you learn regular expressions
177	http://freeengineer.org/learnUNIXin10minutes.html	2014-09-04 15:45:12.311351	2014-09-04 15:45:12.311351	Learn UNIX in 10 minutes	\N	\N
178	http://www.tjhsst.edu/~dhyatt/superap/unixcmd.html	2014-09-04 15:45:25.313475	2014-09-04 15:45:25.313475	\nBasic UNIX Commands\n	\N	\N
179	https://ariejan.net/2007/01/28/ruby-sort-an-array-of-objects-by-an-attribute/	2014-09-04 15:46:48.730018	2014-09-04 15:46:48.730018	Ruby: Sort an array of objects by an attribute — ariejan de vroom	\N	a blog by ariejan de vroom about software engineering and craftsmanship.
180	http://stackoverflow.com/questions/11091434/using-the-bubble-sort-method-for-an-array-in-ruby	2014-09-04 15:47:01.274335	2014-09-04 15:47:01.274335	Using the Bubble sort method for an array in Ruby - Stack Overflow	\N	\N
181	https://github.com/bbatsov/ruby-style-guide#naming	2014-09-04 15:49:14.638957	2014-09-04 15:49:14.638957	bbatsov/ruby-style-guide · GitHub	\N	ruby-style-guide - A community-driven Ruby coding style guide
182	https://gist.github.com/nkpart/1286207	2014-09-04 15:49:31.428553	2014-09-04 15:49:31.428553	Merge sort ruby	\N	Merge sort ruby - Gist is a simple way to share snippets of text and code with others.
225	http://callbackhell.com/	2014-09-13 22:07:53.319437	2014-09-13 22:07:53.319437	Callback Hell	\N	\N
184	http://en.wikipedia.org/wiki/Bubble_sort	2014-09-04 15:50:25.819527	2014-09-04 15:50:25.819527	Bubble sort - Wikipedia, the free encyclopedia	\N	\N
185	http://en.wikipedia.org/wiki/Sorting_algorithm	2014-09-04 15:50:38.917331	2014-09-04 15:50:38.917331	Sorting algorithm - Wikipedia, the free encyclopedia	\N	\N
186	http://www.ruby-doc.org/stdlib-2.0.0/libdoc/benchmark/rdoc/Benchmark.html	2014-09-04 15:50:55.625668	2014-09-04 15:50:55.625668	Module: Benchmark (Ruby 2.0.0) 	\N	  Module : Benchmark  -   Ruby 2.0.0 
187	http://stackoverflow.com/questions/7146353/ruby-output-contents-of-an-array-as-a-comma-separated-string-ruby	2014-09-04 22:32:08.885799	2014-09-04 22:32:08.885799	Ruby output contents of an array as a comma separated string Ruby - Stack Overflow	\N	\N
188	http://stackoverflow.com/questions/17985469/how-do-i-round-to-two-decimal-places	2014-09-04 22:44:16.011388	2014-09-04 22:44:16.011388	ruby - How do I round to two decimal places? - Stack Overflow	\N	\N
189	http://blog.jerodsanto.net/2013/10/ruby-quick-tip-easily-count-occurrences-of-array-elements/	2014-09-04 23:16:35.035238	2014-09-04 23:16:35.035238	\nRuby Quick Tip: Easily Count Occurrences of Array Elements - Jerod Santo\n	\N	Have you ever needed to see how many times each element in an array occurs? Perhaps sort by those occurrences? Here's a quick and easy way to do it.
190	https://www.sublimetext.com/docs/2/multiple_selection_with_the_keyboard.html	2014-09-04 23:17:06.066944	2014-09-04 23:17:06.066944	Multiple Selection with the Keyboard - Sublime Text 2 Documentation	\N	\N
191	http://code.tutsplus.com/courses/perfect-workflow-in-sublime-text-2	2014-09-04 23:37:19.147668	2014-09-04 23:37:19.147668	Perfect Workflow in Sublime Text 2 - Tuts+ Course	\N	\N
192	http://rosettacode.org/wiki/Hash_from_two_arrays#Ruby	2014-09-05 00:22:15.301529	2014-09-05 00:22:15.301529	Hash from two arrays - Rosetta Code	\N	\N
193	http://expressjs.com/guide.html	2014-09-05 03:01:03.732717	2014-09-05 03:01:03.732717	Express - guide	\N	\N
194	http://mislav.uniqpath.com/poignant-guide/book/chapter-3.html	2014-09-05 03:18:24.759969	2014-09-05 03:18:24.759969	\n      A Quick (and Hopefully Painless) Ride Through Ruby (with Cartoon Foxes)\n      ::\n      Why's (Poignant) Guide to Ruby\n    	\N	\N
195	http://en.wikibooks.org/wiki/Ruby_Programming/Reference/Objects/Enumerable	2014-09-05 03:36:58.254389	2014-09-05 03:36:58.254389	Ruby Programming/Reference/Objects/Enumerable - Wikibooks, open books for an open world	\N	\N
196	http://ruby.bastardsbook.com/chapters/recursion/	2014-09-05 03:37:15.566179	2014-09-05 03:37:15.566179	Recursion | The Bastards Book of Ruby	\N	A Ruby programming tutorial for journalists, researchers, investigators, scientists, analysts and anyone else in the business of finding information and making it useful and visible. Programming experience not required, but provided.
197	http://www.theodinproject.com/ruby-programming/recursive-methods	2014-09-05 03:37:45.373206	2014-09-05 03:37:45.373206	Learn Ruby Programming -- Recursive Methods	\N	The Odin Project empowers aspiring web developers to learn together
200	http://ruby-doc.com/docs/ProgrammingRuby/	2014-09-05 19:34:08.652433	2014-09-05 19:34:08.652433	Programming Ruby: The Pragmatic Programmer's Guide	\N	\N
201	http://www.gethourglass.com/blog/ruby-how-to-sort-a-hash.html	2014-09-06 18:36:26.70222	2014-09-06 18:36:26.70222	Using Ruby: How To Sort A Hash\r\n | Hourglass Blog	\N	If you're new to Ruby or programming in general, interacting with hashes may have you a little confused. Let us explain.\r\n
202	http://www.gethourglass.com/blog/ruby-check-if-file-exists.html	2014-09-06 18:37:23.526531	2014-09-06 18:37:23.526531	Using Ruby: How To Check If A File Exists\r\n | Hourglass Blog	\N	There are different ways to check if a file exists using Ruby, and some things you should watch for.\r\n
203	https://coderwall.com/p/be_1va	2014-09-06 18:47:15.350264	2014-09-06 18:47:15.350264	Fab Mackojc : Swap two elements of an array in Ruby	\N	A protip by fabsays about ruby and arrays.
204	http://justinhileman.info/article/git-pretty/	2014-09-06 20:02:40.432097	2014-09-06 20:02:40.432097	Git pretty — justin hileman dot info	\N	\N
205	http://stackoverflow.com/questions/1489183/colorized-ruby-output	2014-09-06 20:40:59.446003	2014-09-06 20:40:59.446003	colors - Colorized Ruby output - Stack Overflow	\N	\N
206	https://medium.com/@pasql/transitional-interfaces-926eb80d64e3	2014-09-07 18:20:44.389489	2014-09-07 18:20:44.389489	Transitional Interfaces — Medium	\N	Designers love to sweat the details. Much time is spent pixel-fucking buttons, form styles, setting type, & getting thos…
207	https://spreadgit.com/	2014-09-07 18:21:07.920452	2014-09-07 18:21:07.920452	Version Control for Excel Spreadsheets	\N	\N
208	http://tenderlovemaking.com/2014/02/19/adequaterecord-pro-like-activerecord.html	2014-09-07 21:12:35.585648	2014-09-07 21:12:35.585648	\n       AdequateRecord Pro™: Like ActiveRecord, but more adequate |  Tenderlovemaking\n    	\N	\N
209	http://randomuser.me/	2014-09-08 05:17:31.523442	2014-09-08 05:17:31.523442	Random User Generator | API	\N	Random user generator is a FREE API for generating placeholder user information. Get profile photos, names, and more. It's like Lorem Ipsum, for people.
210	http://ruby.bastardsbook.com/chapters/io/	2014-09-08 17:35:45.008063	2014-09-08 17:35:45.008063	File input/output | The Bastards Book of Ruby	\N	A Ruby programming tutorial for journalists, researchers, investigators, scientists, analysts and anyone else in the business of finding information and making it useful and visible. Programming experience not required, but provided.
211	https://github.com/	2014-09-09 19:30:25.108301	2014-09-09 19:30:25.108301	GitHub · Build software better, together.	\N	Build software better, together.
212	http://rubyinrails.com/2014/03/pagination-in-rails-using-will_paginate-gem/	2014-09-09 20:37:36.563491	2014-09-09 20:37:36.563491	Pagination in Rails with will_paginate gem - Ruby in Rails	\N	Pagination in Rails can be implemented easily with will_paginate gem. will_paginate modifies Collection of ActiveRecord in a way to implement pagination.
213	https://projecteuler.net/problems	2014-09-09 20:38:19.438935	2014-09-09 20:38:19.438935	Problems - Project Euler	\N	A website dedicated to the fascinating world of mathematics and programming
214	http://runninglean.co/	2014-09-09 20:38:58.484994	2014-09-09 20:38:58.484994	Running Lean: The Lean Startup How-to Book\n	\N	
215	http://ididitmyway.herokuapp.com/past/2011/2/27/ajax_in_sinatra/	2014-09-10 19:07:10.308589	2014-09-10 19:07:10.308589	I Did It My Way	\N	\N
216	https://github.com/crguezl/sinatra-jquery-ajax/	2014-09-10 19:07:31.852361	2014-09-10 19:07:31.852361	crguezl/sinatra-jquery-ajax · GitHub	\N	sinatra-jquery-ajax - An example of Sinatra working with Ajaxified JQuery
217	http://teaorbit.com	2014-09-10 20:38:18.279786	2014-09-10 20:38:18.279786	#index.html	\N	\N
218	http://guides.rubyonrails.org/	2014-09-10 21:08:15.993074	2014-09-10 21:08:15.993074	Ruby on Rails Guides\n	\N	\N
219	https://www.relishapp.com/rspec/rspec-expectations/v/2-6/docs/built-in-matchers/raise-error-matcher	2014-09-11 22:10:30.127878	2014-09-11 22:10:30.127878	raise_error matcher - Built in matchers - RSpec Expectations - RSpec - Relish	\N	Relish helps your team get the most from Behaviour Driven Development. Publish, browse, search, and organize your Cucumber features on the web.
220	http://peterhrynkow.com/how-to-compress-a-png-like-a-jpeg/	2014-09-12 18:39:28.246098	2014-09-12 18:39:28.246098	Using SVG to shrink your PNGs | Peter Hrynkow\t	\N	\N
221	https://developers.soundcloud.com/docs/api/html5-widget#playground	2014-09-13 22:04:21.183587	2014-09-13 22:04:21.183587	Widget API - SoundCloud Developers	\N	\N
222	https://developers.soundcloud.com/docs/api/reference#token	2014-09-13 22:04:58.757173	2014-09-13 22:04:58.757173	HTTP API - Reference - SoundCloud Developers	\N	\N
223	https://developers.google.com/maps/documentation/javascript/examples/control-positioning	2014-09-13 22:06:06.190275	2014-09-13 22:06:06.190275	Control positioning - Google Maps JavaScript API v3 — Google Developers	\N	\N
224	https://developers.google.com/maps/documentation/geocoding/#ComponentFiltering	2014-09-13 22:07:13.304794	2014-09-13 22:07:13.304794	The Google Geocoding API - Google Maps API Web Services — Google Developers	\N	\N
226	http://sebastianpontow.de/css2compass/	2014-09-14 06:55:04.234727	2014-09-14 06:55:04.234727	css2scss - from css to scss	\N	This converter takes any CSS and converts it to SCSS
227	http://www.postgresql.org/docs/9.3/interactive/sql.html	2014-09-15 16:50:31.939971	2014-09-15 16:50:31.939971	PostgreSQL: Documentation: 9.3: The SQL Language	\N	\N
228	http://www.commandprompt.com/ppbook/x5802.htm#USINGDISTINCT	2014-09-15 19:14:26.096869	2014-09-15 19:14:26.096869	Retrieving Rows with SELECT	\N	\N
229	http://www.commandprompt.com/ppbook/x5802.htm#ASIMPLEWHERECLAUSE	2014-09-15 21:14:02.163579	2014-09-15 21:14:02.163579	Retrieving Rows with SELECT	\N	\N
230	http://sqlzoo.net/noads/1a.htm?answer=1	2014-09-15 23:04:06.401478	2014-09-15 23:04:06.401478	SQLzoo: Nested SELECT	\N	\N
231	https://postgres.heroku.com	2014-09-15 23:07:17.326189	2014-09-15 23:07:17.326189	Heroku | Postgres	\N	\N
233	http://diveintohtml5.info/canvas.html	2014-09-16 03:23:52.994268	2014-09-16 03:23:52.994268	Canvas - Dive Into HTML5	\N	\N
234	http://www.sitepoint.com/create-movie-recommendation-app-prediction-io-implementation/	2014-09-16 12:03:27.239318	2014-09-16 12:03:27.239318	Create a Movie Recommendation App with Prediction.io - Implementation	\N	Wern Ancheta introduces you to Prediction.io, an open source machine learning server you can use to smarten up your web apps - build the full app now!
235	http://prediction.io/	2014-09-16 12:03:42.666001	2014-09-16 12:03:42.666001	PredictionIO Open Source Machine Learning Server	\N	PredictionIO Open Source Machine Learning Server
236	http://docs.prediction.io/ruby/api/PredictionIO.html	2014-09-16 12:03:56.175214	2014-09-16 12:03:56.175214	Module: PredictionIO	\N	\N
237	http://www.peliculaspepito.com/	2014-09-16 15:16:47.158353	2014-09-16 15:16:47.158353	PeliculasPepito.com. Estrenos de cine, peliculas, trailers, cartelera.	\N	peliculas y estrenos de cine, trailers y cartelera de estrenos en cines, red social de cine
238	http://www.seriesyonkis.com/	2014-09-16 15:28:39.50291	2014-09-16 15:28:39.50291	  Series Yonkis - Descarga de series y ver online series  	\N	Portal de series de televisión; disfruta de tus series favoritas con seriesyonkis
240	http://jsfiddle.net/eTTZj/30/	2014-09-29 18:13:04.433343	2014-09-29 18:13:04.433343	Angular: CSS styling - JSFiddle	online javascript editor, testing javascript online, online ide, online code editor, html, css, coffeescript, scss online editor	Test your JavaScript, CSS, HTML or CoffeeScript online with JSFiddle code editor.
241	http://compass.lighthouselabs.ca/days/w1d1/activities/37	2014-09-30 01:10:41.321212	2014-09-30 01:10:41.321212	Compass		LaserShark
242	https://www.ruby-lang.org/en/	2014-09-30 02:27:21.830442	2014-09-30 02:27:21.830442	Ruby Programming Language		
243	http://compass.lighthouselabs.ca/days/today	2014-09-30 04:29:36.891279	2014-09-30 04:29:36.891279	Compass		LaserShark
244	http://repl.it/Zcf	2014-09-30 05:00:58.695057	2014-09-30 05:00:58.695057	repl.it	online,interpreters,javascript,python,ruby,scheme,apl,lua,coffeescript,forth,qbasic,terminal,console,share,run,code,coding,programming,esoteric,languages,web,repl	Online Interpreters in JavaScript. Try Python, Ruby, Scheme, Lua, CoffeeScript and more programming languages. Online coding and REPL. Run and share code.
245	http://repl.it/Zcf	2014-09-30 05:00:58.85516	2014-09-30 05:00:58.85516	repl.it	online,interpreters,javascript,python,ruby,scheme,apl,lua,coffeescript,forth,qbasic,terminal,console,share,run,code,coding,programming,esoteric,languages,web,repl	Online Interpreters in JavaScript. Try Python, Ruby, Scheme, Lua, CoffeeScript and more programming languages. Online coding and REPL. Run and share code.
246	http://www.ng-newsletter.com/posts/validations.html	2014-10-01 16:13:25.93734	2014-10-01 16:13:25.93734	Form validation with AngularJS | ng-newsletter	formvalidation form validation forms angularjs forms angularjs custom validation html5 forms validating forms html angular tutorial angularjs tutorial angularjs angularjs tutorial angular realtime ...	In our kick-off article, we look at form validation with AngularJS. We explore how AngularJS allows us to do rapid, easy form validation and how to build our own validations. angularjs angularjs tu...
247	http://www.sitepoint.com/you-can-do-that-with-css	2014-10-02 15:08:35.40903	2014-10-02 15:08:35.40903	You Can Do That With CSS?		Scott O'Hara shows us some neat things you can do with CSS, creating stuff you would normally need lots of JavaScript to produce.
248	http://www.sitepoint.com/5-seo-guidelines-for-developers/	2014-10-03 16:51:43.032437	2014-10-03 16:51:43.032437	5 SEO Guidelines for Developers		SEO seems complicated and intimidating, but software developers need to understand it. These SEO guidelines for developers will help you get started.
249	http://www.yearofmoo.com/2012/08/use-angularjs-to-power-your-web-application.html	2014-10-04 23:33:30.630122	2014-10-04 23:33:30.630122	Use AngularJS to Power Your Web Application - yearofmoo.com	mootools, jquery, vim, rails, php, ruby on rails, ios development, internet explorer, chrome, firefox, css, css3, javascript, html5, blog	AngularJS is a truly amazing approach to developing JS-heavy web applications
250	http://rubular.com/	2014-10-06 20:45:24.904488	2014-10-06 20:45:24.904488	Rubular: a Ruby regular expression editor and tester	regular expression, regex, regexp, ruby, rails, programming, development, editor, tester, builder, tool	Rubular is a Ruby-based regular expression editor and tester. It's a handy way to test regular expressions as you write them. Rubular is an especially good fit for Ruby and Rails developers, since ...
251	https://docs.angularjs.org/api/ng/filter/date	2014-10-06 21:22:31.993312	2014-10-06 21:22:31.993312	AngularJS		\N
252	http://www.openvim.com/tutorial.html	2014-10-06 21:23:01.008167	2014-10-06 21:23:01.008167	Interactive Vim tutorial		\N
253	http://www.w3schools.com/jsref/jsref_obj_date.asp	2014-10-07 17:21:12.838333	2014-10-07 17:21:12.838333	JavaScript Date Reference		\N
254	http://reddit.com	2014-10-08 03:54:14.981763	2014-10-08 03:54:14.981763	reddit: the front page of the internet	 reddit, reddit.com, vote, comment, submit 	reddit: the front page of the internet
255	http://paulhammant.com/2013/02/08/angular-instead-of-media-queries/	2014-10-08 23:14:36.149926	2014-10-08 23:14:36.149926	\n      \n        Angular Instead of Media-Queries - \n      \n      Paul Hammant's blog\n    		\N
256	http://www.cssscript.com/simple-javascript-tabs-library-simple-tab/	2014-10-09 00:02:02.511996	2014-10-09 00:02:02.511996	Simple Javascript Tabs Library - Simple Tab | CSS Script		Simple Tab is a tiny javascript library/plugin for creating a tabbed interface that allows you to switch between content sections by clicking the tabs.
257	http://www.halalfoodbrisbane.com/images/halal_logo.png	2014-10-09 17:31:02.393423	2014-10-09 17:31:02.393423	http://www.halalfoodbrisbane.com/images/halal_logo.png		\N
258	http://resrc.io/list/18/javascript-frameworks/	2014-10-10 16:08:18.449723	2014-10-10 16:08:18.449723	reSRC ·\nJavaScript Frameworks Resources and Tutorials\n		\N
259	http://www.cheatography.com/proloser/cheat-sheets/angularjs/	2014-10-10 16:08:45.543959	2014-10-10 16:08:45.543959	AngularJS Cheat Sheet by ProLoser - Cheatography.com: Cheat Sheets For Every Occasion		\N
260	http://css-tricks.com/examples/ShapesOfCSS/	2014-10-10 20:19:32.103718	2014-10-10 20:19:32.103718	http://css-tricks.com/examples/ShapesOfCSS/		\N
261	http://lucb1e.com/rp/cookielesscookies/	2014-10-11 16:00:09.564376	2014-10-11 16:00:09.564376	Lucb1e.com :: Cookieless Cookies		\N
262	http://eliteeternity.com/mysql-server-wont-start-mamp-red-light-mac/	2014-10-11 16:47:47.320173	2014-10-11 16:47:47.320173	MySQL Server Won't Start on MAMP (RED LIGHT!) Mac OSX - Elite Eternity		\N
263	http://stackoverflow.com/questions/10000020/ajax-post-to-google-spreadsheet	2014-10-14 17:08:00.613283	2014-10-14 17:08:00.613283	jquery - AJAX post to google spreadsheet - Stack Overflow		\N
268	http://stackoverflow.com/questions/300855/javascript-unit-test-tools-for-tdd	2014-10-14 22:56:58.911221	2014-10-14 22:56:58.911221	JavaScript unit test tools for TDD - Stack Overflow		\N
264	http://mashe.hawksey.info/2014/07/google-sheets-as-a-database-insert-with-apps-script-using-postget-methods-with-ajax-example/	2014-10-14 18:13:35.139363	2014-10-14 18:13:35.139363	Google Sheets as a Database – INSERT with Apps Script using POST/GET methods (with ajax example) | MASHe		\N
266	http://nodeframework.com/	2014-10-14 20:11:57.397074	2014-10-14 20:11:57.397074	Node.js Frameworks	javascript, nodejs, node.js	Hand-picked registry of Node.js frameworks.
272	http://bl.ocks.org/mbostock/2983699	2014-10-16 18:20:14.808322	2014-10-16 18:20:14.808322	Manual Axis Interpolation		\N
274	http://bl.ocks.org/mbostock/4149176	2014-10-16 18:24:45.806512	2014-10-16 18:24:45.806512	Custom Time Format		\N
281	http://guides.rubyonrails.org/active_record_basics.html	2014-10-18 00:40:10.121433	2014-10-18 00:40:10.121433	Active Record Basics — Ruby on Rails Guides		\N
286	http://youtube.ca	2014-10-20 23:07:57.402387	2014-10-20 23:07:57.402387	YouTube	video, sharing, camera phone, video phone, free, upload	Share your videos with friends, family, and the world
294	http://newtriks.com/2013/11/29/environment-specific-configuration-in-angularjs-using-grunt/	2014-10-23 18:47:36.987581	2014-10-23 18:47:36.987581	Environment Specific Configuration In AngularJS using Grunt - Newtriks LTD		Environment Specific Configuration in AngularJS Using Grunt Written by Simon Bailey One aspect of Rails I love is the simplicity of environment …
298	http://www.1001fonts.com/rudiment-font.html	2014-10-26 01:33:50.081833	2014-10-26 01:33:50.081833	Rudiment Font · 1001 Fonts		Download Rudiment Font · Free for commercial use · 
299	http://www.dafont.com/halohandletter.font?text=Sarah+%26+Mark	2014-10-26 01:34:00.836399	2014-10-26 01:34:00.836399	Halo Handletter Font | dafont.com	halo handletter, font, download, ttf, freeware, typefaces, typography, typeface, fonts, free, true type, dingbats	Halo Handletter Font | dafont.com
300	http://placezombie.com/	2014-10-27 05:15:38.639242	2014-10-27 05:15:38.639242	Placezombie - Cloud Based Zombie Image Placeholder Service		
305	https://www.codeschool.com/courses/git-real	2014-10-30 03:23:19.290562	2014-10-30 03:23:19.290562	Git Tutorial - Code School		Learn more advanced Git by practicing the concepts of Git version control. Increase your Git knowledge by learning more advanced systems within Git.
265	http://mashe.hawksey.info/2014/07/google-sheets-as-a-database-insert-with-apps-script-using-postget-methods-with-ajax-example/	2014-10-14 18:13:35.792353	2014-10-14 18:13:35.792353	Google Sheets as a Database – INSERT with Apps Script using POST/GET methods (with ajax example) | MASHe		\N
267	http://blog.hugeaim.com/2013/04/07/clearing-a-form-with-angularjs/	2014-10-14 21:19:07.596139	2014-10-14 21:19:07.596139	Clearing a Form with AngularJs		\N
269	http://sudheerdev.github.io/Foundation5CheatSheet/	2014-10-15 14:45:24.802136	2014-10-15 14:45:24.802136	Foundation CheatSheet	foundation, zurb, cheat sheet, cheat, code, help, copy paste, learn, great cheat sheet, copy and paste	Cheatsheet for foundation5 - The most advanced responsive front-end framework in the world. This is the latest version of cheatsheet!
271	http://bl.ocks.org/mbostock/1166403	2014-10-16 18:12:25.857948	2014-10-16 18:12:25.857948	Axis Component		\N
275	http://bl.ocks.org/bunkat/2338034	2014-10-16 18:31:06.516501	2014-10-16 18:31:06.516501	Timeline using d3.js		\N
277	http://bl.ocks.org/chaitanyagurrapu/6007521	2014-10-16 20:47:30.479921	2014-10-16 20:47:30.479921	A Google calendar like display for temporal data using D3.Js		\N
291	http://bl.ocks.org/mbostock/4063423#flare.json	2014-10-22 20:44:42.645497	2014-10-22 20:44:42.645497	Sunburst Partition		\N
293	http://bl.ocks.org/kerryrodden/477c1bfb081b783f80ad	2014-10-22 23:23:06.685286	2014-10-22 23:23:06.685286	Zoomable sunburst with updating data		\N
297	http://www.1001fonts.com/scriptina-font.html	2014-10-26 01:33:41.017076	2014-10-26 01:33:41.017076	Scriptina Font Family · 1001 Fonts		Download Scriptina Font Family · Free for commercial use · Includes Scriptina Regular, Alternates-regular · 
301	http://www.startupschool.org/	2014-10-27 20:09:45.916762	2014-10-27 20:09:45.916762	Y Combinator Startup School 2014		\N
304	http://git-scm.com/book/en/v1/Git-Basics-Recording-Changes-to-the-Repository	2014-10-30 03:20:56.747751	2014-10-30 03:20:56.747751	Git - Recording Changes to the Repository		\N
306	http://compass.lighthouselabs.ca/days/w1d3/activities/77	2014-10-30 03:38:22.384607	2014-10-30 03:38:22.384607	Compass		LaserShark
270	http://guides.rubyonrails.org/active_record_validations.html	2014-10-15 21:56:34.330899	2014-10-15 21:56:34.330899	Active Record Validations — Ruby on Rails Guides		\N
273	http://bl.ocks.org/mbostock/3306147	2014-10-16 18:22:29.406917	2014-10-16 18:22:29.406917	d3.time.scale nice		\N
276	http://answers.splunk.com/answers/115374/how-to-change-d3-charts-x-axis-font-color-style-and-size.html	2014-10-16 18:31:51.778638	2014-10-16 18:31:51.778638	how to change d3 charts x-axis font color,style and size - Question | Splunk Answers		Get fast answers and downloadable apps for Splunk, the IT Search solution for Log Management, Operations, Security, and Compliance. 
279	http://benfrain.com/top-tips-selection-unrelated-front-end-developer-tips/	2014-10-17 00:33:48.062088	2014-10-17 00:33:48.062088	Top tips (for Sublime Text, Sass, CSS, Terminal and more) - Author and responsive web developer Ben Frain		\N
280	http://cbednarski.com/articles/understanding-environment-variables-and-the-unix-path/	2014-10-18 00:38:47.320107	2014-10-18 00:38:47.320107	Understanding Environment Variables and the Unix Path - Chris Bednarski		When I was new to Mac and Linux, environment variables and the Unix PATH were mysterious and confusing. Documentation for various tools would …
282	http://www.eriktrautman.com/posts/ruby-explained-inheritance-and-scope	2014-10-18 00:40:43.912594	2014-10-18 00:40:43.912594	Erik Trautman's world of startups, creativity and code		\N
283	http://pothibo.com/2013/09/d3-js-how-to-handle-dynamic-json-data/	2014-10-18 04:27:59.717709	2014-10-18 04:27:59.717709	D3.js: How to handle dynamic JSON Data		\N
284	http://ember.vicramon.com	2014-10-19 23:35:08.143505	2014-10-19 23:35:08.143505	Vic Ramon's Ember Tutorial		\N
288	http://fcfeibel.com/blog/2013/07/28/grunt-quickstart-set-up-grunt-with-jshint/	2014-10-21 16:33:23.678992	2014-10-21 16:33:23.678992	Grunt Quickstart: Set up Grunt with JSHint | Minimum Viable Pontification		\N
296	http://blog.carbonfive.com/2014/10/16/webrtc-made-simple/	2014-10-23 23:51:20.805848	2014-10-23 23:51:20.805848	WebRTC Made Simple | The Carbon Emitter		\N
302	http://diveintohtml5.info/index.html	2014-10-27 21:33:32.472715	2014-10-27 21:33:32.472715	Dive Into HTML5		\N
278	https://www.freeformatter.com/	2014-10-16 23:42:24.207396	2014-10-16 23:42:24.207396	Free Online Tools For Developers - FreeFormatter.com		Online tools for developers, including formatters (JSON, XML, HTML, SQL, etc.), minifiers (JavaScript, CSS), validators, compactors and many more!
285	http://www.sitepoint.com/understanding-module-exports-exports-node-js/	2014-10-20 15:50:05.411696	2014-10-20 15:50:05.411696	Understanding module.exports and exports in Node.js		This article explains how the module system works in Node.js.
287	http://afarkas.github.io/lazysizes/	2014-10-21 16:26:34.974808	2014-10-21 16:26:34.974808	lazysizes - the umltimate lazyloader for responsive images, iframes and widget		\N
289	http://git-scm.com/docs/git-bisect	2014-10-21 20:34:19.990088	2014-10-21 20:34:19.990088	Git - git-bisect Documentation		\N
290	https://www.dashingd3js.com/d3-resources/d3-and-angular	2014-10-22 19:28:21.058002	2014-10-22 19:28:21.058002	D3 And Angular | DashingD3js.com		D3 Resource: A List Of D3 And Angular Resources
292	http://sunburst-demo.herokuapp.com/	2014-10-22 20:45:18.725168	2014-10-22 20:45:18.725168	SwiftIQ - Breakdown Analysis		\N
295	http://mindthecode.com/how-to-use-environment-variables-in-your-angular-application/	2014-10-23 18:48:01.063882	2014-10-23 18:48:01.063882	How to use environment variables in your Angular application		how do you handle environment variables in your AngularJS application? This post will show you how.
303	http://jilles.me/express-routing-the-beginners-guide/	2014-10-28 18:56:07.136866	2014-10-28 18:56:07.136866	Express Routing - The Beginners Guide		
307	http://mislav.uniqpath.com/poignant-guide/book/chapter-4.html	2014-10-30 16:00:03.077777	2014-10-30 16:00:03.077777	\n      Floating Little Leaves of Code\n      ::\n      Why's (Poignant) Guide to Ruby\n    		\N
308	http://codyhouse.co/gem/animate-svg-icons-with-css-and-snap/	2014-10-30 16:33:11.417656	2014-10-30 16:33:11.417656	Animate SVG icons with CSS and Snap | CodyHouse		How to optimize SVG code and animate an SVG icon using CSS and Snap.svg library.
309	http://snapsvg.io/	2014-10-30 16:33:25.407943	2014-10-30 16:33:25.407943	Snap.svg - Home		\N
310	http://yehudakatz.com/2010/02/07/the-building-blocks-of-ruby/	2014-10-30 18:10:19.218507	2014-10-30 18:10:19.218507	The Building Blocks of Ruby «  Katz Got Your Tongue?		\N
311	http://coolors.co/	2014-10-31 16:28:48.307782	2014-10-31 16:28:48.307782	Coolors - The super fast color palettes generator!	color scheme, color theme, color palette, color combinations, color ideas	Choose your favorite colors and get thousands of cool combinations.
312	https://www.npmjs.org/package/grunt-string-replace	2014-10-31 18:59:08.60923	2014-10-31 18:59:08.60923	grunt-string-replace		\N
313	http://tylermcginnis.com/angularjs-factory-vs-service-vs-provider/	2014-10-31 19:07:37.40492	2014-10-31 19:07:37.40492	Tyler McGinnis  » AngularJS: Factory vs Service vs Provider		Lead Instructor/Software Engineer at DevMountain. JavaScript fiend. I also really like Ice Cream.
314	http://git-scm.com/book/en/v1/Git-Branching-Branch-Management	2014-10-31 23:45:23.360968	2014-10-31 23:45:23.360968	Git - Branch Management		\N
315	http://blog.packager.io/post/101342252191/one-liner-to-get-a-precompiled-ruby-on-your-own-servers	2014-10-31 23:57:54.176243	2014-10-31 23:57:54.176243	Packager — One-liner to get a precompiled Ruby on your own servers	centos,rhel,fedora,ubuntu,ruby	One-liner to get a precompiled Ruby on your own servers At Packager we maintain ruby binaries for all the distributions we support (Debian / Ubuntu / CentOS / RHEL / Fedora), regularly updated to k...
316	http://rvm.io/	2014-10-31 23:58:18.366649	2014-10-31 23:58:18.366649	\n      RVM: Ruby Version Manager -\n      RVM Ruby Version Manager - Documentation\n    		\N
317	http://rbenv.org/	2014-10-31 23:58:39.271172	2014-10-31 23:58:39.271172	Simple Ruby version management: rbenv		\N
318	http://git-scm.com/book/en/v1/Git-Branching-Remote-Branches	2014-11-01 00:32:25.725232	2014-11-01 00:32:25.725232	Git - Remote Branches		\N
319	http://daringfireball.net/projects/markdown/syntax	2014-11-03 00:49:24.6544	2014-11-03 00:49:24.6544	Daring Fireball: Markdown Syntax Documentation		\N
320	https://www.youtube.com/watch?v=JhR9Ib1Ylb8#t=17	2014-11-03 08:18:55.829809	2014-11-03 08:18:55.829809	Ruby for Newbies - YouTube	ruby, ruby for newbies, rails, sinatra	Ruby is a one of the most popular languages used on the web. We're running a Session here on Nettuts+ that will introduce you to Ruby, as well as the great f...
321	http://cameronspear.com/blog/how-cool-are-formatters-and-parsers/	2014-11-03 21:13:20.136344	2014-11-03 21:13:20.136344	How cool are $formatters and $parsers?		
322	http://blog.rubybestpractices.com/posts/gregory/037-issue-8-uses-for-modules.html	2014-11-03 23:12:10.047564	2014-11-03 23:12:10.047564	Ruby Best Practices- Issue #8: Uses for Modules (1 of 4)		\N
323	http://blog.rubybestpractices.com/posts/gregory/038-issue-9-uses-for-modules.html	2014-11-03 23:13:12.592428	2014-11-03 23:13:12.592428	Ruby Best Practices- Issue #9: Uses for Modules (2 of 4)		\N
324	http://www.sitepoint.com/guide-ruby-csv-library-part/	2014-11-04 00:31:46.122268	2014-11-04 00:31:46.122268	A Guide to the Ruby CSV Library, Part I		\N
325	https://mashe.hawksey.info/2014/07/google-sheets-as-a-database-insert-with-apps-script-using-postget-methods-with-ajax-example/	2014-11-04 01:15:50.290897	2014-11-04 01:15:50.290897	Google Sheets as a Database – INSERT with Apps Script using POST/GET methods (with ajax example) | MASHe		\N
326	http://css-tricks.com/dont-overthink-it-grids/	2014-11-04 20:04:22.606233	2014-11-04 20:04:22.606233	http://css-tricks.com/dont-overthink-it-grids/		\N
327	http://webdesign.tutsplus.com/articles/build-a-freshly-squeezed-responsive-grid-system--webdesign-14888	2014-11-04 20:09:53.128319	2014-11-04 20:09:53.128319	Build a Freshly Squeezed Responsive Grid System - Tuts+ Web Design Article		I'd like to talk to you about Lemonade. Not the refreshing citrus drink, but a grid system I created. \r\n\r\nLemonade is a grid system that was built in order to give designers and developers the conf...
328	http://www.getskeleton.com/	2014-11-04 20:23:47.821354	2014-11-04 20:23:47.821354	Skeleton: Beautiful Boilerplate for Responsive, Mobile-Friendly Development		Skeleton: Beautiful Boilerplate for Responsive, Mobile-Friendly Development
329	https://www.cs.utexas.edu/~scottm/cs307/codingSamples.htm	2014-11-05 00:36:01.057742	2014-11-05 00:36:01.057742	Java Coding Samples		\N
330	http://rubykoans.com/	2014-11-05 00:41:22.048877	2014-11-05 00:41:22.048877	Learn Ruby with the Neo Ruby Koans	ruby	Learn Ruby with the Neo Ruby Koans
331	http://www.codewars.com/	2014-11-05 00:41:44.233038	2014-11-05 00:41:44.233038	Train with Programming Challenges/Kata | Codewars	codewars, code kata, kata, code gym, coding, code practice, ruby, javascript, coffeescript, web development, software development, dojo	Codewars is where developers achieve code mastery through challenge. Train on kata in the dojo and reach your highest potential.
332	https://www.railstutorial.org/book	2014-11-05 00:42:53.780742	2014-11-05 00:42:53.780742	Frontmatter\n | Ruby on Rails Tutorial (3rd Ed.) |  Softcover.io		\N
333	http://gruntjs.com/api/grunt.option	2014-11-05 00:53:02.728603	2014-11-05 00:53:02.728603	grunt.option - Grunt: The JavaScript Task Runner		\N
334	http://www.skilledup.com/learn/programming/best-free-ruby-rails-tutorials/	2014-11-05 01:32:36.744895	2014-11-05 01:32:36.744895	The 9 Best Free Ruby & Rails Tutorials		If you want to Learn Ruby or Ruby on Rails (RoR) before investing your money in the skill, try starting with these 9 Best Free Ruby and RoR Tutorials!
335	https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Media_queries	2014-11-05 16:56:19.657169	2014-11-05 16:56:19.657169	CSS media queries - Web developer guide | MDN		A media query consists of a media type and at least one expression that limits the style sheets' scope by using media features, such as width, height, and color. Media queries, added in CSS3, let t...
336	http://coffeescript.carbonfive.com/	2014-11-05 18:58:11.660978	2014-11-05 18:58:11.660978	Essence of CoffeeScript Tutorial		\N
337	http://tympanus.net/Tutorials/StickyTableHeaders/index2.html	2014-11-06 01:15:24.532165	2014-11-06 01:15:24.532165	Sticky Table Headers Revisited | Demo 2	sticky table headers revisited	Sticky Table Headers Revisited: Creating functional and flexible sticky table headers
339	http://git-scm.com/book/en/v1/Git-Branching-Rebasing	2014-11-06 20:30:48.23298	2014-11-06 20:30:48.23298	Git - Rebasing		\N
343	http://sql.learncodethehardway.org/book/ex7.html	2014-11-10 05:18:20.853428	2014-11-10 05:18:20.853428	Exercise 7: Deleting Data		\N
344	http://sqlzoo.net/wiki/Self_join	2014-11-10 05:39:17.604094	2014-11-10 05:39:17.604094	Self join - SQLZOO		\N
345	http://dandkagency.com/extensions/velositey-v2/	2014-11-10 17:20:55.01379	2014-11-10 17:20:55.01379	 Velositey Version 2 - Photoshop Extension by D&K		Prototype the design of your website in seconds with Velositey Version 2 by D&K. Photoshop extension compatible with Adobe Photoshop CS6, CC & CC2014.
348	http://dev.ghost.org/css-at-ghost/	2014-11-11 21:24:16.424731	2014-11-11 21:24:16.424731	How we do CSS at Ghost		
363	http://www.codeproject.com/Articles/704865/Salted-Password-Hashing-Doing-it-Right	2014-11-15 17:52:46.963637	2014-11-15 17:52:46.963637	Salted Password Hashing - Doing it Right - CodeProject		\N
369	http://onehungrymind.com/angularjs-dynamic-templates/	2014-11-19 00:26:08.98833	2014-11-19 00:26:08.98833	AngularJS Dynamic Templates – Yes We Can! – One Hungry Mind		This is going to be a really fun post for me. AngularJS is a super powerful framework for building great applications but I love it when I figure out ways
371	https://medium.com/@erikdkennedy/7-rules-for-creating-gorgeous-ui-part-2-430de537ba96	2014-11-25 16:40:38.000141	2014-11-25 16:40:38.000141	7 Rules for Creating Gorgeous UI (Part 2) — Medium		A guide to visual aesthetics, written by a nerd
373	https://github.com/rkh/hansi	2014-11-25 19:12:26.082191	2014-11-25 19:12:26.082191	rkh/hansi · GitHub		hansi - Your Hipster ANSI color library.
375	http://code.tutsplus.com/articles/new-course-testing-ruby-with-rspec--cms-22727	2014-11-27 00:33:55.090191	2014-11-27 00:33:55.090191	New Course: Testing Ruby With RSpec - Tuts+ Code Article		With the latest major release of RSpec, testing in Ruby has become even more powerful. New matchers, a better API and more power to the user through configuration are just some of the features in v...
377	https://www.digitalocean.com/community/tutorials/how-to-automate-ruby-on-rails-application-deployments-using-capistrano	2014-11-27 16:48:06.279659	2014-11-27 16:48:06.279659	How To Automate Ruby On Rails Application Deployments Using Capistrano | DigitalOcean	ruby on rails miscellaneous centos	In this DigitalOcean article, we are going create a rock-solid server setup, running the latest version of CentOS to host Ruby-on-Rails applications using Nginx and Passenger. We will continue with...
380	http://cssstats.com/	2014-11-28 22:51:42.586478	2014-11-28 22:51:42.586478	CSS Stats		
338	http://stackshare.io/	2014-11-06 20:16:30.238633	2014-11-06 20:16:30.238633	StackShare		StackShare helps developers find and decide on the best cloud services. Search and browse cloud infrasctructure services such as PaaS, IaaS, log management, exception monitoring, realtime backend A...
340	https://github.com/revolunet/sublimetext-markdown-preview	2014-11-07 16:22:01.316096	2014-11-07 16:22:01.316096	revolunet/sublimetext-markdown-preview · GitHub		sublimetext-markdown-preview - markdown preview and build plugin for sublime text 2/3
341	https://sublime.wbond.net/packages/MarkdownEditing	2014-11-07 16:22:29.462848	2014-11-07 16:22:29.462848	MarkdownEditing - Packages - Package Control		\N
347	http://sql.learncodethehardway.org/book/ex10.html	2014-11-11 02:04:31.106004	2014-11-11 02:04:31.106004	Exercise 10: Updating Complex Data		\N
349	http://learn.shayhowe.com/html-css/opening-the-box-model/	2014-11-12 00:46:13.873795	2014-11-12 00:46:13.873795	Opening the Box Model - Learn to Code HTML & CSS	html css box model margin border padding content box-sizing	Learn the HTML and CSS box model concept, outlining that every element on a page is a rectangular box, of which may include margins, padding, and borders.
355	http://devblog.avdi.org/2014/04/21/rake-part-1-basics/	2014-11-13 19:48:44.446424	2014-11-13 19:48:44.446424	Rake Part 1: Files and Rules | Virtuous Code		\N
358	http://www.ng-newsletter.com/posts/d3-on-angular.html	2014-11-14 00:10:15.523209	2014-11-14 00:10:15.523209	D3 on AngularJS | ng-newsletter	angularjs angularjs d3 d3 angularjs angular tutorial angularjs tutorial angularjs angularjs tutorial angular realtime firebase angularfire	In this week's post, we explore how to work with D3 and AngularJS. We'll build some key services as well as a walk-through of a complete directive with Angular. angularjs angularjs tutorial angular
368	http://stackoverflow.com/questions/15800454/angularjs-the-correct-way-of-binding-to-a-service-properties	2014-11-18 18:41:10.668024	2014-11-18 18:41:10.668024	AngularJS - The correct way of binding to a service properties - Stack Overflow		\N
370	http://alistapart.com/article/creating-style-guides	2014-11-21 07:42:10.772206	2014-11-21 07:42:10.772206	Creating Style Guides · An A List Apart Article		A style guide, also referred to as a pattern library, is a living document that details the front-end code for all the elements and modules of a website or application. It also documents the site’s...
378	https://medium.com/@dustin/stock-photos-that-dont-suck-62ae4bcbe01b	2014-11-28 19:53:48.882527	2014-11-28 19:53:48.882527	Stock photos that don’t suck — Medium		A list of  places to find the best free stock photos
382	http://stackoverflow.com/questions/273695/git-branch-naming-best-practices	2014-11-30 03:53:47.988409	2014-11-30 03:53:47.988409	git branch naming best practices - Stack Overflow		\N
342	http://benhowdle.im/cssselectors/	2014-11-09 20:22:45.74006	2014-11-09 20:22:45.74006	Learn CSS Selectors interactively		\N
350	http://www.snorkl.tv/2011/07/death-to-conditional-statements-loop-through-elements-in-an-array-with-1-line-of-code/	2014-11-12 03:45:40.075331	2014-11-12 03:45:40.075331	Death To Conditional Statements! Loop Through Elements in an Array with 1 Line of Code | snorkl.tv		\N
352	http://stackoverflow.com/questions/17697542/feeding-the-data-through-an-angular-factory-to-a-controller	2014-11-13 02:14:15.072085	2014-11-13 02:14:15.072085	javascript - Feeding the data through an angular factory to a controller - Stack Overflow		\N
354	http://betterspecs.org/	2014-11-13 19:47:56.676963	2014-11-13 19:47:56.676963	Better Specs { rspec guidelines with ruby }		Better Specs tries to fill the miss of testing guidelines by collecting most of the best practices developers has been learning the hard way through years of experience
356	http://support.real-time.com/linux/web/scp.html	2014-11-13 22:39:51.196317	2014-11-13 22:39:51.196317	SCP - Secure Copy Protocol		Linux Support - Web - SCP (Secure Copy Protocol)
361	http://codeandfun.blogspot.ca/2014/02/mailchimp-api-subscribe-user-email.html	2014-11-14 01:43:42.662095	2014-11-14 01:43:42.662095	MailChimp API - Subscribe User Email Through PHP | Code and Fun		\N
374	http://perishablepress.com/everything-you-ever-wanted-to-know-about-favicons/	2014-11-26 23:32:14.174409	2014-11-26 23:32:14.174409	Everything You Ever Wanted to Know about Favicons | Perishable Press	favicons, favicon, browsers, bookmarks, favorites, tabs, address, bars, shortcuts, icons, images, graphics, create, creation, process, ico, gif, png, jpg, 16, 32, 64, head, link, firefox, opera, in...	See why your site needs a favicon and learn everything you need to know to implement your own: from favicon creation and formatting to favicon hosting and delivering, we explain the entire process..
376	https://github.com/progrium/dokku	2014-11-27 04:35:23.160709	2014-11-27 04:35:23.160709	progrium/dokku · GitHub		dokku - Docker powered mini-Heroku in around 100 lines of Bash
383	http://www.ietf.org/rfc/rfc2368	2014-11-30 23:08:18.160967	2014-11-30 23:08:18.160967	http://www.ietf.org/rfc/rfc2368		\N
384	https://sysadmincasts.com/	2014-12-03 18:29:21.569511	2014-12-03 18:29:21.569511	System Administration Screencasts	linux, sysadmin, screencasts, tutorials, tips, tricks, tutorials, training, devops, podcasts, videos	Short linux sysadmin screencasts containing tutorials, tips and tricks. Great for both novice and experienced Sysadmins.
346	http://sql.learncodethehardway.org/book/ex8.html	2014-11-10 23:59:09.883123	2014-11-10 23:59:09.883123	Exercise 8: Deleting Using Other Tables		\N
351	http://stackoverflow.com/questions/8425701/ajax-mailchimp-signup-form-integration	2014-11-13 01:23:57.545264	2014-11-13 01:23:57.545264	javascript - AJAX Mailchimp signup form integration - Stack Overflow		\N
353	https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers	2014-11-13 19:47:20.020901	2014-11-13 19:47:20.020901	Built in matchers - RSpec Expectations - RSpec - Relish		Relish helps your team get the most from Behaviour Driven Development. Publish, browse, search, and organize your Cucumber features on the web.
357	http://conceptf1.blogspot.ca/2013/11/javascript-closures.html	2014-11-13 23:42:34.464037	2014-11-13 23:42:34.464037	Programming Concepts Help: JavaScript : Closures		ConceptF1 helps in understanding programming concepts. It has articles related to AngularJs, JavaScript, HTML, CSS, CSharp and other programming languages.
359	https://docs.angularjs.org/misc/faq	2014-11-14 00:10:22.722004	2014-11-14 00:10:22.722004	AngularJS		\N
360	http://odiseo.net/angularjs/proper-use-of-d3-js-with-angular-directives	2014-11-14 00:10:42.237725	2014-11-14 00:10:42.237725	Proper use of D3.js with Angular directives  |  Odiseo.net		\N
362	http://www.hypexr.org/linux_scp_help.php	2014-11-14 21:38:15.691397	2014-11-14 21:38:15.691397	Example syntax for Secure Copy (scp)		scp allows files to be copied to, from, or between different hosts.  It uses ssh for data transfer and provides the same authentication and same level of security as ssh
364	http://sleekd.com/servers/docker-vs-virtualization/	2014-11-15 23:56:54.33115	2014-11-15 23:56:54.33115	  Docker vs Virtualization | Sleekd		\N
365	http://learn.shayhowe.com/html-css/working-with-typography/	2014-11-17 03:46:54.916978	2014-11-17 03:46:54.916978	Working with Typography - Learn to Code HTML & CSS	online typography text font css3 html blockquotes cite quote type introduction	Online typography has risen in popularity thanks to HTML and CSS, as well as CSS3, capabilities. Learn the latest text and font properties.
366	https://www.digitalocean.com/community/tutorials/how-to-configure-a-mail-server-using-postfix-dovecot-mysql-and-spamassasin	2014-11-17 17:42:50.543914	2014-11-17 17:42:50.543914	How To Configure a Mail Server Using Postfix, Dovecot, MySQL, and SpamAssasin | DigitalOcean	email mysql	In this tutorial we are going to configure a mail server using Postfix, Dovecot, MySQL, and SpamAssassin on Ubuntu 12.04.
367	http://plnkr.co/edit/d3c16z?p=preview	2014-11-18 18:40:42.130881	2014-11-18 18:40:42.130881	Plunker	jquery,angular.js,editor,online,jsfiddle,codepen,pastebin,testing,javascript testing,css testing,javascript,css,coffeescript,preview,live preview	Plunker is an online community for creating, collaborating on and sharing your web development ideas.
372	https://medium.com/@erikdkennedy/7-rules-for-creating-gorgeous-ui-part-1-559d4e805cda	2014-11-25 16:40:56.111934	2014-11-25 16:40:56.111934	7 Rules for Creating Gorgeous UI (Part 1) — Medium		A non-artsy primer in digital aesthetics
379	https://bonsaiden.github.io/JavaScript-Garden/	2014-11-28 22:06:32.338656	2014-11-28 22:06:32.338656	JavaScript Garden		A Guide to JavaScript's Quirks and Flaws.
381	http://www.sitepoint.com/7-best-search-engines-free-images/	2014-11-30 00:38:21.07049	2014-11-30 00:38:21.07049	The 7 Best Search Engines for Finding Free Images		\N
385	http://www.bhphotovideo.com/c/product/786661-REG/Sonnet_RACK_MIN_2X_aaaaaaa.html	2014-12-03 20:52:28.739619	2014-12-03 20:52:28.739619	Sonnet RackMac Mini Rackmount Enclosure RACK-MIN-2X B&H Photo	sonnet rackmac mini rackmount enclosure	\N
386	http://www.sonnettech.com/product/rackmacmini.html	2014-12-03 20:52:44.723511	2014-12-03 20:52:44.723511	Sonnet - RackMac mini: Mac mini Rack Enclosure for 1U Rack Space	sonnet, sonnet technologies, sata storage solutions, sata host controller cards, storage systems, mac mini, brackets, rackmount, rack, enclosures, drive enclosures, macbook and macbook pro upgrades...	\N
387	https://d2eip9sf3oo6c2.cloudfront.net/pdf/egghead-io-ui-router-cheat-sheet.pdf	2014-12-03 21:57:20.795245	2014-12-03 21:57:20.795245	https://d2eip9sf3oo6c2.cloudfront.net/pdf/egghead-io-ui-router-cheat-sheet.pdf		\N
388	http://www.trishasdesignstudio.com/font-size-conversion-chart.asp	2014-12-03 22:27:27.194647	2014-12-03 22:27:27.194647	CSS Font Fonversion Chart | Trisha's Design Studio - Website Design - Covington, Georgia	website design, covington, georgia,custom craigslist ads, custom craigs list ads, html email creatives, email marketing, custom websites, discount websites, barter	Professional custom website design, Craigslist Ads, eNewsletters, and html email creatives. Covington, GA USA (678)712-9906
389	http://www.ng-newsletter.com/posts/practical-protractor.html	2014-12-04 20:02:23.139034	2014-12-04 20:02:23.139034	Practical End-to-End Testing with Protractor | ng-newsletter	angularjs getting started with angularjs testing testing angularjs testing with protractor protractor testing angular test protractor angular tutorial angularjs tutorial angularjs angularjs tutoria...	In this week's post, we dive deep into testing with Protractor, the next-gen testing framework in Angular. Learn how to use Protractor in your app with step-by-step guide into ours. angularjs angul...
390	http://lostechies.com/gabrielschenker/2014/02/26/angular-js-blog-series-table-of-content/	2014-12-04 22:43:07.247667	2014-12-04 22:43:07.247667	Angular JS blog series – Table of content | Gabriel Schenker's Blog		\N
391	http://finda.photo/	2014-12-08 17:24:37.671489	2014-12-08 17:24:37.671489	FindA.Photo	free stock images, free stock photos, free images, free photos, cc0 images, unsplash, jay mantri, skitterphoto, life of pix, picography, mmt	Totally free stock images from Unsplash, Jay Mantri, and many more
392	http://slatestarcodex.com/	2014-12-09 05:18:20.865925	2014-12-09 05:18:20.865925	Slate Star Codex		\N
393	http://angular-rails.com/bootstrap.html	2014-12-09 22:20:04.998967	2014-12-09 22:20:04.998967	AngularJS with Ruby on Rails: Zero to deployment in less than 10,000 words		\N
394	http://www.buildyourownlisp.com/	2014-12-10 04:16:17.686603	2014-12-10 04:16:17.686603	Learn C • Build Your Own Lisp		\N
395	http://www.planningforaliens.com/angular/ginormous-unstoppable-angular-resource-list/	2014-12-10 16:57:16.311842	2014-12-10 16:57:16.311842	The ginormous, unstoppable list of Angular resources by @sfioritto		\N
396	http://ify.io/lazy-loading-in-angularjs/	2014-12-10 18:24:59.611616	2014-12-10 18:24:59.611616	Lazy Loading In AngularJS | IFY I/O		Ifeanyi Isitor looks at how to implement lazy loading in AngularJS
397	http://www.sagarganatra.com/2014/08/lazy-loading-angularjs-components-using-providers.html	2014-12-10 18:25:36.830484	2014-12-10 18:25:36.830484	Sagar Ganatra's Blog: Lazy loading AngularJS components using Providers	html5, ajax, javascript, jquery, coldfusion, css, design patterns, rest, frameworks	Lazy loading AngularJS components, AngularJS and RequireJS lazy load, Using RequireJS with AngularJS, AngularJS route resolve using RequireJS, AngularJS $provider, AngularJS $controllerProvider, An...
398	http://www.kennethcachia.com/plain-pattern/app/	2014-12-11 00:52:06.797572	2014-12-11 00:52:06.797572	Plain Pattern		An SVG based seamless pattern maker.
399	http://christinacacioppo.com/blog/build-products	2014-12-11 01:42:29.087186	2014-12-11 01:42:29.087186	Build products | Christina Cacioppo		\N
400	http://hornmatters.com/search-results/university-of-horn-matters/	2014-12-12 16:30:35.622352	2014-12-12 16:30:35.622352	University of Horn Matters  |  Horn Matters  |  A French Horn and Brass Site and Resource | John Ericson and Bruce Hembd | Horn Matters - French Horn and Brass Site Resource		Advanced, Online Courses on Horn Repertoire & Pedagogy The University of Horn Matters horn pedagogy and repertoire courses are presented free as an Open
402	http://community.mybb.com/thread-100984.html	2014-12-12 20:51:36.956197	2014-12-12 20:51:36.956197	[Tutorial]: Automatically Track All Referral Links with Bitly		\N
401	http://www.huffingtonpost.com/2014/12/09/world-photography-awards_n_6296276.html?ncid=fcbklnkushpmg00000010	2014-12-12 19:26:21.326867	2014-12-12 19:26:21.326867	15 Photographs That Will Open Your Eyes To The Wonders Of The World	15, photographs, that, will, open, your, eyes, to, the, wonders, of, the, world, arts	The Sony World Photography Awards season is well on its way. The competition, famously open to amateur and professional photographers alike, prompts anyone with a camera and an eye for the world's ...
403	http://www.chriswrites.com/create-custom-html-email-templates-in-the-os-x-mail-app/	2014-12-12 22:09:51.022946	2014-12-12 22:09:51.022946	Create Custom HTML Email Templates in the OS X Mail App - ChrisWrites.com		\N
405	http://www.norvig.com/spell-correct.html	2014-12-15 22:17:34.93773	2014-12-15 22:17:34.93773	How to Write a Spelling Corrector		\N
404	http://www.chriswrites.com/create-custom-html-email-templates-in-the-os-x-mail-app/	2014-12-12 22:09:51.634165	2014-12-12 22:09:51.634165	Create Custom HTML Email Templates in the OS X Mail App - ChrisWrites.com		\N
406	http://scotch.io/tutorials/javascript/build-a-restful-api-using-node-and-express-4	2014-12-17 22:03:17.938076	2014-12-17 22:03:17.938076	Build a RESTful API Using Node and Express 4 ♥ Scotch		With the release of Express 4.0 just a few days ago, lots of our Node apps will have some changes in how they handle routing. With the changes in the Express Router, we have more flexibility in how...
407	http://aaditmshah.github.io/why-prototypal-inheritance-matters/	2014-12-17 22:13:02.394209	2014-12-17 22:13:02.394209	Aadit M Shah | Why Prototypal Inheritance Matters		\N
408	http://developer.telerik.com/featured/planning-front-end-javascript-application/	2014-12-19 17:14:47.443596	2014-12-19 17:14:47.443596	Planning A Front-end JavaScript Application -Telerik Developer Network		16 detailed steps needed to develop a maintainable complex enterprise application using a JavaScript stack according to Cody Lindley.
409	http://codyhouse.co/gem/css-animated-headlines/	2014-12-19 17:24:12.234334	2014-12-19 17:24:12.234334	CSS Animated Headlines | CodyHouse		A collection of animated headlines, with interchangeable words that replace one another through CSS transitions.
410	http://thelinell.com/2014/12/23/curated-git-links-of-2014/	2014-12-24 04:41:08.682981	2014-12-24 04:41:08.682981	\n  \n    Curated Git Links of 2014 · Linell\n  \n		Linell Bonnette's personal portfolio website and blog.
411	http://www.rubystub.com/	2014-12-24 05:48:50.99407	2014-12-24 05:48:50.99407	RubyStub: Online Ruby Compiler		Online Ruby compiler. Online Ruby REPL. Write Ruby online, without a Mac. Write Ruby.
412	https://blog.haschek.at/post/fd9bc	2015-01-05 07:01:24.901703	2015-01-05 07:01:24.901703	Why are free proxies free?		
413	http://coolestguidesontheplanet.com/set-virtual-hosts-apache-mac-osx-10-10-yosemite/	2015-01-05 16:26:49.068129	2015-01-05 16:26:49.068129	Set up Virtual Hosts in Apache on Mac OSX 10.10 Yosemite		how to set up virtual hosts in Apache in Mac OSX 10.10 Yosemite and change the the default Apache web user to be the local account
414	https://github.com/jedrichards/angularjs-handbook	2015-01-09 01:01:42.416454	2015-01-09 01:01:42.416454	jedrichards/angularjs-handbook · GitHub		angularjs-handbook - A concise AngularJS overview
415	http://collectiveidea.com/blog/archives/2013/06/13/building-awesome-rails-apis-part-1/	2015-01-09 19:20:14.74249	2015-01-09 19:20:14.74249	Building Awesome Rails APIs: Part 1 // Collective Idea | Crafting web and mobile software based in Holland, Michigan	software development, software consulting, custom software, contract software, holland, michigan, api development, agile methodologies, agile software, extreme programming, test driven development,...	We are a small, agile software-development team driven to find solutions beyond code. Based in Holland, MI, we make our clients more productive and their processes more efficient.
416	https://www.codeschool.com/courses/surviving-apis-with-rails	2015-01-09 19:20:29.126425	2015-01-09 19:20:29.126425	Building an API with Ruby on Rails - Code School		Learn how to build and test REST APIs using Ruby on Rails. See how to leverage the HTTP protocol to create robust web APIs that can serve different client applications at the same time.
417	https://www.airpair.com/ruby-on-rails/posts/building-a-restful-api-in-a-rails-application	2015-01-09 19:20:55.258609	2015-01-09 19:20:55.258609	Building a RESTful API in a Rails application		Rails expert Abraham Polishchuk walks through the requirements for building a RESTful API in Rails and points out some common pitfalls.
418	https://www.amberbit.com/blog/2014/2/19/building-and-documenting-api-in-rails/	2015-01-09 19:21:04.800089	2015-01-09 19:21:04.800089	Building and documenting API in Rails\n		
419	http://hoverstat.es/	2015-01-09 23:40:13.730316	2015-01-09 23:40:13.730316	Hover States / Celebrating great interaction design & frontend development		Videos and news stories about the very best in interaction design & frontend web development.
420	http://getgrav.org/blog/mac-os-x-apache-setup-mysql-vhost-apc	2015-01-10 00:39:36.0091	2015-01-10 00:39:36.0091	OS X 10.10 Yosemite Apache Setup: MySQL, APC & More... | Grav		Grav is an easy to use, yet powerful, opensource CMS that requires no database
421	https://blog.nraboy.com/2015/01/run-nodejs-application-lamp-stack-server/	2015-01-12 01:03:53.243185	2015-01-12 01:03:53.243185	Run A NodeJS Application On A LAMP Stack Server		Have NodeJS and PHP run side-by-side on a LAMP server by running an Apache proxy to the NodeJS instance. Prevents having to have a separate NodeJS server.
422	http://zerosixthree.se/vertical-align-anything-with-just-3-lines-of-css/	2015-01-13 19:03:22.47101	2015-01-13 19:03:22.47101	Z63 | Vertical align anything with just 3 lines of CSS | zerosixthree		\N
423	https://github.com/lostisland/faraday	2015-01-14 04:26:50.806033	2015-01-14 04:26:50.806033	lostisland/faraday · GitHub		faraday - Simple, but flexible HTTP client library, with support for multiple backends.
424	https://github.com/intridea/multi_json	2015-01-14 04:27:05.927995	2015-01-14 04:27:05.927995	intridea/multi_json · GitHub		multi_json - A generic swappable back-end for JSON handling.
425	http://www.bennadel.com/blog/1979-connecting-ruby-to-apache-on-my-macbook-pro-using-a-virtualhost.htm	2015-01-14 21:24:19.812565	2015-01-14 21:24:19.812565	\n\t\t\tConnecting Ruby To Apache On My MacBook Pro Using A VirtualHost\n\t\t		\N
426	http://taylor.fausak.me/2013/05/08/upgrading-to-bcrypt/	2015-01-15 04:44:51.305433	2015-01-15 04:44:51.305433	Upgrading to bcrypt · taylor.fausak.me		\N
427	http://www.sitepoint.com/rails-model-caching-redis	2015-01-17 15:07:20.720144	2015-01-17 15:07:20.720144	Rails Model Caching with Redis		\N
428	https://www.mjt.me.uk/posts/falsehoods-programmers-believe-about-addresses/	2015-01-19 07:09:49.10464	2015-01-19 07:09:49.10464	Falsehoods programmers believe about addresses		\N
429	http://sixrevisions.com/css/css-colors/	2015-01-19 16:19:56.167009	2015-01-19 16:19:56.167009	Introduction to CSS Colors		\N
430	https://gist.github.com/ericelliott/d576f72441fc1b27dace?utm_source=javascriptweekly&utm_medium=email	2015-01-20 07:53:46.48262	2015-01-20 07:53:46.48262	Essential JavaScript Links		Essential JavaScript Links - Gist is a simple way to share snippets of text and code with others.
431	https://github.com/h5bp/Front-end-Developer-Interview-Questions#general	2015-01-20 21:25:27.85876	2015-01-20 21:25:27.85876	h5bp/Front-end-Developer-Interview-Questions · GitHub		Front-end-Developer-Interview-Questions - A list of helpful front-end related questions you can use to interview potential candidates, test yourself or completely ignore.
432	http://www.ruby-doc.org/core-2.2.0/Fiber.html	2015-01-22 02:13:16.558979	2015-01-22 02:13:16.558979	Class: Fiber (Ruby 2.2.0) 		  Class : Fiber  -   Ruby 2.2.0 
433	http://gabrieleromanato.name/javascript-slideshows-an-introduction/	2015-01-22 16:33:36.388127	2015-01-22 16:33:36.388127	\n\tJavaScript slideshows: an introduction | Gabriele Romanato\n\t\n\t		In this article we'll cover the basics of JavaScript slideshows.
434	https://github.com/narkoz/guides#css	2015-01-23 02:20:52.204266	2015-01-23 02:20:52.204266	NARKOZ/guides · GitHub		Design and development guides
435	http://blog.froont.com/positioning-in-web-design/	2015-01-27 03:42:59.615513	2015-01-27 03:42:59.615513	Positioning in web design explained with GIFs. A visual manual for designers.		Understanding the CSS positioning is crucial for responsive web design. Static, Fixed, Absolute or Relative? Learn what is what and when to use it.
436	http://www.bitbootcamp.com/resources.html	2015-01-28 06:03:55.781413	2015-01-28 06:03:55.781413	Bitbootcamp BigData Hadoop Training	 training big data hadoop bootcamp boot camp nyc sql unix data science machine learning machine learning hive impala new york nyc jobs resume	Training Big Data Hadoop Bootcamp boot camp NYC SQL Unix Data Science Machine Learning Machine Learning Hive Impala 
437	http://library.osu.edu/blogs/it/running-ruby-on-rails-on-a-production-server-the-evolution-of-our-solution/	2015-01-28 17:03:57.977267	2015-01-28 17:03:57.977267	Running Ruby on Rails on a production server - The evolution of our solution. - Information Technology		\N
438	https://coderwall.com/p/euwpig/a-better-git-log	2015-01-29 16:11:49.502167	2015-01-29 16:11:49.502167	coderwall.com : establishing geek cred since 1305712800Filipe Kiss : A better git log		A protip by filipekiss about color, aliases, git, log, and alias.
439	http://ejohn.org/apps/learn/#2	2015-01-30 05:20:54.739546	2015-01-30 05:20:54.739546	Learning Advanced JavaScript		\N
440	https://andywalpole.me/#!/blog/142134/2015-the-end-the-monolithic-javascript-framework	2015-01-30 05:23:02.615303	2015-01-30 05:23:02.615303	https://andywalpole.me/#!/blog/142134/2015-the-end-the-monolithic-javascript-framework		{{faceBookDescription}}
443	http://richonrails.com/articles/rails-4-code-concerns-in-active-record-models	2015-02-01 17:58:41.900055	2015-02-01 17:58:41.900055	Code Concerns in Rails 4 Models - RichOnRails.com		This tutorial will teach you how to use  code concerns in Ruby on Rails 4.0.
452	http://www.html5rocks.com/en/tutorials/developertools/sourcemaps/	2015-02-05 19:35:00.592341	2015-02-05 19:35:00.592341	Introduction to JavaScript Source Maps - HTML5 Rocks	html5,html 5,html5 demos,html5 examples,javascript,css3,notifications,geolocation,web workers,apppcache,file api,filereader,indexeddb,offline,audio,video,drag and drop,chrome,sse,mobile	Have you ever found yourself wishing you could keep your client-side code readable and more importantly debuggable even after you've combined and minified it, without impacting performance? Well no...
441	http://www.dailywf.com/	2015-01-31 06:18:13.603771	2015-01-31 06:18:13.603771	Daily Web fonts for Web designers / dailywf.com		Create web fonts collection and test it on the fly.
444	http://viget.com/extend/how-to-use-docker-on-os-x-the-missing-guide	2015-02-02 03:46:33.061286	2015-02-02 03:46:33.061286	How to Use Docker on OS X: The Missing Guide | Viget		\N
446	http://www.instructables.com/id/Set-up-your-very-own-Web-server/?ALLSTEPS	2015-02-02 23:41:37.941568	2015-02-02 23:41:37.941568	Set up your very own Web server!		Ever wanted to have a place where you could keep your files and access them anywhere you get an Internet connection?  Say you wanted to have your musi...
447	http://addyosmani.github.io/backbone-fundamentals/#why-consider-backbone.js	2015-02-03 05:28:01.778417	2015-02-03 05:28:01.778417	Developing Backbone.js Applications - 		\N
450	http://samherbert.net/svg-loaders/	2015-02-04 22:06:17.380579	2015-02-04 22:06:17.380579	SVG Loaders - Sam Herbert		\N
453	http://jlongster.com/Removing-User-Interface-Complexity,-or-Why-React-is-Awesome	2015-02-05 20:45:00.145254	2015-02-05 20:45:00.145254	James Long		\N
442	http://stackoverflow.com/questions/14541823/how-to-use-concerns-in-rails-4	2015-02-01 17:58:28.485137	2015-02-01 17:58:28.485137	How to use concerns in Rails 4 - Stack Overflow		\N
445	http://lifehacker.com/turn-an-old-computer-into-a-do-anything-home-server-wit-510023147	2015-02-02 23:40:12.750599	2015-02-02 23:40:12.750599	Turn an Old Computer Into a Do-Anything Home Server with FreeNAS 8	how to, freenas, home server, windows, mac, os x, mac os x, freebsd, linux, diy, computer building, nas, clips, lifehacker video, lifehacker	You've heard the word "server" thrown around a lot, but usually in the context of web sites or big companies that have a lot of data to store. In reality, a server can be just as useful in your hom...
448	http://tympanus.net/Tutorials/AnimatedBorderMenus/index2.html	2015-02-03 22:05:08.273144	2015-02-03 22:05:08.273144	Animated Border Menus | Demo 2	navigation, menu, responsive, border, overlay, css transition	Responsive Animated Border Menus with CSS Transitions
449	https://techblog.badoo.com/blog/2013/11/18/5-advanced-javascript-and-web-debugging-techniques-you-should-know-about/	2015-02-03 23:20:56.737804	2015-02-03 23:20:56.737804	Badoo Tech Blog :: 5 Advanced Javascript and Web Debugging Techniques You Should Know About		\N
451	http://www.npr.org/series/tiny-desk-concerts/	2015-02-05 17:53:33.989192	2015-02-05 17:53:33.989192	Tiny Desk Concerts : NPR		Intimate video performances, recorded live at the desk of All Songs Considered host Bob Boilen
454	http://www.websitemagazine.com/content/blogs/posts/archive/2015/02/05/building-an-awesome-sidebar-from-scratch.aspx	2015-02-05 20:52:06.343297	2015-02-05 20:52:06.343297	Building an Awesome Sidebar from Scratch - 'Net Features - Website Magazine	search marketing, internet advertising, web software, social media, web design	Website Magazine is the leading print and digital publication on Web success, covering search marketing, social media, software, web design, development and more.
455	http://stackoverflow.com/questions/12581439/how-to-add-custom-validation-to-an-angular-js-form	2015-02-10 20:58:56.665071	2015-02-10 20:58:56.665071	angularjs - How to add custom validation to an Angular js form? - Stack Overflow		\N
456	https://www.debuggex.com/cheatsheet/regex/javascript	2015-02-11 21:58:12.137052	2015-02-11 21:58:12.137052	\n  JavaScript Regular Expression Cheatsheet - Debuggex\n	javascript,regex,regular expression,visual,nfa,dfa,state,debugger,helper,tester,match,random match	\N
457	http://tympanus.net/codrops/2013/05/08/responsive-retina-ready-menu/	2015-02-14 21:44:14.771579	2015-02-14 21:44:14.771579	Responsive Retina-Ready Menu		A responsive, touch-friendly and Retina-ready menu with three layouts for different browser sizes.
458	http://stackoverflow.com/questions/3076414/ways-to-circumvent-the-same-origin-policy	2015-02-18 23:07:41.391435	2015-02-18 23:07:41.391435	javascript - Ways to circumvent the same-origin policy - Stack Overflow		\N
459	http://anantgarg.com/2013/06/10/build-a-php-saas-app-from-scratch/	2015-02-19 20:33:11.919557	2015-02-19 20:33:11.919557	Build a PHP SaaS app from scratch | anant garg		This tutorial will teach you how to create your first PHP SaaS app from scratch. If your app is ready, then you can learn how to convert it to a SaaS application.
460	https://ryanboland.com/screencasts/	2015-02-19 20:34:46.932291	2015-02-19 20:34:46.932291	\n      \n      Ryan Boland\n    		Tech blog, screencasts and talks.
461	http://davidwalsh.name/svg-animation	2015-02-19 20:45:27.037313	2015-02-19 20:45:27.037313	The Simple Intro to SVG Animation	canvas & svg,css animations,demos,guest blogger,performance	Velocity.js creator Julian Shapiro provides an introduction to SVG animation!
462	http://gitready.com/intermediate/2009/02/18/temporarily-ignoring-files.html	2015-02-19 22:31:37.896634	2015-02-19 22:31:37.896634	git ready » temporarily ignoring files		\N
463	http://codesi.nz/javascript/2015/01/22/three-hard-to-spot-javascript-mistakes.html?utm_content=buffer19cb9&utm_medium=social&utm_source=linkedin.com&utm_campaign=buffer	2015-02-26 17:19:13.654205	2015-02-26 17:19:13.654205	Three hard to spot JavaScript mistakes	programming, blog, tutorials, technical, javascript	Working on a handful of big ecommerce projects for the past couple of years, I often found myself in a situation where one component, or the whole application my team was working on, was working pr...
464	https://github.com/moklick/frontend-stuff	2015-02-26 17:19:24.128643	2015-02-26 17:19:24.128643	moklick/frontend-stuff · GitHub		frontend-stuff - A continuously expanded list of framework/libraries and tools I used/want to use when building things on the web. Mostly Javascript stuff.
465	http://samizdat.mines.edu/howto/HowToBeAProgrammer.html#id2792906	2015-02-27 21:08:36.207391	2015-02-27 21:08:36.207391	How to be a Programmer:  A Short, Comprehensive, and Personal Summary		\N
466	http://deveiate.org/code/pg/README-OS_X_rdoc.html	2015-03-02 21:01:55.025343	2015-03-02 21:01:55.025343	pg: The Ruby Interface to PostgreSQL		\N
467	http://codeutopia.net/blog/2015/03/01/unit-testing-tdd-and-bdd/	2015-03-02 23:50:25.914169	2015-03-02 23:50:25.914169	What’s the difference between Unit Testing, TDD and BDD? | CodeUtopia - The blog of Jani Hartikainen		When you’re just getting started with automating your JavaScript testing, there’s a lot of questions. You’ll probably see people talk about unit testing,
468	http://angular.github.io/protractor/#/api	2015-03-03 19:20:30.479225	2015-03-03 19:20:30.479225	Protractor - end to end testing for AngularJS		\N
469	http://scanova.io/blog/engineering/2014/05/10/e2e-testing-angularjs-using-protractor/	2015-03-03 21:37:54.17491	2015-03-03 21:37:54.17491	Angularjs Automated E2E Testing using Protractor - Scanova Engineering		\N
470	http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-00-introduction-to-computer-science-and-programming-fall-2008/video-lectures/	2015-03-04 17:35:52.972213	2015-03-04 17:35:52.972213	Video Lectures | Introduction to Computer Science and Programming | Electrical Engineering and Computer Science | MIT OpenCourseWare	computer science,computation,problem solving,python programming,recursion,binary search,classes,inheritance,libraries,algorithms,optimization problems,modules,simulation,big o notation,control flow...	\N
471	http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-00-introduction-to-computer-science-and-programming-fall-2008/video-lectures/	2015-03-04 17:35:59.88127	2015-03-04 17:35:59.88127	Video Lectures | Introduction to Computer Science and Programming | Electrical Engineering and Computer Science | MIT OpenCourseWare	computer science,computation,problem solving,python programming,recursion,binary search,classes,inheritance,libraries,algorithms,optimization problems,modules,simulation,big o notation,control flow...	\N
472	https://www.airpair.com/angularjs/posts/testing-angular-with-karma#4-using-ngmock-	2015-03-04 19:53:50.051802	2015-03-04 19:53:50.051802	Testing Angular with Karma		AngularJS expert, Ben Drucker, explains why you should unit test your apps, and how to write unit tests against the various components of an AngularJS app.
473	http://howtomakeaswedishlogcandle.likeadee.com/how-to-make-a-swedish-log-candle.html	2015-03-05 16:49:12.911036	2015-03-05 16:49:12.911036	How to Make a Swedish Log Candle		\N
474	http://the3doodler.com/store/	2015-03-05 18:00:38.438469	2015-03-05 18:00:38.438469	Preorder - 3Doodler		\N
475	http://stackoverflow.com/questions/14761045/jasmine-tests-angularjs-directives-with-templateurl	2015-03-06 02:59:38.583588	2015-03-06 02:59:38.583588	unit testing - Jasmine tests AngularJS Directives with templateUrl - Stack Overflow		\N
476	http://www.smashingmagazine.com/2014/10/07/introduction-to-unit-testing-in-angularjs/	2015-03-06 19:17:32.918367	2015-03-06 19:17:32.918367	An Introduction To Unit Testing In AngularJS Applications - Smashing Magazine		Sébastien Fragnaud shows how to start unit test and test-driven development with AngularJS using a well documented toolkit to produce quality code.
477	https://github.com/airbnb/javascript	2015-03-09 16:05:04.327149	2015-03-09 16:05:04.327149	airbnb/javascript · GitHub		javascript - JavaScript Style Guide
480	http://simpleprogrammer.com/2015/01/19/cracking-the-coding-interview/	2015-03-12 06:25:33.209819	2015-03-12 06:25:33.209819	Cracking The Coding Interview		If you want a shot at cracking the coding interview, you don't want to miss out on these 12 tips that will land you that dream job.
488	https://www.mnot.net/cache_docs/	2015-03-29 03:35:43.007273	2015-03-29 03:35:43.007273	Caching Tutorial for Web Authors and Webmasters	faq, tutorial, web cache, proxy, cache, expires, cache-control, http, headers, last-modified, etag, http/1.1, webmaster, squid, proxy server, netcache, cacheengine	Covers the how's and why's of Web caching for people who publish on the Web. With FAQs.
478	http://koajs.com/	2015-03-09 21:06:04.837464	2015-03-09 21:06:04.837464	Koa - next generation web framework for node.js		\N
482	http://simpleprogrammer.com/2015/02/16/joel-test-programmers-simple-programmer-test/	2015-03-12 06:26:04.636234	2015-03-12 06:26:04.636234	The Joel Test Updated For Programmers		The Joel Test is useful for evaluating companies, but what and a Joel Test for evaluating programmers? This is the Joel Test for software developers.
485	https://www.airpair.com/angularjs/posts/testing-angular-with-karma	2015-03-19 17:14:56.028459	2015-03-19 17:14:56.028459	Testing Angular with Karma		AngularJS expert, Ben Drucker, explains why you should unit test your apps, and how to write unit tests against the various components of an AngularJS app.
487	http://guyroutledge.github.io/box-model/	2015-03-26 19:38:51.886285	2015-03-26 19:38:51.886285	Box Model Demo		\N
490	http://www.vikingcodeschool.com/prep	2015-03-30 22:43:41.970393	2015-03-30 22:43:41.970393	\n    Become a Web Developer | Viking Code School\n  		Viking Code School is the premier program for learning professional web development online.
479	http://stackoverflow.com/questions/19435187/unit-testing-a-directive-whose-templates-are-all-one-with-file-with-script-tags	2015-03-10 01:29:11.597807	2015-03-10 01:29:11.597807	javascript - Unit testing a directive whose templates are all one with file with script tags - Stack Overflow		\N
481	http://simpleprogrammer.com/2011/01/08/solving-problems-breaking-it-down/	2015-03-12 06:25:47.305013	2015-03-12 06:25:47.305013	Solving Problems, Breaking it Down - Simple Programmer		\N
483	http://www.sitepen.com/blog/2013/12/31/definitive-guide-to-typescript/	2015-03-12 23:57:12.034444	2015-03-12 23:57:12.034444	The Definitive TypeScript Guide | Blog | SitePen		SitePen's dgrid project leverages the AMD loader and other features new since Dojo 1.7 to minimize the load and rendering times of dynamic grids in web app
484	http://blogs.msdn.com/b/visualstudio/archive/2015/03/12/a-preview-of-angular-2-and-typescript-in-visual-studio.aspx	2015-03-13 18:43:04.296845	2015-03-13 18:43:04.296845	\r\n\tA Preview of Angular 2 and TypeScript in Visual Studio - The Visual Studio Blog - Site Home - MSDN Blogs\r\n	visual studio, vs, express, editor, vs editor, visual studio editor, vsx, extensibility, vs extensibility, project, vs project, visual studio project, msbuild, vs build, shell, vs shell, ui, ide, v...	Visual studio, VS, Express, editor, vs editor, visual studio editor, vsx, extensibility, vs extensibility, project, vs project, visual studio project, msbuild, vs build, shell, vs shell, UI, ide, v...
486	https://meteor.hackpad.com/Meteor-speaker-kit-uaPe3zDDH8z	2015-03-24 22:55:25.978068	2015-03-24 22:55:25.978068	Meteor speaker kit - meteor.hackpad.com		Real-time collaborative wiki
489	http://blog.revolunet.com/blog/2014/02/14/angularjs-services-inheritance/	2015-03-30 22:40:30.378822	2015-03-30 22:40:30.378822	Object-oriented AngularJS services - revolunet blog		Javascript prototypal inheritance can be confusing at first if you come from classical OOP languages, due to Javascript versatility, and the variety …
491	https://leanpub.com/understandinges6/read/	2015-03-31 18:34:26.588343	2015-03-31 18:34:26.588343	Read Understanding ECMAScript 6 | Leanpub		\N
492	http://es6rocks.com/	2015-03-31 18:34:38.362621	2015-03-31 18:34:38.362621	ES6 Rocks	news, tools, updates, tutorials, articles, es6, javascript, harmony, ecma6, ecma	Articles, updates, tools, News and tutorials about ECMA6: Harmony
493	http://alistapart.com/article/writing-testable-javascript	2015-03-31 18:39:56.803303	2015-03-31 18:39:56.803303	Writing Testable JavaScript · An A List Apart Article		As our JavaScript takes on more and more responsibilities, we need a reliable codebase—one that is thoroughly tested. Integration tests focus on how the pieces of an application work together, but ...
494	http://caspervonb.com/javascript/an-overview-of-javascript-in-2015-ecmascript-6/	2015-03-31 18:40:18.377105	2015-03-31 18:40:18.377105	An Overview of JavaScript in 2015 (ECMAScript 6)		JavaScript is evolving, ECMAScript 2015 (previously known as ECMAScript 6) is sixth edition of JavaScript, and is the upcoming version of the ECMAScript stan...
495	http://matthewcarriere.com/2008/06/23/using-select-reject-collect-inject-and-detect/	2015-04-02 15:06:58.381536	2015-04-02 15:06:58.381536	Using select, reject, collect, inject and detect. - matthewcarriere.com		\N
496	http://rmurphey.com/blog/2015/03/23/a-baseline-for-front-end-developers-2015/	2015-04-02 22:17:18.472923	2015-04-02 22:17:18.472923	A Baseline for Front-End [JS] Developers: 2015 - Adventures in JavaScript Development		It’s been almost three years since I wrote A Baseline for Front-End Developers, probably my most popular post ever. Three years later, I still …
497	http://riccardoscalco.github.io/textures/	2015-04-02 22:17:40.875468	2015-04-02 22:17:40.875468	Textures.js	svg, patterns, javascript, d3, textures	A JavaScript Library for creating SVG patterns
498	https://github.com/mikechau/react-primer-draft	2015-04-02 22:18:03.889819	2015-04-02 22:18:03.889819	mikechau/react-primer-draft · GitHub		react-primer-draft - A primer for building web applications with React.
499	https://blog.nraboy.com/2015/03/using-oauth-2-0-in-your-web-browser-with-angularjs/	2015-04-02 22:18:21.557704	2015-04-02 22:18:21.557704	Using Oauth 2.0 In Your Web Browser With AngularJS		Handle an Oauth 2.0 login flow in your web browser using AngularJS and JavaScript. A classic example using the Imgur RESTful service.
500	http://www.angularjsbook.com/angular-basics/chapters/introduction/	2015-04-02 22:18:35.007189	2015-04-02 22:18:35.007189	http://www.angularjsbook.com/angular-basics/chapters/introduction/		\N
501	https://hacks.mozilla.org/2015/03/understanding-inline-box-model/	2015-04-02 22:19:08.317172	2015-04-02 22:19:08.317172	  Understanding the CSS box model for inline elements ✩\n        Mozilla Hacks – the Web developer blog  		\N
502	http://thinkingonthinking.com/serial-input-with-streams/	2015-04-02 22:19:28.174452	2015-04-02 22:19:28.174452	Streaming data to the serial port	javascript, backbonejs, ruby, chef, rails, erlang	\N
503	https://adactio.com/journal/8504	2015-04-02 22:19:43.951172	2015-04-02 22:19:43.951172	Adactio: Journal—Inlining critical CSS for first-time visits		Using Grunt, Apache, and PHP with Twig templates.
504	http://bensmithett.com/server-rendered-react-components-in-rails/	2015-04-03 16:21:18.988122	2015-04-03 16:21:18.988122	Server-rendered React components in Rails		\N
505	https://hackhands.com/react-rails-tutorial/	2015-04-03 16:21:45.764353	2015-04-03 16:21:45.764353	React on Rails Tutorial | HackHands		A step-by-step tutorial on using React with Ruby on Rails.
506	http://prawnpdf.org/manual.pdf	2015-04-05 02:26:27.186029	2015-04-05 02:26:27.186029	http://prawnpdf.org/manual.pdf		\N
507	https://github.com/prakhar1989/awesome-courses#algorithms	2015-04-09 05:47:07.995736	2015-04-09 05:47:07.995736	prakhar1989/awesome-courses · GitHub		awesome-courses - List of awesome university courses for learning Computer Science!
508	http://dev.w3.org/html5/html-author/charref	2015-04-09 23:59:47.98449	2015-04-09 23:59:47.98449	Character Entity Reference Chart		\N
509	http://www.techrepublic.com/article/convert-the-local-time-to-another-time-zone-with-this-javascript/	2015-04-10 17:25:17.167245	2015-04-10 17:25:17.167245	Convert the local time to another time zone with this JavaScript - TechRepublic		To display the time of day of a different time zone from the local time zone on a Web page it is necessary to perform various temporal calculations and convert local time to destination time.
510	http://dns.js.org/	2015-04-10 22:40:36.851886	2015-04-10 22:40:36.851886	JS.ORG | DNS		free and short JS.ORG domains for GitHub Pages
511	https://medium.com/opinionated-angularjs/angular-model-objects-with-javascript-classes-2e6a067c73bc	2015-04-14 16:37:19.883553	2015-04-14 16:37:19.883553	Angular model objects with JavaScript classes — Opinionated AngularJS — Medium		The missing piece in AngularJS
512	http://nodeschool.io/	2015-04-14 19:33:46.25964	2015-04-14 19:33:46.25964	NodeSchool		\N
513	http://ericleads.com/2013/02/fluent-javascript-three-different-kinds-of-prototypal-oo/	2015-04-14 21:30:59.128072	2015-04-14 21:30:59.128072	Fluent JavaScript – Three Different Kinds of Prototypal OO « Eric Elliott – JavaScript Architect (A JavaScript Blog)		\N
514	http://blackhole.html5depot.com	2015-04-17 18:37:05.683632	2015-04-17 18:37:05.683632	Blackhole - Minimalistic but powerful SASS / CSS Framework	frontend workflow, reusable components, modularity, sass framework, css framework, semantic code	Minimalistic but powerful SASS / CSS Framework - architect your projects faster and smarter
515	http://www.eckraus.com/blog/blue-moon-recipe-clone-extract-all-grain	2015-04-20 04:39:47.437631	2015-04-20 04:39:47.437631	Blue Moon Clone Recipe (Extract & All-Grain) / Beer Brewing and Wine Making Blog  | EC Kraus	home wine making supplies, winemaking, wine making, beer brewing, wine making kits, wine kits, wine starter kits, wine making equipment, wine ingredients, wine making concentrates, wine making juices	Many craft beer fans entered the world of better beer through Blue Moon. It’s an very smooth and citrusy representation of the Belgian Witbier style: pale yellow in color, somewhat hazy from the us...
516	http://www.seriouseats.com/2015/03/technique-fresh-ricotta-gnocchi-fast.html	2015-04-20 06:04:07.378234	2015-04-20 06:04:07.378234	Make Fresh Ricotta Gnocchi in Less Time Than it Takes to Cook Dried Pasta | Serious Eats	@amazon,@sidebar,gnocchi,italian,pasta,ricotta,technique	I love gnocchi. At least, I love the gnocchi in my mind. Light, pillowy, flavor-packed, they're the perfect vessel for a good red sauce. The big problem? Potato gnocchi take a long time and are far...
517	http://www.seriouseats.com/2015/04/how-to-make-traditional-huevos-rancheros-in-a-flash.html	2015-04-20 06:11:20.106653	2015-04-20 06:11:20.106653	How to Make Traditional Huevos Rancheros in a Flash | Serious Eats	@sidebar,breakfast,egg,huevos rancheros,mexican,salsa,tortilla	Making huevos rancheros—rancher's-style eggs—is an inherently impromptu and simple affair at home. It's easy for me to think of it as a dish so darn casual that it doesn't even need a recipe. But t...
518	http://www.seriouseats.com/recipes/2015/04/skirt-steak-mushroom-cream-pan-sauce-recipe.html	2015-04-20 06:18:27.858559	2015-04-20 06:18:27.858559	Skirt Steak With Mushroom-Cream Pan Sauce | Serious Eats : Recipes	@quick-meat,@recipescarousel,beef,cream,easy,mushroom,pan sauce,quick,steak	This easy weeknight meal features skirt steaks, seared until brown, then served with a flavorful pan sauce made from cremini mushrooms, shallots, garlic, thyme, chicken stock, white wine, and heavy...
519	http://www.seriouseats.com/recipes/2015/01/30-minute-pressure-cooker-chicken-chickpeas-tomatoes-chorizo-recipe.html	2015-04-20 06:26:50.068255	2015-04-20 06:26:50.068255	30-Minute Pressure Cooker Chicken With Chickpeas, Tomatoes, and Chorizo | Serious Eats : Recipes	@amazon chicken,@quick-poultry,@recipescarousel,chickpea,chorizo,easy,pressure cooker,quick,spanish,stew	The pressure cooker is an amazing device for making flavor-packed stews in very short order. In this version, canned chickpeas, roasted tomatoes, smoked paprika, and chorizo come together to form a...
521	https://icomoon.io/	2015-04-23 00:09:33.353397	2015-04-23 00:09:33.353397	Icon Font & SVG Icon Sets ❍ IcoMoon		IcoMoon provides a package of vector icons, along with a free HTML5 app for making custom icon fonts or SVG sprites. Browse among thousands of pixel perfect icons or import your own vectors.
529	http://slackthemes.net/	2015-05-07 18:36:44.448358	2015-05-07 18:36:44.448358	Slack Themes		\N
536	https://www.digitalocean.com/community/tutorials/additional-recommended-steps-for-new-ubuntu-14-04-servers	2015-05-14 04:21:03.390286	2015-05-14 04:21:03.390286	Additional Recommended Steps for New Ubuntu 14.04 Servers | DigitalOcean	security getting started system tools	After setting up the bare recommended configuration for a new server, there are often some additional steps that are highly recommended in most cases. In this guide, we'll continue the initial conf...
538	https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-14-04-lts	2015-05-14 14:45:31.340965	2015-05-14 14:45:31.340965	How To Install Nginx on Ubuntu 14.04 LTS | DigitalOcean	nginx	Nginx is one of the most popular web servers in the world. It is extremely flexible and powerful and can be used to efficiently host sites and applications small or large sites and applications. In...
540	http://philipwalton.com/articles/normalizing-cross-browser-flexbox-bugs/	2015-05-14 22:19:20.520503	2015-05-14 22:19:20.520503	Normalizing Cross-browser Flexbox Bugs — Philip Walton		Update: as a follow-up to this article, I’ve created the Github repo Flexbugs: a community curated list of cross-browser flexbox issues and their known workarounds. The goals is if
520	http://onehungrymind.com/angularjs-sticky-notes-pt-2-isolated-scope/	2015-04-22 23:45:14.266844	2015-04-22 23:45:14.266844	AngularJS Sticky Notes Pt 2 – Isolated Scope – One Hungry Mind		Welcome to Part 2 of the AngularJS Sticky Notes series! In this blogpost I am going to talk about “isolated” scope as it relates to directives. Directives
522	http://www.jstherightway.org/	2015-04-23 06:50:13.768821	2015-04-23 06:50:13.768821	JS: The Right Way		A quick reference to best practices for writing JavaScript -- links to code patterns and tutorials from around the web
523	http://codeguide.co/	2015-04-26 20:48:34.4271	2015-04-26 20:48:34.4271	\n      Code Guide by @mdo\n    		\N
525	http://yehudakatz.com/2011/08/11/understanding-JavaScript-function-invocation-and-this/	2015-04-27 07:28:26.831894	2015-04-27 07:28:26.831894	Understanding JavaScript Function Invocation and “this” «  Katz Got Your Tongue?		\N
530	http://monitority.com/	2015-05-09 15:14:16.362506	2015-05-09 15:14:16.362506	Monitority - FREE Website Monitoring (Alerts via Email, SMS, Twitter)		\N
539	https://carldanley.com/javascript-design-patterns/	2015-05-14 16:28:15.627671	2015-05-14 16:28:15.627671	JavaScript Design Patterns		description
542	http://christianheilmann.com/2015/01/08/quick-tip-conditional-form-fields-with-css/	2015-05-14 22:21:46.866711	2015-05-14 22:21:46.866711	   Quick tip: conditional form fields with CSS | Christian Heilmann		\N
543	http://www.designcouch.com/home/why/2013/05/23/dead-simple-pure-css-loading-spinner/	2015-05-19 21:04:51.48698	2015-05-19 21:04:51.48698	Dead Simple Pure CSS Loading Spinner - Jesse Couch		Jesse Couch - Web Designer and Front End Developer based in Roanoke, VA
524	http://benalman.com/news/2012/09/partial-application-in-javascript/	2015-04-27 07:20:44.099672	2015-04-27 07:20:44.099672	Ben Alman » Partial Application in JavaScript		\N
527	https://github.com/kriskowal/gtor	2015-05-01 17:05:22.779527	2015-05-01 17:05:22.779527	kriskowal/gtor · GitHub		gtor - A General Theory of Reactivity
528	http://stackoverflow.com/questions/19890364/format-input-value-in-angularjs	2015-05-06 22:26:04.105382	2015-05-06 22:26:04.105382	javascript - Format input value in Angularjs - Stack Overflow		\N
533	https://medium.com/@jetupper/hello-react-js-b87c63526e3a	2015-05-11 17:35:26.21631	2015-05-11 17:35:26.21631	Hello, React.js — Medium		You’re a popular figure on the Internet now and frankly, I felt intimidated when I was first introduced to you. Your sty…
534	https://www.google.com/about/careers/students/guide-to-technical-development.html	2015-05-12 15:58:00.639095	2015-05-12 15:58:00.639095	\n      Students - Guide to Technical Development - Google Careers\n    		\N
535	https://www.digitalocean.com/community/tutorials/7-security-measures-to-protect-your-servers	2015-05-14 03:24:11.334457	2015-05-14 03:24:11.334457	7 Security Measures to Protect your Servers | DigitalOcean	security networking firewall vpn	When setting up infrastructure, getting your applications up and running will often be your primary concern. However, making your applications to function correctly without addressing the security ...
537	https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-using-iptables-on-ubuntu-14-04	2015-05-14 04:23:15.401785	2015-05-14 04:23:15.401785	How To Set Up a Firewall Using IPTables on Ubuntu 14.04 | DigitalOcean	security getting started system tools firewall	The iptables firewall is a great way to secure your Linux server. In this guide, we'll discuss how to configure iptables rules on an Ubuntu 14.04 server.
541	http://philipwalton.com/articles/normalizing-cross-browser-flexbox-bugs/	2015-05-14 22:19:20.786915	2015-05-14 22:19:20.786915	Normalizing Cross-browser Flexbox Bugs — Philip Walton		Update: as a follow-up to this article, I’ve created the Github repo Flexbugs: a community curated list of cross-browser flexbox issues and their known workarounds. The goals is if
526	http://chimera.labs.oreilly.com/books/1234000001813/pr02.html#I_sect1_d1e214	2015-05-01 17:05:00.576676	2015-05-01 17:05:00.576676	Apprenticeship Patterns		\N
531	https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04	2015-05-10 17:56:40.570797	2015-05-10 17:56:40.570797	Initial Server Setup with Ubuntu 14.04 | DigitalOcean	getting started linux basics	When you start a new server, there are a few steps that you should take every time to add some basic security and give you a solid foundation. In this guide, we'll walk you through the basic steps ...
532	https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-12-04	2015-05-10 17:57:05.695296	2015-05-10 17:57:05.695296	Initial Server Setup with Ubuntu 12.04 | DigitalOcean	linux basics	This tutorial covers how to login with root, how to change the root password, how to create a new user, how to give the new user root privileges, how to change the port, and how to disable root log...
544	http://jes.al/2013/10/architecting-restful-rails-4-api/	2015-05-31 23:37:09.189734	2015-05-31 23:37:09.189734	Architecting RESTful Rails 4 API – Jesal Gadhia		\N
545	http://notahat.com/2014/02/05/scoping-rails-routes.html	2015-05-31 23:42:06.312903	2015-05-31 23:42:06.312903	Scoping Rails Routes		\N
546	https://www.digitalocean.com/community/tutorials/how-to-deploy-a-rails-app-with-unicorn-and-nginx-on-ubuntu-14-04	2015-06-01 03:49:46.52611	2015-06-01 03:49:46.52611	How To Deploy a Rails App with Unicorn and Nginx on Ubuntu 14.04 | DigitalOcean	ruby on rails deployment postgresql nginx	When you are ready to deploy your Ruby on Rails application, there are many valid setups to consider. This tutorial will help you deploy the production environment of your Ruby on Rails application...
547	https://www.udacity.com/course/browser-rendering-optimization--ud860	2015-06-01 22:12:15.291311	2015-06-01 22:12:15.291311	Browser Rendering Optimization - Udacity		This course will demystify the browser's rendering pipeline and make it easy for you to build high performance web apps.
\.


--
-- Data for Name: bookmarks_users; Type: TABLE DATA; Schema: public; Owner: bookorb
--

COPY bookmarks_users (id, user_id, bookmark_id, created_at, updated_at) FROM stdin;
1	1	1	2014-08-05 20:36:55.77852	2014-08-05 20:36:55.77852
2	2	2	2014-08-05 22:11:52.253335	2014-08-05 22:11:52.253335
3	2	3	2014-08-05 22:54:57.006527	2014-08-05 22:54:57.006527
4	2	4	2014-08-05 22:55:58.769259	2014-08-05 22:55:58.769259
5	2	5	2014-08-05 22:58:17.646027	2014-08-05 22:58:17.646027
6	2	6	2014-08-05 22:59:54.383054	2014-08-05 22:59:54.383054
7	2	7	2014-08-05 23:00:39.4429	2014-08-05 23:00:39.4429
8	2	8	2014-08-05 23:01:44.00413	2014-08-05 23:01:44.00413
9	2	9	2014-08-05 23:02:50.464955	2014-08-05 23:02:50.464955
10	8	10	2014-08-05 23:11:04.860557	2014-08-05 23:11:04.860557
11	2	11	2014-08-06 00:16:33.37328	2014-08-06 00:16:33.37328
13	11	13	2014-08-06 00:25:50.60395	2014-08-06 00:25:50.60395
14	2	14	2014-08-06 00:25:52.694069	2014-08-06 00:25:52.694069
16	3	16	2014-08-06 00:29:19.318104	2014-08-06 00:29:19.318104
19	6	20	2014-08-06 00:33:13.657763	2014-08-06 00:33:13.657763
20	2	22	2014-08-06 00:46:17.88727	2014-08-06 00:46:17.88727
21	11	23	2014-08-06 00:55:42.164617	2014-08-06 00:55:42.164617
23	11	25	2014-08-06 00:56:22.375137	2014-08-06 00:56:22.375137
24	11	26	2014-08-06 00:57:28.833648	2014-08-06 00:57:28.833648
25	11	15	2014-08-06 00:58:15.587502	2014-08-06 00:58:15.587502
26	11	27	2014-08-06 00:59:27.725674	2014-08-06 00:59:27.725674
27	11	28	2014-08-06 01:00:35.83892	2014-08-06 01:00:35.83892
29	3	30	2014-08-06 02:21:24.022505	2014-08-06 02:21:24.022505
30	3	31	2014-08-06 02:22:01.799012	2014-08-06 02:22:01.799012
31	8	32	2014-08-06 05:52:45.470212	2014-08-06 05:52:45.470212
32	10	33	2014-08-06 06:42:17.351865	2014-08-06 06:42:17.351865
35	2	35	2014-08-06 14:36:08.754122	2014-08-06 14:36:08.754122
36	2	36	2014-08-06 15:41:48.431053	2014-08-06 15:41:48.431053
37	8	37	2014-08-06 16:00:14.533779	2014-08-06 16:00:14.533779
38	8	38	2014-08-06 16:46:36.722681	2014-08-06 16:46:36.722681
39	22	39	2014-08-06 16:56:16.88322	2014-08-06 16:56:16.88322
40	2	40	2014-08-06 17:43:50.98288	2014-08-06 17:43:50.98288
41	27	40	2014-08-06 21:11:55.029271	2014-08-06 21:11:55.029271
42	8	41	2014-08-06 21:54:22.815204	2014-08-06 21:54:22.815204
43	2	42	2014-08-06 21:58:37.853158	2014-08-06 21:58:37.853158
44	28	43	2014-08-06 22:07:28.889414	2014-08-06 22:07:28.889414
45	1	47	2014-08-06 23:16:44.51949	2014-08-06 23:16:44.51949
47	6	48	2014-08-07 18:47:25.883096	2014-08-07 18:47:25.883096
49	2	48	2014-08-07 20:06:04.689411	2014-08-07 20:06:04.689411
50	3	49	2014-08-07 22:35:45.690326	2014-08-07 22:35:45.690326
51	3	50	2014-08-07 22:47:48.833113	2014-08-07 22:47:48.833113
52	1	51	2014-08-07 23:06:21.769488	2014-08-07 23:06:21.769488
53	36	52	2014-08-07 23:10:18.790229	2014-08-07 23:10:18.790229
54	1	53	2014-08-07 23:23:06.516889	2014-08-07 23:23:06.516889
55	1	54	2014-08-07 23:23:16.895877	2014-08-07 23:23:16.895877
56	1	55	2014-08-07 23:28:23.252371	2014-08-07 23:28:23.252371
57	1	56	2014-08-07 23:30:53.226769	2014-08-07 23:30:53.226769
58	1	57	2014-08-07 23:35:55.673852	2014-08-07 23:35:55.673852
59	37	58	2014-08-08 00:49:45.636237	2014-08-08 00:49:45.636237
60	37	59	2014-08-08 00:51:01.475498	2014-08-08 00:51:01.475498
63	3	62	2014-08-08 16:29:08.07727	2014-08-08 16:29:08.07727
64	8	63	2014-08-08 19:24:03.918571	2014-08-08 19:24:03.918571
65	8	64	2014-08-08 19:27:13.819899	2014-08-08 19:27:13.819899
68	29	65	2014-08-08 20:19:10.445055	2014-08-08 20:19:10.445055
69	29	66	2014-08-08 20:19:47.252298	2014-08-08 20:19:47.252298
70	29	67	2014-08-08 20:21:48.320257	2014-08-08 20:21:48.320257
71	29	68	2014-08-08 20:22:24.498848	2014-08-08 20:22:24.498848
72	29	69	2014-08-08 20:22:48.996291	2014-08-08 20:22:48.996291
73	29	73	2014-08-08 20:26:30.88041	2014-08-08 20:26:30.88041
74	8	74	2014-08-08 21:41:05.644247	2014-08-08 21:41:05.644247
75	2	60	2014-08-08 22:38:57.986762	2014-08-08 22:38:57.986762
76	2	79	2014-08-10 04:48:53.879375	2014-08-10 04:48:53.879375
77	3	4	2014-08-10 07:34:41.127651	2014-08-10 07:34:41.127651
78	1	80	2014-08-10 22:22:41.629361	2014-08-10 22:22:41.629361
80	3	79	2014-08-11 07:35:54.779257	2014-08-11 07:35:54.779257
81	41	81	2014-08-11 17:22:59.164507	2014-08-11 17:22:59.164507
82	41	82	2014-08-11 17:34:26.135924	2014-08-11 17:34:26.135924
83	1	83	2014-08-11 18:47:41.231732	2014-08-11 18:47:41.231732
84	2	84	2014-08-12 04:21:08.407646	2014-08-12 04:21:08.407646
85	2	85	2014-08-12 04:27:11.33918	2014-08-12 04:27:11.33918
86	3	63	2014-08-12 16:19:39.979206	2014-08-12 16:19:39.979206
87	2	87	2014-08-12 16:54:47.137093	2014-08-12 16:54:47.137093
88	2	88	2014-08-12 17:15:41.244239	2014-08-12 17:15:41.244239
89	3	88	2014-08-12 17:15:44.010418	2014-08-12 17:15:44.010418
90	3	89	2014-08-12 17:29:56.717079	2014-08-12 17:29:56.717079
91	2	89	2014-08-12 17:30:41.372217	2014-08-12 17:30:41.372217
92	1	90	2014-08-12 19:59:17.57106	2014-08-12 19:59:17.57106
93	2	93	2014-08-13 14:56:42.894942	2014-08-13 14:56:42.894942
94	3	94	2014-08-13 22:53:06.360235	2014-08-13 22:53:06.360235
95	3	95	2014-08-14 23:15:41.145975	2014-08-14 23:15:41.145975
96	3	96	2014-08-15 04:12:43.229049	2014-08-15 04:12:43.229049
97	6	96	2014-08-15 04:13:08.167709	2014-08-15 04:13:08.167709
98	6	97	2014-08-15 04:14:13.080967	2014-08-15 04:14:13.080967
99	6	98	2014-08-15 04:14:44.469778	2014-08-15 04:14:44.469778
100	3	99	2014-08-15 17:57:38.981624	2014-08-15 17:57:38.981624
101	3	100	2014-08-15 17:57:52.769465	2014-08-15 17:57:52.769465
102	3	101	2014-08-15 18:01:52.422555	2014-08-15 18:01:52.422555
103	3	102	2014-08-15 20:28:20.590754	2014-08-15 20:28:20.590754
104	2	103	2014-08-16 20:20:05.031894	2014-08-16 20:20:05.031894
105	2	104	2014-08-16 23:29:32.438332	2014-08-16 23:29:32.438332
106	2	105	2014-08-16 23:51:45.713756	2014-08-16 23:51:45.713756
108	43	106	2014-08-17 13:25:38.345703	2014-08-17 13:25:38.345703
109	43	107	2014-08-17 13:25:59.682238	2014-08-17 13:25:59.682238
111	3	109	2014-08-18 02:17:29.95998	2014-08-18 02:17:29.95998
112	3	110	2014-08-18 04:03:46.974108	2014-08-18 04:03:46.974108
113	3	111	2014-08-18 21:47:11.978056	2014-08-18 21:47:11.978056
114	2	112	2014-08-19 00:51:51.049275	2014-08-19 00:51:51.049275
115	2	113	2014-08-19 13:52:42.1889	2014-08-19 13:52:42.1889
116	2	114	2014-08-19 14:53:41.783936	2014-08-19 14:53:41.783936
117	2	115	2014-08-19 16:04:02.899222	2014-08-19 16:04:02.899222
118	3	116	2014-08-19 16:30:17.016143	2014-08-19 16:30:17.016143
119	3	117	2014-08-19 17:59:47.159857	2014-08-19 17:59:47.159857
120	47	118	2014-08-20 21:15:23.152424	2014-08-20 21:15:23.152424
121	47	119	2014-08-20 21:15:50.149874	2014-08-20 21:15:50.149874
122	3	120	2014-08-21 15:43:17.650675	2014-08-21 15:43:17.650675
123	29	121	2014-08-22 16:26:24.866674	2014-08-22 16:26:24.866674
124	3	122	2014-08-22 16:38:23.022597	2014-08-22 16:38:23.022597
125	1	123	2014-08-22 18:06:54.521601	2014-08-22 18:06:54.521601
126	2	124	2014-08-22 23:33:50.657511	2014-08-22 23:33:50.657511
127	3	125	2014-08-23 20:09:29.264973	2014-08-23 20:09:29.264973
128	3	126	2014-08-23 20:10:23.77944	2014-08-23 20:10:23.77944
129	3	130	2014-08-23 20:13:54.005814	2014-08-23 20:13:54.005814
130	2	132	2014-08-23 23:45:44.270028	2014-08-23 23:45:44.270028
131	2	109	2014-08-24 23:18:43.069566	2014-08-24 23:18:43.069566
132	1	134	2014-08-28 00:40:08.781604	2014-08-28 00:40:08.781604
133	2	136	2014-08-28 22:01:03.113394	2014-08-28 22:01:03.113394
134	2	137	2014-08-28 22:01:21.302967	2014-08-28 22:01:21.302967
135	50	138	2014-08-29 21:40:08.32485	2014-08-29 21:40:08.32485
136	50	139	2014-08-29 21:40:40.746005	2014-08-29 21:40:40.746005
137	50	140	2014-08-29 21:41:25.254868	2014-08-29 21:41:25.254868
138	50	141	2014-08-29 21:42:32.635935	2014-08-29 21:42:32.635935
139	1	142	2014-08-31 05:53:44.754563	2014-08-31 05:53:44.754563
140	2	143	2014-09-01 01:03:06.282608	2014-09-01 01:03:06.282608
141	2	144	2014-09-01 16:42:21.064294	2014-09-01 16:42:21.064294
142	2	145	2014-09-02 12:46:15.345318	2014-09-02 12:46:15.345318
143	2	146	2014-09-02 12:46:25.891855	2014-09-02 12:46:25.891855
144	2	147	2014-09-02 12:46:36.790533	2014-09-02 12:46:36.790533
145	2	148	2014-09-02 13:16:25.436839	2014-09-02 13:16:25.436839
146	54	149	2014-09-02 19:59:48.083214	2014-09-02 19:59:48.083214
147	54	150	2014-09-02 21:45:46.407136	2014-09-02 21:45:46.407136
148	56	150	2014-09-02 21:46:18.809168	2014-09-02 21:46:18.809168
150	54	151	2014-09-02 22:03:43.818564	2014-09-02 22:03:43.818564
151	54	152	2014-09-02 22:07:13.547274	2014-09-02 22:07:13.547274
152	54	153	2014-09-03 04:54:20.211393	2014-09-03 04:54:20.211393
153	58	154	2014-09-03 05:08:22.801839	2014-09-03 05:08:22.801839
154	2	155	2014-09-03 05:24:42.725472	2014-09-03 05:24:42.725472
155	54	156	2014-09-03 05:42:54.993181	2014-09-03 05:42:54.993181
156	59	4	2014-09-03 14:57:30.789623	2014-09-03 14:57:30.789623
157	59	157	2014-09-03 14:57:49.546612	2014-09-03 14:57:49.546612
158	60	158	2014-09-03 15:45:54.698308	2014-09-03 15:45:54.698308
159	60	159	2014-09-03 15:49:37.368138	2014-09-03 15:49:37.368138
160	60	160	2014-09-03 15:49:50.806257	2014-09-03 15:49:50.806257
162	61	161	2014-09-03 15:55:39.011863	2014-09-03 15:55:39.011863
164	61	166	2014-09-03 15:56:52.045563	2014-09-03 15:56:52.045563
165	61	168	2014-09-03 15:57:58.077227	2014-09-03 15:57:58.077227
166	59	169	2014-09-03 17:45:07.731063	2014-09-03 17:45:07.731063
167	1	170	2014-09-03 23:17:04.091242	2014-09-03 23:17:04.091242
168	2	171	2014-09-04 01:16:07.938057	2014-09-04 01:16:07.938057
169	60	172	2014-09-04 04:02:56.434766	2014-09-04 04:02:56.434766
170	60	173	2014-09-04 04:12:14.505436	2014-09-04 04:12:14.505436
171	60	174	2014-09-04 15:40:52.753019	2014-09-04 15:40:52.753019
172	60	175	2014-09-04 15:41:48.967452	2014-09-04 15:41:48.967452
173	60	176	2014-09-04 15:42:03.790536	2014-09-04 15:42:03.790536
174	60	177	2014-09-04 15:45:12.325361	2014-09-04 15:45:12.325361
175	60	178	2014-09-04 15:45:25.337232	2014-09-04 15:45:25.337232
176	60	161	2014-09-04 15:45:38.527014	2014-09-04 15:45:38.527014
177	60	179	2014-09-04 15:46:48.92646	2014-09-04 15:46:48.92646
178	60	180	2014-09-04 15:47:01.287253	2014-09-04 15:47:01.287253
179	60	181	2014-09-04 15:49:14.66087	2014-09-04 15:49:14.66087
180	60	182	2014-09-04 15:49:31.439858	2014-09-04 15:49:31.439858
181	60	183	2014-09-04 15:50:05.915318	2014-09-04 15:50:05.915318
182	60	184	2014-09-04 15:50:25.995518	2014-09-04 15:50:25.995518
183	60	185	2014-09-04 15:50:39.067397	2014-09-04 15:50:39.067397
184	60	186	2014-09-04 15:50:55.646822	2014-09-04 15:50:55.646822
185	54	187	2014-09-04 22:32:08.898928	2014-09-04 22:32:08.898928
186	54	188	2014-09-04 22:44:16.026312	2014-09-04 22:44:16.026312
187	60	189	2014-09-04 23:16:35.210274	2014-09-04 23:16:35.210274
188	60	190	2014-09-04 23:17:06.083998	2014-09-04 23:17:06.083998
189	54	191	2014-09-04 23:37:19.160014	2014-09-04 23:37:19.160014
190	54	192	2014-09-05 00:22:15.323754	2014-09-05 00:22:15.323754
191	2	193	2014-09-05 03:01:03.755123	2014-09-05 03:01:03.755123
192	60	194	2014-09-05 03:18:24.775839	2014-09-05 03:18:24.775839
193	60	195	2014-09-05 03:36:58.267706	2014-09-05 03:36:58.267706
194	60	196	2014-09-05 03:37:15.577385	2014-09-05 03:37:15.577385
195	60	197	2014-09-05 03:37:45.386499	2014-09-05 03:37:45.386499
196	54	200	2014-09-05 19:34:08.669694	2014-09-05 19:34:08.669694
197	54	201	2014-09-06 18:36:26.717538	2014-09-06 18:36:26.717538
198	54	202	2014-09-06 18:37:23.558049	2014-09-06 18:37:23.558049
199	54	203	2014-09-06 18:47:15.427606	2014-09-06 18:47:15.427606
200	60	204	2014-09-06 20:02:40.678909	2014-09-06 20:02:40.678909
201	54	205	2014-09-06 20:40:59.5498	2014-09-06 20:40:59.5498
202	60	206	2014-09-07 18:20:44.404897	2014-09-07 18:20:44.404897
203	60	207	2014-09-07 18:21:07.935186	2014-09-07 18:21:07.935186
204	3	208	2014-09-07 21:12:35.596965	2014-09-07 21:12:35.596965
205	1	209	2014-09-08 05:17:31.543694	2014-09-08 05:17:31.543694
206	54	210	2014-09-08 17:35:45.126797	2014-09-08 17:35:45.126797
207	60	81	2014-09-09 17:39:43.942054	2014-09-09 17:39:43.942054
208	45	211	2014-09-09 19:30:25.120205	2014-09-09 19:30:25.120205
209	69	212	2014-09-09 20:37:36.580472	2014-09-09 20:37:36.580472
210	69	213	2014-09-09 20:38:19.458239	2014-09-09 20:38:19.458239
211	69	214	2014-09-09 20:38:58.497881	2014-09-09 20:38:58.497881
212	67	215	2014-09-10 19:07:10.330657	2014-09-10 19:07:10.330657
213	67	216	2014-09-10 19:07:32.001835	2014-09-10 19:07:32.001835
215	73	218	2014-09-10 21:08:16.230636	2014-09-10 21:08:16.230636
216	54	81	2014-09-11 04:31:25.934793	2014-09-11 04:31:25.934793
217	54	219	2014-09-11 22:10:30.143587	2014-09-11 22:10:30.143587
218	2	220	2014-09-12 18:39:28.308762	2014-09-12 18:39:28.308762
219	67	221	2014-09-13 22:04:21.194199	2014-09-13 22:04:21.194199
220	67	222	2014-09-13 22:04:58.771759	2014-09-13 22:04:58.771759
221	67	223	2014-09-13 22:06:06.202373	2014-09-13 22:06:06.202373
222	67	224	2014-09-13 22:07:13.321537	2014-09-13 22:07:13.321537
223	67	225	2014-09-13 22:07:53.332582	2014-09-13 22:07:53.332582
224	1	226	2014-09-14 06:55:04.253747	2014-09-14 06:55:04.253747
225	60	227	2014-09-15 16:50:32.282995	2014-09-15 16:50:32.282995
226	60	228	2014-09-15 19:14:26.108559	2014-09-15 19:14:26.108559
227	54	229	2014-09-15 21:14:02.396387	2014-09-15 21:14:02.396387
228	54	7	2014-09-15 21:14:35.521548	2014-09-15 21:14:35.521548
229	60	230	2014-09-15 23:04:06.586735	2014-09-15 23:04:06.586735
230	54	231	2014-09-15 23:07:17.34163	2014-09-15 23:07:17.34163
231	67	233	2014-09-16 03:23:53.048609	2014-09-16 03:23:53.048609
232	73	234	2014-09-16 12:03:27.281474	2014-09-16 12:03:27.281474
233	73	235	2014-09-16 12:03:42.859507	2014-09-16 12:03:42.859507
234	73	236	2014-09-16 12:03:56.207616	2014-09-16 12:03:56.207616
235	78	237	2014-09-16 15:16:47.175428	2014-09-16 15:16:47.175428
236	78	238	2014-09-16 15:28:39.522234	2014-09-16 15:28:39.522234
237	2	240	2014-09-29 18:13:04.524339	2014-09-29 18:13:04.524339
238	81	177	2014-09-30 01:03:32.489194	2014-09-30 01:03:32.489194
239	82	241	2014-09-30 01:10:41.405684	2014-09-30 01:10:41.405684
240	82	4	2014-09-30 01:11:14.295685	2014-09-30 01:11:14.295685
241	82	242	2014-09-30 02:27:21.932219	2014-09-30 02:27:21.932219
243	68	243	2014-09-30 04:29:56.617113	2014-09-30 04:29:56.617113
245	68	245	2014-09-30 05:00:58.871147	2014-09-30 05:00:58.871147
246	2	246	2014-10-01 16:13:25.968597	2014-10-01 16:13:25.968597
247	2	247	2014-10-02 15:08:35.426856	2014-10-02 15:08:35.426856
248	2	248	2014-10-03 16:51:43.370749	2014-10-03 16:51:43.370749
249	2	249	2014-10-04 23:33:30.648373	2014-10-04 23:33:30.648373
250	83	243	2014-10-06 20:44:46.127341	2014-10-06 20:44:46.127341
251	83	250	2014-10-06 20:45:24.92201	2014-10-06 20:45:24.92201
252	2	251	2014-10-06 21:22:32.173432	2014-10-06 21:22:32.173432
253	2	252	2014-10-06 21:23:01.071276	2014-10-06 21:23:01.071276
254	2	253	2014-10-07 17:21:12.857949	2014-10-07 17:21:12.857949
255	84	254	2014-10-08 03:54:14.997942	2014-10-08 03:54:14.997942
257	2	256	2014-10-09 00:02:02.527605	2014-10-09 00:02:02.527605
258	2	257	2014-10-09 17:31:02.410215	2014-10-09 17:31:02.410215
259	2	258	2014-10-10 16:08:18.468017	2014-10-10 16:08:18.468017
260	2	259	2014-10-10 16:08:45.557035	2014-10-10 16:08:45.557035
261	2	260	2014-10-10 20:19:32.927799	2014-10-10 20:19:32.927799
262	2	261	2014-10-11 16:00:09.580973	2014-10-11 16:00:09.580973
263	2	262	2014-10-11 16:47:47.340926	2014-10-11 16:47:47.340926
264	2	263	2014-10-14 17:08:00.881432	2014-10-14 17:08:00.881432
265	2	264	2014-10-14 18:13:35.185058	2014-10-14 18:13:35.185058
266	2	265	2014-10-14 18:13:35.804201	2014-10-14 18:13:35.804201
267	1	266	2014-10-14 20:11:57.416763	2014-10-14 20:11:57.416763
268	2	267	2014-10-14 21:19:07.614289	2014-10-14 21:19:07.614289
269	2	268	2014-10-14 22:56:58.9222	2014-10-14 22:56:58.9222
270	2	269	2014-10-15 14:45:24.821397	2014-10-15 14:45:24.821397
271	81	270	2014-10-15 21:56:34.429292	2014-10-15 21:56:34.429292
272	2	271	2014-10-16 18:12:25.967105	2014-10-16 18:12:25.967105
273	2	272	2014-10-16 18:20:14.824659	2014-10-16 18:20:14.824659
274	2	273	2014-10-16 18:22:30.12597	2014-10-16 18:22:30.12597
275	2	274	2014-10-16 18:24:45.822442	2014-10-16 18:24:45.822442
276	2	275	2014-10-16 18:31:06.529952	2014-10-16 18:31:06.529952
277	2	276	2014-10-16 18:31:51.822951	2014-10-16 18:31:51.822951
278	2	277	2014-10-16 20:47:30.493321	2014-10-16 20:47:30.493321
279	1	278	2014-10-16 23:42:24.222259	2014-10-16 23:42:24.222259
280	1	279	2014-10-17 00:33:48.076046	2014-10-17 00:33:48.076046
281	90	280	2014-10-18 00:38:47.892658	2014-10-18 00:38:47.892658
282	90	194	2014-10-18 00:39:19.675168	2014-10-18 00:39:19.675168
283	90	81	2014-10-18 00:39:42.819328	2014-10-18 00:39:42.819328
284	90	281	2014-10-18 00:40:10.54967	2014-10-18 00:40:10.54967
285	90	282	2014-10-18 00:40:43.930389	2014-10-18 00:40:43.930389
286	2	283	2014-10-18 04:27:59.730747	2014-10-18 04:27:59.730747
287	1	284	2014-10-19 23:35:08.192534	2014-10-19 23:35:08.192534
288	2	285	2014-10-20 15:50:05.427516	2014-10-20 15:50:05.427516
289	91	286	2014-10-20 23:07:57.418177	2014-10-20 23:07:57.418177
290	2	287	2014-10-21 16:26:34.996151	2014-10-21 16:26:34.996151
291	2	288	2014-10-21 16:33:23.700226	2014-10-21 16:33:23.700226
292	2	289	2014-10-21 20:34:20.017875	2014-10-21 20:34:20.017875
293	2	290	2014-10-22 19:28:21.071812	2014-10-22 19:28:21.071812
294	2	291	2014-10-22 20:44:42.815877	2014-10-22 20:44:42.815877
296	2	293	2014-10-22 23:23:06.713545	2014-10-22 23:23:06.713545
300	92	297	2014-10-26 01:33:41.031139	2014-10-26 01:33:41.031139
304	2	301	2014-10-27 20:09:46.051413	2014-10-27 20:09:46.051413
295	2	292	2014-10-22 20:45:18.858844	2014-10-22 20:45:18.858844
298	2	295	2014-10-23 18:48:01.094006	2014-10-23 18:48:01.094006
306	1	303	2014-10-28 18:56:07.156074	2014-10-28 18:56:07.156074
297	2	294	2014-10-23 18:47:37.250588	2014-10-23 18:47:37.250588
301	92	298	2014-10-26 01:33:50.173466	2014-10-26 01:33:50.173466
302	92	299	2014-10-26 01:34:00.913997	2014-10-26 01:34:00.913997
303	1	300	2014-10-27 05:15:39.008787	2014-10-27 05:15:39.008787
299	1	296	2014-10-23 23:51:20.910203	2014-10-23 23:51:20.910203
305	2	302	2014-10-27 21:33:33.097194	2014-10-27 21:33:33.097194
316	2	308	2014-10-30 16:33:11.436535	2014-10-30 16:33:11.436535
317	2	309	2014-10-30 16:33:25.426727	2014-10-30 16:33:25.426727
319	2	311	2014-10-31 16:28:48.403982	2014-10-31 16:28:48.403982
320	2	312	2014-10-31 18:59:08.62685	2014-10-31 18:59:08.62685
321	2	313	2014-10-31 19:07:38.438713	2014-10-31 19:07:38.438713
323	1	315	2014-10-31 23:57:54.196492	2014-10-31 23:57:54.196492
324	1	316	2014-10-31 23:58:18.382466	2014-10-31 23:58:18.382466
325	1	317	2014-10-31 23:58:39.37451	2014-10-31 23:58:39.37451
327	81	79	2014-11-02 18:42:29.520652	2014-11-02 18:42:29.520652
328	81	319	2014-11-03 00:49:24.682805	2014-11-03 00:49:24.682805
330	2	321	2014-11-03 21:13:20.150785	2014-11-03 21:13:20.150785
334	2	325	2014-11-04 01:15:50.308235	2014-11-04 01:15:50.308235
335	60	326	2014-11-04 20:04:22.626136	2014-11-04 20:04:22.626136
336	60	327	2014-11-04 20:09:53.144256	2014-11-04 20:09:53.144256
337	60	328	2014-11-04 20:23:47.841844	2014-11-04 20:23:47.841844
338	60	329	2014-11-05 00:36:01.077711	2014-11-05 00:36:01.077711
339	60	330	2014-11-05 00:41:22.067799	2014-11-05 00:41:22.067799
340	60	331	2014-11-05 00:41:44.432844	2014-11-05 00:41:44.432844
341	60	332	2014-11-05 00:42:53.805655	2014-11-05 00:42:53.805655
342	2	333	2014-11-05 00:53:02.739619	2014-11-05 00:53:02.739619
343	60	334	2014-11-05 01:32:36.768712	2014-11-05 01:32:36.768712
344	60	335	2014-11-05 16:56:19.672133	2014-11-05 16:56:19.672133
345	60	336	2014-11-05 18:58:12.200362	2014-11-05 18:58:12.200362
346	60	337	2014-11-06 01:15:24.635088	2014-11-06 01:15:24.635088
347	2	338	2014-11-06 20:16:30.261284	2014-11-06 20:16:30.261284
349	2	340	2014-11-07 16:22:01.339404	2014-11-07 16:22:01.339404
350	2	341	2014-11-07 16:22:31.744783	2014-11-07 16:22:31.744783
351	81	342	2014-11-09 20:22:45.846911	2014-11-09 20:22:45.846911
354	2	345	2014-11-10 17:20:55.027765	2014-11-10 17:20:55.027765
356	93	347	2014-11-11 02:04:31.294241	2014-11-11 02:04:31.294241
357	2	348	2014-11-11 21:24:16.624598	2014-11-11 21:24:16.624598
358	81	349	2014-11-12 00:46:13.916526	2014-11-12 00:46:13.916526
359	2	350	2014-11-12 03:45:40.191441	2014-11-12 03:45:40.191441
360	2	351	2014-11-13 01:23:57.566514	2014-11-13 01:23:57.566514
361	2	352	2014-11-13 02:14:17.076581	2014-11-13 02:14:17.076581
362	98	353	2014-11-13 19:47:20.058869	2014-11-13 19:47:20.058869
363	98	354	2014-11-13 19:47:56.697921	2014-11-13 19:47:56.697921
364	98	355	2014-11-13 19:48:44.479519	2014-11-13 19:48:44.479519
365	98	191	2014-11-13 19:49:16.276523	2014-11-13 19:49:16.276523
366	98	282	2014-11-13 19:49:30.046379	2014-11-13 19:49:30.046379
367	98	194	2014-11-13 19:49:50.167525	2014-11-13 19:49:50.167525
368	98	196	2014-11-13 19:50:09.252332	2014-11-13 19:50:09.252332
369	98	81	2014-11-13 19:50:27.474729	2014-11-13 19:50:27.474729
370	98	280	2014-11-13 19:51:02.776884	2014-11-13 19:51:02.776884
371	98	281	2014-11-13 19:51:19.982241	2014-11-13 19:51:19.982241
372	2	356	2014-11-13 22:39:51.214525	2014-11-13 22:39:51.214525
373	81	357	2014-11-13 23:42:34.545177	2014-11-13 23:42:34.545177
374	2	358	2014-11-14 00:10:15.543378	2014-11-14 00:10:15.543378
375	2	359	2014-11-14 00:10:22.852315	2014-11-14 00:10:22.852315
376	2	360	2014-11-14 00:10:42.33856	2014-11-14 00:10:42.33856
377	2	361	2014-11-14 01:43:42.93709	2014-11-14 01:43:42.93709
378	2	362	2014-11-14 21:38:16.118332	2014-11-14 21:38:16.118332
379	2	363	2014-11-15 17:52:46.977131	2014-11-15 17:52:46.977131
380	2	364	2014-11-15 23:56:54.355705	2014-11-15 23:56:54.355705
381	93	365	2014-11-17 03:46:55.090616	2014-11-17 03:46:55.090616
382	2	366	2014-11-17 17:42:50.557516	2014-11-17 17:42:50.557516
383	2	367	2014-11-18 18:40:42.26931	2014-11-18 18:40:42.26931
384	2	368	2014-11-18 18:41:10.712313	2014-11-18 18:41:10.712313
385	2	369	2014-11-19 00:26:09.009213	2014-11-19 00:26:09.009213
386	2	370	2014-11-21 07:42:11.078105	2014-11-21 07:42:11.078105
387	1	371	2014-11-25 16:40:38.081408	2014-11-25 16:40:38.081408
388	1	372	2014-11-25 16:40:56.796548	2014-11-25 16:40:56.796548
389	1	373	2014-11-25 19:12:27.092876	2014-11-25 19:12:27.092876
390	2	374	2014-11-26 23:32:14.194258	2014-11-26 23:32:14.194258
391	1	375	2014-11-27 00:33:55.458322	2014-11-27 00:33:55.458322
392	2	376	2014-11-27 04:35:23.19063	2014-11-27 04:35:23.19063
393	2	377	2014-11-27 16:48:06.29868	2014-11-27 16:48:06.29868
394	2	378	2014-11-28 19:53:48.983967	2014-11-28 19:53:48.983967
395	1	379	2014-11-28 22:06:32.355662	2014-11-28 22:06:32.355662
396	2	380	2014-11-28 22:51:43.076764	2014-11-28 22:51:43.076764
397	2	381	2014-11-30 00:38:21.090504	2014-11-30 00:38:21.090504
398	2	382	2014-11-30 03:53:48.022586	2014-11-30 03:53:48.022586
399	99	39	2014-11-30 09:21:03.779295	2014-11-30 09:21:03.779295
400	2	383	2014-11-30 23:08:18.448221	2014-11-30 23:08:18.448221
401	2	384	2014-12-03 18:29:21.64688	2014-12-03 18:29:21.64688
402	1	385	2014-12-03 20:52:28.758438	2014-12-03 20:52:28.758438
403	1	386	2014-12-03 20:52:44.743904	2014-12-03 20:52:44.743904
404	2	387	2014-12-03 21:57:20.835716	2014-12-03 21:57:20.835716
405	2	388	2014-12-03 22:27:27.552718	2014-12-03 22:27:27.552718
406	2	389	2014-12-04 20:02:23.176192	2014-12-04 20:02:23.176192
407	2	390	2014-12-04 22:43:09.003323	2014-12-04 22:43:09.003323
408	1	391	2014-12-08 17:24:37.751701	2014-12-08 17:24:37.751701
409	81	392	2014-12-09 05:18:20.913946	2014-12-09 05:18:20.913946
410	81	393	2014-12-09 22:20:05.013631	2014-12-09 22:20:05.013631
411	81	394	2014-12-10 04:16:17.987398	2014-12-10 04:16:17.987398
412	1	395	2014-12-10 16:57:16.485377	2014-12-10 16:57:16.485377
413	2	396	2014-12-10 18:24:59.749082	2014-12-10 18:24:59.749082
414	2	397	2014-12-10 18:25:36.909703	2014-12-10 18:25:36.909703
415	2	398	2014-12-11 00:52:06.819725	2014-12-11 00:52:06.819725
416	1	399	2014-12-11 01:42:29.570022	2014-12-11 01:42:29.570022
417	1	400	2014-12-12 16:30:35.788201	2014-12-12 16:30:35.788201
418	2	401	2014-12-12 19:26:21.377376	2014-12-12 19:26:21.377376
419	2	402	2014-12-12 20:51:37.043651	2014-12-12 20:51:37.043651
420	2	403	2014-12-12 22:09:51.044014	2014-12-12 22:09:51.044014
421	2	404	2014-12-12 22:09:51.647433	2014-12-12 22:09:51.647433
422	1	405	2014-12-15 22:17:34.988121	2014-12-15 22:17:34.988121
423	81	406	2014-12-17 22:03:17.958564	2014-12-17 22:03:17.958564
424	81	407	2014-12-17 22:13:02.528035	2014-12-17 22:13:02.528035
425	1	408	2014-12-19 17:14:47.61666	2014-12-19 17:14:47.61666
426	2	409	2014-12-19 17:24:12.245658	2014-12-19 17:24:12.245658
427	1	410	2014-12-24 04:41:08.793349	2014-12-24 04:41:08.793349
428	1	411	2014-12-24 05:48:51.253016	2014-12-24 05:48:51.253016
429	1	412	2015-01-05 07:01:25.007529	2015-01-05 07:01:25.007529
430	2	413	2015-01-05 16:26:49.17522	2015-01-05 16:26:49.17522
431	2	414	2015-01-09 01:01:42.429024	2015-01-09 01:01:42.429024
432	2	415	2015-01-09 19:20:14.780386	2015-01-09 19:20:14.780386
433	2	416	2015-01-09 19:20:29.163142	2015-01-09 19:20:29.163142
434	2	417	2015-01-09 19:20:55.270285	2015-01-09 19:20:55.270285
435	2	418	2015-01-09 19:21:04.84747	2015-01-09 19:21:04.84747
436	2	419	2015-01-09 23:40:13.741336	2015-01-09 23:40:13.741336
437	2	420	2015-01-10 00:39:36.180148	2015-01-10 00:39:36.180148
438	1	421	2015-01-12 01:03:53.266042	2015-01-12 01:03:53.266042
439	2	422	2015-01-13 19:03:22.498897	2015-01-13 19:03:22.498897
440	112	423	2015-01-14 04:26:50.819124	2015-01-14 04:26:50.819124
441	112	424	2015-01-14 04:27:05.998911	2015-01-14 04:27:05.998911
442	2	425	2015-01-14 21:24:19.947279	2015-01-14 21:24:19.947279
443	2	426	2015-01-15 04:44:51.320884	2015-01-15 04:44:51.320884
444	2	427	2015-01-17 15:07:20.777212	2015-01-17 15:07:20.777212
445	1	428	2015-01-19 07:09:49.132552	2015-01-19 07:09:49.132552
446	1	429	2015-01-19 16:19:56.360425	2015-01-19 16:19:56.360425
447	114	430	2015-01-20 07:53:46.49965	2015-01-20 07:53:46.49965
449	117	432	2015-01-22 02:13:16.658038	2015-01-22 02:13:16.658038
450	2	433	2015-01-22 16:33:36.408913	2015-01-22 16:33:36.408913
452	1	435	2015-01-27 03:43:00.129845	2015-01-27 03:43:00.129845
453	1	436	2015-01-28 06:03:55.834416	2015-01-28 06:03:55.834416
454	2	437	2015-01-28 17:03:58.159924	2015-01-28 17:03:58.159924
455	2	438	2015-01-29 16:11:49.548198	2015-01-29 16:11:49.548198
458	1	441	2015-01-31 06:18:13.663627	2015-01-31 06:18:13.663627
459	2	442	2015-02-01 17:58:28.652834	2015-02-01 17:58:28.652834
460	2	443	2015-02-01 17:58:41.936299	2015-02-01 17:58:41.936299
469	2	452	2015-02-05 19:35:00.622317	2015-02-05 19:35:00.622317
461	2	444	2015-02-02 03:46:34.031939	2015-02-02 03:46:34.031939
462	2	445	2015-02-02 23:40:12.938657	2015-02-02 23:40:12.938657
463	2	446	2015-02-02 23:41:38.368468	2015-02-02 23:41:38.368468
465	2	448	2015-02-03 22:05:08.478919	2015-02-03 22:05:08.478919
467	2	450	2015-02-04 22:06:17.417015	2015-02-04 22:06:17.417015
468	123	451	2015-02-05 17:53:34.001826	2015-02-05 17:53:34.001826
466	114	449	2015-02-03 23:20:57.152425	2015-02-03 23:20:57.152425
472	2	455	2015-02-10 20:58:56.874815	2015-02-10 20:58:56.874815
473	2	456	2015-02-11 21:58:12.16798	2015-02-11 21:58:12.16798
474	2	457	2015-02-14 21:44:15.196232	2015-02-14 21:44:15.196232
475	2	458	2015-02-18 23:07:41.475507	2015-02-18 23:07:41.475507
476	2	459	2015-02-19 20:33:11.952277	2015-02-19 20:33:11.952277
477	2	460	2015-02-19 20:34:46.949718	2015-02-19 20:34:46.949718
478	2	461	2015-02-19 20:45:27.049601	2015-02-19 20:45:27.049601
482	114	465	2015-02-27 21:08:36.24534	2015-02-27 21:08:36.24534
483	2	466	2015-03-02 21:01:55.221629	2015-03-02 21:01:55.221629
484	1	467	2015-03-02 23:50:26.014741	2015-03-02 23:50:26.014741
485	2	468	2015-03-03 19:20:30.491377	2015-03-03 19:20:30.491377
486	2	469	2015-03-03 21:37:54.189943	2015-03-03 21:37:54.189943
488	114	471	2015-03-04 17:35:59.893531	2015-03-04 17:35:59.893531
489	2	472	2015-03-04 19:53:50.0723	2015-03-04 19:53:50.0723
490	124	473	2015-03-05 16:49:12.991342	2015-03-05 16:49:12.991342
491	124	474	2015-03-05 18:00:38.88525	2015-03-05 18:00:38.88525
492	2	475	2015-03-06 02:59:38.751295	2015-03-06 02:59:38.751295
493	2	476	2015-03-06 19:17:32.943026	2015-03-06 19:17:32.943026
495	2	478	2015-03-09 21:06:04.932042	2015-03-09 21:06:04.932042
496	2	479	2015-03-10 01:29:11.610965	2015-03-10 01:29:11.610965
497	114	480	2015-03-12 06:25:33.315165	2015-03-12 06:25:33.315165
498	114	481	2015-03-12 06:25:47.316961	2015-03-12 06:25:47.316961
499	114	482	2015-03-12 06:26:04.655003	2015-03-12 06:26:04.655003
500	2	483	2015-03-12 23:57:12.105756	2015-03-12 23:57:12.105756
501	2	484	2015-03-13 18:43:04.313532	2015-03-13 18:43:04.313532
502	2	485	2015-03-19 17:14:56.253346	2015-03-19 17:14:56.253346
503	1	486	2015-03-24 22:55:26.052992	2015-03-24 22:55:26.052992
504	1	487	2015-03-26 19:38:51.937015	2015-03-26 19:38:51.937015
505	2	393	2015-03-28 04:17:59.822054	2015-03-28 04:17:59.822054
506	1	488	2015-03-29 03:35:43.070149	2015-03-29 03:35:43.070149
507	2	489	2015-03-30 22:40:30.425914	2015-03-30 22:40:30.425914
508	1	490	2015-03-30 22:43:41.980981	2015-03-30 22:43:41.980981
511	114	493	2015-03-31 18:39:56.828354	2015-03-31 18:39:56.828354
513	1	495	2015-04-02 15:06:58.40132	2015-04-02 15:06:58.40132
514	1	330	2015-04-02 22:14:42.146619	2015-04-02 22:14:42.146619
515	1	496	2015-04-02 22:17:18.517208	2015-04-02 22:17:18.517208
516	1	497	2015-04-02 22:17:41.173977	2015-04-02 22:17:41.173977
517	1	498	2015-04-02 22:18:03.922116	2015-04-02 22:18:03.922116
518	1	499	2015-04-02 22:18:21.581074	2015-04-02 22:18:21.581074
519	1	500	2015-04-02 22:18:35.022328	2015-04-02 22:18:35.022328
520	1	501	2015-04-02 22:19:08.332824	2015-04-02 22:19:08.332824
521	1	502	2015-04-02 22:19:28.187643	2015-04-02 22:19:28.187643
522	1	503	2015-04-02 22:19:43.965589	2015-04-02 22:19:43.965589
523	2	504	2015-04-03 16:21:19.002224	2015-04-03 16:21:19.002224
524	2	505	2015-04-03 16:21:45.780749	2015-04-03 16:21:45.780749
525	2	506	2015-04-05 02:26:27.206784	2015-04-05 02:26:27.206784
526	114	507	2015-04-09 05:47:08.009919	2015-04-09 05:47:08.009919
527	1	508	2015-04-09 23:59:47.9964	2015-04-09 23:59:47.9964
528	2	509	2015-04-10 17:25:17.193969	2015-04-10 17:25:17.193969
529	114	510	2015-04-10 22:40:37.173852	2015-04-10 22:40:37.173852
530	2	511	2015-04-14 16:37:19.909973	2015-04-14 16:37:19.909973
533	114	88	2015-04-14 21:59:03.440208	2015-04-14 21:59:03.440208
534	1	514	2015-04-17 18:37:05.725214	2015-04-17 18:37:05.725214
538	114	518	2015-04-20 06:18:27.90538	2015-04-20 06:18:27.90538
540	3	520	2015-04-22 23:45:14.285309	2015-04-22 23:45:14.285309
541	114	521	2015-04-23 00:09:33.709834	2015-04-23 00:09:33.709834
543	1	523	2015-04-26 20:48:34.520132	2015-04-26 20:48:34.520132
544	114	524	2015-04-27 07:20:44.129773	2015-04-27 07:20:44.129773
545	114	525	2015-04-27 07:28:26.851351	2015-04-27 07:28:26.851351
546	114	526	2015-05-01 17:05:00.604711	2015-05-01 17:05:00.604711
547	114	527	2015-05-01 17:05:22.79149	2015-05-01 17:05:22.79149
549	2	528	2015-05-06 22:26:04.128693	2015-05-06 22:26:04.128693
550	1	529	2015-05-07 18:36:44.508753	2015-05-07 18:36:44.508753
551	114	530	2015-05-09 15:14:16.387167	2015-05-09 15:14:16.387167
552	2	531	2015-05-10 17:56:41.19355	2015-05-10 17:56:41.19355
553	2	532	2015-05-10 17:57:05.716072	2015-05-10 17:57:05.716072
554	2	533	2015-05-11 17:35:26.392313	2015-05-11 17:35:26.392313
555	114	534	2015-05-12 15:58:00.653256	2015-05-12 15:58:00.653256
556	2	535	2015-05-14 03:24:11.51479	2015-05-14 03:24:11.51479
557	2	536	2015-05-14 04:21:03.447313	2015-05-14 04:21:03.447313
558	2	537	2015-05-14 04:23:15.417797	2015-05-14 04:23:15.417797
559	2	538	2015-05-14 14:45:31.510022	2015-05-14 14:45:31.510022
560	114	539	2015-05-14 16:28:15.647259	2015-05-14 16:28:15.647259
561	114	540	2015-05-14 22:19:20.563751	2015-05-14 22:19:20.563751
562	114	541	2015-05-14 22:19:20.796195	2015-05-14 22:19:20.796195
563	114	542	2015-05-14 22:21:46.887389	2015-05-14 22:21:46.887389
564	114	543	2015-05-19 21:04:51.522045	2015-05-19 21:04:51.522045
565	2	544	2015-05-31 23:37:09.269095	2015-05-31 23:37:09.269095
566	2	545	2015-05-31 23:42:06.328519	2015-05-31 23:42:06.328519
567	2	546	2015-06-01 03:49:46.545015	2015-06-01 03:49:46.545015
568	2	547	2015-06-01 22:12:15.30586	2015-06-01 22:12:15.30586
\.


--
-- Data for Name: bookmarks_users_collections; Type: TABLE DATA; Schema: public; Owner: bookorb
--

COPY bookmarks_users_collections (id, bookmarks_user_id, collection_id, created_at, updated_at) FROM stdin;
3	2	3	2014-08-05 22:11:52.322374	2014-08-05 22:11:52.322374
4	3	4	2014-08-05 22:54:57.067932	2014-08-05 22:54:57.067932
5	4	4	2014-08-05 22:55:58.827588	2014-08-05 22:55:58.827588
6	4	5	2014-08-05 22:55:58.840419	2014-08-05 22:55:58.840419
7	5	6	2014-08-05 22:58:17.698758	2014-08-05 22:58:17.698758
8	5	5	2014-08-05 22:58:17.706882	2014-08-05 22:58:17.706882
9	6	4	2014-08-05 22:59:54.446104	2014-08-05 22:59:54.446104
10	7	7	2014-08-05 23:00:39.553693	2014-08-05 23:00:39.553693
11	8	8	2014-08-05 23:01:44.065659	2014-08-05 23:01:44.065659
12	8	9	2014-08-05 23:01:44.087089	2014-08-05 23:01:44.087089
13	9	10	2014-08-05 23:02:50.516367	2014-08-05 23:02:50.516367
14	10	11	2014-08-05 23:11:04.901986	2014-08-05 23:11:04.901986
15	11	12	2014-08-06 00:16:33.494771	2014-08-06 00:16:33.494771
17	13	1	2014-08-06 00:25:50.646184	2014-08-06 00:25:50.646184
18	14	14	2014-08-06 00:25:52.768722	2014-08-06 00:25:52.768722
24	1	16	2014-08-06 00:37:59.170815	2014-08-06 00:37:59.170815
25	1	2	2014-08-06 00:38:25.463184	2014-08-06 00:38:25.463184
26	20	9	2014-08-06 00:46:17.921818	2014-08-06 00:46:17.921818
28	21	1	2014-08-06 00:55:42.201344	2014-08-06 00:55:42.201344
30	23	17	2014-08-06 00:56:22.459812	2014-08-06 00:56:22.459812
31	24	1	2014-08-06 00:57:28.877849	2014-08-06 00:57:28.877849
32	25	1	2014-08-06 00:58:15.696842	2014-08-06 00:58:15.696842
33	26	18	2014-08-06 00:59:27.777885	2014-08-06 00:59:27.777885
34	27	19	2014-08-06 01:00:35.890236	2014-08-06 01:00:35.890236
36	29	12	2014-08-06 02:21:24.066407	2014-08-06 02:21:24.066407
37	30	12	2014-08-06 02:22:01.878817	2014-08-06 02:22:01.878817
38	30	9	2014-08-06 02:22:01.890235	2014-08-06 02:22:01.890235
40	32	21	2014-08-06 06:42:17.402968	2014-08-06 06:42:17.402968
43	35	23	2014-08-06 14:36:08.828434	2014-08-06 14:36:08.828434
44	36	24	2014-08-06 15:41:48.479425	2014-08-06 15:41:48.479425
45	37	25	2014-08-06 16:00:14.650636	2014-08-06 16:00:14.650636
46	38	25	2014-08-06 16:46:36.765355	2014-08-06 16:46:36.765355
47	39	1	2014-08-06 16:56:16.949323	2014-08-06 16:56:16.949323
48	40	9	2014-08-06 17:43:51.140692	2014-08-06 17:43:51.140692
49	40	12	2014-08-06 17:43:51.153282	2014-08-06 17:43:51.153282
50	40	26	2014-08-06 17:43:51.17026	2014-08-06 17:43:51.17026
51	40	27	2014-08-06 17:43:51.184017	2014-08-06 17:43:51.184017
52	41	28	2014-08-06 21:11:55.147766	2014-08-06 21:11:55.147766
53	41	1	2014-08-06 21:11:55.159214	2014-08-06 21:11:55.159214
54	42	29	2014-08-06 21:54:22.933834	2014-08-06 21:54:22.933834
55	43	14	2014-08-06 21:58:37.863946	2014-08-06 21:58:37.863946
56	43	30	2014-08-06 21:58:37.875366	2014-08-06 21:58:37.875366
57	43	31	2014-08-06 21:58:37.887963	2014-08-06 21:58:37.887963
58	44	32	2014-08-06 22:07:28.901838	2014-08-06 22:07:28.901838
59	45	12	2014-08-06 23:16:44.532695	2014-08-06 23:16:44.532695
60	45	9	2014-08-06 23:16:44.540925	2014-08-06 23:16:44.540925
61	45	33	2014-08-06 23:16:44.556834	2014-08-06 23:16:44.556834
62	45	34	2014-08-06 23:16:44.568319	2014-08-06 23:16:44.568319
64	31	35	2014-08-07 17:40:09.046312	2014-08-07 17:40:09.046312
65	47	36	2014-08-07 18:47:25.899541	2014-08-07 18:47:25.899541
66	19	37	2014-08-07 18:47:32.557223	2014-08-07 18:47:32.557223
67	19	38	2014-08-07 18:48:00.660832	2014-08-07 18:48:00.660832
68	19	39	2014-08-07 18:48:15.529795	2014-08-07 18:48:15.529795
69	47	37	2014-08-07 18:50:03.858908	2014-08-07 18:50:03.858908
70	47	39	2014-08-07 18:50:16.492774	2014-08-07 18:50:16.492774
72	49	9	2014-08-07 20:06:04.708519	2014-08-07 20:06:04.708519
73	50	40	2014-08-07 22:35:45.711466	2014-08-07 22:35:45.711466
75	51	42	2014-08-07 22:47:48.862234	2014-08-07 22:47:48.862234
76	52	9	2014-08-07 23:06:21.78214	2014-08-07 23:06:21.78214
78	53	1	2014-08-07 23:10:18.799528	2014-08-07 23:10:18.799528
79	54	12	2014-08-07 23:23:06.640091	2014-08-07 23:23:06.640091
80	54	43	2014-08-07 23:23:06.801909	2014-08-07 23:23:06.801909
81	55	12	2014-08-07 23:23:16.908738	2014-08-07 23:23:16.908738
82	55	43	2014-08-07 23:23:16.967533	2014-08-07 23:23:16.967533
83	56	44	2014-08-07 23:28:23.268135	2014-08-07 23:28:23.268135
84	57	45	2014-08-07 23:30:53.240393	2014-08-07 23:30:53.240393
85	57	46	2014-08-07 23:30:53.251417	2014-08-07 23:30:53.251417
86	57	47	2014-08-07 23:31:00.551217	2014-08-07 23:31:00.551217
87	58	48	2014-08-07 23:35:55.76397	2014-08-07 23:35:55.76397
89	59	12	2014-08-08 00:50:50.325758	2014-08-08 00:50:50.325758
90	60	49	2014-08-08 00:51:01.492032	2014-08-08 00:51:01.492032
98	63	55	2014-08-08 16:29:08.091445	2014-08-08 16:29:08.091445
99	16	55	2014-08-08 16:29:48.736562	2014-08-08 16:29:48.736562
100	64	56	2014-08-08 19:24:04.182836	2014-08-08 19:24:04.182836
101	65	56	2014-08-08 19:27:13.830316	2014-08-08 19:27:13.830316
105	68	59	2014-08-08 20:19:10.464159	2014-08-08 20:19:10.464159
106	68	51	2014-08-08 20:19:10.474939	2014-08-08 20:19:10.474939
107	68	60	2014-08-08 20:19:10.521884	2014-08-08 20:19:10.521884
108	69	51	2014-08-08 20:19:47.264042	2014-08-08 20:19:47.264042
109	69	61	2014-08-08 20:19:47.276985	2014-08-08 20:19:47.276985
110	70	62	2014-08-08 20:21:48.431483	2014-08-08 20:21:48.431483
111	70	60	2014-08-08 20:21:48.442224	2014-08-08 20:21:48.442224
112	71	63	2014-08-08 20:22:24.545899	2014-08-08 20:22:24.545899
113	71	64	2014-08-08 20:22:24.681472	2014-08-08 20:22:24.681472
114	71	65	2014-08-08 20:22:24.731981	2014-08-08 20:22:24.731981
115	72	52	2014-08-08 20:22:49.025143	2014-08-08 20:22:49.025143
116	72	51	2014-08-08 20:22:49.062784	2014-08-08 20:22:49.062784
117	73	66	2014-08-08 20:26:30.917438	2014-08-08 20:26:30.917438
118	74	67	2014-08-08 21:41:05.660447	2014-08-08 21:41:05.660447
120	75	51	2014-08-08 22:39:05.203681	2014-08-08 22:39:05.203681
122	76	5	2014-08-10 04:48:53.892882	2014-08-10 04:48:53.892882
123	76	68	2014-08-10 04:48:53.907263	2014-08-10 04:48:53.907263
124	77	4	2014-08-10 07:34:41.390028	2014-08-10 07:34:41.390028
125	78	69	2014-08-10 22:22:41.786741	2014-08-10 22:22:41.786741
128	80	45	2014-08-11 07:35:54.802644	2014-08-11 07:35:54.802644
129	80	71	2014-08-11 07:35:54.872464	2014-08-11 07:35:54.872464
130	81	72	2014-08-11 17:22:59.182996	2014-08-11 17:22:59.182996
131	82	12	2014-08-11 17:34:26.36172	2014-08-11 17:34:26.36172
132	82	73	2014-08-11 17:34:26.75236	2014-08-11 17:34:26.75236
133	83	45	2014-08-11 18:47:41.245665	2014-08-11 18:47:41.245665
134	84	9	2014-08-12 04:21:08.424373	2014-08-12 04:21:08.424373
135	84	30	2014-08-12 04:21:08.438933	2014-08-12 04:21:08.438933
136	85	30	2014-08-12 04:27:11.351193	2014-08-12 04:27:11.351193
137	85	74	2014-08-12 04:27:11.368222	2014-08-12 04:27:11.368222
138	86	30	2014-08-12 16:19:39.996728	2014-08-12 16:19:39.996728
139	87	9	2014-08-12 16:54:47.150264	2014-08-12 16:54:47.150264
141	88	8	2014-08-12 17:15:41.259987	2014-08-12 17:15:41.259987
142	88	68	2014-08-12 17:15:41.270035	2014-08-12 17:15:41.270035
143	89	45	2014-08-12 17:15:44.096325	2014-08-12 17:15:44.096325
144	90	30	2014-08-12 17:29:56.730864	2014-08-12 17:29:56.730864
145	90	9	2014-08-12 17:29:56.742528	2014-08-12 17:29:56.742528
146	90	76	2014-08-12 17:29:56.802733	2014-08-12 17:29:56.802733
147	90	77	2014-08-12 17:29:56.820621	2014-08-12 17:29:56.820621
148	91	30	2014-08-12 17:30:41.526537	2014-08-12 17:30:41.526537
151	92	78	2014-08-12 19:59:17.588941	2014-08-12 19:59:17.588941
152	92	79	2014-08-12 19:59:17.601387	2014-08-12 19:59:17.601387
154	93	81	2014-08-13 14:56:42.912417	2014-08-13 14:56:42.912417
155	93	82	2014-08-13 14:56:42.927144	2014-08-13 14:56:42.927144
156	94	51	2014-08-13 22:53:06.405426	2014-08-13 22:53:06.405426
157	95	83	2014-08-14 23:15:41.55782	2014-08-14 23:15:41.55782
158	96	45	2014-08-15 04:12:43.243118	2014-08-15 04:12:43.243118
159	97	45	2014-08-15 04:13:08.18458	2014-08-15 04:13:08.18458
161	97	1	2014-08-15 04:13:08.204537	2014-08-15 04:13:08.204537
162	98	45	2014-08-15 04:14:13.108029	2014-08-15 04:14:13.108029
163	98	85	2014-08-15 04:14:13.126611	2014-08-15 04:14:13.126611
164	97	85	2014-08-15 04:14:26.293355	2014-08-15 04:14:26.293355
165	99	86	2014-08-15 04:14:44.486477	2014-08-15 04:14:44.486477
166	100	16	2014-08-15 17:57:38.994262	2014-08-15 17:57:38.994262
167	101	16	2014-08-15 17:57:52.842162	2014-08-15 17:57:52.842162
168	102	45	2014-08-15 18:01:52.443538	2014-08-15 18:01:52.443538
169	102	39	2014-08-15 18:01:52.496423	2014-08-15 18:01:52.496423
170	103	87	2014-08-15 20:28:20.613825	2014-08-15 20:28:20.613825
171	103	60	2014-08-15 20:28:20.628029	2014-08-15 20:28:20.628029
172	104	88	2014-08-16 20:20:05.068806	2014-08-16 20:20:05.068806
174	105	51	2014-08-16 23:29:32.45162	2014-08-16 23:29:32.45162
175	105	89	2014-08-16 23:29:32.464657	2014-08-16 23:29:32.464657
176	106	51	2014-08-16 23:51:45.752222	2014-08-16 23:51:45.752222
177	106	31	2014-08-16 23:51:45.761687	2014-08-16 23:51:45.761687
179	108	90	2014-08-17 13:25:38.627541	2014-08-17 13:25:38.627541
180	108	1	2014-08-17 13:25:38.636647	2014-08-17 13:25:38.636647
181	109	90	2014-08-17 13:25:59.695948	2014-08-17 13:25:59.695948
183	111	16	2014-08-18 02:17:29.974358	2014-08-18 02:17:29.974358
184	111	69	2014-08-18 02:17:29.987423	2014-08-18 02:17:29.987423
185	111	92	2014-08-18 02:17:30.002754	2014-08-18 02:17:30.002754
186	111	39	2014-08-18 02:17:30.014037	2014-08-18 02:17:30.014037
187	112	16	2014-08-18 04:03:46.987648	2014-08-18 04:03:46.987648
188	112	69	2014-08-18 04:03:46.998026	2014-08-18 04:03:46.998026
189	112	92	2014-08-18 04:03:47.008208	2014-08-18 04:03:47.008208
190	112	39	2014-08-18 04:03:47.017579	2014-08-18 04:03:47.017579
191	113	16	2014-08-18 21:47:11.992368	2014-08-18 21:47:11.992368
192	113	93	2014-08-18 21:47:12.008509	2014-08-18 21:47:12.008509
193	114	79	2014-08-19 00:51:51.065544	2014-08-19 00:51:51.065544
194	115	94	2014-08-19 13:52:42.212526	2014-08-19 13:52:42.212526
195	116	95	2014-08-19 14:53:41.810549	2014-08-19 14:53:41.810549
196	116	9	2014-08-19 14:53:41.820156	2014-08-19 14:53:41.820156
197	116	96	2014-08-19 14:53:41.837063	2014-08-19 14:53:41.837063
198	116	44	2014-08-19 14:53:41.850254	2014-08-19 14:53:41.850254
199	117	97	2014-08-19 16:04:03.023598	2014-08-19 16:04:03.023598
200	117	98	2014-08-19 16:04:03.17016	2014-08-19 16:04:03.17016
201	118	99	2014-08-19 16:30:17.04403	2014-08-19 16:30:17.04403
202	119	16	2014-08-19 17:59:47.176682	2014-08-19 17:59:47.176682
203	119	100	2014-08-19 17:59:47.19817	2014-08-19 17:59:47.19817
205	121	101	2014-08-20 21:15:50.168193	2014-08-20 21:15:50.168193
206	120	101	2014-08-20 21:15:59.661835	2014-08-20 21:15:59.661835
207	122	45	2014-08-21 15:43:17.667531	2014-08-21 15:43:17.667531
208	123	30	2014-08-22 16:26:24.884023	2014-08-22 16:26:24.884023
209	123	45	2014-08-22 16:26:24.896766	2014-08-22 16:26:24.896766
210	124	45	2014-08-22 16:38:23.042658	2014-08-22 16:38:23.042658
211	124	102	2014-08-22 16:38:23.057853	2014-08-22 16:38:23.057853
212	125	103	2014-08-22 18:06:54.601263	2014-08-22 18:06:54.601263
213	126	4	2014-08-22 23:33:50.670521	2014-08-22 23:33:50.670521
214	127	104	2014-08-23 20:09:29.284729	2014-08-23 20:09:29.284729
215	128	104	2014-08-23 20:10:23.809727	2014-08-23 20:10:23.809727
216	129	104	2014-08-23 20:13:54.027648	2014-08-23 20:13:54.027648
217	130	105	2014-08-23 23:45:44.289263	2014-08-23 23:45:44.289263
218	131	16	2014-08-24 23:18:43.090415	2014-08-24 23:18:43.090415
219	131	39	2014-08-24 23:18:43.115202	2014-08-24 23:18:43.115202
220	132	45	2014-08-28 00:40:08.797141	2014-08-28 00:40:08.797141
221	132	46	2014-08-28 00:40:08.858267	2014-08-28 00:40:08.858267
222	133	105	2014-08-28 22:01:03.13185	2014-08-28 22:01:03.13185
223	133	104	2014-08-28 22:01:03.14668	2014-08-28 22:01:03.14668
224	130	104	2014-08-28 22:01:07.689269	2014-08-28 22:01:07.689269
225	134	105	2014-08-28 22:01:21.322136	2014-08-28 22:01:21.322136
226	134	104	2014-08-28 22:01:21.334941	2014-08-28 22:01:21.334941
228	135	106	2014-08-29 21:40:15.289075	2014-08-29 21:40:15.289075
230	136	107	2014-08-29 21:40:54.859388	2014-08-29 21:40:54.859388
231	137	107	2014-08-29 21:41:25.2724	2014-08-29 21:41:25.2724
233	139	45	2014-08-31 05:53:44.769332	2014-08-31 05:53:44.769332
234	140	68	2014-09-01 01:03:06.300343	2014-09-01 01:03:06.300343
235	141	30	2014-09-01 16:42:21.082301	2014-09-01 16:42:21.082301
236	141	108	2014-09-01 16:42:21.098014	2014-09-01 16:42:21.098014
237	141	109	2014-09-01 16:42:21.1113	2014-09-01 16:42:21.1113
238	142	110	2014-09-02 12:46:15.365913	2014-09-02 12:46:15.365913
239	143	110	2014-09-02 12:46:25.903959	2014-09-02 12:46:25.903959
240	144	110	2014-09-02 12:46:36.805731	2014-09-02 12:46:36.805731
241	145	5	2014-09-02 13:16:25.451249	2014-09-02 13:16:25.451249
242	145	6	2014-09-02 13:16:25.46347	2014-09-02 13:16:25.46347
246	148	113	2014-09-02 21:46:18.83715	2014-09-02 21:46:18.83715
248	150	1	2014-09-02 22:03:43.836326	2014-09-02 22:03:43.836326
249	151	114	2014-09-02 22:07:13.567515	2014-09-02 22:07:13.567515
250	147	114	2014-09-02 22:07:28.069123	2014-09-02 22:07:28.069123
251	152	115	2014-09-03 04:54:20.255083	2014-09-03 04:54:20.255083
252	152	1	2014-09-03 04:54:20.261124	2014-09-03 04:54:20.261124
253	153	116	2014-09-03 05:08:22.953409	2014-09-03 05:08:22.953409
254	154	68	2014-09-03 05:24:42.742064	2014-09-03 05:24:42.742064
255	155	115	2014-09-03 05:42:55.007969	2014-09-03 05:42:55.007969
256	146	115	2014-09-03 05:43:21.893936	2014-09-03 05:43:21.893936
257	156	117	2014-09-03 14:57:30.826684	2014-09-03 14:57:30.826684
258	157	118	2014-09-03 14:57:49.565809	2014-09-03 14:57:49.565809
259	158	119	2014-09-03 15:45:54.81149	2014-09-03 15:45:54.81149
260	159	119	2014-09-03 15:49:37.384434	2014-09-03 15:49:37.384434
261	160	119	2014-09-03 15:49:50.826613	2014-09-03 15:49:50.826613
264	162	120	2014-09-03 15:55:39.079307	2014-09-03 15:55:39.079307
266	164	122	2014-09-03 15:56:52.142573	2014-09-03 15:56:52.142573
267	165	123	2014-09-03 15:57:58.110712	2014-09-03 15:57:58.110712
268	166	124	2014-09-03 17:45:07.812179	2014-09-03 17:45:07.812179
269	167	125	2014-09-03 23:17:04.110721	2014-09-03 23:17:04.110721
270	168	126	2014-09-04 01:16:07.956917	2014-09-04 01:16:07.956917
271	168	16	2014-09-04 01:16:07.974799	2014-09-04 01:16:07.974799
272	169	1	2014-09-04 04:02:56.449327	2014-09-04 04:02:56.449327
273	169	127	2014-09-04 04:02:56.468022	2014-09-04 04:02:56.468022
274	170	127	2014-09-04 04:12:14.550306	2014-09-04 04:12:14.550306
275	171	127	2014-09-04 15:40:52.770074	2014-09-04 15:40:52.770074
276	172	128	2014-09-04 15:41:48.987261	2014-09-04 15:41:48.987261
277	173	128	2014-09-04 15:42:03.808178	2014-09-04 15:42:03.808178
278	174	1	2014-09-04 15:45:12.332945	2014-09-04 15:45:12.332945
279	174	129	2014-09-04 15:45:12.352354	2014-09-04 15:45:12.352354
280	175	129	2014-09-04 15:45:25.368554	2014-09-04 15:45:25.368554
281	176	129	2014-09-04 15:45:38.544221	2014-09-04 15:45:38.544221
282	177	130	2014-09-04 15:46:48.952941	2014-09-04 15:46:48.952941
283	178	130	2014-09-04 15:47:01.305534	2014-09-04 15:47:01.305534
284	179	127	2014-09-04 15:49:14.688285	2014-09-04 15:49:14.688285
285	180	130	2014-09-04 15:49:31.454468	2014-09-04 15:49:31.454468
286	181	130	2014-09-04 15:50:05.985112	2014-09-04 15:50:05.985112
287	182	130	2014-09-04 15:50:26.012486	2014-09-04 15:50:26.012486
288	183	130	2014-09-04 15:50:39.086619	2014-09-04 15:50:39.086619
289	184	127	2014-09-04 15:50:55.66273	2014-09-04 15:50:55.66273
290	185	12	2014-09-04 22:32:08.914615	2014-09-04 22:32:08.914615
291	186	12	2014-09-04 22:44:16.042627	2014-09-04 22:44:16.042627
292	187	127	2014-09-04 23:16:35.234071	2014-09-04 23:16:35.234071
293	188	131	2014-09-04 23:17:06.105784	2014-09-04 23:17:06.105784
294	189	131	2014-09-04 23:37:19.175921	2014-09-04 23:37:19.175921
295	190	12	2014-09-05 00:22:15.342218	2014-09-05 00:22:15.342218
296	191	92	2014-09-05 03:01:03.77097	2014-09-05 03:01:03.77097
297	191	16	2014-09-05 03:01:03.785188	2014-09-05 03:01:03.785188
298	191	68	2014-09-05 03:01:03.831139	2014-09-05 03:01:03.831139
299	192	127	2014-09-05 03:18:24.790096	2014-09-05 03:18:24.790096
300	193	127	2014-09-05 03:36:58.28354	2014-09-05 03:36:58.28354
301	194	127	2014-09-05 03:37:15.595917	2014-09-05 03:37:15.595917
302	195	127	2014-09-05 03:37:45.40306	2014-09-05 03:37:45.40306
303	196	12	2014-09-05 19:34:08.68678	2014-09-05 19:34:08.68678
304	197	127	2014-09-06 18:36:26.731517	2014-09-06 18:36:26.731517
305	198	127	2014-09-06 18:37:23.57163	2014-09-06 18:37:23.57163
306	199	12	2014-09-06 18:47:15.470022	2014-09-06 18:47:15.470022
307	200	119	2014-09-06 20:02:40.706665	2014-09-06 20:02:40.706665
308	201	12	2014-09-06 20:40:59.567495	2014-09-06 20:40:59.567495
309	202	132	2014-09-07 18:20:44.425037	2014-09-07 18:20:44.425037
310	203	119	2014-09-07 18:21:07.949717	2014-09-07 18:21:07.949717
311	204	1	2014-09-07 21:12:35.605114	2014-09-07 21:12:35.605114
312	205	133	2014-09-08 05:17:31.563545	2014-09-08 05:17:31.563545
313	206	12	2014-09-08 17:35:45.145191	2014-09-08 17:35:45.145191
314	207	134	2014-09-09 17:39:43.968382	2014-09-09 17:39:43.968382
315	208	1	2014-09-09 19:30:25.128397	2014-09-09 19:30:25.128397
316	209	135	2014-09-09 20:37:36.612741	2014-09-09 20:37:36.612741
317	210	136	2014-09-09 20:38:19.478759	2014-09-09 20:38:19.478759
318	211	137	2014-09-09 20:38:58.534786	2014-09-09 20:38:58.534786
319	212	57	2014-09-10 19:07:10.349183	2014-09-10 19:07:10.349183
320	212	138	2014-09-10 19:07:10.367077	2014-09-10 19:07:10.367077
321	212	139	2014-09-10 19:07:10.413158	2014-09-10 19:07:10.413158
322	212	44	2014-09-10 19:07:10.425786	2014-09-10 19:07:10.425786
323	213	138	2014-09-10 19:07:32.037417	2014-09-10 19:07:32.037417
324	213	57	2014-09-10 19:07:46.130974	2014-09-10 19:07:46.130974
325	213	139	2014-09-10 19:07:55.775319	2014-09-10 19:07:55.775319
326	213	44	2014-09-10 19:08:01.905958	2014-09-10 19:08:01.905958
329	215	142	2014-09-10 21:08:16.25173	2014-09-10 21:08:16.25173
330	215	143	2014-09-10 21:08:16.267344	2014-09-10 21:08:16.267344
331	216	72	2014-09-11 04:31:25.987401	2014-09-11 04:31:25.987401
332	217	12	2014-09-11 22:10:30.163083	2014-09-11 22:10:30.163083
333	218	1	2014-09-12 18:39:28.416868	2014-09-12 18:39:28.416868
334	219	44	2014-09-13 22:04:21.212405	2014-09-13 22:04:21.212405
335	219	138	2014-09-13 22:04:30.994252	2014-09-13 22:04:30.994252
336	220	44	2014-09-13 22:04:58.795239	2014-09-13 22:04:58.795239
337	220	138	2014-09-13 22:05:10.589585	2014-09-13 22:05:10.589585
338	219	144	2014-09-13 22:05:18.98552	2014-09-13 22:05:18.98552
339	220	144	2014-09-13 22:05:29.010052	2014-09-13 22:05:29.010052
340	221	44	2014-09-13 22:06:06.218122	2014-09-13 22:06:06.218122
341	221	138	2014-09-13 22:06:06.232431	2014-09-13 22:06:06.232431
342	221	95	2014-09-13 22:06:06.244099	2014-09-13 22:06:06.244099
343	222	44	2014-09-13 22:07:13.342932	2014-09-13 22:07:13.342932
344	222	138	2014-09-13 22:07:13.360287	2014-09-13 22:07:13.360287
345	222	95	2014-09-13 22:07:13.376024	2014-09-13 22:07:13.376024
346	222	145	2014-09-13 22:07:13.395362	2014-09-13 22:07:13.395362
347	223	146	2014-09-13 22:07:53.354285	2014-09-13 22:07:53.354285
348	223	45	2014-09-13 22:07:53.366982	2014-09-13 22:07:53.366982
349	224	51	2014-09-14 06:55:04.274574	2014-09-14 06:55:04.274574
350	224	147	2014-09-14 06:55:04.298136	2014-09-14 06:55:04.298136
351	225	148	2014-09-15 16:50:32.30596	2014-09-15 16:50:32.30596
352	226	148	2014-09-15 19:14:26.126563	2014-09-15 19:14:26.126563
353	227	148	2014-09-15 21:14:02.421019	2014-09-15 21:14:02.421019
354	228	148	2014-09-15 21:14:35.545785	2014-09-15 21:14:35.545785
355	229	148	2014-09-15 23:04:06.641359	2014-09-15 23:04:06.641359
356	230	148	2014-09-15 23:07:17.410789	2014-09-15 23:07:17.410789
357	231	149	2014-09-16 03:23:53.07217	2014-09-16 03:23:53.07217
358	232	150	2014-09-16 12:03:27.325551	2014-09-16 12:03:27.325551
359	233	150	2014-09-16 12:03:42.88066	2014-09-16 12:03:42.88066
360	234	151	2014-09-16 12:03:56.226657	2014-09-16 12:03:56.226657
361	234	12	2014-09-16 12:03:56.239788	2014-09-16 12:03:56.239788
362	235	152	2014-09-16 15:16:47.1967	2014-09-16 15:16:47.1967
363	236	152	2014-09-16 15:28:39.540204	2014-09-16 15:28:39.540204
364	237	153	2014-09-29 18:13:04.677975	2014-09-29 18:13:04.677975
365	238	154	2014-09-30 01:03:32.756745	2014-09-30 01:03:32.756745
366	239	155	2014-09-30 01:10:41.426609	2014-09-30 01:10:41.426609
367	240	156	2014-09-30 01:11:14.316538	2014-09-30 01:11:14.316538
368	241	1	2014-09-30 02:27:22.064023	2014-09-30 02:27:22.064023
370	243	122	2014-09-30 04:29:56.666067	2014-09-30 04:29:56.666067
372	245	158	2014-09-30 05:00:58.892833	2014-09-30 05:00:58.892833
373	246	79	2014-10-01 16:13:25.984597	2014-10-01 16:13:25.984597
374	246	159	2014-10-01 16:13:26.000876	2014-10-01 16:13:26.000876
375	246	153	2014-10-01 16:13:34.309609	2014-10-01 16:13:34.309609
376	247	51	2014-10-02 15:08:35.445966	2014-10-02 15:08:35.445966
377	248	160	2014-10-03 16:51:43.39886	2014-10-03 16:51:43.39886
378	249	161	2014-10-04 23:33:30.672264	2014-10-04 23:33:30.672264
379	249	79	2014-10-04 23:33:30.686794	2014-10-04 23:33:30.686794
380	250	1	2014-10-06 20:44:46.420943	2014-10-06 20:44:46.420943
381	251	128	2014-10-06 20:45:24.943531	2014-10-06 20:45:24.943531
382	252	79	2014-10-06 21:22:32.220863	2014-10-06 21:22:32.220863
383	252	102	2014-10-06 21:22:32.235335	2014-10-06 21:22:32.235335
384	253	162	2014-10-06 21:23:01.094429	2014-10-06 21:23:01.094429
385	253	23	2014-10-06 21:23:13.373975	2014-10-06 21:23:13.373975
386	254	68	2014-10-07 17:21:12.876887	2014-10-07 17:21:12.876887
387	254	102	2014-10-07 17:21:12.894405	2014-10-07 17:21:12.894405
388	254	5	2014-10-07 17:21:26.356349	2014-10-07 17:21:26.356349
389	255	1	2014-10-08 03:54:15.007456	2014-10-08 03:54:15.007456
392	257	163	2014-10-09 00:02:02.54702	2014-10-09 00:02:02.54702
393	257	164	2014-10-09 00:02:07.591535	2014-10-09 00:02:07.591535
394	258	165	2014-10-09 17:31:02.444968	2014-10-09 17:31:02.444968
395	259	161	2014-10-10 16:08:18.488892	2014-10-10 16:08:18.488892
396	259	68	2014-10-10 16:08:18.588129	2014-10-10 16:08:18.588129
397	260	79	2014-10-10 16:08:45.571996	2014-10-10 16:08:45.571996
398	260	5	2014-10-10 16:08:45.602165	2014-10-10 16:08:45.602165
399	261	51	2014-10-10 20:19:32.958446	2014-10-10 20:19:32.958446
400	261	166	2014-10-10 20:19:33.088144	2014-10-10 20:19:33.088144
401	262	161	2014-10-11 16:00:09.622789	2014-10-11 16:00:09.622789
402	262	167	2014-10-11 16:00:15.333451	2014-10-11 16:00:15.333451
403	263	168	2014-10-11 16:47:47.361243	2014-10-11 16:47:47.361243
404	264	169	2014-10-14 17:08:00.954748	2014-10-14 17:08:00.954748
405	263	170	2014-10-14 17:09:01.389291	2014-10-14 17:09:01.389291
406	265	171	2014-10-14 18:13:35.217209	2014-10-14 18:13:35.217209
407	265	138	2014-10-14 18:13:35.23037	2014-10-14 18:13:35.23037
408	266	172	2014-10-14 18:13:35.82706	2014-10-14 18:13:35.82706
409	266	138	2014-10-14 18:13:35.862888	2014-10-14 18:13:35.862888
410	267	173	2014-10-14 20:11:57.436056	2014-10-14 20:11:57.436056
411	268	79	2014-10-14 21:19:07.630804	2014-10-14 21:19:07.630804
412	268	159	2014-10-14 21:19:07.650658	2014-10-14 21:19:07.650658
413	269	174	2014-10-14 22:56:58.943299	2014-10-14 22:56:58.943299
414	269	68	2014-10-14 22:56:58.955456	2014-10-14 22:56:58.955456
415	270	5	2014-10-15 14:45:24.837875	2014-10-15 14:45:24.837875
416	271	175	2014-10-15 21:56:34.512754	2014-10-15 21:56:34.512754
417	272	153	2014-10-16 18:12:26.020398	2014-10-16 18:12:26.020398
418	272	176	2014-10-16 18:12:26.038151	2014-10-16 18:12:26.038151
419	272	177	2014-10-16 18:12:26.054969	2014-10-16 18:12:26.054969
420	273	153	2014-10-16 18:20:14.843359	2014-10-16 18:20:14.843359
421	273	177	2014-10-16 18:20:14.856286	2014-10-16 18:20:14.856286
422	273	176	2014-10-16 18:20:14.8687	2014-10-16 18:20:14.8687
423	274	153	2014-10-16 18:22:30.212033	2014-10-16 18:22:30.212033
424	274	176	2014-10-16 18:22:30.244678	2014-10-16 18:22:30.244678
425	274	177	2014-10-16 18:22:30.301743	2014-10-16 18:22:30.301743
426	275	176	2014-10-16 18:24:45.841532	2014-10-16 18:24:45.841532
427	276	176	2014-10-16 18:31:06.616593	2014-10-16 18:31:06.616593
428	277	176	2014-10-16 18:31:51.853349	2014-10-16 18:31:51.853349
429	277	51	2014-10-16 18:31:51.869284	2014-10-16 18:31:51.869284
430	277	178	2014-10-16 18:31:57.315589	2014-10-16 18:31:57.315589
431	278	176	2014-10-16 20:47:30.517878	2014-10-16 20:47:30.517878
432	279	179	2014-10-16 23:42:24.241141	2014-10-16 23:42:24.241141
433	279	180	2014-10-16 23:42:24.545978	2014-10-16 23:42:24.545978
434	280	181	2014-10-17 00:33:48.096819	2014-10-17 00:33:48.096819
435	281	182	2014-10-18 00:38:48.260302	2014-10-18 00:38:48.260302
436	281	1	2014-10-18 00:38:48.272056	2014-10-18 00:38:48.272056
437	282	183	2014-10-18 00:39:19.830302	2014-10-18 00:39:19.830302
438	283	1	2014-10-18 00:39:42.829672	2014-10-18 00:39:42.829672
439	284	1	2014-10-18 00:40:10.755342	2014-10-18 00:40:10.755342
440	285	1	2014-10-18 00:40:43.939219	2014-10-18 00:40:43.939219
441	286	176	2014-10-18 04:27:59.746031	2014-10-18 04:27:59.746031
442	287	184	2014-10-19 23:35:08.216842	2014-10-19 23:35:08.216842
443	288	16	2014-10-20 15:50:05.44955	2014-10-20 15:50:05.44955
444	289	1	2014-10-20 23:07:57.426854	2014-10-20 23:07:57.426854
445	290	68	2014-10-21 16:26:35.011334	2014-10-21 16:26:35.011334
446	290	185	2014-10-21 16:26:35.029034	2014-10-21 16:26:35.029034
447	290	186	2014-10-21 16:26:39.784848	2014-10-21 16:26:39.784848
448	290	153	2014-10-21 16:26:46.249898	2014-10-21 16:26:46.249898
449	291	187	2014-10-21 16:33:23.727382	2014-10-21 16:33:23.727382
450	292	4	2014-10-21 20:34:20.041502	2014-10-21 20:34:20.041502
451	293	176	2014-10-22 19:28:21.181497	2014-10-22 19:28:21.181497
452	293	79	2014-10-22 19:28:21.261593	2014-10-22 19:28:21.261593
453	294	176	2014-10-22 20:44:42.862623	2014-10-22 20:44:42.862623
454	295	176	2014-10-22 20:45:18.929635	2014-10-22 20:45:18.929635
455	296	176	2014-10-22 23:23:06.733605	2014-10-22 23:23:06.733605
456	296	188	2014-10-22 23:23:06.755866	2014-10-22 23:23:06.755866
457	297	79	2014-10-23 18:47:37.562875	2014-10-23 18:47:37.562875
458	297	189	2014-10-23 18:47:37.695754	2014-10-23 18:47:37.695754
459	297	187	2014-10-23 18:47:37.725084	2014-10-23 18:47:37.725084
460	298	79	2014-10-23 18:48:01.112015	2014-10-23 18:48:01.112015
461	298	187	2014-10-23 18:48:01.125019	2014-10-23 18:48:01.125019
462	298	189	2014-10-23 18:48:01.138556	2014-10-23 18:48:01.138556
470	306	92	2014-10-28 18:56:07.183078	2014-10-28 18:56:07.183078
471	306	194	2014-10-28 18:56:07.19974	2014-10-28 18:56:07.19974
482	316	178	2014-10-30 16:33:11.452526	2014-10-30 16:33:11.452526
483	316	198	2014-10-30 16:33:11.470274	2014-10-30 16:33:11.470274
489	321	79	2014-10-31 19:07:38.573259	2014-10-31 19:07:38.573259
490	321	200	2014-10-31 19:07:38.841923	2014-10-31 19:07:38.841923
496	327	45	2014-11-02 18:42:29.559668	2014-11-02 18:42:29.559668
497	327	71	2014-11-02 18:42:29.57534	2014-11-02 18:42:29.57534
518	344	210	2014-11-05 16:56:19.700363	2014-11-05 16:56:19.700363
521	347	213	2014-11-06 20:16:30.284295	2014-11-06 20:16:30.284295
523	349	181	2014-11-07 16:22:01.355144	2014-11-07 16:22:01.355144
524	350	181	2014-11-07 16:22:31.914945	2014-11-07 16:22:31.914945
463	299	190	2014-10-23 23:51:21.1567	2014-10-23 23:51:21.1567
469	305	8	2014-10-27 21:33:33.142183	2014-10-27 21:33:33.142183
484	317	198	2014-10-30 16:33:25.444098	2014-10-30 16:33:25.444098
492	323	201	2014-10-31 23:57:54.236664	2014-10-31 23:57:54.236664
494	325	203	2014-10-31 23:58:39.399852	2014-10-31 23:58:39.399852
499	271	12	2014-11-02 18:42:56.219563	2014-11-02 18:42:56.219563
500	271	9	2014-11-02 18:43:04.088263	2014-11-02 18:43:04.088263
508	334	205	2014-11-04 01:15:50.364916	2014-11-04 01:15:50.364916
509	335	206	2014-11-04 20:04:22.650463	2014-11-04 20:04:22.650463
512	338	209	2014-11-05 00:36:01.154503	2014-11-05 00:36:01.154503
514	340	127	2014-11-05 00:41:44.458811	2014-11-05 00:41:44.458811
464	300	191	2014-10-26 01:33:41.052533	2014-10-26 01:33:41.052533
468	304	193	2014-10-27 20:09:46.08718	2014-10-27 20:09:46.08718
493	324	202	2014-10-31 23:58:18.402268	2014-10-31 23:58:18.402268
501	328	71	2014-11-03 00:49:24.70572	2014-11-03 00:49:24.70572
502	328	6	2014-11-03 00:49:24.72176	2014-11-03 00:49:24.72176
504	330	79	2014-11-03 21:13:20.167266	2014-11-03 21:13:20.167266
511	337	208	2014-11-04 20:23:47.863053	2014-11-04 20:23:47.863053
515	341	127	2014-11-05 00:42:53.833053	2014-11-05 00:42:53.833053
516	342	187	2014-11-05 00:53:02.760602	2014-11-05 00:53:02.760602
517	343	127	2014-11-05 01:32:36.893264	2014-11-05 01:32:36.893264
519	345	211	2014-11-05 18:58:12.993378	2014-11-05 18:58:12.993378
525	351	51	2014-11-09 20:22:45.920698	2014-11-09 20:22:45.920698
526	351	71	2014-11-09 20:22:46.021708	2014-11-09 20:22:46.021708
465	301	191	2014-10-26 01:33:50.236138	2014-10-26 01:33:50.236138
466	302	191	2014-10-26 01:34:01.020902	2014-10-26 01:34:01.020902
467	303	192	2014-10-27 05:15:39.324684	2014-10-27 05:15:39.324684
487	319	199	2014-10-31 16:28:48.506807	2014-10-31 16:28:48.506807
488	320	187	2014-10-31 18:59:08.644642	2014-10-31 18:59:08.644642
498	238	71	2014-11-02 18:42:46.145333	2014-11-02 18:42:46.145333
510	336	207	2014-11-04 20:09:53.169965	2014-11-04 20:09:53.169965
513	339	127	2014-11-05 00:41:22.086265	2014-11-05 00:41:22.086265
520	346	212	2014-11-06 01:15:24.685648	2014-11-06 01:15:24.685648
529	354	216	2014-11-10 17:20:55.048758	2014-11-10 17:20:55.048758
531	356	218	2014-11-11 02:04:31.920305	2014-11-11 02:04:31.920305
532	357	51	2014-11-11 21:24:16.743416	2014-11-11 21:24:16.743416
533	358	219	2014-11-12 00:46:13.960804	2014-11-12 00:46:13.960804
534	358	51	2014-11-12 00:46:13.973726	2014-11-12 00:46:13.973726
535	358	71	2014-11-12 00:46:13.992932	2014-11-12 00:46:13.992932
536	359	220	2014-11-12 03:45:40.258258	2014-11-12 03:45:40.258258
537	360	221	2014-11-13 01:23:57.614132	2014-11-13 01:23:57.614132
538	360	138	2014-11-13 01:23:57.630576	2014-11-13 01:23:57.630576
539	361	153	2014-11-13 02:14:17.317435	2014-11-13 02:14:17.317435
543	364	12	2014-11-13 19:48:44.505071	2014-11-13 19:48:44.505071
544	363	12	2014-11-13 19:48:56.812342	2014-11-13 19:48:56.812342
545	365	223	2014-11-13 19:49:16.303048	2014-11-13 19:49:16.303048
546	366	12	2014-11-13 19:49:30.273694	2014-11-13 19:49:30.273694
547	367	12	2014-11-13 19:49:50.198964	2014-11-13 19:49:50.198964
548	368	12	2014-11-13 19:50:09.28011	2014-11-13 19:50:09.28011
549	369	224	2014-11-13 19:50:27.594114	2014-11-13 19:50:27.594114
550	362	224	2014-11-13 19:50:32.699348	2014-11-13 19:50:32.699348
551	363	224	2014-11-13 19:50:44.678973	2014-11-13 19:50:44.678973
552	370	195	2014-11-13 19:51:02.807342	2014-11-13 19:51:02.807342
553	371	9	2014-11-13 19:51:20.008315	2014-11-13 19:51:20.008315
554	372	225	2014-11-13 22:39:51.257936	2014-11-13 22:39:51.257936
555	373	45	2014-11-13 23:42:34.574482	2014-11-13 23:42:34.574482
556	373	83	2014-11-13 23:42:34.617781	2014-11-13 23:42:34.617781
557	373	226	2014-11-13 23:42:34.73935	2014-11-13 23:42:34.73935
558	374	227	2014-11-14 00:10:15.565408	2014-11-14 00:10:15.565408
559	375	227	2014-11-14 00:10:22.958019	2014-11-14 00:10:22.958019
560	376	227	2014-11-14 00:10:42.437033	2014-11-14 00:10:42.437033
561	376	228	2014-11-14 00:10:42.46641	2014-11-14 00:10:42.46641
562	377	221	2014-11-14 01:43:42.985866	2014-11-14 01:43:42.985866
563	377	229	2014-11-14 01:43:43.105281	2014-11-14 01:43:43.105281
564	378	225	2014-11-14 21:38:16.171197	2014-11-14 21:38:16.171197
565	379	1	2014-11-15 17:52:46.989313	2014-11-15 17:52:46.989313
566	379	230	2014-11-15 17:53:14.227935	2014-11-15 17:53:14.227935
567	218	178	2014-11-15 17:53:24.360008	2014-11-15 17:53:24.360008
568	380	231	2014-11-15 23:56:54.472761	2014-11-15 23:56:54.472761
570	381	233	2014-11-17 03:47:20.059951	2014-11-17 03:47:20.059951
571	382	234	2014-11-17 17:42:50.585278	2014-11-17 17:42:50.585278
572	383	1	2014-11-18 18:40:42.286824	2014-11-18 18:40:42.286824
573	383	79	2014-11-18 18:40:53.227668	2014-11-18 18:40:53.227668
574	384	79	2014-11-18 18:41:10.757711	2014-11-18 18:41:10.757711
575	385	79	2014-11-19 00:26:09.045685	2014-11-19 00:26:09.045685
576	385	1	2014-11-19 00:26:09.051921	2014-11-19 00:26:09.051921
577	385	235	2014-11-19 00:26:09.068622	2014-11-19 00:26:09.068622
578	385	228	2014-11-19 00:26:09.083268	2014-11-19 00:26:09.083268
579	386	161	2014-11-21 07:42:11.177008	2014-11-21 07:42:11.177008
580	387	60	2014-11-25 16:40:38.184829	2014-11-25 16:40:38.184829
581	388	60	2014-11-25 16:40:56.913835	2014-11-25 16:40:56.913835
582	389	236	2014-11-25 19:12:27.206486	2014-11-25 19:12:27.206486
583	390	237	2014-11-26 23:32:14.217079	2014-11-26 23:32:14.217079
584	391	238	2014-11-27 00:33:55.496551	2014-11-27 00:33:55.496551
585	392	43	2014-11-27 04:35:23.271157	2014-11-27 04:35:23.271157
586	393	43	2014-11-27 16:48:06.320235	2014-11-27 16:48:06.320235
587	394	88	2014-11-28 19:53:49.042462	2014-11-28 19:53:49.042462
588	395	45	2014-11-28 22:06:32.374539	2014-11-28 22:06:32.374539
589	396	51	2014-11-28 22:51:43.199471	2014-11-28 22:51:43.199471
590	396	222	2014-11-28 22:51:43.228954	2014-11-28 22:51:43.228954
591	397	88	2014-11-30 00:38:21.111362	2014-11-30 00:38:21.111362
592	398	4	2014-11-30 03:53:48.040093	2014-11-30 03:53:48.040093
593	398	239	2014-11-30 03:53:48.059647	2014-11-30 03:53:48.059647
594	399	240	2014-11-30 09:21:03.843498	2014-11-30 09:21:03.843498
596	400	241	2014-11-30 23:08:18.602906	2014-11-30 23:08:18.602906
597	401	43	2014-12-03 18:29:21.681358	2014-12-03 18:29:21.681358
598	402	242	2014-12-03 20:52:28.786743	2014-12-03 20:52:28.786743
599	403	243	2014-12-03 20:52:44.773303	2014-12-03 20:52:44.773303
600	404	79	2014-12-03 21:57:20.863843	2014-12-03 21:57:20.863843
601	404	5	2014-12-03 21:57:20.901075	2014-12-03 21:57:20.901075
602	404	244	2014-12-03 21:57:20.930969	2014-12-03 21:57:20.930969
603	405	191	2014-12-03 22:27:27.681298	2014-12-03 22:27:27.681298
605	406	245	2014-12-04 20:02:23.226875	2014-12-04 20:02:23.226875
606	407	79	2014-12-04 22:43:09.334614	2014-12-04 22:43:09.334614
607	407	245	2014-12-04 22:43:09.421199	2014-12-04 22:43:09.421199
608	408	192	2014-12-08 17:24:37.80987	2014-12-08 17:24:37.80987
609	409	246	2014-12-09 05:18:20.951471	2014-12-09 05:18:20.951471
610	410	247	2014-12-09 22:20:05.040385	2014-12-09 22:20:05.040385
611	410	78	2014-12-09 22:20:05.061846	2014-12-09 22:20:05.061846
612	410	27	2014-12-09 22:20:19.812936	2014-12-09 22:20:19.812936
613	411	248	2014-12-10 04:16:18.068774	2014-12-10 04:16:18.068774
614	411	27	2014-12-10 04:16:18.121178	2014-12-10 04:16:18.121178
615	411	249	2014-12-10 04:16:18.179842	2014-12-10 04:16:18.179842
616	411	250	2014-12-10 04:16:18.206572	2014-12-10 04:16:18.206572
617	412	79	2014-12-10 16:57:16.518466	2014-12-10 16:57:16.518466
618	413	79	2014-12-10 18:24:59.777061	2014-12-10 18:24:59.777061
619	413	185	2014-12-10 18:24:59.830956	2014-12-10 18:24:59.830956
620	414	79	2014-12-10 18:25:37.032209	2014-12-10 18:25:37.032209
621	414	251	2014-12-10 18:25:37.10039	2014-12-10 18:25:37.10039
622	414	185	2014-12-10 18:25:37.128581	2014-12-10 18:25:37.128581
623	415	252	2014-12-11 00:52:06.856773	2014-12-11 00:52:06.856773
624	415	178	2014-12-11 00:52:06.873723	2014-12-11 00:52:06.873723
625	416	253	2014-12-11 01:42:29.67536	2014-12-11 01:42:29.67536
626	417	254	2014-12-12 16:30:36.066007	2014-12-12 16:30:36.066007
627	418	1	2014-12-12 19:26:21.390546	2014-12-12 19:26:21.390546
628	419	153	2014-12-12 20:51:37.080076	2014-12-12 20:51:37.080076
629	419	255	2014-12-12 20:51:37.119303	2014-12-12 20:51:37.119303
630	420	234	2014-12-12 22:09:51.066815	2014-12-12 22:09:51.066815
631	421	234	2014-12-12 22:09:51.680025	2014-12-12 22:09:51.680025
632	422	256	2014-12-15 22:17:35.031585	2014-12-15 22:17:35.031585
633	423	16	2014-12-17 22:03:18.009948	2014-12-17 22:03:18.009948
634	423	1	2014-12-17 22:03:18.015884	2014-12-17 22:03:18.015884
635	423	27	2014-12-17 22:03:18.031061	2014-12-17 22:03:18.031061
636	423	257	2014-12-17 22:03:18.055834	2014-12-17 22:03:18.055834
637	424	45	2014-12-17 22:13:02.552568	2014-12-17 22:13:02.552568
638	424	60	2014-12-17 22:13:02.577152	2014-12-17 22:13:02.577152
639	424	258	2014-12-17 22:13:02.618738	2014-12-17 22:13:02.618738
640	424	259	2014-12-17 22:13:02.663659	2014-12-17 22:13:02.663659
641	425	260	2014-12-19 17:14:47.798906	2014-12-19 17:14:47.798906
643	426	261	2014-12-19 17:24:12.291281	2014-12-19 17:24:12.291281
644	426	74	2014-12-19 17:24:12.307769	2014-12-19 17:24:12.307769
645	427	4	2014-12-24 04:41:08.815495	2014-12-24 04:41:08.815495
646	428	12	2014-12-24 05:48:51.298065	2014-12-24 05:48:51.298065
647	429	262	2015-01-05 07:01:25.03036	2015-01-05 07:01:25.03036
648	430	263	2015-01-05 16:26:49.212005	2015-01-05 16:26:49.212005
649	430	264	2015-01-05 16:26:57.124861	2015-01-05 16:26:57.124861
650	431	79	2015-01-09 01:01:42.515767	2015-01-09 01:01:42.515767
651	432	9	2015-01-09 19:20:14.801673	2015-01-09 19:20:14.801673
652	432	44	2015-01-09 19:20:14.825867	2015-01-09 19:20:14.825867
653	433	265	2015-01-09 19:20:29.276647	2015-01-09 19:20:29.276647
654	432	265	2015-01-09 19:20:40.617645	2015-01-09 19:20:40.617645
655	434	265	2015-01-09 19:20:55.295088	2015-01-09 19:20:55.295088
657	435	265	2015-01-09 19:21:04.869865	2015-01-09 19:21:04.869865
658	436	81	2015-01-09 23:40:13.760754	2015-01-09 23:40:13.760754
659	437	170	2015-01-10 00:39:36.207126	2015-01-10 00:39:36.207126
660	437	34	2015-01-10 00:39:36.223912	2015-01-10 00:39:36.223912
661	437	263	2015-01-10 00:39:36.240297	2015-01-10 00:39:36.240297
662	437	266	2015-01-10 00:39:36.260369	2015-01-10 00:39:36.260369
671	442	263	2015-01-14 21:24:20.011306	2015-01-14 21:24:20.011306
672	442	12	2015-01-14 21:24:20.094923	2015-01-14 21:24:20.094923
674	444	271	2015-01-17 15:07:20.840518	2015-01-17 15:07:20.840518
665	438	34	2015-01-12 01:03:53.290269	2015-01-12 01:03:53.290269
676	446	51	2015-01-19 16:19:56.39549	2015-01-19 16:19:56.39549
677	446	273	2015-01-19 16:19:56.422036	2015-01-19 16:19:56.422036
684	450	68	2015-01-22 16:33:36.432036	2015-01-22 16:33:36.432036
685	450	275	2015-01-22 16:33:36.456047	2015-01-22 16:33:36.456047
666	438	16	2015-01-12 01:04:04.998577	2015-01-12 01:04:04.998577
667	439	51	2015-01-13 19:03:22.653598	2015-01-13 19:03:22.653598
668	439	268	2015-01-13 19:03:22.720125	2015-01-13 19:03:22.720125
670	441	269	2015-01-14 04:27:06.042193	2015-01-14 04:27:06.042193
673	443	270	2015-01-15 04:44:51.351589	2015-01-15 04:44:51.351589
675	445	272	2015-01-19 07:09:49.181585	2015-01-19 07:09:49.181585
669	440	269	2015-01-14 04:26:50.842389	2015-01-14 04:26:50.842389
679	447	274	2015-01-20 07:54:22.321549	2015-01-20 07:54:22.321549
683	449	12	2015-01-22 02:13:26.384675	2015-01-22 02:13:26.384675
689	452	51	2015-01-27 03:43:00.752888	2015-01-27 03:43:00.752888
690	453	94	2015-01-28 06:03:55.899581	2015-01-28 06:03:55.899581
691	453	277	2015-01-28 06:03:56.261	2015-01-28 06:03:56.261
692	454	9	2015-01-28 17:03:58.300875	2015-01-28 17:03:58.300875
693	454	278	2015-01-28 17:03:58.426437	2015-01-28 17:03:58.426437
694	454	33	2015-01-28 17:03:58.441326	2015-01-28 17:03:58.441326
695	455	4	2015-01-29 16:11:49.576896	2015-01-29 16:11:49.576896
696	455	279	2015-01-29 16:11:49.60112	2015-01-29 16:11:49.60112
701	458	191	2015-01-31 06:18:13.705218	2015-01-31 06:18:13.705218
702	459	9	2015-02-01 17:58:28.674396	2015-02-01 17:58:28.674396
703	459	280	2015-02-01 17:58:28.732981	2015-02-01 17:58:28.732981
704	460	9	2015-02-01 17:58:41.989793	2015-02-01 17:58:41.989793
705	460	280	2015-02-01 17:58:42.078535	2015-02-01 17:58:42.078535
706	461	231	2015-02-02 03:46:34.073465	2015-02-02 03:46:34.073465
707	462	281	2015-02-02 23:40:13.080879	2015-02-02 23:40:13.080879
708	463	281	2015-02-02 23:41:38.446834	2015-02-02 23:41:38.446834
710	465	51	2015-02-03 22:05:08.501316	2015-02-03 22:05:08.501316
711	465	282	2015-02-03 22:05:08.553796	2015-02-03 22:05:08.553796
712	466	1	2015-02-03 23:20:57.179553	2015-02-03 23:20:57.179553
713	467	178	2015-02-04 22:06:17.452748	2015-02-04 22:06:17.452748
714	468	1	2015-02-05 17:53:34.010946	2015-02-05 17:53:34.010946
715	469	68	2015-02-05 19:35:00.64396	2015-02-05 19:35:00.64396
716	469	283	2015-02-05 19:35:00.670173	2015-02-05 19:35:00.670173
719	472	79	2015-02-10 20:58:56.940211	2015-02-10 20:58:56.940211
721	472	159	2015-02-10 20:58:57.018948	2015-02-10 20:58:57.018948
722	473	5	2015-02-11 21:58:12.196595	2015-02-11 21:58:12.196595
723	473	114	2015-02-11 21:58:12.214563	2015-02-11 21:58:12.214563
724	473	68	2015-02-11 21:58:12.234898	2015-02-11 21:58:12.234898
725	474	284	2015-02-14 21:44:15.263799	2015-02-14 21:44:15.263799
726	474	285	2015-02-14 21:44:15.301887	2015-02-14 21:44:15.301887
727	475	286	2015-02-18 23:07:41.600408	2015-02-18 23:07:41.600408
728	475	287	2015-02-18 23:07:41.664589	2015-02-18 23:07:41.664589
729	476	288	2015-02-19 20:33:11.995013	2015-02-19 20:33:11.995013
730	477	288	2015-02-19 20:34:46.973156	2015-02-19 20:34:46.973156
731	478	178	2015-02-19 20:45:27.069023	2015-02-19 20:45:27.069023
735	482	1	2015-02-27 21:08:36.255351	2015-02-27 21:08:36.255351
736	483	289	2015-03-02 21:01:55.256631	2015-03-02 21:01:55.256631
737	483	290	2015-03-02 21:01:55.279752	2015-03-02 21:01:55.279752
738	484	174	2015-03-02 23:50:26.034988	2015-03-02 23:50:26.034988
739	485	245	2015-03-03 19:20:30.577223	2015-03-03 19:20:30.577223
740	486	245	2015-03-03 21:37:54.314463	2015-03-03 21:37:54.314463
742	488	1	2015-03-04 17:35:59.901132	2015-03-04 17:35:59.901132
743	489	291	2015-03-04 19:53:50.110612	2015-03-04 19:53:50.110612
744	489	292	2015-03-04 19:53:50.13502	2015-03-04 19:53:50.13502
745	490	1	2015-03-05 16:49:13.004218	2015-03-05 16:49:13.004218
746	491	293	2015-03-05 18:00:39.078313	2015-03-05 18:00:39.078313
747	492	291	2015-03-06 02:59:38.947222	2015-03-06 02:59:38.947222
748	492	294	2015-03-06 02:59:38.96963	2015-03-06 02:59:38.96963
749	493	292	2015-03-06 19:17:32.965826	2015-03-06 19:17:32.965826
750	493	79	2015-03-06 19:17:32.985321	2015-03-06 19:17:32.985321
751	493	291	2015-03-06 19:17:33.005385	2015-03-06 19:17:33.005385
753	495	16	2015-03-09 21:06:04.953211	2015-03-09 21:06:04.953211
754	496	291	2015-03-10 01:29:11.642345	2015-03-10 01:29:11.642345
755	496	295	2015-03-10 01:29:11.692257	2015-03-10 01:29:11.692257
756	497	1	2015-03-12 06:25:33.324332	2015-03-12 06:25:33.324332
757	498	1	2015-03-12 06:25:47.324807	2015-03-12 06:25:47.324807
758	499	1	2015-03-12 06:26:04.664434	2015-03-12 06:26:04.664434
759	500	161	2015-03-12 23:57:12.133517	2015-03-12 23:57:12.133517
760	500	296	2015-03-12 23:57:12.160534	2015-03-12 23:57:12.160534
761	501	79	2015-03-13 18:43:04.343421	2015-03-13 18:43:04.343421
762	501	296	2015-03-13 18:43:04.55852	2015-03-13 18:43:04.55852
763	502	291	2015-03-19 17:14:56.316741	2015-03-19 17:14:56.316741
764	502	79	2015-03-19 17:14:56.368816	2015-03-19 17:14:56.368816
765	503	297	2015-03-24 22:55:26.161534	2015-03-24 22:55:26.161534
766	504	51	2015-03-26 19:38:51.985201	2015-03-26 19:38:51.985201
767	505	79	2015-03-28 04:17:59.940091	2015-03-28 04:17:59.940091
768	505	9	2015-03-28 04:18:00.703405	2015-03-28 04:18:00.703405
769	506	271	2015-03-29 03:35:43.111111	2015-03-29 03:35:43.111111
770	507	79	2015-03-30 22:40:30.456622	2015-03-30 22:40:30.456622
771	507	298	2015-03-30 22:40:30.627511	2015-03-30 22:40:30.627511
772	508	299	2015-03-30 22:43:42.002496	2015-03-30 22:43:42.002496
775	511	1	2015-03-31 18:39:56.838607	2015-03-31 18:39:56.838607
777	513	12	2015-04-02 15:06:58.465675	2015-04-02 15:06:58.465675
778	514	12	2015-04-02 22:14:42.177432	2015-04-02 22:14:42.177432
779	515	51	2015-04-02 22:17:18.540584	2015-04-02 22:17:18.540584
780	516	45	2015-04-02 22:17:41.264951	2015-04-02 22:17:41.264951
781	517	300	2015-04-02 22:18:03.993949	2015-04-02 22:18:03.993949
782	517	45	2015-04-02 22:18:04.017109	2015-04-02 22:18:04.017109
783	518	79	2015-04-02 22:18:21.661286	2015-04-02 22:18:21.661286
784	519	79	2015-04-02 22:18:35.042317	2015-04-02 22:18:35.042317
785	520	51	2015-04-02 22:19:08.42871	2015-04-02 22:19:08.42871
786	521	16	2015-04-02 22:19:28.208622	2015-04-02 22:19:28.208622
787	522	51	2015-04-02 22:19:43.988029	2015-04-02 22:19:43.988029
788	523	300	2015-04-03 16:21:19.027487	2015-04-03 16:21:19.027487
789	523	9	2015-04-03 16:21:19.045739	2015-04-03 16:21:19.045739
790	524	300	2015-04-03 16:21:45.846942	2015-04-03 16:21:45.846942
791	524	9	2015-04-03 16:21:45.935871	2015-04-03 16:21:45.935871
792	525	301	2015-04-05 02:26:27.239293	2015-04-05 02:26:27.239293
793	526	1	2015-04-09 05:47:08.027477	2015-04-09 05:47:08.027477
794	527	302	2015-04-09 23:59:48.020792	2015-04-09 23:59:48.020792
795	528	45	2015-04-10 17:25:17.2135	2015-04-10 17:25:17.2135
796	528	303	2015-04-10 17:25:17.235022	2015-04-10 17:25:17.235022
797	529	1	2015-04-10 22:40:37.434496	2015-04-10 22:40:37.434496
798	530	79	2015-04-14 16:37:19.935401	2015-04-14 16:37:19.935401
799	530	298	2015-04-14 16:37:19.982027	2015-04-14 16:37:19.982027
802	533	1	2015-04-14 21:59:03.453005	2015-04-14 21:59:03.453005
803	534	147	2015-04-17 18:37:05.759837	2015-04-17 18:37:05.759837
807	538	1	2015-04-20 06:18:27.945018	2015-04-20 06:18:27.945018
809	540	79	2015-04-22 23:45:14.306008	2015-04-22 23:45:14.306008
810	541	1	2015-04-23 00:09:33.730955	2015-04-23 00:09:33.730955
812	543	51	2015-04-26 20:48:34.585775	2015-04-26 20:48:34.585775
813	543	304	2015-04-26 20:48:34.611318	2015-04-26 20:48:34.611318
814	544	1	2015-04-27 07:20:44.139637	2015-04-27 07:20:44.139637
815	545	1	2015-04-27 07:28:26.859838	2015-04-27 07:28:26.859838
816	546	1	2015-05-01 17:05:00.650635	2015-05-01 17:05:00.650635
817	547	1	2015-05-01 17:05:22.801326	2015-05-01 17:05:22.801326
819	549	79	2015-05-06 22:26:04.175512	2015-05-06 22:26:04.175512
820	549	305	2015-05-06 22:26:04.278227	2015-05-06 22:26:04.278227
821	550	306	2015-05-07 18:36:44.609496	2015-05-07 18:36:44.609496
822	551	1	2015-05-09 15:14:16.399658	2015-05-09 15:14:16.399658
823	552	10	2015-05-10 17:56:41.273286	2015-05-10 17:56:41.273286
824	552	307	2015-05-10 17:56:41.30325	2015-05-10 17:56:41.30325
825	553	10	2015-05-10 17:57:05.753753	2015-05-10 17:57:05.753753
826	553	307	2015-05-10 17:57:05.774473	2015-05-10 17:57:05.774473
827	554	300	2015-05-11 17:35:26.422521	2015-05-11 17:35:26.422521
828	555	1	2015-05-12 15:58:00.66263	2015-05-12 15:58:00.66263
829	556	307	2015-05-14 03:24:11.542792	2015-05-14 03:24:11.542792
830	557	307	2015-05-14 04:21:03.529243	2015-05-14 04:21:03.529243
831	558	308	2015-05-14 04:23:15.503998	2015-05-14 04:23:15.503998
832	558	307	2015-05-14 04:23:15.541463	2015-05-14 04:23:15.541463
833	559	307	2015-05-14 14:45:31.602857	2015-05-14 14:45:31.602857
834	559	309	2015-05-14 14:45:32.295779	2015-05-14 14:45:32.295779
835	560	1	2015-05-14 16:28:15.66696	2015-05-14 16:28:15.66696
836	561	1	2015-05-14 22:19:20.588504	2015-05-14 22:19:20.588504
837	562	1	2015-05-14 22:19:20.807881	2015-05-14 22:19:20.807881
838	563	1	2015-05-14 22:21:46.90438	2015-05-14 22:21:46.90438
839	564	1	2015-05-19 21:04:51.540622	2015-05-19 21:04:51.540622
840	565	265	2015-05-31 23:37:09.351324	2015-05-31 23:37:09.351324
841	566	310	2015-05-31 23:42:06.493498	2015-05-31 23:42:06.493498
842	566	1	2015-05-31 23:42:06.500388	2015-05-31 23:42:06.500388
843	567	9	2015-06-01 03:49:46.573579	2015-06-01 03:49:46.573579
844	567	311	2015-06-01 03:49:46.624002	2015-06-01 03:49:46.624002
845	567	307	2015-06-01 03:49:46.679093	2015-06-01 03:49:46.679093
846	568	312	2015-06-01 22:12:15.341269	2015-06-01 22:12:15.341269
\.


--
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: bookorb
--

COPY collections (id, name, created_at, updated_at) FROM stdin;
2	database	2014-08-05 20:37:10.279122	2014-08-05 20:37:10.279122
3	bo-server	2014-08-05 22:11:52.300369	2014-08-05 22:11:52.300369
4	git	2014-08-05 22:54:57.033041	2014-08-05 22:54:57.033041
5	cheatsheets	2014-08-05 22:55:58.835176	2014-08-05 22:55:58.835176
6	markdown	2014-08-05 22:58:17.673465	2014-08-05 22:58:17.673465
7	sql	2014-08-05 23:00:39.527923	2014-08-05 23:00:39.527923
8	books	2014-08-05 23:01:44.03155	2014-08-05 23:01:44.03155
9	rails	2014-08-05 23:01:44.075596	2014-08-05 23:01:44.075596
10	ssh	2014-08-05 23:02:50.494017	2014-08-05 23:02:50.494017
11	Brand Guidlines	2014-08-05 23:11:04.882167	2014-08-05 23:11:04.882167
12	ruby	2014-08-06 00:16:33.450245	2014-08-06 00:16:33.450245
13	book orbit	2014-08-06 00:25:32.716513	2014-08-06 00:25:32.716513
14	bo-front	2014-08-06 00:25:52.719476	2014-08-06 00:25:52.719476
15	dfgdfg	2014-08-06 00:27:50.825717	2014-08-06 00:27:50.825717
1	uncategorized	2014-08-05 20:36:55.802606	2014-08-06 00:37:41.409219
16	node	2014-08-06 00:37:58.918607	2014-08-06 00:37:58.918607
17	!@#$%	2014-08-06 00:56:22.437205	2014-08-06 00:56:22.437205
18	ex-kill-sus	2014-08-06 00:59:27.752722	2014-08-06 00:59:27.752722
19	this text gets cut off	2014-08-06 01:00:35.864917	2014-08-06 01:00:35.864917
20	Color 	2014-08-06 05:52:45.494055	2014-08-06 05:52:45.494055
21	favorites	2014-08-06 06:42:17.381397	2014-08-06 06:42:17.381397
22	basketball	2014-08-06 07:01:16.591163	2014-08-06 07:01:16.591163
23	do this	2014-08-06 14:36:08.791951	2014-08-06 14:36:08.791951
24	rails-migrations	2014-08-06 15:41:48.457054	2014-08-06 15:41:48.457054
25	Competition	2014-08-06 16:00:14.597934	2014-08-06 16:00:14.597934
26	ecommerce	2014-08-06 17:43:51.161282	2014-08-06 17:43:51.161282
27	tutorials	2014-08-06 17:43:51.178725	2014-08-06 17:43:51.178725
28	Tutorial	2014-08-06 21:11:55.121964	2014-08-06 21:11:55.121964
29	Analytics	2014-08-06 21:54:22.825341	2014-08-06 21:54:22.825341
30	jquery	2014-08-06 21:58:37.870622	2014-08-06 21:58:37.870622
31	filters	2014-08-06 21:58:37.883514	2014-08-06 21:58:37.883514
32	Inspiration	2014-08-06 22:07:28.89766	2014-08-06 22:07:28.89766
33	unicorn	2014-08-06 23:16:44.547321	2014-08-06 23:16:44.547321
34	apache	2014-08-06 23:16:44.563996	2014-08-06 23:16:44.563996
35	Color	2014-08-07 17:39:45.654589	2014-08-07 17:39:45.654589
36	Rails 	2014-08-07 18:47:25.894295	2014-08-07 18:47:25.894295
37	SPA	2014-08-07 18:47:32.544231	2014-08-07 18:47:32.544231
38	Rails	2014-08-07 18:48:00.63687	2014-08-07 18:48:00.63687
39	tutorial	2014-08-07 18:48:15.476911	2014-08-07 18:48:15.476911
40	collaborative	2014-08-07 22:35:45.702863	2014-08-07 22:35:45.702863
41	wiki	2014-08-07 22:35:45.720853	2014-08-07 22:35:45.720853
42	portfolio	2014-08-07 22:47:48.84414	2014-08-07 22:47:48.84414
43	devops	2014-08-07 23:23:06.763947	2014-08-07 23:23:06.763947
44	api	2014-08-07 23:28:23.259604	2014-08-07 23:28:23.259604
45	javascript	2014-08-07 23:30:53.234494	2014-08-07 23:30:53.234494
46	charts	2014-08-07 23:30:53.247388	2014-08-07 23:30:53.247388
47	rwd	2014-08-07 23:31:00.545357	2014-08-07 23:31:00.545357
48	gulp	2014-08-07 23:35:55.752207	2014-08-07 23:35:55.752207
49	asdf	2014-08-08 00:51:01.484717	2014-08-08 00:51:01.484717
50	alex	2014-08-08 03:56:16.085158	2014-08-08 03:56:16.085158
51	css	2014-08-08 03:56:54.387391	2014-08-08 03:56:54.387391
52	effects	2014-08-08 03:56:54.399171	2014-08-08 03:56:54.399171
53		2014-08-08 15:28:03.332703	2014-08-08 15:28:03.332703
54	schedule	2014-08-08 15:29:23.555066	2014-08-08 15:29:23.555066
55	activerecord	2014-08-08 16:29:08.086185	2014-08-08 16:29:08.086185
56	Styling	2014-08-08 19:24:03.986204	2014-08-08 19:24:03.986204
57	sinatra	2014-08-08 19:50:09.313269	2014-08-08 19:50:09.313269
58	nba	2014-08-08 19:50:23.524378	2014-08-08 19:50:23.524378
59	layout	2014-08-08 20:19:10.457525	2014-08-08 20:19:10.457525
60	design	2014-08-08 20:19:10.483542	2014-08-08 20:19:10.483542
61	style	2014-08-08 20:19:47.271554	2014-08-08 20:19:47.271554
62	illustrator	2014-08-08 20:21:48.419476	2014-08-08 20:21:48.419476
63	Angular	2014-08-08 20:22:24.507977	2014-08-08 20:22:24.507977
64	Javscript	2014-08-08 20:22:24.660905	2014-08-08 20:22:24.660905
65	Modal	2014-08-08 20:22:24.691079	2014-08-08 20:22:24.691079
66	css3	2014-08-08 20:26:30.903009	2014-08-08 20:26:30.903009
67	Sty	2014-08-08 21:41:05.654324	2014-08-08 21:41:05.654324
68	js	2014-08-10 04:48:53.901612	2014-08-10 04:48:53.901612
69	mongo	2014-08-10 22:22:41.746083	2014-08-10 22:22:41.746083
70	cheat sheet	2014-08-11 04:02:42.851433	2014-08-11 04:02:42.851433
71	cheatsheet	2014-08-11 07:35:54.859201	2014-08-11 07:35:54.859201
72	rspec	2014-08-11 17:22:59.176511	2014-08-11 17:22:59.176511
73	hashes	2014-08-11 17:34:26.416945	2014-08-11 17:34:26.416945
74	animations	2014-08-12 04:27:11.363564	2014-08-12 04:27:11.363564
75	screenshots	2014-08-12 16:54:47.175178	2014-08-12 16:54:47.175178
76	turbolinks	2014-08-12 17:29:56.795372	2014-08-12 17:29:56.795372
77	gem	2014-08-12 17:29:56.814907	2014-08-12 17:29:56.814907
78	bootstrap	2014-08-12 19:59:17.583709	2014-08-12 19:59:17.583709
79	angular	2014-08-12 19:59:17.597825	2014-08-12 19:59:17.597825
80	test	2014-08-13 00:27:29.159813	2014-08-13 00:27:29.159813
81	ui	2014-08-13 14:56:42.906195	2014-08-13 14:56:42.906195
82	freebies	2014-08-13 14:56:42.922208	2014-08-13 14:56:42.922208
83	coding	2014-08-14 23:15:41.279798	2014-08-14 23:15:41.279798
84	libaray	2014-08-15 04:13:08.192597	2014-08-15 04:13:08.192597
85	library	2014-08-15 04:14:13.119668	2014-08-15 04:14:13.119668
86	web design	2014-08-15 04:14:44.480139	2014-08-15 04:14:44.480139
87	web	2014-08-15 20:28:20.606392	2014-08-15 20:28:20.606392
88	stock photog	2014-08-16 20:20:05.057253	2014-08-16 20:20:05.057253
89	columns	2014-08-16 23:29:32.459438	2014-08-16 23:29:32.459438
90	Design	2014-08-17 13:25:38.604669	2014-08-17 13:25:38.604669
91	Lisa	2014-08-17 18:15:30.62214	2014-08-17 18:15:30.62214
92	express	2014-08-18 02:17:29.996802	2014-08-18 02:17:29.996802
93	documentation	2014-08-18 21:47:12.003505	2014-08-18 21:47:12.003505
94	programming	2014-08-19 13:52:42.205245	2014-08-19 13:52:42.205245
95	google	2014-08-19 14:53:41.805014	2014-08-19 14:53:41.805014
96	maps	2014-08-19 14:53:41.828194	2014-08-19 14:53:41.828194
97	tools	2014-08-19 16:04:02.914036	2014-08-19 16:04:02.914036
98	thumbnails	2014-08-19 16:04:03.049756	2014-08-19 16:04:03.049756
99	swift	2014-08-19 16:30:17.0377	2014-08-19 16:30:17.0377
100	scraper	2014-08-19 17:59:47.190069	2014-08-19 17:59:47.190069
101	Search	2014-08-20 21:15:50.16227	2014-08-20 21:15:50.16227
102	date	2014-08-22 16:38:23.052998	2014-08-22 16:38:23.052998
103	cdn	2014-08-22 18:06:54.543498	2014-08-22 18:06:54.543498
104	phaser	2014-08-23 20:09:29.277757	2014-08-23 20:09:29.277757
105	games	2014-08-23 23:45:44.2825	2014-08-23 23:45:44.2825
106	Events	2014-08-29 21:40:15.27884	2014-08-29 21:40:15.27884
107	Programming	2014-08-29 21:40:54.851985	2014-08-29 21:40:54.851985
108	plugins	2014-09-01 16:42:21.093461	2014-09-01 16:42:21.093461
109	photos	2014-09-01 16:42:21.106882	2014-09-01 16:42:21.106882
110	travel-project	2014-09-02 12:46:15.359388	2014-09-02 12:46:15.359388
111	development	2014-09-02 20:00:09.336928	2014-09-02 20:00:09.336928
112	regex negation	2014-09-02 21:45:46.421536	2014-09-02 21:45:46.421536
113	REGEX-Nuggets	2014-09-02 21:46:18.830175	2014-09-02 21:46:18.830175
114	regex	2014-09-02 22:07:13.561029	2014-09-02 22:07:13.561029
115	Git	2014-09-03 04:54:20.222777	2014-09-03 04:54:20.222777
116	marlon	2014-09-03 05:08:22.926543	2014-09-03 05:08:22.926543
117	Git Workflow Cheat	2014-09-03 14:57:30.818226	2014-09-03 14:57:30.818226
118	Compass 	2014-09-03 14:57:49.560187	2014-09-03 14:57:49.560187
119	Git Resources	2014-09-03 15:45:54.766859	2014-09-03 15:45:54.766859
120	codex	2014-09-03 15:55:39.027838	2014-09-03 15:55:39.027838
121	compas	2014-09-03 15:55:56.371314	2014-09-03 15:55:56.371314
122	Compass	2014-09-03 15:56:52.124673	2014-09-03 15:56:52.124673
123	Tea Orbit	2014-09-03 15:57:58.09436	2014-09-03 15:57:58.09436
124	Methods 1	2014-09-03 17:45:07.753982	2014-09-03 17:45:07.753982
125	ipsum	2014-09-03 23:17:04.105154	2014-09-03 23:17:04.105154
126	mongodb	2014-09-04 01:16:07.948908	2014-09-04 01:16:07.948908
127	Ruby	2014-09-04 04:02:56.463272	2014-09-04 04:02:56.463272
128	Regex	2014-09-04 15:41:48.98061	2014-09-04 15:41:48.98061
129	Unix	2014-09-04 15:45:12.345544	2014-09-04 15:45:12.345544
130	Sorts	2014-09-04 15:46:48.942554	2014-09-04 15:46:48.942554
131	Sublime	2014-09-04 23:17:06.097971	2014-09-04 23:17:06.097971
132	Graphics	2014-09-07 18:20:44.418198	2014-09-07 18:20:44.418198
133	Faker	2014-09-08 05:17:31.556488	2014-09-08 05:17:31.556488
134	Rspec	2014-09-09 17:39:43.959904	2014-09-09 17:39:43.959904
135	Pagination	2014-09-09 20:37:36.597564	2014-09-09 20:37:36.597564
136	Math problems	2014-09-09 20:38:19.472929	2014-09-09 20:38:19.472929
137	Lean	2014-09-09 20:38:58.510633	2014-09-09 20:38:58.510633
138	ajax	2014-09-10 19:07:10.361398	2014-09-10 19:07:10.361398
139	json	2014-09-10 19:07:10.408534	2014-09-10 19:07:10.408534
140	something	2014-09-10 20:38:18.349946	2014-09-10 20:38:18.349946
141	something else	2014-09-10 20:38:30.739796	2014-09-10 20:38:30.739796
142	ruby on rails	2014-09-10 21:08:16.245119	2014-09-10 21:08:16.245119
143	active record	2014-09-10 21:08:16.263044	2014-09-10 21:08:16.263044
144	soundcloud	2014-09-13 22:05:18.965914	2014-09-13 22:05:18.965914
145	component filtering	2014-09-13 22:07:13.39025	2014-09-13 22:07:13.39025
146	callbacks	2014-09-13 22:07:53.347986	2014-09-13 22:07:53.347986
147	sass	2014-09-14 06:55:04.292602	2014-09-14 06:55:04.292602
148	SQL	2014-09-15 16:50:32.300166	2014-09-15 16:50:32.300166
149	html5	2014-09-16 03:23:53.062778	2014-09-16 03:23:53.062778
150	personalization	2014-09-16 12:03:27.315342	2014-09-16 12:03:27.315342
151	presonalization	2014-09-16 12:03:56.220089	2014-09-16 12:03:56.220089
152	pelis	2014-09-16 15:16:47.190924	2014-09-16 15:16:47.190924
153	spv	2014-09-29 18:13:04.606875	2014-09-29 18:13:04.606875
154	unixcommands	2014-09-30 01:03:32.511356	2014-09-30 01:03:32.511356
155	unixcommands	2014-09-30 01:10:41.41937	2014-09-30 01:10:41.41937
156	githacks	2014-09-30 01:11:14.310323	2014-09-30 01:11:14.310323
157	repl	2014-09-30 05:00:58.795061	2014-09-30 05:00:58.795061
158	repl	2014-09-30 05:00:58.886265	2014-09-30 05:00:58.886265
159	forms	2014-10-01 16:13:25.995567	2014-10-01 16:13:25.995567
160	seo	2014-10-03 16:51:43.387485	2014-10-03 16:51:43.387485
161	read	2014-10-04 23:33:30.664251	2014-10-04 23:33:30.664251
162	vim	2014-10-06 21:23:01.085023	2014-10-06 21:23:01.085023
163	purejs	2014-10-09 00:02:02.54008	2014-10-09 00:02:02.54008
164	tabs	2014-10-09 00:02:07.498666	2014-10-09 00:02:07.498666
165	fez	2014-10-09 17:31:02.430068	2014-10-09 17:31:02.430068
166	shapes	2014-10-10 20:19:33.034287	2014-10-10 20:19:33.034287
167	cookies	2014-10-11 16:00:15.280798	2014-10-11 16:00:15.280798
168	mamp	2014-10-11 16:47:47.353877	2014-10-11 16:47:47.353877
169	googlespreadsheets	2014-10-14 17:08:00.945965	2014-10-14 17:08:00.945965
170	mysql	2014-10-14 17:09:01.353972	2014-10-14 17:09:01.353972
171	googlespreadsheets	2014-10-14 18:13:35.205602	2014-10-14 18:13:35.205602
172	googlespreadsheets	2014-10-14 18:13:35.817564	2014-10-14 18:13:35.817564
173	nodejs	2014-10-14 20:11:57.430268	2014-10-14 20:11:57.430268
174	tdd	2014-10-14 22:56:58.937576	2014-10-14 22:56:58.937576
175	activerecord	2014-10-15 21:56:34.490017	2014-10-15 21:56:34.490017
176	d3	2014-10-16 18:12:26.032826	2014-10-16 18:12:26.032826
177	banq	2014-10-16 18:12:26.048551	2014-10-16 18:12:26.048551
178	svg	2014-10-16 18:31:57.173888	2014-10-16 18:31:57.173888
179	converter	2014-10-16 23:42:24.235234	2014-10-16 23:42:24.235234
180	formatter	2014-10-16 23:42:24.515888	2014-10-16 23:42:24.515888
181	sublime	2014-10-17 00:33:48.091165	2014-10-17 00:33:48.091165
182	devresources	2014-10-18 00:38:48.092643	2014-10-18 00:38:48.092643
183	entertainment	2014-10-18 00:39:19.788015	2014-10-18 00:39:19.788015
184	ember	2014-10-19 23:35:08.208918	2014-10-19 23:35:08.208918
185	lazy-loading	2014-10-21 16:26:35.024128	2014-10-21 16:26:35.024128
186	images	2014-10-21 16:26:39.772485	2014-10-21 16:26:39.772485
187	grunt	2014-10-21 16:33:23.718494	2014-10-21 16:33:23.718494
188	suburst	2014-10-22 23:23:06.749103	2014-10-22 23:23:06.749103
189	environment	2014-10-23 18:47:37.602331	2014-10-23 18:47:37.602331
190	webrtc	2014-10-23 23:51:20.956376	2014-10-23 23:51:20.956376
191	fonts	2014-10-26 01:33:41.046091	2014-10-26 01:33:41.046091
192	placeholder	2014-10-27 05:15:39.298503	2014-10-27 05:15:39.298503
193	strtup	2014-10-27 20:09:46.079503	2014-10-27 20:09:46.079503
194	routing	2014-10-28 18:56:07.19461	2014-10-28 18:56:07.19461
195	unix	2014-10-30 03:22:24.405897	2014-10-30 03:22:24.405897
196	sublimetext	2014-10-30 03:37:17.316405	2014-10-30 03:37:17.316405
197	keyboard_shortcuts	2014-10-30 03:38:22.423551	2014-10-30 03:38:22.423551
198	snapsvg	2014-10-30 16:33:11.463546	2014-10-30 16:33:11.463546
199	palettes	2014-10-31 16:28:48.442519	2014-10-31 16:28:48.442519
200	factories	2014-10-31 19:07:38.588278	2014-10-31 19:07:38.588278
201	rubyinstallation	2014-10-31 23:57:54.216934	2014-10-31 23:57:54.216934
202	rubyinstallation	2014-10-31 23:58:18.396655	2014-10-31 23:58:18.396655
203	rubyinstallation	2014-10-31 23:58:39.392102	2014-10-31 23:58:39.392102
204	rspec	2014-11-03 08:18:55.888429	2014-11-03 08:18:55.888429
205	googlespreadsheets	2014-11-04 01:15:50.358083	2014-11-04 01:15:50.358083
206	css	2014-11-04 20:04:22.643643	2014-11-04 20:04:22.643643
207	css	2014-11-04 20:09:53.157908	2014-11-04 20:09:53.157908
208	css	2014-11-04 20:23:47.856867	2014-11-04 20:23:47.856867
209	java	2014-11-05 00:36:01.099846	2014-11-05 00:36:01.099846
210	css	2014-11-05 16:56:19.691834	2014-11-05 16:56:19.691834
211	coffeescript	2014-11-05 18:58:12.262907	2014-11-05 18:58:12.262907
212	css	2014-11-06 01:15:24.652732	2014-11-06 01:15:24.652732
213	stack	2014-11-06 20:16:30.278035	2014-11-06 20:16:30.278035
214	database	2014-11-10 05:18:21.043703	2014-11-10 05:18:21.043703
215	database	2014-11-10 05:39:17.740023	2014-11-10 05:39:17.740023
216	photoshop	2014-11-10 17:20:55.041982	2014-11-10 17:20:55.041982
217	database	2014-11-10 23:59:10.341618	2014-11-10 23:59:10.341618
218	database	2014-11-11 02:04:31.807637	2014-11-11 02:04:31.807637
219	boxmodel	2014-11-12 00:46:13.953643	2014-11-12 00:46:13.953643
220	arrays	2014-11-12 03:45:40.225441	2014-11-12 03:45:40.225441
221	mailchimp	2014-11-13 01:23:57.58494	2014-11-13 01:23:57.58494
222	testing	2014-11-13 19:47:20.077852	2014-11-13 19:47:20.077852
223	codetools	2014-11-13 19:49:16.294469	2014-11-13 19:49:16.294469
224	tests	2014-11-13 19:50:27.562615	2014-11-13 19:50:27.562615
225	scp	2014-11-13 22:39:51.251448	2014-11-13 22:39:51.251448
226	closures	2014-11-13 23:42:34.726409	2014-11-13 23:42:34.726409
227	spv-todo	2014-11-14 00:10:15.559127	2014-11-14 00:10:15.559127
228	directives	2014-11-14 00:10:42.461091	2014-11-14 00:10:42.461091
229	php	2014-11-14 01:43:43.070414	2014-11-14 01:43:43.070414
230	hashing	2014-11-15 17:53:14.203757	2014-11-15 17:53:14.203757
231	docker	2014-11-15 23:56:54.464958	2014-11-15 23:56:54.464958
232	htmlandcss	2014-11-17 03:46:55.174605	2014-11-17 03:46:55.174605
233	HTML_CSS	2014-11-17 03:47:19.826594	2014-11-17 03:47:19.826594
234	email	2014-11-17 17:42:50.577956	2014-11-17 17:42:50.577956
235	dynamic	2014-11-19 00:26:09.063944	2014-11-19 00:26:09.063944
236	coolgems	2014-11-25 19:12:27.193142	2014-11-25 19:12:27.193142
237	favicon	2014-11-26 23:32:14.209408	2014-11-26 23:32:14.209408
238	rspec	2014-11-27 00:33:55.480212	2014-11-27 00:33:55.480212
239	workflow	2014-11-30 03:53:48.054641	2014-11-30 03:53:48.054641
240	socialmedia	2014-11-30 09:21:03.829802	2014-11-30 09:21:03.829802
241	mailto	2014-11-30 23:08:18.520486	2014-11-30 23:08:18.520486
242	mediaserver	2014-12-03 20:52:28.777355	2014-12-03 20:52:28.777355
243	mediaserver	2014-12-03 20:52:44.766599	2014-12-03 20:52:44.766599
244	uirouter	2014-12-03 21:57:20.922943	2014-12-03 21:57:20.922943
245	protractor	2014-12-04 20:02:23.214692	2014-12-04 20:02:23.214692
246	blogs	2014-12-09 05:18:20.938838	2014-12-09 05:18:20.938838
247	angularjs	2014-12-09 22:20:05.033818	2014-12-09 22:20:05.033818
248	c	2014-12-10 04:16:18.040518	2014-12-10 04:16:18.040518
249	todo	2014-12-10 04:16:18.156995	2014-12-10 04:16:18.156995
250	lisp	2014-12-10 04:16:18.198208	2014-12-10 04:16:18.198208
251	requirejs	2014-12-10 18:25:37.052329	2014-12-10 18:25:37.052329
252	patterns	2014-12-11 00:52:06.845188	2014-12-11 00:52:06.845188
253	wisdom	2014-12-11 01:42:29.652939	2014-12-11 01:42:29.652939
254	horn	2014-12-12 16:30:35.908077	2014-12-12 16:30:35.908077
255	bitly	2014-12-12 20:51:37.113783	2014-12-12 20:51:37.113783
256	algorithms	2014-12-15 22:17:35.015618	2014-12-15 22:17:35.015618
257	api	2014-12-17 22:03:18.050916	2014-12-17 22:03:18.050916
258	inheritance	2014-12-17 22:13:02.598731	2014-12-17 22:13:02.598731
259	prototypicalinheritance	2014-12-17 22:13:02.646387	2014-12-17 22:13:02.646387
260	projectplanning	2014-12-19 17:14:47.699186	2014-12-19 17:14:47.699186
261	headers	2014-12-19 17:24:12.285509	2014-12-19 17:24:12.285509
262	proxy	2015-01-05 07:01:25.024774	2015-01-05 07:01:25.024774
263	virtualhost	2015-01-05 16:26:49.196391	2015-01-05 16:26:49.196391
264	mac	2015-01-05 16:26:57.084335	2015-01-05 16:26:57.084335
265	rails-api	2015-01-09 19:20:29.183213	2015-01-09 19:20:29.183213
266	yosemite	2015-01-10 00:39:36.254725	2015-01-10 00:39:36.254725
267	a test collection	2015-01-10 20:15:00.881068	2015-01-10 20:15:00.881068
268	vertical-alignment	2015-01-13 19:03:22.696713	2015-01-13 19:03:22.696713
269	gems	2015-01-14 04:26:50.835577	2015-01-14 04:26:50.835577
270	bcrypt	2015-01-15 04:44:51.345824	2015-01-15 04:44:51.345824
271	caching	2015-01-17 15:07:20.834153	2015-01-17 15:07:20.834153
272	data	2015-01-19 07:09:49.151472	2015-01-19 07:09:49.151472
273	colour	2015-01-19 16:19:56.417162	2015-01-19 16:19:56.417162
275	slideshow	2015-01-22 16:33:36.450802	2015-01-22 16:33:36.450802
274	dev	2015-01-20 07:54:22.313906	2015-01-20 07:54:22.313906
276	de	2015-01-23 02:21:04.458599	2015-01-23 02:21:04.458599
277	resources	2015-01-28 06:03:56.203109	2015-01-28 06:03:56.203109
278	server	2015-01-28 17:03:58.386309	2015-01-28 17:03:58.386309
279	color	2015-01-29 16:11:49.595159	2015-01-29 16:11:49.595159
280	concerns	2015-02-01 17:58:28.718298	2015-02-01 17:58:28.718298
281	pc-server	2015-02-02 23:40:13.043848	2015-02-02 23:40:13.043848
282	menus	2015-02-03 22:05:08.525741	2015-02-03 22:05:08.525741
283	source-maps	2015-02-05 19:35:00.662828	2015-02-05 19:35:00.662828
284	frlncr	2015-02-14 21:44:15.214752	2015-02-14 21:44:15.214752
285	nav	2015-02-14 21:44:15.279934	2015-02-14 21:44:15.279934
286	cors	2015-02-18 23:07:41.577868	2015-02-18 23:07:41.577868
287	iframes	2015-02-18 23:07:41.658761	2015-02-18 23:07:41.658761
288	saas	2015-02-19 20:33:11.972169	2015-02-19 20:33:11.972169
289	archflags	2015-03-02 21:01:55.242133	2015-03-02 21:01:55.242133
290	pg	2015-03-02 21:01:55.273141	2015-03-02 21:01:55.273141
291	karma	2015-03-04 19:53:50.097234	2015-03-04 19:53:50.097234
292	unit-testing	2015-03-04 19:53:50.129296	2015-03-04 19:53:50.129296
293	3d	2015-03-05 18:00:39.009613	2015-03-05 18:00:39.009613
294	-httpbackend	2015-03-06 02:59:38.964418	2015-03-06 02:59:38.964418
295	ng-html2js-preprocessor	2015-03-10 01:29:11.678908	2015-03-10 01:29:11.678908
296	typescript	2015-03-12 23:57:12.154741	2015-03-12 23:57:12.154741
297	meteor	2015-03-24 22:55:26.113658	2015-03-24 22:55:26.113658
298	oop	2015-03-30 22:40:30.485515	2015-03-30 22:40:30.485515
299	prep	2015-03-30 22:43:41.997179	2015-03-30 22:43:41.997179
300	react	2015-04-02 22:18:03.966737	2015-04-02 22:18:03.966737
301	prawn-gem	2015-04-05 02:26:27.231575	2015-04-05 02:26:27.231575
302	html-entities	2015-04-09 23:59:48.014834	2015-04-09 23:59:48.014834
303	datetime	2015-04-10 17:25:17.228317	2015-04-10 17:25:17.228317
304	coding-standards	2015-04-26 20:48:34.605352	2015-04-26 20:48:34.605352
305	formatting	2015-05-06 22:26:04.245388	2015-05-06 22:26:04.245388
306	slack	2015-05-07 18:36:44.594327	2015-05-07 18:36:44.594327
307	digitalocean	2015-05-10 17:56:41.297506	2015-05-10 17:56:41.297506
308	iptables	2015-05-14 04:23:15.496809	2015-05-14 04:23:15.496809
309	nginx	2015-05-14 14:45:32.018331	2015-05-14 14:45:32.018331
310	rails-scoping	2015-05-31 23:42:06.348109	2015-05-31 23:42:06.348109
311	deployment	2015-06-01 03:49:46.618272	2015-06-01 03:49:46.618272
312	web-optimization	2015-06-01 22:12:15.326942	2015-06-01 22:12:15.326942
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: bookorb
--

COPY schema_migrations (version) FROM stdin;
20140730180828
20140730180840
20140730180846
20140730181833
20140730184200
20140801214324
20140813024220
20140813024649
20140813024906
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: bookorb
--

COPY users (id, username, password_digest, email, created_at, updated_at) FROM stdin;
3	kenn	kenn123	\N	2014-08-05 20:35:45.34081	2014-08-05 20:37:19.490715
94	askang	\N	\N	2014-10-28 02:23:58.844131	2014-10-28 02:23:58.844131
95	book	\N	\N	2014-10-28 15:28:01.852198	2014-10-28 15:28:01.852198
6	kelvin	kelvinwong	\N	2014-08-05 20:39:42.218388	2014-08-05 20:39:54.279129
96	apple-touch-icon-precomposed	\N	\N	2014-11-02 00:24:28.057325	2014-11-02 00:24:28.057325
5	lighthouse-labs	PinkApple	\N	2014-08-05 20:37:44.197325	2014-08-05 20:45:38.106611
2	amy	amy	\N	2014-08-05 20:32:04.060797	2014-08-05 22:12:03.250145
8	bam	\N	\N	2014-08-05 23:10:26.931495	2014-08-05 23:10:26.931495
9	eubene	\N	\N	2014-08-05 23:17:17.91288	2014-08-05 23:17:17.91288
10	murat	murat	\N	2014-08-05 23:20:36.130253	2014-08-05 23:20:48.326196
12	jamie	123	\N	2014-08-06 00:32:12.608209	2014-08-06 00:32:22.505955
13	hi	\N	\N	2014-08-06 00:33:43.108363	2014-08-06 00:33:43.108363
14	lighthouse	\N	\N	2014-08-06 00:33:49.402565	2014-08-06 00:33:49.402565
15	test	\N	\N	2014-08-06 00:33:59.170222	2014-08-06 00:33:59.170222
16	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa	\N	\N	2014-08-06 00:34:11.579021	2014-08-06 00:34:11.579021
17	july	\N	\N	2014-08-06 00:34:32.504802	2014-08-06 00:34:32.504802
18	1	\N	\N	2014-08-06 00:34:40.821546	2014-08-06 00:34:40.821546
11	google	yomama	\N	2014-08-06 00:25:39.587919	2014-08-06 00:57:53.701064
19	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa...	\N	\N	2014-08-06 02:10:00.517868	2014-08-06 02:10:00.517868
20	yo	\N	\N	2014-08-06 04:31:52.992214	2014-08-06 04:31:52.992214
21	4thahaterz	123456	\N	2014-08-06 04:32:19.294273	2014-08-06 04:32:29.995095
22	kevin	\N	\N	2014-08-06 07:40:02.116948	2014-08-06 07:40:02.116948
23	favicon.ico	\N	\N	2014-08-06 18:14:57.419984	2014-08-06 18:14:57.419984
24	mike	\N	\N	2014-08-06 18:15:03.204517	2014-08-06 18:15:03.204517
25	whatevernameyouwanthere	\N	\N	2014-08-06 19:14:29.027513	2014-08-06 19:14:29.027513
26	robots.txt	\N	\N	2014-08-06 19:22:00.671667	2014-08-06 19:22:00.671667
27	louie	\N	\N	2014-08-06 21:11:17.615456	2014-08-06 21:11:17.615456
28	plozano	\N	\N	2014-08-06 22:06:47.350435	2014-08-06 22:06:47.350435
29	megan	\N	\N	2014-08-06 22:39:52.438162	2014-08-06 22:39:52.438162
30	meganryll	\N	\N	2014-08-06 22:40:31.317969	2014-08-06 22:40:31.317969
31	swag	\N	\N	2014-08-07 17:04:21.402817	2014-08-07 17:04:21.402817
32	img	\N	\N	2014-08-07 20:14:00.661118	2014-08-07 20:14:00.661118
34	kelvinlala	\N	\N	2014-08-07 23:10:03.406677	2014-08-07 23:10:03.406677
35	kelvinlink	\N	\N	2014-08-07 23:10:12.191404	2014-08-07 23:10:12.191404
36	kelvinwong	\N	\N	2014-08-07 23:10:15.532578	2014-08-07 23:10:15.532578
33	kaz	moohaha	\N	2014-08-07 23:06:15.195448	2014-08-07 23:20:48.718993
37	brendan	\N	\N	2014-08-08 00:49:28.714337	2014-08-08 00:49:28.714337
38	whatevernameyouwant	\N	\N	2014-08-08 03:55:23.833071	2014-08-08 03:55:23.833071
39	orestes	orestes	\N	2014-08-08 10:00:08.951589	2014-08-08 10:08:55.921727
40	james	1234	\N	2014-08-08 19:49:41.866318	2014-08-08 19:51:28.718505
41	teresa	\N	\N	2014-08-11 17:21:18.091901	2014-08-11 17:21:18.091901
1	don	lollipops	\N	2014-08-05 20:29:00.787058	2014-08-11 19:18:08.765751
42	kenn.com	\N	\N	2014-08-12 23:20:53.474396	2014-08-12 23:20:53.474396
43	matthew	\N	\N	2014-08-17 13:24:34.029268	2014-08-17 13:24:34.029268
44	lisa	\N	\N	2014-08-17 18:14:40.842816	2014-08-17 18:14:40.842816
45	daniel	\N	\N	2014-08-20 06:16:02.475461	2014-08-20 06:16:02.475461
46	name	\N	\N	2014-08-20 21:14:48.303475	2014-08-20 21:14:48.303475
47	joe	joe	\N	2014-08-20 21:15:13.67035	2014-08-20 21:15:18.651756
48	andy	\N	\N	2014-08-27 20:28:44.108597	2014-08-27 20:28:44.108597
49	devin	\N	\N	2014-08-28 23:59:19.439452	2014-08-28 23:59:19.439452
50	dete	\N	\N	2014-08-29 21:38:35.968722	2014-08-29 21:38:35.968722
51	ben	\N	\N	2014-09-02 19:30:58.564463	2014-09-02 19:30:58.564463
52	benv	\N	\N	2014-09-02 19:31:02.836069	2014-09-02 19:31:02.836069
53	mikes	\N	\N	2014-09-02 19:31:33.821208	2014-09-02 19:31:33.821208
55	alan	\N	\N	2014-09-02 20:05:31.295802	2014-09-02 20:05:31.295802
54	pandabeat	boX.Xer7	\N	2014-09-02 19:59:30.467035	2014-09-02 21:46:19.55413
56	allthetime	giraffE33	\N	2014-09-02 21:45:28.880235	2014-09-02 21:46:25.906069
58	marlon	\N	\N	2014-09-02 22:11:07.264354	2014-09-02 22:11:07.264354
59	wheels	\N	\N	2014-09-03 14:57:09.700329	2014-09-03 14:57:09.700329
60	Shannon	n3gat1ve	\N	2014-09-03 15:44:49.323799	2014-09-03 15:45:06.314271
61	Kierancormack	\N	\N	2014-09-03 15:52:42.333609	2014-09-03 15:52:42.333609
62	nox	\N	\N	2014-09-03 15:53:51.041935	2014-09-03 15:53:51.041935
63	alltime	\N	\N	2014-09-04 02:37:53.850737	2014-09-04 02:37:53.850737
64	chris	\N	\N	2014-09-04 02:53:03.270843	2014-09-04 02:53:03.270843
65	floridaelago		\N	2014-09-04 17:53:24.822735	2014-09-04 17:53:49.480166
66	norman	\N	\N	2014-09-09 19:08:08.725392	2014-09-09 19:08:08.725392
68	kristine	\N	\N	2014-09-09 19:13:41.380013	2014-09-09 19:13:41.380013
67	irina	ln10=2.3025	\N	2014-09-09 19:12:23.774608	2014-09-09 19:13:58.94796
69	kinnan	\N	\N	2014-09-09 20:37:13.599738	2014-09-09 20:37:13.599738
70	christophe	\N	\N	2014-09-10 20:38:01.025963	2014-09-10 20:38:01.025963
71	a,y	\N	\N	2014-09-10 20:39:43.996917	2014-09-10 20:39:43.996917
72	asdlkjfaslkfd	\N	\N	2014-09-10 20:40:28.611191	2014-09-10 20:40:28.611191
73	strollout	\N	\N	2014-09-10 21:07:59.171417	2014-09-10 21:07:59.171417
74	apple-touch-icon.png	\N	\N	2014-09-11 23:11:50.320858	2014-09-11 23:11:50.320858
75	melody	\N	\N	2014-09-13 17:51:58.399919	2014-09-13 17:51:58.399919
76	september	\N	\N	2014-09-14 08:27:33.360108	2014-09-14 08:27:33.360108
77	lighthouse-september	\N	\N	2014-09-14 08:27:40.595838	2014-09-14 08:27:40.595838
78	joder	\N	\N	2014-09-16 15:16:39.494086	2014-09-16 15:16:39.494086
79	sfsdf	\N	\N	2014-09-29 23:57:57.773366	2014-09-29 23:57:57.773366
80	vasili	\N	\N	2014-09-30 00:50:45.899497	2014-09-30 00:50:45.899497
57	yourname	$2a$10$l2yGeZEiam8vkk3lpWhSRO6fm9wb.p5KIhBCaFC1fNEbGoMxbcHQa	\N	2014-09-02 22:11:03.30804	2014-09-30 01:02:55.856705
81	xianny	\N	\N	2014-09-30 01:02:58.564414	2014-09-30 01:02:58.564414
82	brandonlee	\N	\N	2014-09-30 01:10:16.408626	2014-09-30 01:10:16.408626
83	eh2be	\N	\N	2014-10-06 20:44:12.041351	2014-10-06 20:44:12.041351
84	andyslibrary	\N	\N	2014-10-08 03:54:08.036172	2014-10-08 03:54:08.036172
85	nsue	\N	\N	2014-10-09 17:29:44.93012	2014-10-09 17:29:44.93012
86	apple-touch-icon	\N	\N	2014-10-09 18:41:28.93311	2014-10-09 18:41:28.93311
87	a	\N	\N	2014-10-15 01:26:16.852803	2014-10-15 01:26:16.852803
88	sddfs	\N	\N	2014-10-15 21:10:35.283914	2014-10-15 21:10:35.283914
89	javascript	\N	\N	2014-10-16 01:34:20.628685	2014-10-16 01:34:20.628685
90	andy_tran	\N	\N	2014-10-16 16:00:27.670806	2014-10-16 16:00:27.670806
91	dennis	\N	\N	2014-10-20 23:07:35.795037	2014-10-20 23:07:35.795037
92	smwedding	\N	\N	2014-10-26 01:33:29.647041	2014-10-26 01:33:29.647041
93	ting	\N	\N	2014-10-28 02:21:19.749158	2014-10-28 02:21:19.749158
97	sdf	\N	\N	2014-11-07 01:04:39.242812	2014-11-07 01:04:39.242812
98	xanadhi	\N	\N	2014-11-13 19:46:54.428041	2014-11-13 19:46:54.428041
99	dontloseit	\N	\N	2014-11-30 09:20:02.677097	2014-11-30 09:20:02.677097
100	what	\N	\N	2014-12-06 03:05:47.408176	2014-12-06 03:05:47.408176
101	mika	\N	\N	2014-12-26 08:21:18.642185	2014-12-26 08:21:18.642185
102	lighthouselabs	\N	\N	2014-12-26 08:21:26.253912	2014-12-26 08:21:26.253912
103	foodee	\N	\N	2014-12-26 08:21:30.613871	2014-12-26 08:21:30.613871
104	foxxy	\N	\N	2014-12-26 08:21:34.881579	2014-12-26 08:21:34.881579
105	tet	\N	\N	2014-12-26 08:21:39.632656	2014-12-26 08:21:39.632656
106	asdf	\N	\N	2014-12-26 08:21:44.985414	2014-12-26 08:21:44.985414
107	besson	\N	\N	2014-12-27 19:47:18.083756	2014-12-27 19:47:18.083756
108	hj	\N	\N	2015-01-09 02:10:44.074382	2015-01-09 02:10:44.074382
109	administrator	\N	\N	2015-01-10 20:13:49.062026	2015-01-10 20:13:49.062026
110	admin	\N	\N	2015-01-10 20:13:49.753847	2015-01-10 20:13:49.753847
111	justinsfunlibrary	\N	\N	2015-01-14 00:30:33.578055	2015-01-14 00:30:33.578055
112	forlater	\N	\N	2015-01-14 04:26:39.445778	2015-01-14 04:26:39.445778
113	will	\N	\N	2015-01-14 18:19:38.576583	2015-01-14 18:19:38.576583
115	wp-login	\N	\N	2015-01-19 19:38:38.691248	2015-01-19 19:38:38.691248
116	ja	\N	\N	2015-01-20 06:53:23.435677	2015-01-20 06:53:23.435677
117	colstrom	\N	\N	2015-01-22 02:12:52.247272	2015-01-22 02:12:52.247272
118	amy2	test	\N	2015-02-02 03:29:40.286364	2015-02-02 03:29:43.601939
119	shannon	\N	\N	2015-02-02 03:53:19.904648	2015-02-02 03:53:19.904648
120	favicon	\N	\N	2015-02-02 04:21:52.72679	2015-02-02 04:21:52.72679
121	stopowanis	\N	\N	2015-02-02 04:33:01.895266	2015-02-02 04:33:01.895266
114	jan	testing	\N	2015-01-16 02:49:13.77763	2015-02-02 11:19:38.814867
122	tunes	\N	\N	2015-02-05 17:53:14.536947	2015-02-05 17:53:14.536947
123	listen	\N	\N	2015-02-05 17:53:19.71999	2015-02-05 17:53:19.71999
124	tomake	amy	\N	2015-03-05 16:48:54.691115	2015-03-05 16:49:01.086236
125	dom	\N	\N	2015-03-30 22:53:38.212222	2015-03-30 22:53:38.212222
126	aiste	\N	\N	2015-03-30 22:53:43.742855	2015-03-30 22:53:43.742855
127	sitemap	\N	\N	2015-04-07 12:54:00.282113	2015-04-07 12:54:00.282113
128	christoffer	ripzone12	\N	2015-05-07 22:00:20.756309	2015-05-07 22:00:40.432739
129	502	\N	\N	2015-05-28 19:01:59.455355	2015-05-28 19:01:59.455355
\.


--
-- Name: bookmarks_pkey; Type: CONSTRAINT; Schema: public; Owner: bookorb; Tablespace: 
--

ALTER TABLE ONLY bookmarks
    ADD CONSTRAINT bookmarks_pkey PRIMARY KEY (id);


--
-- Name: bookmarks_users_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: bookorb; Tablespace: 
--

ALTER TABLE ONLY bookmarks_users_collections
    ADD CONSTRAINT bookmarks_users_collections_pkey PRIMARY KEY (id);


--
-- Name: bookmarks_users_pkey; Type: CONSTRAINT; Schema: public; Owner: bookorb; Tablespace: 
--

ALTER TABLE ONLY bookmarks_users
    ADD CONSTRAINT bookmarks_users_pkey PRIMARY KEY (id);


--
-- Name: collections_pkey; Type: CONSTRAINT; Schema: public; Owner: bookorb; Tablespace: 
--

ALTER TABLE ONLY collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: bookorb; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: bookorb; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

