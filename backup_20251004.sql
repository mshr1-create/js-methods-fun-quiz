127.0.0.1:5432 - accepting connections
--
-- PostgreSQL database cluster dump
--

\restrict IHaISyrKQtnoBDk74czqM1JVN2lFhawY0eOzXY70Hc4zyV68udF4dyUubin8vkV

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE strapi;
ALTER ROLE strapi WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:O7kaAdghAxY++tshOQCrnQ==$17rE+FTcbjU/r6x7jeAh/Zsati9P8/bFFMWS3lqQy9Y=:a6fYj4aMRNfL8XUF1mGePsin9aTvMSGOwIz0p6ddmaU=';

--
-- User Configurations
--








\unrestrict IHaISyrKQtnoBDk74czqM1JVN2lFhawY0eOzXY70Hc4zyV68udF4dyUubin8vkV

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict Qkk6C5zj9t93YjUr2cS0tOB4vMHhz2J5cE4NFngr9vjwfZsVDGNr7uRhjXZmzwD

-- Dumped from database version 17.6 (Debian 17.6-2.pgdg13+1)
-- Dumped by pg_dump version 17.6 (Debian 17.6-2.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict Qkk6C5zj9t93YjUr2cS0tOB4vMHhz2J5cE4NFngr9vjwfZsVDGNr7uRhjXZmzwD

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict cQhnzhzQeXonXBWVgAxNqrLGSm4AJ6aM6ULCegS7beYaRzofaf82k2GT3BmKSap

-- Dumped from database version 17.6 (Debian 17.6-2.pgdg13+1)
-- Dumped by pg_dump version 17.6 (Debian 17.6-2.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict cQhnzhzQeXonXBWVgAxNqrLGSm4AJ6aM6ULCegS7beYaRzofaf82k2GT3BmKSap

--
-- Database "strapi" dump
--

--
-- PostgreSQL database dump
--

\restrict 3k3CGidXMnYdv2ZmWSUFiJRCh0vObJIpRgfcAHglWcFai93q2IVvQjfHUapPgmP

-- Dumped from database version 17.6 (Debian 17.6-2.pgdg13+1)
-- Dumped by pg_dump version 17.6 (Debian 17.6-2.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: strapi; Type: DATABASE; Schema: -; Owner: strapi
--

CREATE DATABASE strapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE strapi OWNER TO strapi;

\unrestrict 3k3CGidXMnYdv2ZmWSUFiJRCh0vObJIpRgfcAHglWcFai93q2IVvQjfHUapPgmP
\connect strapi
\restrict 3k3CGidXMnYdv2ZmWSUFiJRCh0vObJIpRgfcAHglWcFai93q2IVvQjfHUapPgmP

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: abouts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.abouts (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.abouts OWNER TO strapi;

--
-- Name: abouts_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.abouts_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.abouts_cmps OWNER TO strapi;

--
-- Name: abouts_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.abouts_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.abouts_cmps_id_seq OWNER TO strapi;

--
-- Name: abouts_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.abouts_cmps_id_seq OWNED BY public.abouts_cmps.id;


--
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.abouts_id_seq OWNER TO strapi;

--
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.abouts_id_seq OWNED BY public.abouts.id;


--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO strapi;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO strapi;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNER TO strapi;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.articles OWNER TO strapi;

--
-- Name: articles_author_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles_author_lnk (
    id integer NOT NULL,
    article_id integer,
    author_id integer,
    article_ord double precision
);


ALTER TABLE public.articles_author_lnk OWNER TO strapi;

--
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_author_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_author_lnk_id_seq OWNER TO strapi;

--
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_author_lnk_id_seq OWNED BY public.articles_author_lnk.id;


--
-- Name: articles_category_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles_category_lnk (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_ord double precision
);


ALTER TABLE public.articles_category_lnk OWNER TO strapi;

--
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_category_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_category_lnk_id_seq OWNER TO strapi;

--
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_category_lnk_id_seq OWNED BY public.articles_category_lnk.id;


--
-- Name: articles_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.articles_cmps OWNER TO strapi;

--
-- Name: articles_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_cmps_id_seq OWNER TO strapi;

--
-- Name: articles_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_cmps_id_seq OWNED BY public.articles_cmps.id;


--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_id_seq OWNER TO strapi;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.authors OWNER TO strapi;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.authors_id_seq OWNER TO strapi;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.categories OWNER TO strapi;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO strapi;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: choices; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.choices (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    text character varying(255),
    questionid integer
);


ALTER TABLE public.choices OWNER TO strapi;

--
-- Name: choices_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.choices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.choices_id_seq OWNER TO strapi;

--
-- Name: choices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.choices_id_seq OWNED BY public.choices.id;


--
-- Name: choices_question_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.choices_question_lnk (
    id integer NOT NULL,
    choice_id integer,
    question_id integer,
    choice_ord double precision
);


ALTER TABLE public.choices_question_lnk OWNER TO strapi;

--
-- Name: choices_question_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.choices_question_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.choices_question_lnk_id_seq OWNER TO strapi;

--
-- Name: choices_question_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.choices_question_lnk_id_seq OWNED BY public.choices_question_lnk.id;


--
-- Name: components_shared_media; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_media (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_media OWNER TO strapi;

--
-- Name: components_shared_media_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_media_id_seq OWNER TO strapi;

--
-- Name: components_shared_media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_media_id_seq OWNED BY public.components_shared_media.id;


--
-- Name: components_shared_quotes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text
);


ALTER TABLE public.components_shared_quotes OWNER TO strapi;

--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_quotes_id_seq OWNER TO strapi;

--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_quotes_id_seq OWNED BY public.components_shared_quotes.id;


--
-- Name: components_shared_rich_texts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);


ALTER TABLE public.components_shared_rich_texts OWNER TO strapi;

--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_rich_texts_id_seq OWNER TO strapi;

--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_rich_texts_id_seq OWNED BY public.components_shared_rich_texts.id;


--
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);


ALTER TABLE public.components_shared_seos OWNER TO strapi;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_seos_id_seq OWNER TO strapi;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- Name: components_shared_sliders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_sliders (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_sliders OWNER TO strapi;

--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_sliders_id_seq OWNER TO strapi;

--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_sliders_id_seq OWNED BY public.components_shared_sliders.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.files OWNER TO strapi;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO strapi;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_lnk_id_seq OWNER TO strapi;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO strapi;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_mph_id_seq OWNER TO strapi;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: globals; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.globals (
    id integer NOT NULL,
    document_id character varying(255),
    site_name character varying(255),
    site_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.globals OWNER TO strapi;

--
-- Name: globals_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.globals_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.globals_cmps OWNER TO strapi;

--
-- Name: globals_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.globals_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.globals_cmps_id_seq OWNER TO strapi;

--
-- Name: globals_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.globals_cmps_id_seq OWNED BY public.globals_cmps.id;


--
-- Name: globals_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.globals_id_seq OWNER TO strapi;

--
-- Name: globals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    document_id character varying(255),
    text text,
    hint character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    explanation text,
    type character varying(255),
    code text,
    questionid integer,
    title character varying(255),
    answer character varying(255)
);


ALTER TABLE public.questions OWNER TO strapi;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_id_seq OWNER TO strapi;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: questions_quiz_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.questions_quiz_lnk (
    id integer NOT NULL,
    question_id integer,
    quiz_id integer,
    question_ord double precision
);


ALTER TABLE public.questions_quiz_lnk OWNER TO strapi;

--
-- Name: questions_quiz_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.questions_quiz_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_quiz_lnk_id_seq OWNER TO strapi;

--
-- Name: questions_quiz_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.questions_quiz_lnk_id_seq OWNED BY public.questions_quiz_lnk.id;


--
-- Name: quizzes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.quizzes (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    title character varying(255),
    mode character varying(255),
    duration integer,
    number_of_question integer
);


ALTER TABLE public.quizzes OWNER TO strapi;

--
-- Name: quizzes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.quizzes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.quizzes_id_seq OWNER TO strapi;

--
-- Name: quizzes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.quizzes_id_seq OWNED BY public.quizzes.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO strapi;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_history_versions_id_seq OWNER TO strapi;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO strapi;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO strapi;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO strapi;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO strapi;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: study_sessions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.study_sessions (
    id integer NOT NULL,
    document_id character varying(255),
    mode character varying(255),
    started_at timestamp(6) without time zone,
    finished_at timestamp(6) without time zone,
    duration_sec integer,
    score integer,
    correct_count integer,
    total_count integer,
    max_streak integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.study_sessions OWNER TO strapi;

--
-- Name: study_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.study_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.study_sessions_id_seq OWNER TO strapi;

--
-- Name: study_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.study_sessions_id_seq OWNED BY public.study_sessions.id;


--
-- Name: study_sessions_user_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.study_sessions_user_lnk (
    id integer NOT NULL,
    study_session_id integer,
    user_id integer,
    study_session_ord double precision
);


ALTER TABLE public.study_sessions_user_lnk OWNER TO strapi;

--
-- Name: study_sessions_user_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.study_sessions_user_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.study_sessions_user_lnk_id_seq OWNER TO strapi;

--
-- Name: study_sessions_user_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.study_sessions_user_lnk_id_seq OWNED BY public.study_sessions_user_lnk.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO strapi;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNER TO strapi;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO strapi;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNER TO strapi;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO strapi;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNER TO strapi;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: abouts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);


--
-- Name: abouts_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts_cmps ALTER COLUMN id SET DEFAULT nextval('public.abouts_cmps_id_seq'::regclass);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: articles_author_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_author_lnk ALTER COLUMN id SET DEFAULT nextval('public.articles_author_lnk_id_seq'::regclass);


--
-- Name: articles_category_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_category_lnk ALTER COLUMN id SET DEFAULT nextval('public.articles_category_lnk_id_seq'::regclass);


--
-- Name: articles_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_cmps ALTER COLUMN id SET DEFAULT nextval('public.articles_cmps_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: choices id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.choices ALTER COLUMN id SET DEFAULT nextval('public.choices_id_seq'::regclass);


--
-- Name: choices_question_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.choices_question_lnk ALTER COLUMN id SET DEFAULT nextval('public.choices_question_lnk_id_seq'::regclass);


--
-- Name: components_shared_media id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_media ALTER COLUMN id SET DEFAULT nextval('public.components_shared_media_id_seq'::regclass);


--
-- Name: components_shared_quotes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('public.components_shared_quotes_id_seq'::regclass);


--
-- Name: components_shared_rich_texts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_shared_rich_texts_id_seq'::regclass);


--
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- Name: components_shared_sliders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('public.components_shared_sliders_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: globals id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);


--
-- Name: globals_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_cmps ALTER COLUMN id SET DEFAULT nextval('public.globals_cmps_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: questions_quiz_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.questions_quiz_lnk ALTER COLUMN id SET DEFAULT nextval('public.questions_quiz_lnk_id_seq'::regclass);


--
-- Name: quizzes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.quizzes ALTER COLUMN id SET DEFAULT nextval('public.quizzes_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: study_sessions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.study_sessions ALTER COLUMN id SET DEFAULT nextval('public.study_sessions_id_seq'::regclass);


--
-- Name: study_sessions_user_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.study_sessions_user_lnk ALTER COLUMN id SET DEFAULT nextval('public.study_sessions_user_lnk_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Data for Name: abouts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.abouts (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	enmu7nbqisnh9q2ng5922tl9	About the strapi blog	2025-05-28 10:52:40.993	2025-05-28 10:52:40.993	2025-05-28 10:52:40.988	\N	\N	\N
\.


--
-- Data for Name: abouts_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.abouts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	6	shared.quote	blocks	1
2	1	11	shared.rich-text	blocks	2
3	1	6	shared.media	blocks	3
\.


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	oil3r949p5j01xbgydrx8bhl	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-05-28 10:52:36.559	2025-05-28 10:52:36.559	2025-05-28 10:52:36.559	\N	\N	\N
2	gv8r8xdtzc20glwwup43nqpk	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-05-28 10:52:36.565	2025-05-28 10:52:36.565	2025-05-28 10:52:36.565	\N	\N	\N
3	ukpdwt48lkr1eaam30ql9sqi	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-05-28 10:52:36.568	2025-05-28 10:52:36.568	2025-05-28 10:52:36.568	\N	\N	\N
4	onyuquok9y7jzkxvuvnqs5t8	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-05-28 10:52:36.569	2025-05-28 10:52:36.569	2025-05-28 10:52:36.569	\N	\N	\N
5	nkvuxg0ggc3990iu4dh66j6c	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-05-28 10:52:36.57	2025-05-28 10:52:36.57	2025-05-28 10:52:36.57	\N	\N	\N
6	aux0enljr8sm2c97judvf8cj	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-05-28 10:52:36.572	2025-05-28 10:52:36.572	2025-05-28 10:52:36.572	\N	\N	\N
7	ckj4gijszuqmica1ke1rpnel	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-05-28 10:52:36.573	2025-05-28 10:52:36.573	2025-05-28 10:52:36.573	\N	\N	\N
8	z54wdfv1rjly8uc8psb5magl	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-05-28 10:52:36.574	2025-05-28 10:52:36.574	2025-05-28 10:52:36.574	\N	\N	\N
9	hye5mxmrjru0qceo3r1gq4x7	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-05-28 10:52:36.575	2025-05-28 10:52:36.575	2025-05-28 10:52:36.576	\N	\N	\N
10	qzunq7nt2pzjw5ht2bdqpo42	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-05-28 10:52:36.577	2025-05-28 10:52:36.577	2025-05-28 10:52:36.577	\N	\N	\N
11	atl6ia53pg6btcezim5v0atw	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-05-28 10:52:36.578	2025-05-28 10:52:36.578	2025-05-28 10:52:36.578	\N	\N	\N
12	ujav3m1d9x5wksx44xg7ja1n	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-05-28 10:52:36.579	2025-05-28 10:52:36.579	2025-05-28 10:52:36.579	\N	\N	\N
13	w3pufcy51azrnueb160a8u6l	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-05-28 10:52:36.58	2025-05-28 10:52:36.58	2025-05-28 10:52:36.58	\N	\N	\N
14	ab9i9j0riomxfv4g7ogo0x8t	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-05-28 10:52:36.581	2025-05-28 10:52:36.581	2025-05-28 10:52:36.581	\N	\N	\N
15	vv0nccairs2nbyanyalma215	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-05-28 10:52:36.582	2025-05-28 10:52:36.582	2025-05-28 10:52:36.583	\N	\N	\N
16	apjtdynju2et824mpd0rpbp1	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-05-28 10:52:36.584	2025-05-28 10:52:36.584	2025-05-28 10:52:36.585	\N	\N	\N
17	obc3hhzl5x0ek8ii28v4sehf	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-05-28 10:52:36.588	2025-05-28 10:52:36.588	2025-05-28 10:52:36.588	\N	\N	\N
18	j5nt1jpec8kt5imldnt5knvs	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-05-28 10:52:36.596	2025-05-28 10:52:36.596	2025-05-28 10:52:36.596	\N	\N	\N
19	mx0c5c7zxbb88xd46wb31vc0	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-05-28 10:52:36.598	2025-05-28 10:52:36.598	2025-05-28 10:52:36.599	\N	\N	\N
20	htozs8i77wguip1f6ew84t6p	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-05-28 10:52:36.603	2025-05-28 10:52:36.603	2025-05-28 10:52:36.603	\N	\N	\N
21	jfo7arvjdue9448pvcf868ya	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-05-28 10:52:36.605	2025-05-28 10:52:36.605	2025-05-28 10:52:36.605	\N	\N	\N
22	edjnl52rqyffns8o7932kb26	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-05-28 10:52:36.607	2025-05-28 10:52:36.607	2025-05-28 10:52:36.607	\N	\N	\N
23	ltrgq14g8aa0ldxolzsz99ad	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-05-28 10:52:36.609	2025-05-28 10:52:36.609	2025-05-28 10:52:36.609	\N	\N	\N
24	i356os8v9rsii4m21hv3qkk8	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-05-28 10:52:36.611	2025-05-28 10:52:36.611	2025-05-28 10:52:36.611	\N	\N	\N
25	ebzul2nlt4ozc6bl0kf194ka	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-05-28 10:52:36.613	2025-05-28 10:52:36.613	2025-05-28 10:52:36.613	\N	\N	\N
26	jjrlb2yqtssypi7r28gagtb0	plugin::upload.read	{}	\N	{}	[]	2025-05-28 10:52:36.614	2025-05-28 10:52:36.614	2025-05-28 10:52:36.614	\N	\N	\N
27	lg7qjcuj38ztcz6arw3l7a99	plugin::upload.configure-view	{}	\N	{}	[]	2025-05-28 10:52:36.615	2025-05-28 10:52:36.615	2025-05-28 10:52:36.615	\N	\N	\N
28	kkbosgmgejnczqqeg062fmvf	plugin::upload.assets.create	{}	\N	{}	[]	2025-05-28 10:52:36.616	2025-05-28 10:52:36.616	2025-05-28 10:52:36.616	\N	\N	\N
29	zf7eek08lb70scyop9wrcvcb	plugin::upload.assets.update	{}	\N	{}	[]	2025-05-28 10:52:36.618	2025-05-28 10:52:36.618	2025-05-28 10:52:36.618	\N	\N	\N
30	pjiv2jyssmn0kopklotn4wb5	plugin::upload.assets.download	{}	\N	{}	[]	2025-05-28 10:52:36.619	2025-05-28 10:52:36.619	2025-05-28 10:52:36.619	\N	\N	\N
31	ngy5qfwkg4lhg0qobltr4x0o	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-05-28 10:52:36.62	2025-05-28 10:52:36.62	2025-05-28 10:52:36.62	\N	\N	\N
32	w325h053zfiq4qzp5rru8hla	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-05-28 10:52:36.622	2025-05-28 10:52:36.622	2025-05-28 10:52:36.622	\N	\N	\N
33	xz49r9c2ja19oe5l8nmw9951	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-05-28 10:52:36.624	2025-05-28 10:52:36.624	2025-05-28 10:52:36.624	\N	\N	\N
34	m3zaguliuoaad3m0xxdi6i81	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-05-28 10:52:36.626	2025-05-28 10:52:36.626	2025-05-28 10:52:36.626	\N	\N	\N
35	ya26ashqojv1jxfannsd4was	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-05-28 10:52:36.627	2025-05-28 10:52:36.627	2025-05-28 10:52:36.627	\N	\N	\N
36	cbjnnhrhxb2n9otf02up5a7g	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-05-28 10:52:36.628	2025-05-28 10:52:36.628	2025-05-28 10:52:36.628	\N	\N	\N
37	k3xi064f2z7val3grw6r9ayc	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-05-28 10:52:36.63	2025-05-28 10:52:36.63	2025-05-28 10:52:36.63	\N	\N	\N
38	szl48ch5gn60apr16vymwtdm	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-05-28 10:52:36.631	2025-05-28 10:52:36.631	2025-05-28 10:52:36.631	\N	\N	\N
39	zngcnc3rz13pkih9wy4z11x1	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-05-28 10:52:36.633	2025-05-28 10:52:36.633	2025-05-28 10:52:36.633	\N	\N	\N
40	ax2ynxaeugxf2thtj9cpupqt	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-05-28 10:52:36.634	2025-05-28 10:52:36.634	2025-05-28 10:52:36.634	\N	\N	\N
41	ws4y76fhc9ez7u48vx11gtu9	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-05-28 10:52:36.635	2025-05-28 10:52:36.635	2025-05-28 10:52:36.635	\N	\N	\N
42	a3ck6vswdm6ycpdg0wwwdre9	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-05-28 10:52:36.637	2025-05-28 10:52:36.637	2025-05-28 10:52:36.637	\N	\N	\N
43	oxxib557g2mxxwf0807usb3u	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-05-28 10:52:36.638	2025-05-28 10:52:36.638	2025-05-28 10:52:36.638	\N	\N	\N
44	d7fqzvwq0wd8k27rv96a5eox	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-05-28 10:52:36.639	2025-05-28 10:52:36.639	2025-05-28 10:52:36.639	\N	\N	\N
45	cpamuru8xp137ae6notsqsrd	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-05-28 10:52:36.642	2025-05-28 10:52:36.642	2025-05-28 10:52:36.642	\N	\N	\N
46	b1to83y9ssvcq5kjhv195bp1	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-05-28 10:52:36.643	2025-05-28 10:52:36.643	2025-05-28 10:52:36.643	\N	\N	\N
47	l8i1wzg9tblp7kf5azg0780z	plugin::content-manager.explorer.delete	{}	api::about.about	{}	["admin::is-creator"]	2025-05-28 10:52:36.644	2025-05-28 10:52:36.644	2025-05-28 10:52:36.644	\N	\N	\N
48	oxwgs6q1dwvkzrfc4x346e7z	plugin::content-manager.explorer.delete	{}	api::article.article	{}	["admin::is-creator"]	2025-05-28 10:52:36.647	2025-05-28 10:52:36.647	2025-05-28 10:52:36.647	\N	\N	\N
49	dqucyr71ktvsh0fpdxg6rcnp	plugin::content-manager.explorer.delete	{}	api::author.author	{}	["admin::is-creator"]	2025-05-28 10:52:36.65	2025-05-28 10:52:36.65	2025-05-28 10:52:36.65	\N	\N	\N
50	ddnc8e8w136umb7jcc767gru	plugin::content-manager.explorer.delete	{}	api::category.category	{}	["admin::is-creator"]	2025-05-28 10:52:36.652	2025-05-28 10:52:36.652	2025-05-28 10:52:36.652	\N	\N	\N
51	wla6nutac5ea06vwqgwgmift	plugin::content-manager.explorer.delete	{}	api::global.global	{}	["admin::is-creator"]	2025-05-28 10:52:36.654	2025-05-28 10:52:36.654	2025-05-28 10:52:36.654	\N	\N	\N
52	u050k6zz90j6k1xmyb5n5z6o	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2025-05-28 10:52:36.655	2025-05-28 10:52:36.655	2025-05-28 10:52:36.656	\N	\N	\N
53	hjs1i4gh1ex16qiwui3d3mt0	plugin::upload.configure-view	{}	\N	{}	[]	2025-05-28 10:52:36.657	2025-05-28 10:52:36.657	2025-05-28 10:52:36.657	\N	\N	\N
54	mcj0ln57e51us5x9rpgu56yh	plugin::upload.assets.create	{}	\N	{}	[]	2025-05-28 10:52:36.658	2025-05-28 10:52:36.658	2025-05-28 10:52:36.658	\N	\N	\N
55	lt6ztg2860cxhan1nipsjuan	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-05-28 10:52:36.66	2025-05-28 10:52:36.66	2025-05-28 10:52:36.66	\N	\N	\N
56	ycodmjd28zi5gckyzrasn1cw	plugin::upload.assets.download	{}	\N	{}	[]	2025-05-28 10:52:36.662	2025-05-28 10:52:36.662	2025-05-28 10:52:36.662	\N	\N	\N
57	gli0jfcoxyly6h30l59uwx4a	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-05-28 10:52:36.666	2025-05-28 10:52:36.666	2025-05-28 10:52:36.666	\N	\N	\N
59	mnt5vrfibaew33zf6jd6vbvv	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-05-28 10:52:36.682	2025-05-28 10:52:36.682	2025-05-28 10:52:36.682	\N	\N	\N
60	u0ywbbhwg1aafxbtt1smax3a	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-05-28 10:52:36.684	2025-05-28 10:52:36.684	2025-05-28 10:52:36.684	\N	\N	\N
61	zr9kiu63zyc0cofy6q3hmjmg	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-05-28 10:52:36.685	2025-05-28 10:52:36.685	2025-05-28 10:52:36.685	\N	\N	\N
62	kf3k43ghrjaj2njci5jpbrwb	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-05-28 10:52:36.686	2025-05-28 10:52:36.686	2025-05-28 10:52:36.686	\N	\N	\N
63	kr0r9z1xzsadlmeicir1vfde	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-05-28 10:52:36.688	2025-05-28 10:52:36.688	2025-05-28 10:52:36.688	\N	\N	\N
65	ej9xxmk1caeiab6eccm19zb5	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-05-28 10:52:36.691	2025-05-28 10:52:36.691	2025-05-28 10:52:36.691	\N	\N	\N
66	wpahxzv19p2ge4l70fe20qks	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-05-28 10:52:36.692	2025-05-28 10:52:36.692	2025-05-28 10:52:36.692	\N	\N	\N
67	bygor2dnjejqn1m5rh6ur8pz	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-05-28 10:52:36.693	2025-05-28 10:52:36.693	2025-05-28 10:52:36.693	\N	\N	\N
68	my2ci802eo9svd1kmykwzdyn	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-05-28 10:52:36.696	2025-05-28 10:52:36.696	2025-05-28 10:52:36.696	\N	\N	\N
69	x434ac9oeeblkw51kbabj679	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-05-28 10:52:36.697	2025-05-28 10:52:36.697	2025-05-28 10:52:36.697	\N	\N	\N
71	vwgim1ewc9ppyjd27xu1tf6d	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-05-28 10:52:36.7	2025-05-28 10:52:36.7	2025-05-28 10:52:36.7	\N	\N	\N
72	yrc6jkq7ourva5jzjglxeflg	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-05-28 10:52:36.701	2025-05-28 10:52:36.701	2025-05-28 10:52:36.701	\N	\N	\N
73	d5g270v1nwyr6fpie3nkv919	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-05-28 10:52:36.702	2025-05-28 10:52:36.702	2025-05-28 10:52:36.702	\N	\N	\N
74	p3ydojxvawzvqagsbbarbt5g	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-05-28 10:52:36.703	2025-05-28 10:52:36.703	2025-05-28 10:52:36.703	\N	\N	\N
75	jg5i3zat9a36qln2zofnezz4	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-05-28 10:52:36.705	2025-05-28 10:52:36.705	2025-05-28 10:52:36.705	\N	\N	\N
76	wd3tfjxgvpe5h6j6fo5viupu	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-05-28 10:52:36.706	2025-05-28 10:52:36.706	2025-05-28 10:52:36.706	\N	\N	\N
77	c9ikxkrykhltnqseo5vjq44g	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-05-28 10:52:36.709	2025-05-28 10:52:36.709	2025-05-28 10:52:36.709	\N	\N	\N
78	zg4hf0ugvdl0r2hiox13bgc0	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-05-28 10:52:36.71	2025-05-28 10:52:36.71	2025-05-28 10:52:36.71	\N	\N	\N
79	xph54wpvids6sferm4skasbn	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-05-28 10:52:36.711	2025-05-28 10:52:36.711	2025-05-28 10:52:36.711	\N	\N	\N
80	nnmutdo72anw1j6ebb6x4pcy	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-05-28 10:52:36.712	2025-05-28 10:52:36.712	2025-05-28 10:52:36.712	\N	\N	\N
81	znhxnq1srlpo1abbzlsjyr92	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-05-28 10:52:36.713	2025-05-28 10:52:36.713	2025-05-28 10:52:36.713	\N	\N	\N
82	zrq1etplodnbnw6hqirkt9bs	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-05-28 10:52:36.714	2025-05-28 10:52:36.714	2025-05-28 10:52:36.714	\N	\N	\N
83	vhzihp6ni6y0x78ccz2lxdsg	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-05-28 10:52:36.715	2025-05-28 10:52:36.715	2025-05-28 10:52:36.715	\N	\N	\N
84	xss15v31afmxr97kjps35spu	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-05-28 10:52:36.716	2025-05-28 10:52:36.716	2025-05-28 10:52:36.716	\N	\N	\N
85	agwoqmczlsgea8tz2syhhqak	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-05-28 10:52:36.717	2025-05-28 10:52:36.717	2025-05-28 10:52:36.717	\N	\N	\N
86	cl68om8z9erndbe4va9g2eut	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-05-28 10:52:36.719	2025-05-28 10:52:36.719	2025-05-28 10:52:36.719	\N	\N	\N
87	cf8f4kgaftjpiydv7p4jvbn6	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-05-28 10:52:36.719	2025-05-28 10:52:36.719	2025-05-28 10:52:36.72	\N	\N	\N
88	ynn1jlh1pb6lk97pk06xkuji	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-05-28 10:52:36.72	2025-05-28 10:52:36.72	2025-05-28 10:52:36.721	\N	\N	\N
89	g39ui3106rv95uyz1na2p5r4	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-05-28 10:52:36.721	2025-05-28 10:52:36.721	2025-05-28 10:52:36.722	\N	\N	\N
90	rjk0dllcq3faldws9og27dr0	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-05-28 10:52:36.722	2025-05-28 10:52:36.722	2025-05-28 10:52:36.722	\N	\N	\N
91	m7u0hqczfrlctpsjur5je38e	plugin::content-type-builder.read	{}	\N	{}	[]	2025-05-28 10:52:36.724	2025-05-28 10:52:36.724	2025-05-28 10:52:36.724	\N	\N	\N
92	l1okvcyiea66t41awfuhy0bm	plugin::email.settings.read	{}	\N	{}	[]	2025-05-28 10:52:36.725	2025-05-28 10:52:36.725	2025-05-28 10:52:36.725	\N	\N	\N
93	rzsol3bcm0reig2bvr5d6f3r	plugin::upload.read	{}	\N	{}	[]	2025-05-28 10:52:36.729	2025-05-28 10:52:36.729	2025-05-28 10:52:36.729	\N	\N	\N
94	kqy21rdw743fw5921299trcm	plugin::upload.assets.create	{}	\N	{}	[]	2025-05-28 10:52:36.731	2025-05-28 10:52:36.731	2025-05-28 10:52:36.731	\N	\N	\N
95	wegtok42z13y1ift0986osks	plugin::upload.assets.update	{}	\N	{}	[]	2025-05-28 10:52:36.732	2025-05-28 10:52:36.732	2025-05-28 10:52:36.732	\N	\N	\N
96	lw323s8bpck3bindzkg9kfn3	plugin::upload.assets.download	{}	\N	{}	[]	2025-05-28 10:52:36.733	2025-05-28 10:52:36.733	2025-05-28 10:52:36.733	\N	\N	\N
97	oahdt5i33x3bylf99i89gmr3	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-05-28 10:52:36.734	2025-05-28 10:52:36.734	2025-05-28 10:52:36.734	\N	\N	\N
98	bhcv459025nrhv30zwkf9qfe	plugin::upload.configure-view	{}	\N	{}	[]	2025-05-28 10:52:36.735	2025-05-28 10:52:36.735	2025-05-28 10:52:36.735	\N	\N	\N
99	lotit7a2bt1u7kq4teulrd5a	plugin::upload.settings.read	{}	\N	{}	[]	2025-05-28 10:52:36.736	2025-05-28 10:52:36.736	2025-05-28 10:52:36.736	\N	\N	\N
100	ognyj8p2l3qpfvh78mcw2ft6	plugin::i18n.locale.create	{}	\N	{}	[]	2025-05-28 10:52:36.737	2025-05-28 10:52:36.737	2025-05-28 10:52:36.737	\N	\N	\N
101	esf9610mdi6a0eju0g7illol	plugin::i18n.locale.read	{}	\N	{}	[]	2025-05-28 10:52:36.738	2025-05-28 10:52:36.738	2025-05-28 10:52:36.738	\N	\N	\N
102	xxr689rxttztuusx1klprfm9	plugin::i18n.locale.update	{}	\N	{}	[]	2025-05-28 10:52:36.739	2025-05-28 10:52:36.739	2025-05-28 10:52:36.739	\N	\N	\N
103	u45m7fmmfggmi6chsb3efir2	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-05-28 10:52:36.74	2025-05-28 10:52:36.74	2025-05-28 10:52:36.74	\N	\N	\N
104	ypqsw1nqejffq3dbdn2htauy	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-05-28 10:52:36.741	2025-05-28 10:52:36.741	2025-05-28 10:52:36.741	\N	\N	\N
105	lsvu680m3rvlvplgyqc260c3	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-05-28 10:52:36.744	2025-05-28 10:52:36.744	2025-05-28 10:52:36.744	\N	\N	\N
106	mlatwztpybziwxcbb8imzxof	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-05-28 10:52:36.745	2025-05-28 10:52:36.745	2025-05-28 10:52:36.745	\N	\N	\N
107	td37rv8f867az3pbwduu6aui	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-05-28 10:52:36.746	2025-05-28 10:52:36.746	2025-05-28 10:52:36.746	\N	\N	\N
108	f6vnefll5x5l5cboyoouw4z8	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-05-28 10:52:36.748	2025-05-28 10:52:36.748	2025-05-28 10:52:36.748	\N	\N	\N
109	u5swo5826ssxzw9icjdsfxpe	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-05-28 10:52:36.749	2025-05-28 10:52:36.749	2025-05-28 10:52:36.749	\N	\N	\N
110	j5ssum0oi1p2aghxycd7ucs6	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-05-28 10:52:36.75	2025-05-28 10:52:36.75	2025-05-28 10:52:36.75	\N	\N	\N
111	wzvgu3oiwuqwuz4lglq7lr13	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-05-28 10:52:36.751	2025-05-28 10:52:36.751	2025-05-28 10:52:36.751	\N	\N	\N
112	rwv1nm3boz5dl21pl71bafi5	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-05-28 10:52:36.752	2025-05-28 10:52:36.752	2025-05-28 10:52:36.752	\N	\N	\N
113	k5c4mu5gpn47vbo2vnbboejn	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-05-28 10:52:36.753	2025-05-28 10:52:36.753	2025-05-28 10:52:36.753	\N	\N	\N
114	f6348yobzx6363s4bs4cuk94	admin::marketplace.read	{}	\N	{}	[]	2025-05-28 10:52:36.754	2025-05-28 10:52:36.754	2025-05-28 10:52:36.754	\N	\N	\N
115	r7gy2u0ln6l4wbbwnp0dzm6g	admin::webhooks.create	{}	\N	{}	[]	2025-05-28 10:52:36.755	2025-05-28 10:52:36.755	2025-05-28 10:52:36.755	\N	\N	\N
116	udgiqqkb6gspvv7wt81lwud5	admin::webhooks.read	{}	\N	{}	[]	2025-05-28 10:52:36.756	2025-05-28 10:52:36.756	2025-05-28 10:52:36.756	\N	\N	\N
117	ooue8r488g3o3tk3heak0o67	admin::webhooks.update	{}	\N	{}	[]	2025-05-28 10:52:36.758	2025-05-28 10:52:36.758	2025-05-28 10:52:36.758	\N	\N	\N
118	wuiy2ilaag4lchejkbqv3wct	admin::webhooks.delete	{}	\N	{}	[]	2025-05-28 10:52:36.759	2025-05-28 10:52:36.759	2025-05-28 10:52:36.759	\N	\N	\N
119	jacbu4c9q2crq39gqrbarr2p	admin::users.create	{}	\N	{}	[]	2025-05-28 10:52:36.76	2025-05-28 10:52:36.76	2025-05-28 10:52:36.76	\N	\N	\N
120	mg0ntjhegu14qarqcp50tkwk	admin::users.read	{}	\N	{}	[]	2025-05-28 10:52:36.761	2025-05-28 10:52:36.761	2025-05-28 10:52:36.761	\N	\N	\N
121	xx0plsaxl4vq3i5zmk955piw	admin::users.update	{}	\N	{}	[]	2025-05-28 10:52:36.763	2025-05-28 10:52:36.763	2025-05-28 10:52:36.763	\N	\N	\N
122	qgm79yx1l9btcp80gpw9tes6	admin::users.delete	{}	\N	{}	[]	2025-05-28 10:52:36.764	2025-05-28 10:52:36.764	2025-05-28 10:52:36.764	\N	\N	\N
123	bzlq2pc6q8vety9b79x6ij6q	admin::roles.create	{}	\N	{}	[]	2025-05-28 10:52:36.765	2025-05-28 10:52:36.765	2025-05-28 10:52:36.765	\N	\N	\N
124	wilunj243k51emua5afkqvcw	admin::roles.read	{}	\N	{}	[]	2025-05-28 10:52:36.766	2025-05-28 10:52:36.766	2025-05-28 10:52:36.766	\N	\N	\N
125	n8a9hf1o5rcjwvvbf2lqv8a3	admin::roles.update	{}	\N	{}	[]	2025-05-28 10:52:36.769	2025-05-28 10:52:36.769	2025-05-28 10:52:36.769	\N	\N	\N
126	ljl696h2kuh94o9chm8q1hjm	admin::roles.delete	{}	\N	{}	[]	2025-05-28 10:52:36.77	2025-05-28 10:52:36.77	2025-05-28 10:52:36.77	\N	\N	\N
127	v4m9vp00yiawfes2rhb3dp0c	admin::api-tokens.access	{}	\N	{}	[]	2025-05-28 10:52:36.771	2025-05-28 10:52:36.771	2025-05-28 10:52:36.771	\N	\N	\N
128	wz19kf0iplo6jdcxj00jppw0	admin::api-tokens.create	{}	\N	{}	[]	2025-05-28 10:52:36.772	2025-05-28 10:52:36.772	2025-05-28 10:52:36.772	\N	\N	\N
129	xxrd0xb9e1984rcpx4x7p65u	admin::api-tokens.read	{}	\N	{}	[]	2025-05-28 10:52:36.773	2025-05-28 10:52:36.773	2025-05-28 10:52:36.773	\N	\N	\N
130	gqugzqo5ojfprzma6f4gq3ae	admin::api-tokens.update	{}	\N	{}	[]	2025-05-28 10:52:36.774	2025-05-28 10:52:36.774	2025-05-28 10:52:36.774	\N	\N	\N
131	l24km44nkstw87mqkv10w3ww	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-05-28 10:52:36.775	2025-05-28 10:52:36.775	2025-05-28 10:52:36.775	\N	\N	\N
132	fni8ke2i4pokt40kx15vg00z	admin::api-tokens.delete	{}	\N	{}	[]	2025-05-28 10:52:36.777	2025-05-28 10:52:36.777	2025-05-28 10:52:36.777	\N	\N	\N
133	eulfoq1uxqla4e0wjhdd16wj	admin::project-settings.update	{}	\N	{}	[]	2025-05-28 10:52:36.778	2025-05-28 10:52:36.778	2025-05-28 10:52:36.778	\N	\N	\N
134	niz9vatlo0uriutg7ni3mrhl	admin::project-settings.read	{}	\N	{}	[]	2025-05-28 10:52:36.779	2025-05-28 10:52:36.779	2025-05-28 10:52:36.779	\N	\N	\N
135	c7zbunocy40gazkmfytv7y3s	admin::transfer.tokens.access	{}	\N	{}	[]	2025-05-28 10:52:36.781	2025-05-28 10:52:36.781	2025-05-28 10:52:36.781	\N	\N	\N
136	t1nq0b8c1hdcerfrzoclwhnf	admin::transfer.tokens.create	{}	\N	{}	[]	2025-05-28 10:52:36.782	2025-05-28 10:52:36.782	2025-05-28 10:52:36.782	\N	\N	\N
137	znehaaribt9c2xyiw1vvvadv	admin::transfer.tokens.read	{}	\N	{}	[]	2025-05-28 10:52:36.784	2025-05-28 10:52:36.784	2025-05-28 10:52:36.784	\N	\N	\N
138	n4croqag2mbv7aodk8465n6q	admin::transfer.tokens.update	{}	\N	{}	[]	2025-05-28 10:52:36.785	2025-05-28 10:52:36.785	2025-05-28 10:52:36.785	\N	\N	\N
139	z80wdze7udqbwn46pc0e0mr2	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-05-28 10:52:36.787	2025-05-28 10:52:36.787	2025-05-28 10:52:36.787	\N	\N	\N
140	tx0y86cm1feme8bk7387fu08	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-05-28 10:52:36.788	2025-05-28 10:52:36.788	2025-05-28 10:52:36.788	\N	\N	\N
141	wnw6ekmnt8he8bbczj2j4ql4	plugin::documentation.read	{}	\N	{}	[]	2025-05-28 11:23:15.716	2025-05-28 11:23:15.716	2025-05-28 11:23:15.716	\N	\N	\N
142	kmmhx6vs65g4ehwreit7soff	plugin::documentation.settings.update	{}	\N	{}	[]	2025-05-28 11:23:15.737	2025-05-28 11:23:15.737	2025-05-28 11:23:15.737	\N	\N	\N
143	uhrf2zm4ip0m054xqhxpx7ze	plugin::documentation.settings.regenerate	{}	\N	{}	[]	2025-05-28 11:23:15.74	2025-05-28 11:23:15.74	2025-05-28 11:23:15.742	\N	\N	\N
144	t7li0qsw2np52munjc2cnh3l	plugin::documentation.settings.read	{}	\N	{}	[]	2025-05-28 11:23:15.746	2025-05-28 11:23:15.746	2025-05-28 11:23:15.747	\N	\N	\N
148	yeg2g822jvpibgt0mgcc1b1y	plugin::content-manager.explorer.delete	{}	api::question.question	{}	[]	2025-06-12 10:17:47.03	2025-06-12 10:17:47.03	2025-06-12 10:17:47.03	\N	\N	\N
149	ixvkqfelhcpz9907ljystcly	plugin::content-manager.explorer.publish	{}	api::question.question	{}	[]	2025-06-12 10:17:47.032	2025-06-12 10:17:47.032	2025-06-12 10:17:47.033	\N	\N	\N
156	cwsbt9beu4yrspe8hbp5s42f	plugin::content-manager.explorer.delete	{}	api::choice.choice	{}	[]	2025-06-12 10:51:59.609	2025-06-12 10:51:59.609	2025-06-12 10:51:59.609	\N	\N	\N
157	iakbz878dyj5lohk3tn2avba	plugin::content-manager.explorer.publish	{}	api::choice.choice	{}	[]	2025-06-12 10:51:59.61	2025-06-12 10:51:59.61	2025-06-12 10:51:59.61	\N	\N	\N
303	tbtp8q1cr0498yxr4dz43krf	plugin::content-manager.explorer.create	{}	api::question.question	{"fields": ["text", "hint", "questionid", "explanation", "type", "quiz", "code", "title", "answer", "choices"]}	[]	2025-10-04 03:33:13.623	2025-10-04 03:33:13.623	2025-10-04 03:33:13.623	\N	\N	\N
305	hf8xsd1b7jsl0agxd04b4oig	plugin::content-manager.explorer.read	{}	api::question.question	{"fields": ["text", "hint", "questionid", "explanation", "type", "quiz", "code", "title", "answer", "choices"]}	[]	2025-10-04 03:33:13.627	2025-10-04 03:33:13.627	2025-10-04 03:33:13.627	\N	\N	\N
307	d10jv7x7yh8lutsugroukq20	plugin::content-manager.explorer.update	{}	api::question.question	{"fields": ["text", "hint", "questionid", "explanation", "type", "quiz", "code", "title", "answer", "choices"]}	[]	2025-10-04 03:33:13.63	2025-10-04 03:33:13.63	2025-10-04 03:33:13.63	\N	\N	\N
170	pmscuft2wu338zwq4ukravpj	plugin::content-manager.explorer.delete	{}	api::quiz.quiz	{}	[]	2025-06-16 13:11:50.922	2025-06-16 13:11:50.922	2025-06-16 13:11:50.922	\N	\N	\N
171	m8prj0m6qy75a92y9o44hou6	plugin::content-manager.explorer.publish	{}	api::quiz.quiz	{}	[]	2025-06-16 13:11:50.924	2025-06-16 13:11:50.924	2025-06-16 13:11:50.924	\N	\N	\N
204	wjnu9ia4mps23gi5leqtfztm	plugin::content-manager.explorer.create	{}	api::quiz.quiz	{"fields": ["title", "mode", "duration", "number_of_question", "questions"]}	[]	2025-07-08 12:18:35.3	2025-07-08 12:18:35.3	2025-07-08 12:18:35.301	\N	\N	\N
207	aj1lbuycjgk7ohem2pbcvbje	plugin::content-manager.explorer.read	{}	api::quiz.quiz	{"fields": ["title", "mode", "duration", "number_of_question", "questions"]}	[]	2025-07-08 12:18:35.308	2025-07-08 12:18:35.308	2025-07-08 12:18:35.308	\N	\N	\N
210	b3xerkl97he4qxkszwdz9goq	plugin::content-manager.explorer.update	{}	api::quiz.quiz	{"fields": ["title", "mode", "duration", "number_of_question", "questions"]}	[]	2025-07-08 12:18:35.314	2025-07-08 12:18:35.314	2025-07-08 12:18:35.314	\N	\N	\N
279	orvh1hv0e6jdwsd4sy38900z	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "study_sessions"]}	[]	2025-10-03 11:31:44.367	2025-10-03 11:31:44.367	2025-10-03 11:31:44.368	\N	\N	\N
282	dsv0p63rtavbh6v8ysw4zu04	plugin::content-manager.explorer.create	{}	api::study-session.study-session	{"fields": ["mode", "startedAt", "finishedAt", "durationSec", "score", "correctCount", "totalCount", "maxStreak", "user"]}	[]	2025-10-03 11:31:44.374	2025-10-03 11:31:44.374	2025-10-03 11:31:44.374	\N	\N	\N
283	rtgmuxantuue8g1rkjinj0v7	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "study_sessions"]}	[]	2025-10-03 11:31:44.376	2025-10-03 11:31:44.376	2025-10-03 11:31:44.376	\N	\N	\N
286	qri0maqac4lx4b61slhyxt2p	plugin::content-manager.explorer.read	{}	api::study-session.study-session	{"fields": ["mode", "startedAt", "finishedAt", "durationSec", "score", "correctCount", "totalCount", "maxStreak", "user"]}	[]	2025-10-03 11:31:44.38	2025-10-03 11:31:44.38	2025-10-03 11:31:44.38	\N	\N	\N
287	runbv23u0x6uxqixmc75r5ft	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "study_sessions"]}	[]	2025-10-03 11:31:44.381	2025-10-03 11:31:44.381	2025-10-03 11:31:44.381	\N	\N	\N
290	q68ctfbekyv02bynfiytygmc	plugin::content-manager.explorer.update	{}	api::study-session.study-session	{"fields": ["mode", "startedAt", "finishedAt", "durationSec", "score", "correctCount", "totalCount", "maxStreak", "user"]}	[]	2025-10-03 11:31:44.385	2025-10-03 11:31:44.385	2025-10-03 11:31:44.385	\N	\N	\N
291	ytucgycbfwxjc8m5auaezoee	plugin::content-manager.explorer.delete	{}	api::study-session.study-session	{}	[]	2025-10-03 11:31:44.386	2025-10-03 11:31:44.386	2025-10-03 11:31:44.386	\N	\N	\N
292	y8dd0y8tfh414phzt5q3fwya	plugin::content-manager.explorer.publish	{}	api::study-session.study-session	{}	[]	2025-10-03 11:31:44.387	2025-10-03 11:31:44.387	2025-10-03 11:31:44.387	\N	\N	\N
308	kbwoao18n04s2uf0byimdim4	plugin::content-manager.explorer.create	{}	api::choice.choice	{"fields": ["text", "questionid", "question"]}	[]	2025-10-04 03:48:18.362	2025-10-04 03:48:18.362	2025-10-04 03:48:18.362	\N	\N	\N
309	c6j1wh7k7s5s0l13qh5w6zlp	plugin::content-manager.explorer.read	{}	api::choice.choice	{"fields": ["text", "questionid", "question"]}	[]	2025-10-04 03:48:18.365	2025-10-04 03:48:18.365	2025-10-04 03:48:18.366	\N	\N	\N
310	ztxemxnijsmaf7z8o22ov4ym	plugin::content-manager.explorer.update	{}	api::choice.choice	{"fields": ["text", "questionid", "question"]}	[]	2025-10-04 03:48:18.368	2025-10-04 03:48:18.368	2025-10-04 03:48:18.368	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
32	32	3	1
33	33	3	2
34	34	3	3
35	35	3	4
36	36	3	5
37	37	3	6
38	38	3	7
39	39	3	8
40	40	3	9
41	41	3	10
42	42	3	11
43	43	3	12
44	44	3	13
45	45	3	14
46	46	3	15
47	47	3	16
48	48	3	17
49	49	3	18
50	50	3	19
51	51	3	20
52	52	3	21
53	53	3	22
54	54	3	23
55	55	3	24
56	56	3	25
57	57	3	26
59	59	1	2
60	60	1	3
61	61	1	4
62	62	1	5
63	63	1	6
65	65	1	8
66	66	1	9
67	67	1	10
68	68	1	11
69	69	1	12
71	71	1	14
72	72	1	15
73	73	1	16
74	74	1	17
75	75	1	18
76	76	1	19
77	77	1	20
78	78	1	21
79	79	1	22
80	80	1	23
81	81	1	24
82	82	1	25
83	83	1	26
84	84	1	27
85	85	1	28
86	86	1	29
87	87	1	30
88	88	1	31
89	89	1	32
90	90	1	33
91	91	1	34
92	92	1	35
93	93	1	36
94	94	1	37
95	95	1	38
96	96	1	39
97	97	1	40
98	98	1	41
99	99	1	42
100	100	1	43
101	101	1	44
102	102	1	45
103	103	1	46
104	104	1	47
105	105	1	48
106	106	1	49
107	107	1	50
108	108	1	51
109	109	1	52
110	110	1	53
111	111	1	54
112	112	1	55
113	113	1	56
114	114	1	57
115	115	1	58
116	116	1	59
117	117	1	60
118	118	1	61
119	119	1	62
120	120	1	63
121	121	1	64
122	122	1	65
123	123	1	66
124	124	1	67
125	125	1	68
126	126	1	69
127	127	1	70
128	128	1	71
129	129	1	72
130	130	1	73
131	131	1	74
132	132	1	75
133	133	1	76
134	134	1	77
135	135	1	78
136	136	1	79
137	137	1	80
138	138	1	81
139	139	1	82
140	140	1	83
141	141	1	84
142	142	1	85
143	143	1	86
144	144	1	87
148	148	1	91
149	149	1	92
156	156	1	99
157	157	1	100
303	303	1	136
305	305	1	138
307	307	1	140
170	170	1	110
171	171	1	111
279	279	1	121
282	282	1	124
283	283	1	125
286	286	1	128
287	287	1	129
290	290	1	132
291	291	1	133
292	292	1	134
308	308	1	141
309	309	1	142
310	310	1	143
204	204	1	114
207	207	1	117
210	210	1	120
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	dg0ylva7aacwfv1qugalvr5f	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-05-28 10:52:36.55	2025-05-28 10:52:36.55	2025-05-28 10:52:36.55	\N	\N	\N
2	f3pk7e1iwhlo0ebl27ibuufp	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-05-28 10:52:36.554	2025-05-28 10:52:36.554	2025-05-28 10:52:36.554	\N	\N	\N
3	e1de1ea4dx1bpyegbrbx8s05	Author	strapi-author	Authors can manage the content they have created.	2025-05-28 10:52:36.555	2025-05-28 10:52:36.555	2025-05-28 10:52:36.555	\N	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ob5ms8xggbe4xo0ofktcenuh	Masahiro	Toma	\N	masahiro.toma@thedott.io	$2a$10$eGt.n39XLdHFcrp0lLuxOeu6IrwMXxBDF7xlvP1JJUF/f7imP1YB2	\N	\N	t	f	\N	2025-05-28 11:05:42.915	2025-05-28 11:05:42.915	2025-05-28 11:05:42.918	\N	\N	\N
\.


--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles (id, document_id, title, description, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	im5z6xdwlqtysb8ysgz4zsht	The internet's Own boy	Follow the story of Aaron Swartz, the boy who could change the world	the-internet-s-own-boy	2025-05-28 10:52:39.873	2025-05-28 10:52:39.873	\N	\N	\N	\N
2	w02gs78k2be489aqksmnxofp	This shrimp is awesome	Mantis shrimps, or stomatopods, are marine crustaceans of the order Stomatopoda.	this-shrimp-is-awesome	2025-05-28 10:52:40.015	2025-05-28 10:52:40.015	\N	\N	\N	\N
3	uyrikr4sv111gvdghy78faxj	A bug is becoming a meme on the internet	How a bug on MySQL is becoming a meme on the internet	a-bug-is-becoming-a-meme-on-the-internet	2025-05-28 10:52:40.314	2025-05-28 10:52:40.314	\N	\N	\N	\N
4	ocw0me1rq9yx5k1nwq2y2bea	Beautiful picture	Description of a beautiful picture	beautiful-picture	2025-05-28 10:52:40.701	2025-05-28 10:52:40.701	\N	\N	\N	\N
5	mzmuwfe8qm3ap3yo0gr9lp3o	What's inside a Black Hole	Maybe the answer is in this article, or not...	what-s-inside-a-black-hole	2025-05-28 10:52:40.76	2025-05-28 10:52:40.76	\N	\N	\N	\N
\.


--
-- Data for Name: articles_author_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles_author_lnk (id, article_id, author_id, article_ord) FROM stdin;
1	1	1	1
2	2	1	2
3	3	2	1
4	4	2	2
5	5	2	3
\.


--
-- Data for Name: articles_category_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles_category_lnk (id, article_id, category_id, article_ord) FROM stdin;
1	1	5	1
2	2	4	1
3	3	2	1
4	4	4	2
5	5	1	1
\.


--
-- Data for Name: articles_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.rich-text	blocks	1
2	1	1	shared.quote	blocks	2
3	1	1	shared.media	blocks	3
4	1	2	shared.rich-text	blocks	4
5	1	1	shared.slider	blocks	5
6	2	3	shared.rich-text	blocks	1
7	2	2	shared.quote	blocks	2
8	2	2	shared.media	blocks	3
9	2	4	shared.rich-text	blocks	4
10	2	2	shared.slider	blocks	5
11	3	5	shared.rich-text	blocks	1
12	3	3	shared.quote	blocks	2
13	3	3	shared.media	blocks	3
14	3	6	shared.rich-text	blocks	4
15	3	3	shared.slider	blocks	5
16	4	7	shared.rich-text	blocks	1
17	4	4	shared.quote	blocks	2
18	4	4	shared.media	blocks	3
19	4	8	shared.rich-text	blocks	4
20	4	4	shared.slider	blocks	5
21	5	9	shared.rich-text	blocks	1
22	5	5	shared.quote	blocks	2
23	5	5	shared.media	blocks	3
24	5	10	shared.rich-text	blocks	4
25	5	5	shared.slider	blocks	5
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.authors (id, document_id, name, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	hzdv2v18hzamwjlfoo8fgwpd	David Doe	daviddoe@strapi.io	2025-05-28 10:52:37.231	2025-05-28 10:52:37.231	2025-05-28 10:52:37.229	\N	\N	\N
2	ph9k3b2bnvp75m1nkwbfy71q	Sarah Baker	sarahbaker@strapi.io	2025-05-28 10:52:37.805	2025-05-28 10:52:37.805	2025-05-28 10:52:37.801	\N	\N	\N
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.categories (id, document_id, name, slug, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	r40f9upks76prxvrr474ury4	news	news	\N	2025-05-28 10:52:36.839	2025-05-28 10:52:36.839	2025-05-28 10:52:36.835	\N	\N	\N
2	d4a5xcl3oas4akm2v9v334dj	tech	tech	\N	2025-05-28 10:52:36.843	2025-05-28 10:52:36.843	2025-05-28 10:52:36.842	\N	\N	\N
3	hj2254pcjfgw9nl6bd0stxri	food	food	\N	2025-05-28 10:52:36.845	2025-05-28 10:52:36.845	2025-05-28 10:52:36.845	\N	\N	\N
4	nzi7383epm6z3hj7rk2y7m1w	nature	nature	\N	2025-05-28 10:52:36.848	2025-05-28 10:52:36.848	2025-05-28 10:52:36.847	\N	\N	\N
5	w2ruog0nzjygz8gc561xqu13	story	story	\N	2025-05-28 10:52:36.85	2025-05-28 10:52:36.85	2025-05-28 10:52:36.849	\N	\N	\N
\.


--
-- Data for Name: choices; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.choices (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, text, questionid) FROM stdin;
55	eqtbo3vh6vtnnhk93ztxc54b	2025-07-21 07:32:03.356	2025-07-21 07:32:03.356	\N	1	1	\N	includes	1
56	eqtbo3vh6vtnnhk93ztxc54b	2025-07-21 07:32:03.356	2025-07-21 07:32:03.356	2025-07-21 07:32:03.371	1	1	\N	includes	1
57	tyx3ivt0m3kfsuf5963vn5yu	2025-07-21 07:36:38.364	2025-07-21 07:36:38.364	\N	1	1	\N	indexOf	1
58	tyx3ivt0m3kfsuf5963vn5yu	2025-07-21 07:36:38.364	2025-07-21 07:36:38.364	2025-07-21 07:36:38.377	1	1	\N	indexOf	1
59	lo3s35ewexn9ggzn0futbkft	2025-07-21 07:37:46.746	2025-07-21 07:37:46.746	\N	1	1	\N	find	1
60	lo3s35ewexn9ggzn0futbkft	2025-07-21 07:37:46.746	2025-07-21 07:37:46.746	2025-07-21 07:37:46.756	1	1	\N	find	1
61	c0kdm438zzrwo2mv4t5suvaa	2025-07-21 07:38:09.568	2025-07-21 07:38:09.568	\N	1	1	\N	some	1
62	c0kdm438zzrwo2mv4t5suvaa	2025-07-21 07:38:09.568	2025-07-21 07:38:09.568	2025-07-21 07:38:09.579	1	1	\N	some	1
63	jq4iwpar5pesp40u8wmf1uyg	2025-07-21 07:43:46.664	2025-07-21 07:43:46.664	\N	1	1	\N	push	2
64	jq4iwpar5pesp40u8wmf1uyg	2025-07-21 07:43:46.664	2025-07-21 07:43:46.664	2025-07-21 07:43:46.682	1	1	\N	push	2
65	ndf839mowh5tgzh8cagu39dt	2025-07-21 07:44:05.975	2025-07-21 07:44:05.975	\N	1	1	\N	pop	2
66	ndf839mowh5tgzh8cagu39dt	2025-07-21 07:44:05.975	2025-07-21 07:44:05.975	2025-07-21 07:44:05.983	1	1	\N	pop	2
67	am0xbkoygj79wa62v0axvhq7	2025-07-21 07:44:24.869	2025-07-21 07:44:24.869	\N	1	1	\N	unshift	2
68	am0xbkoygj79wa62v0axvhq7	2025-07-21 07:44:24.869	2025-07-21 07:44:24.869	2025-07-21 07:44:24.877	1	1	\N	unshift	2
69	a651uwr89bydfr9g6u4tl4qy	2025-07-21 07:44:38.932	2025-07-21 07:44:38.932	\N	1	1	\N	shift	2
70	a651uwr89bydfr9g6u4tl4qy	2025-07-21 07:44:38.932	2025-07-21 07:44:38.932	2025-07-21 07:44:38.94	1	1	\N	shift	2
71	e606o4fnp0sifefcd2ltjgqj	2025-07-21 07:46:27.535	2025-07-21 07:46:27.535	\N	1	1	\N	pop	3
72	e606o4fnp0sifefcd2ltjgqj	2025-07-21 07:46:27.535	2025-07-21 07:46:27.535	2025-07-21 07:46:27.547	1	1	\N	pop	3
73	bspsebs925kezjmpdyeaaber	2025-07-21 07:46:51.975	2025-07-21 07:46:51.975	\N	1	1	\N	shift	3
74	bspsebs925kezjmpdyeaaber	2025-07-21 07:46:51.975	2025-07-21 07:46:51.975	2025-07-21 07:46:51.982	1	1	\N	shift	3
75	us39irxf8syaogba9pm4dg84	2025-07-21 07:47:09.412	2025-07-21 07:47:09.412	\N	1	1	\N	push	3
76	us39irxf8syaogba9pm4dg84	2025-07-21 07:47:09.412	2025-07-21 07:47:09.412	2025-07-21 07:47:09.42	1	1	\N	push	3
77	ng1d8q7fjw0xi6xldphsma50	2025-07-21 07:47:27.461	2025-07-21 07:47:27.461	\N	1	1	\N	slice	3
78	ng1d8q7fjw0xi6xldphsma50	2025-07-21 07:47:27.461	2025-07-21 07:47:27.461	2025-07-21 07:47:27.468	1	1	\N	slice	3
79	kd9u3faodk91bahu5pnd6bd3	2025-07-21 07:50:30.638	2025-07-21 07:50:30.638	\N	1	1	\N	join	4
80	kd9u3faodk91bahu5pnd6bd3	2025-07-21 07:50:30.638	2025-07-21 07:50:30.638	2025-07-21 07:50:30.647	1	1	\N	join	4
81	qdm0lou8fvn9y29azbkkpazq	2025-07-21 07:50:48.809	2025-07-21 07:50:48.809	\N	1	1	\N	split	4
82	qdm0lou8fvn9y29azbkkpazq	2025-07-21 07:50:48.809	2025-07-21 07:50:48.809	2025-07-21 07:50:48.82	1	1	\N	split	4
83	lvowiih51je5lfd443m4sz7n	2025-07-21 07:51:03.993	2025-07-21 07:51:03.993	\N	1	1	\N	slice	4
84	lvowiih51je5lfd443m4sz7n	2025-07-21 07:51:03.993	2025-07-21 07:51:03.993	2025-07-21 07:51:04	1	1	\N	slice	4
85	m6citcvycb393hu3gdv4jvod	2025-07-21 07:51:20.439	2025-07-21 07:51:20.439	\N	1	1	\N	replace	4
86	m6citcvycb393hu3gdv4jvod	2025-07-21 07:51:20.439	2025-07-21 07:51:20.439	2025-07-21 07:51:20.446	1	1	\N	replace	4
87	xtrq26bouj87og5wcm09mlvg	2025-07-21 07:54:10.963	2025-07-21 07:54:10.963	\N	1	1	\N	concat	5
88	xtrq26bouj87og5wcm09mlvg	2025-07-21 07:54:10.963	2025-07-21 07:54:10.963	2025-07-21 07:54:10.973	1	1	\N	concat	5
89	btxinc42w85iz3e4cxc0cphe	2025-07-21 07:54:38.422	2025-07-21 07:54:38.422	\N	1	1	\N	join	5
90	btxinc42w85iz3e4cxc0cphe	2025-07-21 07:54:38.422	2025-07-21 07:54:38.422	2025-07-21 07:54:38.431	1	1	\N	join	5
93	mzt3bgicqua0k9u9xs6u7n4l	2025-07-21 07:55:14.652	2025-07-21 07:55:14.652	\N	1	1	\N	map	5
94	mzt3bgicqua0k9u9xs6u7n4l	2025-07-21 07:55:14.652	2025-07-21 07:55:14.652	2025-07-21 07:55:14.659	1	1	\N	map	5
95	dmlfo5cajsi5hr3g3zpiy8wp	2025-07-21 07:56:22.817	2025-07-21 07:56:22.817	\N	1	1	\N	push	5
96	dmlfo5cajsi5hr3g3zpiy8wp	2025-07-21 07:56:22.817	2025-07-21 07:56:22.817	2025-07-21 07:56:22.825	1	1	\N	push	5
97	hsap2e1thlyfz2cenbegm1l4	2025-07-21 12:45:12.942	2025-07-21 12:45:12.942	\N	1	1	\N	slice	6
98	hsap2e1thlyfz2cenbegm1l4	2025-07-21 12:45:12.942	2025-07-21 12:45:12.942	2025-07-21 12:45:12.962	1	1	\N	slice	6
99	n9ey8yudju9rr5p6az15mr6i	2025-07-21 12:45:27.15	2025-07-21 12:45:27.15	\N	1	1	\N	splice	6
100	n9ey8yudju9rr5p6az15mr6i	2025-07-21 12:45:27.15	2025-07-21 12:45:27.15	2025-07-21 12:45:27.163	1	1	\N	splice	6
101	nsehsi3oqtmo11uiv472euj3	2025-07-21 12:45:41.149	2025-07-21 12:45:41.149	\N	1	1	\N	substr	6
102	nsehsi3oqtmo11uiv472euj3	2025-07-21 12:45:41.149	2025-07-21 12:45:41.149	2025-07-21 12:45:41.162	1	1	\N	substr	6
103	l7mcqha0l6ic8ghcc3kpot9p	2025-07-21 12:45:53.832	2025-07-21 12:45:53.832	\N	1	1	\N	filter	6
104	l7mcqha0l6ic8ghcc3kpot9p	2025-07-21 12:45:53.832	2025-07-21 12:45:53.832	2025-07-21 12:45:53.842	1	1	\N	filter	6
105	xvijf5du3r54ifo6nx4khdil	2025-07-21 12:58:32.673	2025-07-21 12:58:32.673	\N	1	1	\N	sort	7
106	xvijf5du3r54ifo6nx4khdil	2025-07-21 12:58:32.673	2025-07-21 12:58:32.673	2025-07-21 12:58:32.684	1	1	\N	sort	7
107	hykgfvv4txpl0ik12kc1m4li	2025-07-21 12:58:56.352	2025-07-21 12:58:56.352	\N	1	1	\N	reverce	7
108	hykgfvv4txpl0ik12kc1m4li	2025-07-21 12:58:56.352	2025-07-21 12:58:56.352	2025-07-21 12:58:56.361	1	1	\N	reverce	7
109	ij34koma45gqgoq01g6p9wbz	2025-07-21 12:59:14.06	2025-07-21 12:59:14.06	\N	1	1	\N	map	7
110	ij34koma45gqgoq01g6p9wbz	2025-07-21 12:59:14.06	2025-07-21 12:59:14.06	2025-07-21 12:59:14.069	1	1	\N	map	7
111	l7h4p6ohfdi8cflra97xieel	2025-07-21 12:59:35.923	2025-07-21 13:00:34.2	\N	1	1	\N	reduce	7
113	l7h4p6ohfdi8cflra97xieel	2025-07-21 12:59:35.923	2025-07-21 13:00:34.2	2025-07-21 13:00:34.212	1	1	\N	reduce	7
114	d95u6rczgtisbe7k4k1g2pjf	2025-07-21 13:01:54.812	2025-07-21 13:01:54.812	\N	1	1	\N	some	8
115	d95u6rczgtisbe7k4k1g2pjf	2025-07-21 13:01:54.812	2025-07-21 13:01:54.812	2025-07-21 13:01:54.82	1	1	\N	some	8
116	puxzowfea3fwg48tiuwt7lxb	2025-07-21 13:02:17.834	2025-07-21 13:02:17.834	\N	1	1	\N	every	8
117	puxzowfea3fwg48tiuwt7lxb	2025-07-21 13:02:17.834	2025-07-21 13:02:17.834	2025-07-21 13:02:17.848	1	1	\N	every	8
118	av8wiz805hpgoif4tk1fqv7m	2025-07-21 13:02:36.505	2025-07-21 13:02:36.505	\N	1	1	\N	filter	8
119	av8wiz805hpgoif4tk1fqv7m	2025-07-21 13:02:36.505	2025-07-21 13:02:36.505	2025-07-21 13:02:36.514	1	1	\N	filter	8
120	ji0nv54ar6o20utzrekwj32g	2025-07-21 13:02:49.234	2025-07-21 13:02:49.234	\N	1	1	\N	find	8
121	ji0nv54ar6o20utzrekwj32g	2025-07-21 13:02:49.234	2025-07-21 13:02:49.234	2025-07-21 13:02:49.243	1	1	\N	find	8
122	p9wwe7cxnlo6p86vjoyto1nr	2025-07-21 13:06:49.034	2025-07-21 13:06:49.034	\N	1	1	\N	every	9
123	p9wwe7cxnlo6p86vjoyto1nr	2025-07-21 13:06:49.034	2025-07-21 13:06:49.034	2025-07-21 13:06:49.043	1	1	\N	every	9
124	iba9x2hm85ififapdv3imp4n	2025-07-21 13:07:13.192	2025-07-21 13:07:13.192	\N	1	1	\N	some	9
125	iba9x2hm85ififapdv3imp4n	2025-07-21 13:07:13.192	2025-07-21 13:07:13.192	2025-07-21 13:07:13.202	1	1	\N	some	9
126	z7usa72qm3b4qvcm12631fw4	2025-07-21 13:07:29.564	2025-07-21 13:07:29.564	\N	1	1	\N	find	9
127	z7usa72qm3b4qvcm12631fw4	2025-07-21 13:07:29.564	2025-07-21 13:07:29.564	2025-07-21 13:07:29.574	1	1	\N	find	9
128	x5yr9x6ut8t115szi57sgxa5	2025-07-21 13:07:42.52	2025-07-21 13:07:42.52	\N	1	1	\N	map	9
129	x5yr9x6ut8t115szi57sgxa5	2025-07-21 13:07:42.52	2025-07-21 13:07:42.52	2025-07-21 13:07:42.527	1	1	\N	map	9
130	pars3w9f39oonfcnjym0uzb7	2025-07-21 13:09:47.793	2025-07-21 13:09:47.793	\N	1	1	\N	splice	10
131	pars3w9f39oonfcnjym0uzb7	2025-07-21 13:09:47.793	2025-07-21 13:09:47.793	2025-07-21 13:09:47.803	1	1	\N	splice	10
132	wd7ls14df20e5xpxmx3prwsf	2025-07-21 13:10:18.817	2025-07-21 13:10:18.817	\N	1	1	\N	slice	10
133	wd7ls14df20e5xpxmx3prwsf	2025-07-21 13:10:18.817	2025-07-21 13:10:18.817	2025-07-21 13:10:18.826	1	1	\N	slice	10
134	cney15uejyyzzheq1sng2fjk	2025-07-21 13:10:37.083	2025-07-21 13:10:37.083	\N	1	1	\N	concat	10
135	cney15uejyyzzheq1sng2fjk	2025-07-21 13:10:37.083	2025-07-21 13:10:37.083	2025-07-21 13:10:37.092	1	1	\N	concat	10
136	yb7pehjdwkfm140ojb0fmfnq	2025-07-21 13:11:03.642	2025-07-21 13:11:03.642	\N	1	1	\N	push	10
137	yb7pehjdwkfm140ojb0fmfnq	2025-07-21 13:11:03.642	2025-07-21 13:11:03.642	2025-07-21 13:11:03.651	1	1	\N	push	10
138	xkub61hpb3o02dpiol7o15ue	2025-08-06 03:58:03.864	2025-08-06 03:58:03.864	\N	1	1	\N	every	9
139	xkub61hpb3o02dpiol7o15ue	2025-08-06 03:58:03.864	2025-08-06 03:58:03.864	2025-08-06 03:58:03.878	1	1	\N	every	9
140	bhhw3z4utbqf0zrax1ov44ct	2025-08-06 05:34:42.168	2025-08-06 05:34:42.168	\N	1	1	\N	join	11
141	bhhw3z4utbqf0zrax1ov44ct	2025-08-06 05:34:42.168	2025-08-06 05:34:42.168	2025-08-06 05:34:42.178	1	1	\N	join	11
142	hdgx438k2kwvwpr3wkt9a6mh	2025-08-06 05:35:21.568	2025-08-06 05:35:21.568	\N	1	1	\N	concat	11
143	hdgx438k2kwvwpr3wkt9a6mh	2025-08-06 05:35:21.568	2025-08-06 05:35:21.568	2025-08-06 05:35:21.59	1	1	\N	concat	11
144	d30nyxqk8ys6z509yul0p4u5	2025-08-06 05:35:58.557	2025-08-06 05:35:58.557	\N	1	1	\N	push	11
145	d30nyxqk8ys6z509yul0p4u5	2025-08-06 05:35:58.557	2025-08-06 05:35:58.557	2025-08-06 05:35:58.57	1	1	\N	push	11
146	iix33hbclvoiecgjc589ztpg	2025-08-06 05:36:30.86	2025-08-06 05:36:30.86	\N	1	1	\N	toString	11
147	iix33hbclvoiecgjc589ztpg	2025-08-06 05:36:30.86	2025-08-06 05:36:30.86	2025-08-06 05:36:30.866	1	1	\N	toString	11
148	w7lieh7w48ah2k2ikgbq5j2j	2025-08-06 05:39:09.484	2025-08-06 05:39:09.484	\N	1	1	\N	indexOf	12
149	w7lieh7w48ah2k2ikgbq5j2j	2025-08-06 05:39:09.484	2025-08-06 05:39:09.484	2025-08-06 05:39:09.494	1	1	\N	indexOf	12
150	zlmub9l0a0xtbxougvip7glm	2025-08-06 05:41:31.808	2025-08-06 05:41:31.808	\N	1	1	\N	search	12
151	zlmub9l0a0xtbxougvip7glm	2025-08-06 05:41:31.808	2025-08-06 05:41:31.808	2025-08-06 05:41:31.817	1	1	\N	search	12
152	di81w5px565traiip6yj2h1t	2025-08-06 05:42:58.815	2025-08-06 05:43:08.183	\N	1	1	\N	includes	12
154	di81w5px565traiip6yj2h1t	2025-08-06 05:42:58.815	2025-08-06 05:43:08.183	2025-08-06 05:43:08.19	1	1	\N	includes	12
155	b5g9dw53kusz3rjzfjur5bab	2025-08-06 05:43:31.716	2025-08-06 05:43:31.716	\N	1	1	\N	slice	12
156	b5g9dw53kusz3rjzfjur5bab	2025-08-06 05:43:31.716	2025-08-06 05:43:31.716	2025-08-06 05:43:31.725	1	1	\N	slice	12
157	cba279qebot77m9wsz7reigi	2025-08-06 05:48:45.152	2025-08-06 05:48:45.152	\N	1	1	\N	push	13
158	cba279qebot77m9wsz7reigi	2025-08-06 05:48:45.152	2025-08-06 05:48:45.152	2025-08-06 05:48:45.161	1	1	\N	push	13
159	r8xj3gibsxxham4gmxbfswfr	2025-08-06 05:49:19.281	2025-08-06 05:49:19.281	\N	1	1	\N	unshift	13
160	r8xj3gibsxxham4gmxbfswfr	2025-08-06 05:49:19.281	2025-08-06 05:49:19.281	2025-08-06 05:49:19.29	1	1	\N	unshift	13
161	qj48dv7zeopqsaybhrtmzflg	2025-08-06 05:49:40.514	2025-08-06 05:49:40.514	\N	1	1	\N	pop	13
162	qj48dv7zeopqsaybhrtmzflg	2025-08-06 05:49:40.514	2025-08-06 05:49:40.514	2025-08-06 05:49:40.522	1	1	\N	pop	13
163	is8224pwgbzwwalblo6ewcr8	2025-08-06 05:50:17.752	2025-08-06 05:50:17.752	\N	1	1	\N	shift	13
164	is8224pwgbzwwalblo6ewcr8	2025-08-06 05:50:17.752	2025-08-06 05:50:17.752	2025-08-06 05:50:17.762	1	1	\N	shift	13
165	frxeqwt8lct437i08vlldkod	2025-08-06 05:50:52.877	2025-08-06 05:50:52.877	\N	1	1	\N	startsWith	14
166	frxeqwt8lct437i08vlldkod	2025-08-06 05:50:52.877	2025-08-06 05:50:52.877	2025-08-06 05:50:52.887	1	1	\N	startsWith	14
167	aqlk5ptpfb7vn76e80pcjlpp	2025-08-06 05:55:12.571	2025-08-06 05:55:12.571	\N	1	1	\N	includes	14
168	aqlk5ptpfb7vn76e80pcjlpp	2025-08-06 05:55:12.571	2025-08-06 05:55:12.571	2025-08-06 05:55:12.58	1	1	\N	includes	14
169	gwc9ento685lij7kupzamyeo	2025-08-06 05:56:17.703	2025-08-06 05:56:17.703	\N	1	1	\N	indexOf	14
170	gwc9ento685lij7kupzamyeo	2025-08-06 05:56:17.703	2025-08-06 05:56:17.703	2025-08-06 05:56:17.714	1	1	\N	indexOf	14
171	fy8aqpa416cvzob9a4ku9owi	2025-08-06 05:59:40.028	2025-08-06 05:59:40.028	\N	1	1	\N	slice	14
172	fy8aqpa416cvzob9a4ku9owi	2025-08-06 05:59:40.028	2025-08-06 05:59:40.028	2025-08-06 05:59:40.038	1	1	\N	slice	14
173	fek3ueunotr1q4jvjtzuwlxo	2025-08-06 06:00:42.304	2025-08-06 06:00:42.304	\N	1	1	\N	forEach	15
174	fek3ueunotr1q4jvjtzuwlxo	2025-08-06 06:00:42.304	2025-08-06 06:00:42.304	2025-08-06 06:00:42.313	1	1	\N	forEach	15
175	ec6cqfcojlhnbk9qkuuavpc4	2025-08-06 06:01:10.451	2025-08-06 06:01:10.451	\N	1	1	\N	map	15
176	ec6cqfcojlhnbk9qkuuavpc4	2025-08-06 06:01:10.451	2025-08-06 06:01:10.451	2025-08-06 06:01:10.458	1	1	\N	map	15
177	iddush0xxdop4ocacpb3htwb	2025-08-06 06:01:38.428	2025-08-06 06:01:38.428	\N	1	1	\N	filter	15
178	iddush0xxdop4ocacpb3htwb	2025-08-06 06:01:38.428	2025-08-06 06:01:38.428	2025-08-06 06:01:38.434	1	1	\N	filter	15
179	iaoi7jholuzaahlebidhu0rm	2025-08-06 06:01:53.938	2025-08-06 06:01:53.938	\N	1	1	\N	reduce	15
180	iaoi7jholuzaahlebidhu0rm	2025-08-06 06:01:53.938	2025-08-06 06:01:53.938	2025-08-06 06:01:53.948	1	1	\N	reduce	15
181	w34gx67rt6c5wzubm2szb07u	2025-08-06 06:02:27.915	2025-08-06 06:02:27.915	\N	1	1	\N	includes	16
182	w34gx67rt6c5wzubm2szb07u	2025-08-06 06:02:27.915	2025-08-06 06:02:27.915	2025-08-06 06:02:27.923	1	1	\N	includes	16
183	kqyhj2m9zl3yb2pl9rksndtf	2025-08-06 06:02:43.756	2025-08-06 06:02:43.756	\N	1	1	\N	indexOf	16
184	kqyhj2m9zl3yb2pl9rksndtf	2025-08-06 06:02:43.756	2025-08-06 06:02:43.756	2025-08-06 06:02:43.767	1	1	\N	indexOf	16
185	ypa5h7ob30n3mfp8ifd1otid	2025-08-06 06:02:57.509	2025-08-06 06:02:57.509	\N	1	1	\N	some	16
186	ypa5h7ob30n3mfp8ifd1otid	2025-08-06 06:02:57.509	2025-08-06 06:02:57.509	2025-08-06 06:02:57.516	1	1	\N	some	16
187	ft42f3apy3luxqavdyevwmy9	2025-08-06 06:03:32.077	2025-08-06 06:03:32.077	\N	1	1	\N	filter	16
188	ft42f3apy3luxqavdyevwmy9	2025-08-06 06:03:32.077	2025-08-06 06:03:32.077	2025-08-06 06:03:32.087	1	1	\N	filter	16
191	rn28f3gzuub1gr03ujlc0eqy	2025-08-06 06:04:31.521	2025-08-06 06:04:31.521	\N	1	1	\N	push	17
192	rn28f3gzuub1gr03ujlc0eqy	2025-08-06 06:04:31.521	2025-08-06 06:04:31.521	2025-08-06 06:04:31.529	1	1	\N	push	17
189	e8f4o8gkiz58kixvs8pbgp20	2025-08-06 06:03:59.21	2025-08-06 06:04:56.8	\N	1	1	\N	unshift	17
193	e8f4o8gkiz58kixvs8pbgp20	2025-08-06 06:03:59.21	2025-08-06 06:04:56.8	2025-08-06 06:04:56.81	1	1	\N	unshift	17
194	xh931j80sky0b7znvmpef3q0	2025-08-06 06:05:34.147	2025-08-06 06:05:34.147	\N	1	1	\N	shift	17
195	xh931j80sky0b7znvmpef3q0	2025-08-06 06:05:34.147	2025-08-06 06:05:34.147	2025-08-06 06:05:34.154	1	1	\N	shift	17
196	t15txmtgl6u0b8e18po57txs	2025-08-06 06:06:02.745	2025-08-06 06:06:02.745	\N	1	1	\N	pop	17
197	t15txmtgl6u0b8e18po57txs	2025-08-06 06:06:02.745	2025-08-06 06:06:02.745	2025-08-06 06:06:02.754	1	1	\N	pop	17
198	ciltlzafs0odin3s902sih7f	2025-08-06 06:06:38.517	2025-08-06 06:06:38.517	\N	1	1	\N	pop	18
199	ciltlzafs0odin3s902sih7f	2025-08-06 06:06:38.517	2025-08-06 06:06:38.517	2025-08-06 06:06:38.524	1	1	\N	pop	18
200	lvh8zu7ea464a7ac296ajuxm	2025-08-06 06:06:59.612	2025-08-06 06:06:59.612	\N	1	1	\N	push	18
201	lvh8zu7ea464a7ac296ajuxm	2025-08-06 06:06:59.612	2025-08-06 06:06:59.612	2025-08-06 06:06:59.624	1	1	\N	push	18
202	f3d84a09snur9nxbd02ke3zl	2025-08-06 06:07:28.756	2025-08-06 06:07:28.756	\N	1	1	\N	shift	18
203	f3d84a09snur9nxbd02ke3zl	2025-08-06 06:07:28.756	2025-08-06 06:07:28.756	2025-08-06 06:07:28.765	1	1	\N	shift	18
204	yqogeobgzoxy4435vm83ixkk	2025-08-06 06:08:03.127	2025-08-06 06:08:03.127	\N	1	1	\N	slice	18
205	yqogeobgzoxy4435vm83ixkk	2025-08-06 06:08:03.127	2025-08-06 06:08:03.127	2025-08-06 06:08:03.135	1	1	\N	slice	18
208	stu0u9amp1etrw9eps9j5h3j	2025-08-06 06:08:56.817	2025-08-06 06:08:56.817	\N	1	1	\N	unshift	19
209	stu0u9amp1etrw9eps9j5h3j	2025-08-06 06:08:56.817	2025-08-06 06:08:56.817	2025-08-06 06:08:56.827	1	1	\N	unshift	19
210	syub4tiyll2mkz653cgmenpp	2025-08-06 06:09:27.927	2025-08-06 06:09:27.927	\N	1	1	\N	pop	19
211	syub4tiyll2mkz653cgmenpp	2025-08-06 06:09:27.927	2025-08-06 06:09:27.927	2025-08-06 06:09:27.938	1	1	\N	pop	19
206	u33l79f93xw335ocy285at9n	2025-08-06 06:08:29.719	2025-08-06 06:09:53.238	\N	1	1	\N	shift	19
212	u33l79f93xw335ocy285at9n	2025-08-06 06:08:29.719	2025-08-06 06:09:53.238	2025-08-06 06:09:53.246	1	1	\N	shift	19
213	i5wda8xcn7d4bz71ffxwv7b0	2025-08-06 06:10:27.373	2025-08-06 06:10:27.373	\N	1	1	\N	slice	19
214	i5wda8xcn7d4bz71ffxwv7b0	2025-08-06 06:10:27.373	2025-08-06 06:10:27.373	2025-08-06 06:10:27.382	1	1	\N	slice	19
215	r4c3ey3gziqi2lwoipmqjqx3	2025-08-06 06:11:02.264	2025-08-06 06:11:02.264	\N	1	1	\N	concat	20
216	r4c3ey3gziqi2lwoipmqjqx3	2025-08-06 06:11:02.264	2025-08-06 06:11:02.264	2025-08-06 06:11:02.274	1	1	\N	concat	20
217	v17e3hkwbpsv293be6gn83hy	2025-08-06 06:11:16.769	2025-08-06 06:11:16.769	\N	1	1	\N	push	20
218	v17e3hkwbpsv293be6gn83hy	2025-08-06 06:11:16.769	2025-08-06 06:11:16.769	2025-08-06 06:11:16.777	1	1	\N	push	20
219	sb3h9vgmha50kaphvhnhebcs	2025-08-06 06:11:34.619	2025-08-06 06:11:34.619	\N	1	1	\N	join	20
220	sb3h9vgmha50kaphvhnhebcs	2025-08-06 06:11:34.619	2025-08-06 06:11:34.619	2025-08-06 06:11:34.625	1	1	\N	join	20
221	xpz7k5ae10kjxhqjlxwi5mku	2025-08-06 06:12:10.538	2025-08-06 06:12:10.538	\N	1	1	\N	splice	20
222	xpz7k5ae10kjxhqjlxwi5mku	2025-08-06 06:12:10.538	2025-08-06 06:12:10.538	2025-08-06 06:12:10.547	1	1	\N	splice	20
223	mgxc0d0d43rfyr402xy4cyhv	2025-08-14 06:55:19.286	2025-08-14 06:55:19.286	\N	1	1	\N	test1	107
224	mgxc0d0d43rfyr402xy4cyhv	2025-08-14 06:55:19.286	2025-08-14 06:55:19.286	2025-08-14 06:55:19.308	1	1	\N	test1	107
227	qyvbc5l666pivbd5ff4unn0a	2025-08-14 06:56:04.942	2025-08-14 06:56:04.942	\N	1	1	\N	test2	107
228	qyvbc5l666pivbd5ff4unn0a	2025-08-14 06:56:04.942	2025-08-14 06:56:04.942	2025-08-14 06:56:04.954	1	1	\N	test2	107
229	rc7dtpy3ji0ad0dzfr1xh9nl	2025-08-14 06:56:40.467	2025-08-14 06:56:40.467	\N	1	1	\N	test3	107
230	rc7dtpy3ji0ad0dzfr1xh9nl	2025-08-14 06:56:40.467	2025-08-14 06:56:40.467	2025-08-14 06:56:40.478	1	1	\N	test3	107
231	yxnghnxjrgu546lydxewh9ck	2025-08-14 06:56:56.247	2025-08-14 06:56:56.247	\N	1	1	\N	test4	107
232	yxnghnxjrgu546lydxewh9ck	2025-08-14 06:56:56.247	2025-08-14 06:56:56.247	2025-08-14 06:56:56.258	1	1	\N	test4	107
\.


--
-- Data for Name: choices_question_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.choices_question_lnk (id, choice_id, question_id, choice_ord) FROM stdin;
\.


--
-- Data for Name: components_shared_media; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_media (id) FROM stdin;
1
2
3
4
5
6
\.


--
-- Data for Name: components_shared_quotes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_quotes (id, title, body) FROM stdin;
1	Thelonius Monk	You've got to dig it to dig it, you dig?
2	Thelonius Monk	You've got to dig it to dig it, you dig?
3	Thelonius Monk	You've got to dig it to dig it, you dig?
4	Thelonius Monk	You've got to dig it to dig it, you dig?
5	Thelonius Monk	You've got to dig it to dig it, you dig?
6	Thelonius Monk	You've got to dig it to dig it, you dig?
\.


--
-- Data for Name: components_shared_rich_texts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_rich_texts (id, body) FROM stdin;
1	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
2	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
3	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
4	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
5	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
6	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
7	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
8	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
9	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
10	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
11	## Dedit imago conspicuus cum capillis totidem inhibere\n\nLorem markdownum **rerum**, est limine: columbas: ab infelix hostem arbore nudis\ncrudelis. Videtur reliquit ambo ferrum dote sub amne fatis **illuc**, in magis,\nnec.
\.


--
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
1	Page	A blog made with Strapi
\.


--
-- Data for Name: components_shared_sliders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_sliders (id) FROM stdin;
1
2
3
4
5
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	xwhyv6vhk8p01usvurd6eeik	daviddoe@strapi	An image uploaded to Strapi called daviddoe@strapi	daviddoe@strapi	2418	2711	{"large": {"ext": ".jpeg", "url": "/uploads/large_daviddoe_strapi_e2a5141f4b.jpeg", "hash": "large_daviddoe_strapi_e2a5141f4b", "mime": "image/jpeg", "name": "large_daviddoe@strapi", "path": null, "size": 74.82, "width": 892, "height": 1000, "sizeInBytes": 74823}, "small": {"ext": ".jpeg", "url": "/uploads/small_daviddoe_strapi_e2a5141f4b.jpeg", "hash": "small_daviddoe_strapi_e2a5141f4b", "mime": "image/jpeg", "name": "small_daviddoe@strapi", "path": null, "size": 22.43, "width": 446, "height": 500, "sizeInBytes": 22427}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_daviddoe_strapi_e2a5141f4b.jpeg", "hash": "medium_daviddoe_strapi_e2a5141f4b", "mime": "image/jpeg", "name": "medium_daviddoe@strapi", "path": null, "size": 44.32, "width": 669, "height": 750, "sizeInBytes": 44315}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_daviddoe_strapi_e2a5141f4b.jpeg", "hash": "thumbnail_daviddoe_strapi_e2a5141f4b", "mime": "image/jpeg", "name": "thumbnail_daviddoe@strapi", "path": null, "size": 4.2, "width": 139, "height": 156, "sizeInBytes": 4201}}	daviddoe_strapi_e2a5141f4b	.jpeg	image/jpeg	587.69	/uploads/daviddoe_strapi_e2a5141f4b.jpeg	\N	local	\N	/	2025-05-28 10:52:37.22	2025-05-28 10:52:37.22	2025-05-28 10:52:37.222	\N	\N	\N
2	r74o3gu8lcl12uoh5lzrz6jx	sarahbaker@strapi	An image uploaded to Strapi called sarahbaker@strapi	sarahbaker@strapi	3321	2746	{"large": {"ext": ".jpeg", "url": "/uploads/large_sarahbaker_strapi_f28bc029b1.jpeg", "hash": "large_sarahbaker_strapi_f28bc029b1", "mime": "image/jpeg", "name": "large_sarahbaker@strapi", "path": null, "size": 101.83, "width": 1000, "height": 827, "sizeInBytes": 101826}, "small": {"ext": ".jpeg", "url": "/uploads/small_sarahbaker_strapi_f28bc029b1.jpeg", "hash": "small_sarahbaker_strapi_f28bc029b1", "mime": "image/jpeg", "name": "small_sarahbaker@strapi", "path": null, "size": 30.54, "width": 500, "height": 413, "sizeInBytes": 30537}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_sarahbaker_strapi_f28bc029b1.jpeg", "hash": "medium_sarahbaker_strapi_f28bc029b1", "mime": "image/jpeg", "name": "medium_sarahbaker@strapi", "path": null, "size": 61.49, "width": 750, "height": 620, "sizeInBytes": 61487}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_sarahbaker_strapi_f28bc029b1.jpeg", "hash": "thumbnail_sarahbaker_strapi_f28bc029b1", "mime": "image/jpeg", "name": "thumbnail_sarahbaker@strapi", "path": null, "size": 6.68, "width": 189, "height": 156, "sizeInBytes": 6684}}	sarahbaker_strapi_f28bc029b1	.jpeg	image/jpeg	795.13	/uploads/sarahbaker_strapi_f28bc029b1.jpeg	\N	local	\N	/	2025-05-28 10:52:37.791	2025-05-28 10:52:37.791	2025-05-28 10:52:37.792	\N	\N	\N
3	c7s6lsu41gjra4mjwsojdlyp	the-internet-s-own-boy	An image uploaded to Strapi called the-internet-s-own-boy	the-internet-s-own-boy	1200	707	{"large": {"ext": ".jpeg", "url": "/uploads/large_the_internet_s_own_boy_89bb6702ad.jpeg", "hash": "large_the_internet_s_own_boy_89bb6702ad", "mime": "image/jpeg", "name": "large_the-internet-s-own-boy", "path": null, "size": 70.12, "width": 1000, "height": 589, "sizeInBytes": 70123}, "small": {"ext": ".jpeg", "url": "/uploads/small_the_internet_s_own_boy_89bb6702ad.jpeg", "hash": "small_the_internet_s_own_boy_89bb6702ad", "mime": "image/jpeg", "name": "small_the-internet-s-own-boy", "path": null, "size": 25.18, "width": 500, "height": 295, "sizeInBytes": 25184}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_the_internet_s_own_boy_89bb6702ad.jpeg", "hash": "medium_the_internet_s_own_boy_89bb6702ad", "mime": "image/jpeg", "name": "medium_the-internet-s-own-boy", "path": null, "size": 45.97, "width": 750, "height": 442, "sizeInBytes": 45972}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_the_internet_s_own_boy_89bb6702ad.jpeg", "hash": "thumbnail_the_internet_s_own_boy_89bb6702ad", "mime": "image/jpeg", "name": "thumbnail_the-internet-s-own-boy", "path": null, "size": 8.36, "width": 245, "height": 144, "sizeInBytes": 8363}}	the_internet_s_own_boy_89bb6702ad	.jpeg	image/jpeg	91.55	/uploads/the_internet_s_own_boy_89bb6702ad.jpeg	\N	local	\N	/	2025-05-28 10:52:37.876	2025-05-28 10:52:37.876	2025-05-28 10:52:37.877	\N	\N	\N
4	t454rfixos0qnzaeudl4vkyr	coffee-art	An image uploaded to Strapi called coffee-art	coffee-art	5824	3259	{"large": {"ext": ".jpeg", "url": "/uploads/large_coffee_art_3a699040ea.jpeg", "hash": "large_coffee_art_3a699040ea", "mime": "image/jpeg", "name": "large_coffee-art", "path": null, "size": 40.76, "width": 1000, "height": 559, "sizeInBytes": 40757}, "small": {"ext": ".jpeg", "url": "/uploads/small_coffee_art_3a699040ea.jpeg", "hash": "small_coffee_art_3a699040ea", "mime": "image/jpeg", "name": "small_coffee-art", "path": null, "size": 15.26, "width": 500, "height": 280, "sizeInBytes": 15256}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_coffee_art_3a699040ea.jpeg", "hash": "medium_coffee_art_3a699040ea", "mime": "image/jpeg", "name": "medium_coffee-art", "path": null, "size": 27.05, "width": 750, "height": 419, "sizeInBytes": 27046}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_coffee_art_3a699040ea.jpeg", "hash": "thumbnail_coffee_art_3a699040ea", "mime": "image/jpeg", "name": "thumbnail_coffee-art", "path": null, "size": 5.86, "width": 245, "height": 137, "sizeInBytes": 5855}}	coffee_art_3a699040ea	.jpeg	image/jpeg	978.11	/uploads/coffee_art_3a699040ea.jpeg	\N	local	\N	/	2025-05-28 10:52:38.929	2025-05-28 10:52:38.929	2025-05-28 10:52:38.929	\N	\N	\N
5	jlv32259dqhz52at5o8i5jyt	coffee-beans	An image uploaded to Strapi called coffee-beans	coffee-beans	5021	3347	{"large": {"ext": ".jpeg", "url": "/uploads/large_coffee_beans_d765814ba2.jpeg", "hash": "large_coffee_beans_d765814ba2", "mime": "image/jpeg", "name": "large_coffee-beans", "path": null, "size": 115.63, "width": 1000, "height": 666, "sizeInBytes": 115625}, "small": {"ext": ".jpeg", "url": "/uploads/small_coffee_beans_d765814ba2.jpeg", "hash": "small_coffee_beans_d765814ba2", "mime": "image/jpeg", "name": "small_coffee-beans", "path": null, "size": 31.12, "width": 500, "height": 333, "sizeInBytes": 31119}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_coffee_beans_d765814ba2.jpeg", "hash": "medium_coffee_beans_d765814ba2", "mime": "image/jpeg", "name": "medium_coffee-beans", "path": null, "size": 67.8, "width": 750, "height": 500, "sizeInBytes": 67800}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_coffee_beans_d765814ba2.jpeg", "hash": "thumbnail_coffee_beans_d765814ba2", "mime": "image/jpeg", "name": "thumbnail_coffee-beans", "path": null, "size": 7.97, "width": 234, "height": 156, "sizeInBytes": 7969}}	coffee_beans_d765814ba2	.jpeg	image/jpeg	2346.20	/uploads/coffee_beans_d765814ba2.jpeg	\N	local	\N	/	2025-05-28 10:52:39.85	2025-05-28 10:52:39.85	2025-05-28 10:52:39.85	\N	\N	\N
6	rwltwa1iubzpatisvt42afbd	this-shrimp-is-awesome	An image uploaded to Strapi called this-shrimp-is-awesome	this-shrimp-is-awesome	1200	630	{"large": {"ext": ".jpeg", "url": "/uploads/large_this_shrimp_is_awesome_28d97a607a.jpeg", "hash": "large_this_shrimp_is_awesome_28d97a607a", "mime": "image/jpeg", "name": "large_this-shrimp-is-awesome", "path": null, "size": 72.91, "width": 1000, "height": 525, "sizeInBytes": 72911}, "small": {"ext": ".jpeg", "url": "/uploads/small_this_shrimp_is_awesome_28d97a607a.jpeg", "hash": "small_this_shrimp_is_awesome_28d97a607a", "mime": "image/jpeg", "name": "small_this-shrimp-is-awesome", "path": null, "size": 27.02, "width": 500, "height": 263, "sizeInBytes": 27016}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_this_shrimp_is_awesome_28d97a607a.jpeg", "hash": "medium_this_shrimp_is_awesome_28d97a607a", "mime": "image/jpeg", "name": "medium_this-shrimp-is-awesome", "path": null, "size": 48.24, "width": 750, "height": 394, "sizeInBytes": 48237}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_this_shrimp_is_awesome_28d97a607a.jpeg", "hash": "thumbnail_this_shrimp_is_awesome_28d97a607a", "mime": "image/jpeg", "name": "thumbnail_this-shrimp-is-awesome", "path": null, "size": 9.63, "width": 245, "height": 129, "sizeInBytes": 9629}}	this_shrimp_is_awesome_28d97a607a	.jpeg	image/jpeg	95.48	/uploads/this_shrimp_is_awesome_28d97a607a.jpeg	\N	local	\N	/	2025-05-28 10:52:40.003	2025-05-28 10:52:40.003	2025-05-28 10:52:40.003	\N	\N	\N
7	zqb86i9f8iu0s2twxdzd1isz	a-bug-is-becoming-a-meme-on-the-internet	An image uploaded to Strapi called a-bug-is-becoming-a-meme-on-the-internet	a-bug-is-becoming-a-meme-on-the-internet	3628	2419	{"large": {"ext": ".jpeg", "url": "/uploads/large_a_bug_is_becoming_a_meme_on_the_internet_152c6c3338.jpeg", "hash": "large_a_bug_is_becoming_a_meme_on_the_internet_152c6c3338", "mime": "image/jpeg", "name": "large_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 50.97, "width": 1000, "height": 666, "sizeInBytes": 50972}, "small": {"ext": ".jpeg", "url": "/uploads/small_a_bug_is_becoming_a_meme_on_the_internet_152c6c3338.jpeg", "hash": "small_a_bug_is_becoming_a_meme_on_the_internet_152c6c3338", "mime": "image/jpeg", "name": "small_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 19.25, "width": 500, "height": 333, "sizeInBytes": 19245}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_a_bug_is_becoming_a_meme_on_the_internet_152c6c3338.jpeg", "hash": "medium_a_bug_is_becoming_a_meme_on_the_internet_152c6c3338", "mime": "image/jpeg", "name": "medium_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 33.59, "width": 750, "height": 500, "sizeInBytes": 33590}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_a_bug_is_becoming_a_meme_on_the_internet_152c6c3338.jpeg", "hash": "thumbnail_a_bug_is_becoming_a_meme_on_the_internet_152c6c3338", "mime": "image/jpeg", "name": "thumbnail_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 6.73, "width": 234, "height": 156, "sizeInBytes": 6728}}	a_bug_is_becoming_a_meme_on_the_internet_152c6c3338	.jpeg	image/jpeg	234.02	/uploads/a_bug_is_becoming_a_meme_on_the_internet_152c6c3338.jpeg	\N	local	\N	/	2025-05-28 10:52:40.305	2025-05-28 10:52:40.305	2025-05-28 10:52:40.305	\N	\N	\N
8	eijd22m1vcxeobmenqe9e8sw	beautiful-picture	An image uploaded to Strapi called beautiful-picture	beautiful-picture	3824	2548	{"large": {"ext": ".jpeg", "url": "/uploads/large_beautiful_picture_2ba3581c8e.jpeg", "hash": "large_beautiful_picture_2ba3581c8e", "mime": "image/jpeg", "name": "large_beautiful-picture", "path": null, "size": 83.36, "width": 1000, "height": 666, "sizeInBytes": 83355}, "small": {"ext": ".jpeg", "url": "/uploads/small_beautiful_picture_2ba3581c8e.jpeg", "hash": "small_beautiful_picture_2ba3581c8e", "mime": "image/jpeg", "name": "small_beautiful-picture", "path": null, "size": 23.35, "width": 500, "height": 333, "sizeInBytes": 23351}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_beautiful_picture_2ba3581c8e.jpeg", "hash": "medium_beautiful_picture_2ba3581c8e", "mime": "image/jpeg", "name": "medium_beautiful-picture", "path": null, "size": 47.81, "width": 750, "height": 500, "sizeInBytes": 47812}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_beautiful_picture_2ba3581c8e.jpeg", "hash": "thumbnail_beautiful_picture_2ba3581c8e", "mime": "image/jpeg", "name": "thumbnail_beautiful-picture", "path": null, "size": 6.44, "width": 234, "height": 156, "sizeInBytes": 6436}}	beautiful_picture_2ba3581c8e	.jpeg	image/jpeg	710.28	/uploads/beautiful_picture_2ba3581c8e.jpeg	\N	local	\N	/	2025-05-28 10:52:40.691	2025-05-28 10:52:40.691	2025-05-28 10:52:40.692	\N	\N	\N
9	ban4eh7n1odj4emmrylhd139	what-s-inside-a-black-hole	An image uploaded to Strapi called what-s-inside-a-black-hole	what-s-inside-a-black-hole	800	466	{"small": {"ext": ".jpeg", "url": "/uploads/small_what_s_inside_a_black_hole_434fd0c95c.jpeg", "hash": "small_what_s_inside_a_black_hole_434fd0c95c", "mime": "image/jpeg", "name": "small_what-s-inside-a-black-hole", "path": null, "size": 3.87, "width": 500, "height": 291, "sizeInBytes": 3867}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_what_s_inside_a_black_hole_434fd0c95c.jpeg", "hash": "medium_what_s_inside_a_black_hole_434fd0c95c", "mime": "image/jpeg", "name": "medium_what-s-inside-a-black-hole", "path": null, "size": 6.92, "width": 750, "height": 437, "sizeInBytes": 6923}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_what_s_inside_a_black_hole_434fd0c95c.jpeg", "hash": "thumbnail_what_s_inside_a_black_hole_434fd0c95c", "mime": "image/jpeg", "name": "thumbnail_what-s-inside-a-black-hole", "path": null, "size": 1.56, "width": 245, "height": 143, "sizeInBytes": 1556}}	what_s_inside_a_black_hole_434fd0c95c	.jpeg	image/jpeg	7.50	/uploads/what_s_inside_a_black_hole_434fd0c95c.jpeg	\N	local	\N	/	2025-05-28 10:52:40.749	2025-05-28 10:52:40.749	2025-05-28 10:52:40.749	\N	\N	\N
10	k6q4llusrkwuu8aj59sm18y9	favicon	An image uploaded to Strapi called favicon	favicon	512	512	{"small": {"ext": ".png", "url": "/uploads/small_favicon_965e37e07c.png", "hash": "small_favicon_965e37e07c", "mime": "image/png", "name": "small_favicon", "path": null, "size": 17.8, "width": 500, "height": 500, "sizeInBytes": 17800}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_favicon_965e37e07c.png", "hash": "thumbnail_favicon_965e37e07c", "mime": "image/png", "name": "thumbnail_favicon", "path": null, "size": 4.61, "width": 156, "height": 156, "sizeInBytes": 4605}}	favicon_965e37e07c	.png	image/png	2.74	/uploads/favicon_965e37e07c.png	\N	local	\N	/	2025-05-28 10:52:40.817	2025-05-28 10:52:40.817	2025-05-28 10:52:40.817	\N	\N	\N
11	fx1wih58rkeecx09vlmw64rk	default-image	An image uploaded to Strapi called default-image	default-image	1208	715	{"large": {"ext": ".png", "url": "/uploads/large_default_image_e53c9d07c5.png", "hash": "large_default_image_e53c9d07c5", "mime": "image/png", "name": "large_default-image", "path": null, "size": 327.52, "width": 1000, "height": 592, "sizeInBytes": 327520}, "small": {"ext": ".png", "url": "/uploads/small_default_image_e53c9d07c5.png", "hash": "small_default_image_e53c9d07c5", "mime": "image/png", "name": "small_default-image", "path": null, "size": 75.58, "width": 500, "height": 296, "sizeInBytes": 75579}, "medium": {"ext": ".png", "url": "/uploads/medium_default_image_e53c9d07c5.png", "hash": "medium_default_image_e53c9d07c5", "mime": "image/png", "name": "medium_default-image", "path": null, "size": 174.82, "width": 750, "height": 444, "sizeInBytes": 174821}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_default_image_e53c9d07c5.png", "hash": "thumbnail_default_image_e53c9d07c5", "mime": "image/png", "name": "thumbnail_default-image", "path": null, "size": 21.18, "width": 245, "height": 145, "sizeInBytes": 21177}}	default_image_e53c9d07c5	.png	image/png	81.60	/uploads/default_image_e53c9d07c5.png	\N	local	\N	/	2025-05-28 10:52:40.978	2025-05-28 10:52:40.978	2025-05-28 10:52:40.978	\N	\N	\N
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	api::author.author	avatar	1
2	2	2	api::author.author	avatar	1
3	4	1	shared.media	file	1
4	4	1	shared.slider	files	1
5	5	1	shared.slider	files	2
6	3	1	api::article.article	cover	1
7	4	2	shared.media	file	1
8	4	2	shared.slider	files	1
9	5	2	shared.slider	files	2
10	6	2	api::article.article	cover	1
11	4	3	shared.media	file	1
12	4	3	shared.slider	files	1
13	5	3	shared.slider	files	2
14	7	3	api::article.article	cover	1
15	4	4	shared.media	file	1
16	4	4	shared.slider	files	1
17	5	4	shared.slider	files	2
18	8	4	api::article.article	cover	1
19	4	5	shared.media	file	1
20	4	5	shared.slider	files	1
21	5	5	shared.slider	files	2
22	9	5	api::article.article	cover	1
23	11	1	shared.seo	shareImage	1
24	10	1	api::global.global	favicon	1
25	4	6	shared.media	file	1
\.


--
-- Data for Name: globals; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.globals (id, document_id, site_name, site_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	lcg8f6to8ypnuwpu63eyqdsl	Strapi Blog	A Blog made with Strapi	2025-05-28 10:52:40.984	2025-05-28 10:52:40.984	2025-05-28 10:52:40.981	\N	\N	\N
\.


--
-- Data for Name: globals_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.globals_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.seo	defaultSeo	\N
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	bkzrwe8e11yw31mtmaoxddsf	English (en)	en	2025-05-28 10:52:36.495	2025-05-28 10:52:36.495	2025-05-28 10:52:36.496	\N	\N	\N
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.questions (id, document_id, text, hint, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, explanation, type, code, questionid, title, answer) FROM stdin;
164	gwcnlehdzo429nbjt37d3e06	QuestionAdvanced１	QuestionAdvanced１	2025-08-15 06:35:36.729	2025-08-15 06:35:36.729	\N	1	1	\N	QuestionAdvanced１	input	QuestionAdvanced１	201	QuestionAdvanced１	QuestionAdvanced１
165	gwcnlehdzo429nbjt37d3e06	QuestionAdvanced１	QuestionAdvanced１	2025-08-15 06:35:36.729	2025-08-15 06:35:36.729	2025-08-15 06:35:36.751	1	1	\N	QuestionAdvanced１	input	QuestionAdvanced１	201	QuestionAdvanced１	QuestionAdvanced１
233	zd9yystka1ate69q0lgkw2uq	配列の末尾の要素を取り出して削除するメソッドは？	配列の最後の要素を取り出し戻り値で返す	2025-08-06 05:13:46.41	2025-09-29 12:32:25.549	2025-09-29 12:32:25.559	1	1	\N	A: pop [正解] - 末尾を削除し要素を返す。\n B: push [不正解] - 末尾追加。\n C: shift [不正解] - 先頭削除。\n D: slice [不正解] - 非破壊コピー。	multiple	const fruits = ["apple", "banana", "orange"];\nconst removed = fruits.____();\nconsole.log(removed);	18	配列の末尾の要素を削除	pop
173	fxt1wyqj674kyzxs3r4uz6wk	QuestionAdvanced5	QuestionAdvanced5	2025-08-15 06:38:19.425	2025-08-15 06:38:19.425	\N	1	1	\N	QuestionAdvanced5	input	QuestionAdvanced5	205	QuestionAdvanced5	QuestionAdvanced5
114	dew878ksl3gdu1wqor6gg7fj	各要素を使って sum に加算するメソッドは？	戻り値は undefined で副作用目的	2025-08-06 05:08:59.977	2025-09-29 12:31:20.988	\N	1	1	\N	A: forEach [正解] - 各要素に対する処理を実行し戻り値は undefined。\n B: map [不正解] - 新配列を返す変換用。\n C: filter [不正解] - 条件抽出。\n D: reduce [不正解] - 累積計算で単一値を返す。	multiple	const arr = [1, 2, 3];\nlet sum = 0;\narr.____(n => sum += n);\nconsole.log(sum);	15	配列の各要素を順に処理	forEach
43	q2b1w21g8vmb0jyfm5y8s4gy	配列の末尾に 4 を追加し、新しい長さを返すメソッドは？	末尾に「押し込む」イメージ	2025-07-21 07:39:49.675	2025-09-29 12:14:44.123	\N	1	1	\N	push 正解 - 末尾に追加して新しい長さを返す。\npop 不正解 - 末尾を削除。\nunshift 不正解 - 先頭に追加。\nshift 不正解 - 先頭を削除。	multiple	const nums = [1, 2, 3];\nconsole.log(nums.____(4));	2	配列の末尾に要素を追加	push
174	fxt1wyqj674kyzxs3r4uz6wk	QuestionAdvanced5	QuestionAdvanced5	2025-08-15 06:38:19.425	2025-08-15 06:38:19.425	2025-08-15 06:38:19.439	1	1	\N	QuestionAdvanced5	input	QuestionAdvanced5	205	QuestionAdvanced5	QuestionAdvanced5
59	cfvwf5iq7yij5ojmepr0o2a4	インデックス 1 から 3 の直前までを抜き出すメソッドは？	元配列を壊さず“スライス”する	2025-07-21 12:44:49.152	2025-09-29 12:24:47.727	\N	1	1	\N	slice 正解 - 部分配列をコピー。\nsplice 不正解 - 配列を変更。\nsubstr 不正解 - 文字列メソッド。\nfilter 不正解 - 条件抽出。	multiple	const letters = ['a', 'b', 'c', 'd'];\nconsole.log(letters.____(1, 3)); // ?	6	配列の一部をコピーして取得	slice
73	je6w9wt11c6ghcvsc50mtb9c	インデックス 1 の 'green' を削除し 'yellow' を挿入するメソッドは？	“配列を切って貼る”万能メソッド（破壊的）	2025-07-21 13:09:15.685	2025-09-29 12:28:17.922	\N	1	1	\N	splice 正解 - 削除と挿入で元配列を変更。\nslice 不正解 - コピーのみ。\nconcat 不正解 - 配列結合。\npush 不正解 - 末尾追加。	multiple	const colors = ['red', 'green', 'blue'];\ncolors.____(1, 1, 'yellow');\nconsole.log(colors); // ['red', 'yellow', 'blue']	10	配列を操作して要素を削除・追加	splice
110	nrfjut085wsid6becfld5425	4 を末尾に追加するメソッドは？	戻り値は新しい配列長	2025-08-06 05:05:59.649	2025-09-29 12:30:29.085	\N	1	1	\N	A: push [正解] - 末尾に追加し配列長を返す。\n B: unshift [不正解] - 先頭に追加。\n C: pop [不正解] - 末尾削除。\n D: shift [不正解] - 先頭削除。	multiple	const nums = [1, 2, 3];\nnums.____(4);\nconsole.log(nums);	13	配列の末尾に要素を追加	push
71	lr5hdp9vig5g6cgvdjewn2zz	60 点以上の人がいるかどうかを調べるメソッドは？	“1つでもあれば true”	2025-07-21 13:06:18.411	2025-09-29 12:27:53.312	\N	1	1	\N	some 正解 - 1つでも条件を満たせば true。\nevery 不正解 - 全員条件。\nfind 不正解 - 最初の要素。\nmap 不正解 - 変換。	multiple	const scores = [40, 55, 70];\nconsole.log(scores.____(s => s >= 60)); // ?	9	少なくとも1つの要素が条件を満たすか判定	some
112	wk3a3pcpfodikfrohmm1psjj	文字列が 'https' で始まるか判定するメソッドは？	endsWith の逆にあたるメソッド	2025-08-06 05:07:49.202	2025-09-29 12:30:52.956	\N	1	1	\N	A: forEach [正解] - 各要素に対する処理を実行し戻り値は undefined。\n B: map [不正解] - 新配列を返す変換用。\n C: filter [不正解] - 条件抽出。\n D: reduce [不正解] - 累積計算で単一値を返す。	multiple	const url = "https://example.com";\nconsole.log(url.____("https"));	14	文字列が指定文字列で始まるか判定	startsWith
166	ox10l8dupjhb43a87jhfnxib	QuestionAdvanced2	QuestionAdvanced2	2025-08-15 06:36:08.768	2025-08-15 06:36:08.768	\N	1	1	\N	QuestionAdvanced2	input	QuestionAdvanced2	202	QuestionAdvanced2	QuestionAdvanced2
167	ox10l8dupjhb43a87jhfnxib	QuestionAdvanced2	QuestionAdvanced2	2025-08-15 06:36:08.768	2025-08-15 06:36:08.768	2025-08-15 06:36:08.79	1	1	\N	QuestionAdvanced2	input	QuestionAdvanced2	202	QuestionAdvanced2	QuestionAdvanced2
175	tfy62uk6x8qkq72q9sdl8qik	QuestionAdvanced6	QuestionAdvanced6	2025-08-15 06:39:04.031	2025-08-15 06:39:04.031	\N	1	1	\N	QuestionAdvanced6	input	QuestionAdvanced6	206	QuestionAdvanced6	QuestionAdvanced6
234	pb0009rj9yhmgwhtk2r3lyhc	配列の先頭の要素を取り出して削除するメソッドは？	配列が 1 つ短くなる	2025-08-06 05:15:03.938	2025-09-29 12:32:43.889	2025-09-29 12:32:43.899	1	1	\N	A: shift [正解] - 先頭削除し要素を返す。\n B: unshift [不正解] - 先頭追加。\n C: pop [不正解] - 末尾削除。\n D: slice [不正解] - コピーのみ。	multiple	const queue = ["first", "second"];\nconst first = queue.____();\nconsole.log(first);	19	配列の先頭の要素を削除	shift
176	tfy62uk6x8qkq72q9sdl8qik	QuestionAdvanced6	QuestionAdvanced6	2025-08-15 06:39:04.031	2025-08-15 06:39:04.031	2025-08-15 06:39:04.044	1	1	\N	QuestionAdvanced6	input	QuestionAdvanced6	206	QuestionAdvanced6	QuestionAdvanced6
69	cr5v6tyy5stmjawo9q2js1ba	全員が 18 歳以上かどうかを真偽値で返すメソッドは？	“すべて”を確認	2025-07-21 13:01:31.6	2025-09-29 12:27:25.131	\N	1	1	\N	every 正解 - 全要素が条件満たすか判定。\nsome 不正解 - 1つでも。\nfilter 不正解 - 要素抽出。\nfind 不正解 - 最初の要素取得。	multiple	const ages = [18, 20, 25];\nconsole.log(ages.____(n => n >= 18)); // ?	8	すべての要素が条件を満たすか判定	every
41	e2cae1jbwqufnrvwyz9cvb1p	配列に 'banana' が含まれているかを調べて true / false を返すメソッドは？	指定した値が存在するかどうかを真偽値で返す	2025-07-21 07:29:56.864	2025-10-03 11:09:36.987	\N	1	1	\N	A: includes 正解 - 値が含まれているかを true/false で返す。\nB: indexOf 不正解 - 位置を数値で返す。C: find 不正解 - 要素そのものを返す。\nD: some 不正解 - コールバックが必要で冗長。	multiple	const fruits = ['apple', 'banana', 'orange'];\nconsole.log(fruits.____('banana')); // ?	1	配列に値が含まれているかチェック	includes
205	vnrfgetj7fat2zfl4a9o3b6u	中級３	hint3	2025-08-12 07:41:39.314	2025-08-23 02:18:09.844	2025-08-23 02:18:09.864	1	1	\N	ex3	multiple	code3	103	\N	filter
47	zfepqebqw2ck745cigovcxp4	文字列を ',' で区切って ['John', 'Doe'] に変換するメソッドは？	文字列を「切り分ける」	2025-07-21 07:49:53.537	2025-09-29 12:15:52.169	\N	1	1	\N	split 正解 - 区切り文字で分割し配列を返す。\njoin 不正解 - 配列を文字列に結合。\nslice 不正解 - 部分文字列。\nreplace 不正解 - 置換。	multiple	const name = 'John,Doe';\nconsole.log(name.____(',')); // ?	4	    \t 文字列を区切り文字で配列に分割	split
61	b629iibtk9f72x1r9b16s0kc	配列を [3, 2, 1] に並べ替えるメソッドは？	配列を“反転”する	2025-07-21 12:52:15.636	2025-09-29 12:25:11.052	\N	1	1	\N	reverse 正解 - 要素順を反転。\nsort 不正解 - 文字列順デフォルト。\nmap 不正解 - 変換のみ。\nreduce 不正解 - 累積計算。	multiple	const nums = [1, 2, 3];\nconsole.log(nums.____()); // ?	7	配列を逆順に並べ替える	reverse
106	kjnjpf4ihxqfgq0n4jqg0soq	要素をハイフンで連結した文字列を作るメソッドは？	配列要素を区切り文字で結合するメソッド！	2025-08-06 05:02:50.677	2025-09-29 12:28:57.249	\N	1	1	\N	A: join [正解] - 区切り文字で連結し 1 つの文字列を返す。\n B: concat [不正解] - 配列結合で配列を返す。\n C: push [不正解] - 末尾に追加。\n D: toString [不正解] - カンマ区切りで文字列化する。	multiple	const fruits = ["apple", "banana", "orange"];\nconsole.log(fruits.____("-"));	11	配列を文字列に連結	join
108	d52fr37kbuw18ovqaitex1f3	world' が始まる位置を返すメソッドは？	見つからないと -1 を返すメソッド	2025-08-06 05:04:42.837	2025-09-29 12:29:17.367	\N	1	1	\N	A: indexOf [正解] - 部分文字列の最初の位置を返す。\n B: search [不正解] - 正規表現で位置を返す。\n C: includes [不正解] - 含むか真偽値で返す。\n D: slice [不正解] - 部分文字列を取得する。	multiple	const str = "hello world";\nconsole.log(str.____("world"));	12	部分文字列の位置を取得	indexOf
168	qv49kkdqtth4b9y8bbraq8ss	QuestionAdvanced3	QuestionAdvanced3	2025-08-15 06:36:37.112	2025-08-15 06:36:37.112	\N	1	1	\N	QuestionAdvanced3	input	QuestionAdvanced3	203	QuestionAdvanced3	QuestionAdvanced3
169	qv49kkdqtth4b9y8bbraq8ss	QuestionAdvanced3	QuestionAdvanced3	2025-08-15 06:36:37.112	2025-08-15 06:36:37.112	2025-08-15 06:36:37.128	1	1	\N	QuestionAdvanced3	input	QuestionAdvanced3	203	QuestionAdvanced3	QuestionAdvanced3
177	nl605ez6ynm7zg18xknl0teq	QuestionAdvanced7	QuestionAdvanced7	2025-08-15 06:39:29.637	2025-08-15 06:39:29.637	\N	1	1	\N	QuestionAdvanced7	input	QuestionAdvanced7	207	QuestionAdvanced7	QuestionAdvanced7
178	nl605ez6ynm7zg18xknl0teq	QuestionAdvanced7	QuestionAdvanced7	2025-08-15 06:39:29.637	2025-08-15 06:39:29.637	2025-08-15 06:39:29.651	1	1	\N	QuestionAdvanced7	input	QuestionAdvanced7	207	QuestionAdvanced7	QuestionAdvanced7
120	zd9yystka1ate69q0lgkw2uq	配列の末尾の要素を取り出して削除するメソッドは？	配列の最後の要素を取り出し戻り値で返す	2025-08-06 05:13:46.41	2025-09-29 12:32:25.549	\N	1	1	\N	A: pop [正解] - 末尾を削除し要素を返す。\n B: push [不正解] - 末尾追加。\n C: shift [不正解] - 先頭削除。\n D: slice [不正解] - 非破壊コピー。	multiple	const fruits = ["apple", "banana", "orange"];\nconst removed = fruits.____();\nconsole.log(removed);	18	配列の末尾の要素を削除	pop
122	pb0009rj9yhmgwhtk2r3lyhc	配列の先頭の要素を取り出して削除するメソッドは？	配列が 1 つ短くなる	2025-08-06 05:15:03.938	2025-09-29 12:32:43.889	\N	1	1	\N	A: shift [正解] - 先頭削除し要素を返す。\n B: unshift [不正解] - 先頭追加。\n C: pop [不正解] - 末尾削除。\n D: slice [不正解] - コピーのみ。	multiple	const queue = ["first", "second"];\nconst first = queue.____();\nconsole.log(first);	19	配列の先頭の要素を削除	shift
124	xztoftlwwg3xwhzkagjmetvn	2 つの配列を結合して新しい配列を返すメソッドは？	元の配列を変更しない	2025-08-06 05:16:39.572	2025-09-29 12:33:07.604	\N	1	1	\N	A: concat [正解] - 非破壊で配列を結合し新配列を返す。\n B: push [不正解] - 末尾追加で破壊的。\n C: join [不正解] - 配列→文字列変換。\n D: splice [不正解] - 破壊的挿入削除。	multiple	const arr1 = [1, 2];\nconst arr2 = [3, 4];\nconst combined = arr1.____(arr2);\nconsole.log(combined);	20	配列を結合する	concat
118	dnnewywqnmqlk4s7yb67jtjd	配列の先頭に要素を追加するメソッドは？	先頭に追加し戻り値は新しい length	2025-08-06 05:12:29.586	2025-09-29 12:32:05.096	\N	1	1	\N	A: unshift [正解] - 先頭に追加し新しい長さを返す。\n B: push [不正解] - 末尾に追加。\n C: shift [不正解] - 先頭削除。\n D: pop [不正解] - 末尾削除。	multiple	const nums = [2, 3];\nnums.____(1);\nconsole.log(nums);	17	配列の先頭に要素を追加	unshift
235	xztoftlwwg3xwhzkagjmetvn	2 つの配列を結合して新しい配列を返すメソッドは？	元の配列を変更しない	2025-08-06 05:16:39.572	2025-09-29 12:33:07.604	2025-09-29 12:33:07.614	1	1	\N	A: concat [正解] - 非破壊で配列を結合し新配列を返す。\n B: push [不正解] - 末尾追加で破壊的。\n C: join [不正解] - 配列→文字列変換。\n D: splice [不正解] - 破壊的挿入削除。	multiple	const arr1 = [1, 2];\nconst arr2 = [3, 4];\nconst combined = arr1.____(arr2);\nconsole.log(combined);	20	配列を結合する	concat
208	b4hku5o7bsglc5j6wb61unxy	中級6	hint6	2025-08-12 07:43:41.228	2025-08-23 02:19:13.946	2025-08-23 02:19:13.954	1	1	\N	ex6	input	code6	106	\N	code6
130	xiqplbhenfkag40j2a1iinic	中級問題テスト	intermediate hint	2025-08-12 07:08:12.296	2025-08-23 02:17:07.051	\N	1	1	\N	intermediate explanation	input	test code	101	中級問題テスト	test code
132	scknadz2mq5b31ssdb3fkrki	中級問題テスト（選択肢Ver）	hint	2025-08-12 07:09:20.947	2025-08-23 02:17:35.599	\N	1	1	\N	explanation	multiple	test code	102	中級問題テスト２	test1
217	x5jfh2p8jg70cpakh66jwg0a	先頭要素 'first' を取り除き、返すメソッドは？	「列を左にずらす」イメージ	2025-07-21 07:46:04.023	2025-09-29 12:15:08.526	2025-09-29 12:15:08.538	1	1	\N	shift 正解 - 先頭を取り除き返す。\npop 不正解 - 末尾を取り除く。\npush 不正解 - 末尾に追加。\nslice 不正解 - 部分コピー。	multiple	const queue = ['first', 'second', 'third'];\nconsole.log(queue.____()); // ?	3	配列の先頭から要素を取り出す	shift
222	cr5v6tyy5stmjawo9q2js1ba	全員が 18 歳以上かどうかを真偽値で返すメソッドは？	“すべて”を確認	2025-07-21 13:01:31.6	2025-09-29 12:27:25.131	2025-09-29 12:27:25.142	1	1	\N	every 正解 - 全要素が条件満たすか判定。\nsome 不正解 - 1つでも。\nfilter 不正解 - 要素抽出。\nfind 不正解 - 最初の要素取得。	multiple	const ages = [18, 20, 25];\nconsole.log(ages.____(n => n >= 18)); // ?	8	すべての要素が条件を満たすか判定	every
223	lr5hdp9vig5g6cgvdjewn2zz	60 点以上の人がいるかどうかを調べるメソッドは？	“1つでもあれば true”	2025-07-21 13:06:18.411	2025-09-29 12:27:53.312	2025-09-29 12:27:53.322	1	1	\N	some 正解 - 1つでも条件を満たせば true。\nevery 不正解 - 全員条件。\nfind 不正解 - 最初の要素。\nmap 不正解 - 変換。	multiple	const scores = [40, 55, 70];\nconsole.log(scores.____(s => s >= 60)); // ?	9	少なくとも1つの要素が条件を満たすか判定	some
228	wk3a3pcpfodikfrohmm1psjj	文字列が 'https' で始まるか判定するメソッドは？	endsWith の逆にあたるメソッド	2025-08-06 05:07:49.202	2025-09-29 12:30:52.956	2025-09-29 12:30:52.965	1	1	\N	A: forEach [正解] - 各要素に対する処理を実行し戻り値は undefined。\n B: map [不正解] - 新配列を返す変換用。\n C: filter [不正解] - 条件抽出。\n D: reduce [不正解] - 累積計算で単一値を返す。	multiple	const url = "https://example.com";\nconsole.log(url.____("https"));	14	文字列が指定文字列で始まるか判定	startsWith
116	tax5jmy0vn1zteco6q9hzr0u	配列に特定の値が含まれているか確認するメソッドは？	値が含まれているか真偽値で返すメソッド	2025-08-06 05:11:03.805	2025-09-29 12:31:41.406	\N	1	1	\N	A: includes [正解] - 要素の存在を true/false で返す。\n B: indexOf [不正解] - 位置を数値で返す。\n C: some [不正解] - コールバック必要。\n D: filter [不正解] - 条件要素を抽出する。	multiple	const colors = ["red", "blue", "green"];\nconsole.log(colors.____("blue"));	16	配列に値が含まれているか確認	includes
134	vnrfgetj7fat2zfl4a9o3b6u	中級３	hint3	2025-08-12 07:41:39.314	2025-08-23 02:18:09.844	\N	1	1	\N	ex3	multiple	code3	103	\N	filter
136	cs51tped1w3zi1eaujd9m0k1	中級４	hint4	2025-08-12 07:42:22.97	2025-08-23 02:18:23.861	\N	1	1	\N	ex4	input	code4	104	\N	code4
138	n7ykasq7b6ry6gdigbryuyw5	中級５	hint5	2025-08-12 07:43:02.68	2025-08-23 02:19:00.231	\N	1	1	\N	ex5	multiple	code5	105	\N	map
140	b4hku5o7bsglc5j6wb61unxy	中級6	hint6	2025-08-12 07:43:41.228	2025-08-23 02:19:13.946	\N	1	1	\N	ex6	input	code6	106	\N	code6
142	zgafp9rkj69rwn7jkz0zbch6	中級７	hint7	2025-08-12 07:44:14.334	2025-08-23 02:19:44.214	\N	1	1	\N	ex7	multiple	code7	107	\N	every
209	zgafp9rkj69rwn7jkz0zbch6	中級７	hint7	2025-08-12 07:44:14.334	2025-08-23 02:19:44.214	2025-08-23 02:19:44.225	1	1	\N	ex7	multiple	code7	107	\N	every
45	x5jfh2p8jg70cpakh66jwg0a	先頭要素 'first' を取り除き、返すメソッドは？	「列を左にずらす」イメージ	2025-07-21 07:46:04.023	2025-09-29 12:15:08.526	\N	1	1	\N	shift 正解 - 先頭を取り除き返す。\npop 不正解 - 末尾を取り除く。\npush 不正解 - 末尾に追加。\nslice 不正解 - 部分コピー。	multiple	const queue = ['first', 'second', 'third'];\nconsole.log(queue.____()); // ?	3	配列の先頭から要素を取り出す	shift
237	e2cae1jbwqufnrvwyz9cvb1p	配列に 'banana' が含まれているかを調べて true / false を返すメソッドは？	指定した値が存在するかどうかを真偽値で返す	2025-07-21 07:29:56.864	2025-10-03 11:09:36.987	2025-10-03 11:09:37.006	1	1	\N	A: includes 正解 - 値が含まれているかを true/false で返す。\nB: indexOf 不正解 - 位置を数値で返す。C: find 不正解 - 要素そのものを返す。\nD: some 不正解 - コールバックが必要で冗長。	multiple	const fruits = ['apple', 'banana', 'orange'];\nconsole.log(fruits.____('banana')); // ?	1	配列に値が含まれているかチェック	includes
170	xgkoaghw4f1rrrj5a463n0vq	QuestionAdvanced4	QuestionAdvanced4	2025-08-15 06:37:36.265	2025-08-15 06:37:51.078	\N	1	1	\N	QuestionAdvanced4	input	QuestionAdvanced4	204	QuestionAdvanced4	QuestionAdvanced4
202	xiqplbhenfkag40j2a1iinic	中級問題テスト	intermediate hint	2025-08-12 07:08:12.296	2025-08-23 02:17:07.051	2025-08-23 02:17:07.059	1	1	\N	intermediate explanation	input	test code	101	中級問題テスト	test code
207	n7ykasq7b6ry6gdigbryuyw5	中級５	hint5	2025-08-12 07:43:02.68	2025-08-23 02:19:00.231	2025-08-23 02:19:00.242	1	1	\N	ex5	multiple	code5	105	\N	map
218	zfepqebqw2ck745cigovcxp4	文字列を ',' で区切って ['John', 'Doe'] に変換するメソッドは？	文字列を「切り分ける」	2025-07-21 07:49:53.537	2025-09-29 12:15:52.169	2025-09-29 12:15:52.179	1	1	\N	split 正解 - 区切り文字で分割し配列を返す。\njoin 不正解 - 配列を文字列に結合。\nslice 不正解 - 部分文字列。\nreplace 不正解 - 置換。	multiple	const name = 'John,Doe';\nconsole.log(name.____(',')); // ?	4	    \t 文字列を区切り文字で配列に分割	split
49	zzrb8160ae5x7mh4dsvpgbdz	配列を空白で結合し 'Hello World' を返すメソッドは？	配列→文字列（逆は split）	2025-07-21 07:53:33.606	2025-09-29 12:24:14.716	\N	1	1	\N	join 正解 - 要素を連結し文字列を返す。concat 不正解 - 配列を結合し配列を返す。\npush 不正解 - 末尾追加。\nmap 不正解 - 要素変換。	multiple	const words = ['Hello', 'World'];\nconsole.log(words.____(' ')); // ?	5	配列要素を文字列として連結	join
219	zzrb8160ae5x7mh4dsvpgbdz	配列を空白で結合し 'Hello World' を返すメソッドは？	配列→文字列（逆は split）	2025-07-21 07:53:33.606	2025-09-29 12:24:14.716	2025-09-29 12:24:14.728	1	1	\N	join 正解 - 要素を連結し文字列を返す。concat 不正解 - 配列を結合し配列を返す。\npush 不正解 - 末尾追加。\nmap 不正解 - 要素変換。	multiple	const words = ['Hello', 'World'];\nconsole.log(words.____(' ')); // ?	5	配列要素を文字列として連結	join
224	je6w9wt11c6ghcvsc50mtb9c	インデックス 1 の 'green' を削除し 'yellow' を挿入するメソッドは？	“配列を切って貼る”万能メソッド（破壊的）	2025-07-21 13:09:15.685	2025-09-29 12:28:17.922	2025-09-29 12:28:17.932	1	1	\N	splice 正解 - 削除と挿入で元配列を変更。\nslice 不正解 - コピーのみ。\nconcat 不正解 - 配列結合。\npush 不正解 - 末尾追加。	multiple	const colors = ['red', 'green', 'blue'];\ncolors.____(1, 1, 'yellow');\nconsole.log(colors); // ['red', 'yellow', 'blue']	10	配列を操作して要素を削除・追加	splice
225	kjnjpf4ihxqfgq0n4jqg0soq	要素をハイフンで連結した文字列を作るメソッドは？	配列要素を区切り文字で結合するメソッド！	2025-08-06 05:02:50.677	2025-09-29 12:28:57.249	2025-09-29 12:28:57.259	1	1	\N	A: join [正解] - 区切り文字で連結し 1 つの文字列を返す。\n B: concat [不正解] - 配列結合で配列を返す。\n C: push [不正解] - 末尾に追加。\n D: toString [不正解] - カンマ区切りで文字列化する。	multiple	const fruits = ["apple", "banana", "orange"];\nconsole.log(fruits.____("-"));	11	配列を文字列に連結	join
226	d52fr37kbuw18ovqaitex1f3	world' が始まる位置を返すメソッドは？	見つからないと -1 を返すメソッド	2025-08-06 05:04:42.837	2025-09-29 12:29:17.367	2025-09-29 12:29:17.378	1	1	\N	A: indexOf [正解] - 部分文字列の最初の位置を返す。\n B: search [不正解] - 正規表現で位置を返す。\n C: includes [不正解] - 含むか真偽値で返す。\n D: slice [不正解] - 部分文字列を取得する。	multiple	const str = "hello world";\nconsole.log(str.____("world"));	12	部分文字列の位置を取得	indexOf
231	tax5jmy0vn1zteco6q9hzr0u	配列に特定の値が含まれているか確認するメソッドは？	値が含まれているか真偽値で返すメソッド	2025-08-06 05:11:03.805	2025-09-29 12:31:41.406	2025-09-29 12:31:41.418	1	1	\N	A: includes [正解] - 要素の存在を true/false で返す。\n B: indexOf [不正解] - 位置を数値で返す。\n C: some [不正解] - コールバック必要。\n D: filter [不正解] - 条件要素を抽出する。	multiple	const colors = ["red", "blue", "green"];\nconsole.log(colors.____("blue"));	16	配列に値が含まれているか確認	includes
172	xgkoaghw4f1rrrj5a463n0vq	QuestionAdvanced4	QuestionAdvanced4	2025-08-15 06:37:36.265	2025-08-15 06:37:51.078	2025-08-15 06:37:51.089	1	1	\N	QuestionAdvanced4	input	QuestionAdvanced4	204	QuestionAdvanced4	QuestionAdvanced4
204	scknadz2mq5b31ssdb3fkrki	中級問題テスト（選択肢Ver）	hint	2025-08-12 07:09:20.947	2025-08-23 02:17:35.599	2025-08-23 02:17:35.608	1	1	\N	explanation	multiple	test code	102	中級問題テスト２	test1
206	cs51tped1w3zi1eaujd9m0k1	中級４	hint4	2025-08-12 07:42:22.97	2025-08-23 02:18:23.861	2025-08-23 02:18:23.879	1	1	\N	ex4	input	code4	104	\N	code4
216	q2b1w21g8vmb0jyfm5y8s4gy	配列の末尾に 4 を追加し、新しい長さを返すメソッドは？	末尾に「押し込む」イメージ	2025-07-21 07:39:49.675	2025-09-29 12:14:44.123	2025-09-29 12:14:44.136	1	1	\N	push 正解 - 末尾に追加して新しい長さを返す。\npop 不正解 - 末尾を削除。\nunshift 不正解 - 先頭に追加。\nshift 不正解 - 先頭を削除。	multiple	const nums = [1, 2, 3];\nconsole.log(nums.____(4));	2	配列の末尾に要素を追加	push
220	cfvwf5iq7yij5ojmepr0o2a4	インデックス 1 から 3 の直前までを抜き出すメソッドは？	元配列を壊さず“スライス”する	2025-07-21 12:44:49.152	2025-09-29 12:24:47.727	2025-09-29 12:24:47.739	1	1	\N	slice 正解 - 部分配列をコピー。\nsplice 不正解 - 配列を変更。\nsubstr 不正解 - 文字列メソッド。\nfilter 不正解 - 条件抽出。	multiple	const letters = ['a', 'b', 'c', 'd'];\nconsole.log(letters.____(1, 3)); // ?	6	配列の一部をコピーして取得	slice
221	b629iibtk9f72x1r9b16s0kc	配列を [3, 2, 1] に並べ替えるメソッドは？	配列を“反転”する	2025-07-21 12:52:15.636	2025-09-29 12:25:11.052	2025-09-29 12:25:11.062	1	1	\N	reverse 正解 - 要素順を反転。\nsort 不正解 - 文字列順デフォルト。\nmap 不正解 - 変換のみ。\nreduce 不正解 - 累積計算。	multiple	const nums = [1, 2, 3];\nconsole.log(nums.____()); // ?	7	配列を逆順に並べ替える	reverse
227	nrfjut085wsid6becfld5425	4 を末尾に追加するメソッドは？	戻り値は新しい配列長	2025-08-06 05:05:59.649	2025-09-29 12:30:29.085	2025-09-29 12:30:29.096	1	1	\N	A: push [正解] - 末尾に追加し配列長を返す。\n B: unshift [不正解] - 先頭に追加。\n C: pop [不正解] - 末尾削除。\n D: shift [不正解] - 先頭削除。	multiple	const nums = [1, 2, 3];\nnums.____(4);\nconsole.log(nums);	13	配列の末尾に要素を追加	push
230	dew878ksl3gdu1wqor6gg7fj	各要素を使って sum に加算するメソッドは？	戻り値は undefined で副作用目的	2025-08-06 05:08:59.977	2025-09-29 12:31:20.988	2025-09-29 12:31:21.012	1	1	\N	A: forEach [正解] - 各要素に対する処理を実行し戻り値は undefined。\n B: map [不正解] - 新配列を返す変換用。\n C: filter [不正解] - 条件抽出。\n D: reduce [不正解] - 累積計算で単一値を返す。	multiple	const arr = [1, 2, 3];\nlet sum = 0;\narr.____(n => sum += n);\nconsole.log(sum);	15	配列の各要素を順に処理	forEach
232	dnnewywqnmqlk4s7yb67jtjd	配列の先頭に要素を追加するメソッドは？	先頭に追加し戻り値は新しい length	2025-08-06 05:12:29.586	2025-09-29 12:32:05.096	2025-09-29 12:32:05.104	1	1	\N	A: unshift [正解] - 先頭に追加し新しい長さを返す。\n B: push [不正解] - 末尾に追加。\n C: shift [不正解] - 先頭削除。\n D: pop [不正解] - 末尾削除。	multiple	const nums = [2, 3];\nnums.____(1);\nconsole.log(nums);	17	配列の先頭に要素を追加	unshift
\.


--
-- Data for Name: questions_quiz_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.questions_quiz_lnk (id, question_id, quiz_id, question_ord) FROM stdin;
149	164	27	1
150	165	28	1
151	166	27	2
152	167	28	2
153	168	27	3
154	169	28	3
155	170	27	4
157	172	28	4
158	173	27	5
159	174	28	5
160	175	27	6
161	176	28	6
162	177	27	7
163	178	28	7
91	106	23	11
93	108	23	12
95	110	23	13
97	112	23	14
99	114	23	15
101	116	23	16
26	41	23	1
103	118	23	17
28	43	23	2
30	45	23	3
105	120	23	18
32	47	23	4
34	49	23	5
107	122	23	19
109	124	23	20
115	130	25	1
201	216	24	2
117	132	25	2
119	134	25	3
44	59	23	6
202	217	24	3
46	61	23	7
121	136	25	4
123	138	25	5
203	218	24	4
125	140	25	6
127	142	25	7
204	219	24	5
205	220	24	6
206	221	24	7
54	69	23	8
56	71	23	9
58	73	23	10
207	222	24	8
208	223	24	9
209	224	24	10
210	225	24	11
211	226	24	12
212	227	24	13
213	228	24	14
215	230	24	15
216	231	24	16
217	232	24	17
218	233	24	18
219	234	24	19
187	202	26	1
220	235	24	20
189	204	26	2
222	237	24	1
190	205	26	3
191	206	26	4
192	207	26	5
193	208	26	6
194	209	26	7
\.


--
-- Data for Name: quizzes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.quizzes (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, title, mode, duration, number_of_question) FROM stdin;
23	hu63e45qbm8vrf7rs3j5vs65	2025-07-21 07:27:42.086	2025-07-21 07:27:42.086	\N	1	1	\N	QuizBeginner1	beginner	10	10
24	hu63e45qbm8vrf7rs3j5vs65	2025-07-21 07:27:42.086	2025-07-21 07:27:42.086	2025-07-21 07:27:42.104	1	1	\N	QuizBeginner1	beginner	10	10
25	hn3re6bks7bhvcjpuc83a9tv	2025-08-12 07:06:40.756	2025-08-12 07:06:40.756	\N	1	1	\N	QuizIntermediate1	intermediate	10	10
26	hn3re6bks7bhvcjpuc83a9tv	2025-08-12 07:06:40.756	2025-08-12 07:06:40.756	2025-08-12 07:06:40.785	1	1	\N	QuizIntermediate1	intermediate	10	10
27	frugze4hsl3gnvgcv4z4n893	2025-08-15 06:34:02.761	2025-08-15 06:34:02.761	\N	1	1	\N	QuizAdvanced1	advanced	10	10
28	frugze4hsl3gnvgcv4z4n893	2025-08-15 06:34:02.761	2025-08-15 06:34:02.761	2025-08-15 06:34:02.78	1	1	\N	QuizAdvanced1	advanced	10	10
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	kwdhxf8birivq4lyjuxpup83	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	c7bbd0b058d68a82d9953633b63ab2bd0c820b79453a8868bc4771597f82b00f8e115eadcd12e263b8c01f38013ed46913d635e8e9cffd244e50643a4294e01b	v1:820f7cace0f5abed85f71648ff3db906:f57b6b4e6894842a3f5548122bf1290bc012cfb10bf420936f245f8c9771c64ec3556c4da173fdde3383eadd9555a5838f284408db508e8c4af2d1f7a0c86ce8dd2f79ad0b5c9eb3a16698ffc3fba4c0f137283e74014d2878d35eeb44b4088c3067892a57a947cfd972cc1290ec9986b6be579f08ac2db6b41a8dfe2a440b69b4035dad56e025a6eb56832edf593edb11e77b5f6212b007df571be13628600fb4aaed21492487e7e1d77bb6cc14856fc3e3024d5f01b2281b02447454dbe7c8dcfa744717573de85bd43fdc9192987cd00bd5c4fb78fe9d6a19bb693fa039c6d1f6c3a2d0bc30b11664dccb1930cc1914bf023057acc448f424c3824256812f:6c69a81279a01bae3f4e35ebc88d6bec	\N	\N	\N	2025-05-28 10:52:36.814	2025-05-28 10:52:36.814	2025-05-28 10:52:36.814	\N	\N	\N
2	tgkk2xf2ozlva2vwofvsd2fx	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	85180c1f1493c6a6d25d998e30a478c5045d2f57cba1f48a2f3211482b60a7ae36c1fe33d92d9cf5988179b2ccf23971df57435fd99f0064fa7454f685ac7ae9	v1:32cf414b03d6a1ef8eba58307cd724a4:ac8b200841bfb80cc645efe3a6993645b47bf6b19cccfa4bab532b6572ebd0c2994f4fbf3db8ed15f4c64dc842236441c0a3bd7b80688c164a5b8b301bf83153ea3348cfb143f91fd8c94e613243b7c042bc29ba1457afd2826e28e7c2f1c7933dc33c578261617d7df24a1962c3b9ca36c505cb5eaf0159e511a99bc14ad1cdca0f4e573a86c8200c07713454adf602af3f379a8eb1a7b59d0d2b7ae940b588ea9748615292950e462f841e1b11e9e2d14160cf762d8e787dd75a7a28f68054fbb86d81e8318be5db7a1340d46072404c399b372a9c47811059f81e0b7ba67bb58627926d64d93b0bf7a34c3e554965d504b27c1f01936168596a7c087b5ee6:899660d604cc4b2958f15ddc55f51292	\N	\N	\N	2025-05-28 10:52:36.817	2025-05-28 10:52:36.817	2025-05-28 10:52:36.817	\N	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
7	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
3	plugin_content_manager_configuration_components::shared.rich-text	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"body","size":12}]]},"uid":"shared.rich-text","isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::shared.media	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"file":{"edit":{"label":"file","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"file","searchable":false,"sortable":false}}},"layouts":{"list":["id","file"],"edit":[[{"name":"file","size":6}]]},"uid":"shared.media","isComponent":true}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"encryptedKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
40	plugin_content_manager_configuration_content_types::api::choice.choice	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"questionid":{"edit":{"label":"questionid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"questionid","searchable":true,"sortable":true}},"question":{"edit":{"label":"question","description":"","placeholder":"","visible":true,"editable":true,"mainField":"hint"},"list":{"label":"question","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["questionid","text","question"],"edit":[[{"name":"text","size":6}],[{"name":"questionid","size":4},{"name":"question","size":6}]]},"uid":"api::choice.choice"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
28	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
43	plugin_content_manager_configuration_content_types::api::study-session.study-session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"mode":{"edit":{"label":"mode","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mode","searchable":true,"sortable":true}},"startedAt":{"edit":{"label":"startedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"startedAt","searchable":true,"sortable":true}},"finishedAt":{"edit":{"label":"finishedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"finishedAt","searchable":true,"sortable":true}},"durationSec":{"edit":{"label":"durationSec","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"durationSec","searchable":true,"sortable":true}},"score":{"edit":{"label":"score","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"score","searchable":true,"sortable":true}},"correctCount":{"edit":{"label":"correctCount","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"correctCount","searchable":true,"sortable":true}},"totalCount":{"edit":{"label":"totalCount","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"totalCount","searchable":true,"sortable":true}},"maxStreak":{"edit":{"label":"maxStreak","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"maxStreak","searchable":true,"sortable":true}},"user":{"edit":{"label":"user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"user","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","mode","startedAt","finishedAt"],"edit":[[{"name":"mode","size":6},{"name":"startedAt","size":6}],[{"name":"finishedAt","size":6},{"name":"durationSec","size":4}],[{"name":"score","size":4},{"name":"correctCount","size":4},{"name":"totalCount","size":4}],[{"name":"maxStreak","size":4},{"name":"user","size":6}]]},"uid":"api::study-session.study-session"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"study_sessions":{"edit":{"label":"study_sessions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"study_sessions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}],[{"name":"study_sessions","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::api::about.about	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","createdAt","updatedAt"],"edit":[[{"name":"title","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::about.about"}	object	\N	\N
24	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
32	plugin_i18n_default_locale	"en"	string	\N	\N
33	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
34	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
35	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","articles"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"articles","size":6},{"name":"description","size":6}]]},"uid":"api::category.category"}	object	\N	\N
2	plugin_content_manager_configuration_components::shared.slider	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}}},"layouts":{"list":["id","files"],"edit":[[{"name":"files","size":6}]]},"uid":"shared.slider","isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::shared.quote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","body"],"edit":[[{"name":"title","size":6},{"name":"body","size":6}]]},"uid":"shared.quote","isComponent":true}	object	\N	\N
38	plugin_documentation_config	{"restrictedAccess":true,"password":"$2a$10$Os7yz06r1H7CVlzQ2yLI5ufCp7OTN5enJgUA/65gKuVwOgTOI5Zxi"}	object	\N	\N
39	plugin_content_manager_configuration_content_types::api::question.question	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"hint","defaultSortBy":"questionid","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"hint":{"edit":{"label":"hint","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hint","searchable":true,"sortable":true}},"questionid":{"edit":{"label":"questionid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"questionid","searchable":true,"sortable":true}},"explanation":{"edit":{"label":"explanation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"explanation","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"quiz":{"edit":{"label":"quiz","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"quiz","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"answer":{"edit":{"label":"answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"answer","searchable":true,"sortable":true}},"choices":{"edit":{"label":"choices","description":"","placeholder":"","visible":true,"editable":true,"mainField":"text"},"list":{"label":"choices","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["questionid","title","answer","choices"],"edit":[[{"name":"questionid","size":4}],[{"name":"title","size":6},{"name":"type","size":4}],[{"name":"text","size":6},{"name":"code","size":6}],[{"name":"hint","size":6}],[{"name":"explanation","size":6}],[{"name":"quiz","size":6},{"name":"answer","size":6}],[{"name":"choices","size":6}]]},"uid":"api::question.question"}	object	\N	\N
1	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"study_sessions":{"type":"relation","relation":"oneToMany","target":"api::study-session.study-session","mappedBy":"user"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","kind":"collectionType","__filename__":"schema.json","uid":"plugin::users-permissions.user","modelType":"contentType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"study_sessions":{"type":"relation","relation":"oneToMany","target":"api::study-session.study-session","mappedBy":"user"}},"kind":"collectionType"},"modelName":"user"},"api::about.about":{"kind":"singleType","collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::about.about","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"abouts"}}},"apiName":"about","globalId":"About","uid":"api::about.about","modelType":"contentType","__schema__":{"collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"singleType"},"modelName":"about","actions":{},"lifecycles":{}},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::article.article","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"articles"}}},"apiName":"article","globalId":"Article","uid":"api::article.article","modelType":"contentType","__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"collectionType"},"modelName":"article","actions":{},"lifecycles":{}},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"author"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::author.author","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"authors"}}},"apiName":"author","globalId":"Author","uid":"api::author.author","modelType":"contentType","__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"author"}},"kind":"collectionType"},"modelName":"author","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::category.category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories"}}},"apiName":"category","globalId":"Category","uid":"api::category.category","modelType":"contentType","__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"}},"kind":"collectionType"},"modelName":"category","actions":{},"lifecycles":{}},"api::choice.choice":{"kind":"collectionType","collectionName":"choices","info":{"singularName":"choice","pluralName":"choices","displayName":"Choice","description":""},"options":{"draftAndPublish":true},"attributes":{"text":{"type":"string"},"questionid":{"type":"integer"},"question":{"type":"relation","relation":"manyToOne","target":"api::question.question","inversedBy":"choices"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::choice.choice","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"choices"}}},"apiName":"choice","globalId":"Choice","uid":"api::choice.choice","modelType":"contentType","__schema__":{"collectionName":"choices","info":{"singularName":"choice","pluralName":"choices","displayName":"Choice","description":""},"options":{"draftAndPublish":true},"attributes":{"text":{"type":"string"},"questionid":{"type":"integer"},"question":{"type":"relation","relation":"manyToOne","target":"api::question.question","inversedBy":"choices"}},"kind":"collectionType"},"modelName":"choice","actions":{},"lifecycles":{}},"api::global.global":{"kind":"singleType","collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::global.global","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"globals"}}},"apiName":"global","globalId":"Global","uid":"api::global.global","modelType":"contentType","__schema__":{"collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"global","actions":{},"lifecycles":{}},"api::question.question":{"kind":"collectionType","collectionName":"questions","info":{"singularName":"question","pluralName":"questions","displayName":"Question","description":""},"options":{"draftAndPublish":true},"attributes":{"text":{"type":"text"},"hint":{"type":"string"},"questionid":{"type":"integer"},"explanation":{"type":"text"},"type":{"type":"enumeration","enum":["multiple","input"]},"quiz":{"type":"relation","relation":"manyToOne","target":"api::quiz.quiz","inversedBy":"questions"},"code":{"type":"text"},"title":{"type":"string"},"answer":{"type":"string"},"choices":{"type":"relation","relation":"oneToMany","target":"api::choice.choice","mappedBy":"question"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::question.question","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"questions"}}},"apiName":"question","globalId":"Question","uid":"api::question.question","modelType":"contentType","__schema__":{"collectionName":"questions","info":{"singularName":"question","pluralName":"questions","displayName":"Question","description":""},"options":{"draftAndPublish":true},"attributes":{"text":{"type":"text"},"hint":{"type":"string"},"questionid":{"type":"integer"},"explanation":{"type":"text"},"type":{"type":"enumeration","enum":["multiple","input"]},"quiz":{"type":"relation","relation":"manyToOne","target":"api::quiz.quiz","inversedBy":"questions"},"code":{"type":"text"},"title":{"type":"string"},"answer":{"type":"string"},"choices":{"type":"relation","relation":"oneToMany","target":"api::choice.choice","mappedBy":"question"}},"kind":"collectionType"},"modelName":"question","actions":{},"lifecycles":{}},"api::quiz.quiz":{"kind":"collectionType","collectionName":"quizzes","info":{"singularName":"quiz","pluralName":"quizzes","displayName":"Quiz","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"mode":{"type":"enumeration","enum":["beginner","intermediate","advanced"]},"duration":{"type":"integer"},"number_of_question":{"type":"integer"},"questions":{"type":"relation","relation":"oneToMany","target":"api::question.question","mappedBy":"quiz"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::quiz.quiz","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"quizzes"}}},"apiName":"quiz","globalId":"Quiz","uid":"api::quiz.quiz","modelType":"contentType","__schema__":{"collectionName":"quizzes","info":{"singularName":"quiz","pluralName":"quizzes","displayName":"Quiz","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"mode":{"type":"enumeration","enum":["beginner","intermediate","advanced"]},"duration":{"type":"integer"},"number_of_question":{"type":"integer"},"questions":{"type":"relation","relation":"oneToMany","target":"api::question.question","mappedBy":"quiz"}},"kind":"collectionType"},"modelName":"quiz","actions":{},"lifecycles":{}},"api::study-session.study-session":{"kind":"collectionType","collectionName":"study_sessions","info":{"singularName":"study-session","pluralName":"study-sessions","displayName":"StudySession","description":""},"options":{"draftAndPublish":true},"attributes":{"mode":{"type":"enumeration","enum":["beginner","intermediate","advanced"]},"startedAt":{"type":"datetime","required":true},"finishedAt":{"type":"datetime"},"durationSec":{"type":"integer"},"score":{"type":"integer"},"correctCount":{"type":"integer"},"totalCount":{"type":"integer"},"maxStreak":{"type":"integer"},"user":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"study_sessions"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::study-session.study-session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"study_sessions"}}},"apiName":"study-session","globalId":"StudySession","uid":"api::study-session.study-session","modelType":"contentType","__schema__":{"collectionName":"study_sessions","info":{"singularName":"study-session","pluralName":"study-sessions","displayName":"StudySession","description":""},"options":{"draftAndPublish":true},"attributes":{"mode":{"type":"enumeration","enum":["beginner","intermediate","advanced"]},"startedAt":{"type":"datetime","required":true},"finishedAt":{"type":"datetime"},"durationSec":{"type":"integer"},"score":{"type":"integer"},"correctCount":{"type":"integer"},"totalCount":{"type":"integer"},"maxStreak":{"type":"integer"},"user":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"study_sessions"}},"kind":"collectionType"},"modelName":"study-session","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"}}	object	\N	\N
22	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
37	type_setup_initHasRun	true	boolean	development	\N
4	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"shareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shareImage","searchable":false,"sortable":false}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
36	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::author.author	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatar","searchable":false,"sortable":false}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","avatar","email"],"edit":[[{"name":"name","size":6},{"name":"avatar","size":6}],[{"name":"email","size":6},{"name":"articles","size":6}]]},"uid":"api::author.author"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"author","searchable":true,"sortable":true}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","slug"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"slug","size":6},{"name":"cover","size":6}],[{"name":"author","size":6},{"name":"category","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::article.article"}	object	\N	\N
41	plugin_content_manager_configuration_content_types::api::quiz.quiz	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"mode":{"edit":{"label":"mode","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mode","searchable":true,"sortable":true}},"duration":{"edit":{"label":"duration","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"duration","searchable":true,"sortable":true}},"number_of_question":{"edit":{"label":"number_of_question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number_of_question","searchable":true,"sortable":true}},"questions":{"edit":{"label":"questions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"hint"},"list":{"label":"questions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt","number_of_question"],"edit":[[{"name":"title","size":6}],[{"name":"mode","size":6},{"name":"duration","size":4}],[{"name":"number_of_question","size":4},{"name":"questions","size":6}]]},"uid":"api::quiz.quiz"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
29	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
30	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
31	plugin_upload_metrics	{"weeklySchedule":"28 14 2 * * 6","lastWeeklyUpdate":1759544068070}	object	\N	\N
21	plugin_content_manager_configuration_content_types::api::global.global	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"siteName","defaultSortBy":"siteName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"siteName":{"edit":{"label":"siteName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteName","searchable":true,"sortable":true}},"favicon":{"edit":{"label":"favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favicon","searchable":false,"sortable":false}},"siteDescription":{"edit":{"label":"siteDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteDescription","searchable":true,"sortable":true}},"defaultSeo":{"edit":{"label":"defaultSeo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"defaultSeo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","siteName","favicon","siteDescription"],"edit":[[{"name":"siteName","size":6},{"name":"favicon","size":6}],[{"name":"siteDescription","size":6}],[{"name":"defaultSeo","size":12}]]},"uid":"api::global.global"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
34	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"abouts_cmps","indexes":[{"name":"abouts_field_idx","columns":["field"]},{"name":"abouts_component_type_idx","columns":["component_type"]},{"name":"abouts_entity_fk","columns":["entity_id"]},{"name":"abouts_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"abouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"abouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"abouts","indexes":[{"name":"abouts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"abouts_created_by_id_fk","columns":["created_by_id"]},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"abouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"articles_cmps","indexes":[{"name":"articles_field_idx","columns":["field"]},{"name":"articles_component_type_idx","columns":["component_type"]},{"name":"articles_entity_fk","columns":["entity_id"]},{"name":"articles_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"articles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles","indexes":[{"name":"articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"authors","indexes":[{"name":"authors_documents_idx","columns":["document_id","locale","published_at"]},{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"choices","indexes":[{"name":"choices_documents_idx","columns":["document_id","locale","published_at"]},{"name":"choices_created_by_id_fk","columns":["created_by_id"]},{"name":"choices_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"choices_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"choices_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"questionid","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"globals_cmps","indexes":[{"name":"globals_field_idx","columns":["field"]},{"name":"globals_component_type_idx","columns":["component_type"]},{"name":"globals_entity_fk","columns":["entity_id"]},{"name":"globals_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"globals_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"globals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"globals","indexes":[{"name":"globals_documents_idx","columns":["document_id","locale","published_at"]},{"name":"globals_created_by_id_fk","columns":["created_by_id"]},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"globals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"questions","indexes":[{"name":"questions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"questions_created_by_id_fk","columns":["created_by_id"]},{"name":"questions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"questions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"questions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hint","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"questionid","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"explanation","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"answer","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"quizzes","indexes":[{"name":"quizzes_documents_idx","columns":["document_id","locale","published_at"]},{"name":"quizzes_created_by_id_fk","columns":["created_by_id"]},{"name":"quizzes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"quizzes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"quizzes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mode","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"duration","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"number_of_question","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"study_sessions","indexes":[{"name":"study_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"study_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"study_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"study_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"study_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mode","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"started_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"finished_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"duration_sec","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"score","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"correct_count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"max_streak","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_sliders","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_rich_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_quotes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_media","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_author_lnk","indexes":[{"name":"articles_author_lnk_fk","columns":["article_id"]},{"name":"articles_author_lnk_ifk","columns":["author_id"]},{"name":"articles_author_lnk_uq","columns":["article_id","author_id"],"type":"unique"},{"name":"articles_author_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_author_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_author_lnk_ifk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_category_lnk","indexes":[{"name":"articles_category_lnk_fk","columns":["article_id"]},{"name":"articles_category_lnk_ifk","columns":["category_id"]},{"name":"articles_category_lnk_uq","columns":["article_id","category_id"],"type":"unique"},{"name":"articles_category_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_category_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_category_lnk_ifk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"choices_question_lnk","indexes":[{"name":"choices_question_lnk_fk","columns":["choice_id"]},{"name":"choices_question_lnk_ifk","columns":["question_id"]},{"name":"choices_question_lnk_uq","columns":["choice_id","question_id"],"type":"unique"},{"name":"choices_question_lnk_oifk","columns":["choice_ord"]}],"foreignKeys":[{"name":"choices_question_lnk_fk","columns":["choice_id"],"referencedColumns":["id"],"referencedTable":"choices","onDelete":"CASCADE"},{"name":"choices_question_lnk_ifk","columns":["question_id"],"referencedColumns":["id"],"referencedTable":"questions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"choice_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"question_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"choice_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"questions_quiz_lnk","indexes":[{"name":"questions_quiz_lnk_fk","columns":["question_id"]},{"name":"questions_quiz_lnk_ifk","columns":["quiz_id"]},{"name":"questions_quiz_lnk_uq","columns":["question_id","quiz_id"],"type":"unique"},{"name":"questions_quiz_lnk_oifk","columns":["question_ord"]}],"foreignKeys":[{"name":"questions_quiz_lnk_fk","columns":["question_id"],"referencedColumns":["id"],"referencedTable":"questions","onDelete":"CASCADE"},{"name":"questions_quiz_lnk_ifk","columns":["quiz_id"],"referencedColumns":["id"],"referencedTable":"quizzes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"question_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"quiz_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"question_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"study_sessions_user_lnk","indexes":[{"name":"study_sessions_user_lnk_fk","columns":["study_session_id"]},{"name":"study_sessions_user_lnk_ifk","columns":["user_id"]},{"name":"study_sessions_user_lnk_uq","columns":["study_session_id","user_id"],"type":"unique"},{"name":"study_sessions_user_lnk_oifk","columns":["study_session_ord"]}],"foreignKeys":[{"name":"study_sessions_user_lnk_fk","columns":["study_session_id"],"referencedColumns":["id"],"referencedTable":"study_sessions","onDelete":"CASCADE"},{"name":"study_sessions_user_lnk_ifk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"study_session_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"study_session_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-10-04 03:48:18.143	fffdf04c7b0ceed0d29d386417e8fd81
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-05-28 10:52:35.652
2	5.0.0-02-created-document-id	2025-05-28 10:52:35.679
3	5.0.0-03-created-locale	2025-05-28 10:52:35.697
4	5.0.0-04-created-published-at	2025-05-28 10:52:35.712
5	5.0.0-05-drop-slug-fields-index	2025-05-28 10:52:35.726
6	core::5.0.0-discard-drafts	2025-05-28 10:52:35.741
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: study_sessions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.study_sessions (id, document_id, mode, started_at, finished_at, duration_sec, score, correct_count, total_count, max_streak, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: study_sessions_user_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.study_sessions_user_lnk (id, study_session_id, user_id, study_session_ord) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	fh8jww2q012cslwcd437l9x9	plugin::users-permissions.user.me	2025-05-28 10:52:36.523	2025-05-28 10:52:36.523	2025-05-28 10:52:36.523	\N	\N	\N
2	lbf43a5kg5q4d9s0yy6bp5kl	plugin::users-permissions.auth.changePassword	2025-05-28 10:52:36.523	2025-05-28 10:52:36.523	2025-05-28 10:52:36.524	\N	\N	\N
3	gvivn6l83j8vt38ph1ebeqyw	plugin::users-permissions.auth.callback	2025-05-28 10:52:36.531	2025-05-28 10:52:36.531	2025-05-28 10:52:36.531	\N	\N	\N
4	zky0fc1rw4z0w19jogmjbc62	plugin::users-permissions.auth.connect	2025-05-28 10:52:36.531	2025-05-28 10:52:36.531	2025-05-28 10:52:36.531	\N	\N	\N
5	kbapfn8ll7rqpjfib9faxa5i	plugin::users-permissions.auth.forgotPassword	2025-05-28 10:52:36.531	2025-05-28 10:52:36.531	2025-05-28 10:52:36.532	\N	\N	\N
8	finofsynam0752283olrq8yx	plugin::users-permissions.auth.emailConfirmation	2025-05-28 10:52:36.531	2025-05-28 10:52:36.531	2025-05-28 10:52:36.532	\N	\N	\N
7	jp4s26x0de416npbdrp74w1m	plugin::users-permissions.auth.register	2025-05-28 10:52:36.531	2025-05-28 10:52:36.531	2025-05-28 10:52:36.532	\N	\N	\N
6	q40mdyz2ok0vsaxb63z0crdu	plugin::users-permissions.auth.resetPassword	2025-05-28 10:52:36.531	2025-05-28 10:52:36.531	2025-05-28 10:52:36.532	\N	\N	\N
9	neq4x8t4qq1e0vst5cvu5ymz	plugin::users-permissions.auth.sendEmailConfirmation	2025-05-28 10:52:36.531	2025-05-28 10:52:36.531	2025-05-28 10:52:36.532	\N	\N	\N
10	jkhh2cf7gudiod8z32ppvrmp	api::article.article.find	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	\N	\N	\N
11	g13y5he4xtarl5aili0it1nn	api::article.article.findOne	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	\N	\N	\N
12	y7pqzah3l2ordec8k6akob5i	api::category.category.find	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	\N	\N	\N
13	lbogyjbptsgshcyvw8ijy78k	api::category.category.findOne	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	\N	\N	\N
14	smiitnb9o3hnfqub2i7pjifo	api::author.author.find	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	\N	\N	\N
15	lc0spczw2dl6iy7bbrjo3iz6	api::author.author.findOne	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	\N	\N	\N
16	mbth4v0pywpws2yt4y0wehpd	api::global.global.find	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	\N	\N	\N
18	lfu5ueds8195vj8r5u8eghsh	api::about.about.find	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	2025-05-28 10:52:36.824	\N	\N	\N
20	fyejjof4hvxejgtjp34kk90l	api::question.question.find	2025-06-12 10:35:51.746	2025-06-12 10:35:51.746	2025-06-12 10:35:51.747	\N	\N	\N
21	xv0wr9nl11wemj4opzjakh7n	api::question.question.findOne	2025-06-12 10:35:51.747	2025-06-12 10:35:51.747	2025-06-12 10:35:51.748	\N	\N	\N
22	jns7uug5k5k74xjzbkr25287	api::question.question.create	2025-06-12 10:35:51.747	2025-06-12 10:35:51.747	2025-06-12 10:35:51.748	\N	\N	\N
23	bc434o2ht7hivxdro702po0v	api::question.question.update	2025-06-12 10:35:51.747	2025-06-12 10:35:51.747	2025-06-12 10:35:51.749	\N	\N	\N
24	hdk6s9ed6sxny4q0r14ihwp3	api::question.question.delete	2025-06-12 10:35:51.747	2025-06-12 10:35:51.747	2025-06-12 10:35:51.749	\N	\N	\N
25	cmemnr4r2aqin3btv3x2tura	api::question.question.find	2025-06-12 10:37:06.661	2025-06-12 10:37:06.661	2025-06-12 10:37:06.662	\N	\N	\N
26	b2vgsr4qpyhxzxpvlxt7z33a	api::question.question.create	2025-06-12 10:37:06.662	2025-06-12 10:37:06.662	2025-06-12 10:37:06.664	\N	\N	\N
28	tn7amire3n4i603vrmejsbxp	api::question.question.update	2025-06-12 10:37:06.662	2025-06-12 10:37:06.662	2025-06-12 10:37:06.664	\N	\N	\N
27	wgdfj8t0c1xabj4iv8nqd1l2	api::question.question.findOne	2025-06-12 10:37:06.662	2025-06-12 10:37:06.662	2025-06-12 10:37:06.663	\N	\N	\N
29	dy47859e3gxt4m4avlyyk28z	api::question.question.delete	2025-06-12 10:37:06.662	2025-06-12 10:37:06.662	2025-06-12 10:37:06.664	\N	\N	\N
30	qadeutzd10e2xswrwsjcyhxi	api::choice.choice.find	2025-06-12 10:53:11.688	2025-06-12 10:53:11.688	2025-06-12 10:53:11.69	\N	\N	\N
31	etg5h1ybn9eb0rpfsvsffsk1	api::choice.choice.create	2025-06-12 10:53:11.689	2025-06-12 10:53:11.689	2025-06-12 10:53:11.692	\N	\N	\N
34	ytskcg4h871i3i176ipetdby	api::choice.choice.delete	2025-06-12 10:53:11.689	2025-06-12 10:53:11.689	2025-06-12 10:53:11.693	\N	\N	\N
32	qu65dmkizb44xs1oiq7heqis	api::choice.choice.findOne	2025-06-12 10:53:11.689	2025-06-12 10:53:11.689	2025-06-12 10:53:11.691	\N	\N	\N
33	sirufzxd55xb0lg5kuvul4yu	api::choice.choice.update	2025-06-12 10:53:11.689	2025-06-12 10:53:11.689	2025-06-12 10:53:11.692	\N	\N	\N
35	b7s7qwjnei6d1wu8szbvrhpt	api::quiz.quiz.find	2025-06-18 10:11:27.582	2025-06-18 10:11:27.582	2025-06-18 10:11:27.584	\N	\N	\N
36	z8duqut8lj38cyrinzsk22ut	api::quiz.quiz.findOne	2025-06-18 10:11:27.583	2025-06-18 10:11:27.583	2025-06-18 10:11:27.585	\N	\N	\N
37	hxvxfyulqusezl7519c3hwxs	api::quiz.quiz.create	2025-06-18 10:11:27.583	2025-06-18 10:11:27.583	2025-06-18 10:11:27.585	\N	\N	\N
38	gch1okuhiipawnw1jqiuri6m	api::quiz.quiz.update	2025-06-18 10:11:27.583	2025-06-18 10:11:27.583	2025-06-18 10:11:27.585	\N	\N	\N
39	kvr0khlq5mjlcljlsgzvkez3	api::quiz.quiz.delete	2025-06-18 10:11:27.583	2025-06-18 10:11:27.583	2025-06-18 10:11:27.586	\N	\N	\N
44	tz4bspinhmq8dkmkusdbxsv2	plugin::users-permissions.auth.connect	2025-09-27 02:38:16.334	2025-09-27 02:38:16.334	2025-09-27 02:38:16.335	\N	\N	\N
45	zqncdkqyfsaxph5qr4vprim8	plugin::users-permissions.auth.callback	2025-09-27 02:38:48.031	2025-09-27 02:38:48.031	2025-09-27 02:38:48.032	\N	\N	\N
47	fpi7arrcvo6oo30p2pm6r1lq	api::quiz.quiz.find	2025-09-27 02:43:16.221	2025-09-27 02:43:16.221	2025-09-27 02:43:16.221	\N	\N	\N
48	g74hzbm789xa1ypgqlzrr85u	api::quiz.quiz.findOne	2025-09-27 02:43:16.221	2025-09-27 02:43:16.221	2025-09-27 02:43:16.222	\N	\N	\N
49	d6vsc2jqc1ibhus5f08a7hgi	plugin::users-permissions.role.find	2025-09-27 08:17:25.166	2025-09-27 08:17:25.166	2025-09-27 08:17:25.167	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	2	1	1
2	1	1	1
3	3	2	1
4	4	2	1
5	5	2	2
6	7	2	2
7	8	2	2
8	6	2	2
9	9	2	2
10	10	2	3
11	11	2	3
12	12	2	3
13	13	2	3
14	14	2	3
15	15	2	3
16	16	2	3
19	18	2	4
20	21	1	2
21	20	1	2
22	22	1	2
23	23	1	2
24	24	1	2
25	25	2	5
26	26	2	5
27	28	2	6
28	27	2	6
29	29	2	6
30	30	2	7
33	33	2	8
31	34	2	8
32	32	2	8
34	31	2	8
35	36	2	9
36	37	2	9
37	35	2	9
38	39	2	9
39	38	2	9
44	44	1	5
45	45	1	6
47	47	1	7
48	48	1	7
49	49	1	8
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	lzl6myw1akurxjq2uk8y0rrr	Authenticated	Default role given to authenticated user.	authenticated	2025-05-28 10:52:36.513	2025-09-27 09:12:05.768	2025-05-28 10:52:36.514	\N	\N	\N
2	nw8l3o9hpba6dhoxnryujil1	Public	Default role given to unauthenticated user.	public	2025-05-28 10:52:36.516	2025-09-27 09:14:13.655	2025-05-28 10:52:36.517	\N	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	oe8bmjjxcig454uryclq1acm	user12	masahiro.toma@thedott.io	local	$2a$10$tjq6N.HvIL8iipBaQj2vzOHzBdgQuX7sYCls9Q9FqxI/vSkhPf.w6	\N	\N	f	f	2025-09-03 10:02:49.036	2025-09-03 10:02:49.036	2025-09-03 10:02:48.953	1	1	\N
2	pgy2sj47a6cx95wbnhcgqzrc	foobar	foo.bar@strapi.io	local	$2a$10$j1bbTxOaG8SprgFccLiud.oR/AjtEAemYClZgq8ITri52KbyMlQqK	\N	\N	t	f	2025-09-03 10:04:39.374	2025-09-03 10:04:39.374	2025-09-03 10:04:39.374	\N	\N	\N
3	l0uel7j0xoiwt0g6lwp4e05x	tesi01	test01@example.com	local	$2a$10$a6msh5SY39uTBbEbCrruPOEdiDLfN/KMKEkMCYNU8SZM2iL/rwX6e	\N	\N	t	f	2025-09-07 07:53:27.645	2025-09-07 07:53:27.645	2025-09-07 07:53:27.65	\N	\N	\N
4	o6yh59yyc9e49nh4c2lp0l3h	test02	test02@example.com	local	$2a$10$ms9lxJLo9nMSf9xkBKUoyue577pttfcFBz2w0qD2OjKS8Xu7d7io.	\N	\N	t	f	2025-09-07 07:59:30.845	2025-09-07 07:59:30.845	2025-09-07 07:59:30.846	\N	\N	\N
5	zhmfaiqlenwckku6she0nn2d	test03	test03@example.com	local	$2a$10$hVoIRFQQfPmfYPZY6GZcJO75.byJYntaOQjkBup.2DxoiubLKhyiK	\N	\N	t	f	2025-09-10 09:31:59.205	2025-09-10 09:31:59.205	2025-09-10 09:31:59.209	\N	\N	\N
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
1	1	1	1
2	2	1	2
3	3	1	3
4	4	1	4
5	5	1	5
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Name: abouts_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.abouts_cmps_id_seq', 3, true);


--
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.abouts_id_seq', 1, true);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 310, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 310, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, true);


--
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_author_lnk_id_seq', 5, true);


--
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_category_lnk_id_seq', 5, true);


--
-- Name: articles_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_cmps_id_seq', 25, true);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_id_seq', 5, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.authors_id_seq', 2, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.categories_id_seq', 5, true);


--
-- Name: choices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.choices_id_seq', 232, true);


--
-- Name: choices_question_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.choices_question_lnk_id_seq', 1, false);


--
-- Name: components_shared_media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_media_id_seq', 6, true);


--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_quotes_id_seq', 6, true);


--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_rich_texts_id_seq', 11, true);


--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, true);


--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_sliders_id_seq', 5, true);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_id_seq', 11, true);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 25, true);


--
-- Name: globals_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.globals_cmps_id_seq', 1, true);


--
-- Name: globals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.globals_id_seq', 1, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.questions_id_seq', 237, true);


--
-- Name: questions_quiz_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.questions_quiz_lnk_id_seq', 222, true);


--
-- Name: quizzes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.quizzes_id_seq', 28, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 43, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 34, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 6, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: study_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.study_sessions_id_seq', 1, false);


--
-- Name: study_sessions_user_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.study_sessions_user_lnk_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 50, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 50, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_id_seq', 5, true);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 5, true);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: abouts_cmps abouts_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_cmps_pkey PRIMARY KEY (id);


--
-- Name: abouts abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);


--
-- Name: abouts_cmps abouts_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: articles_author_lnk articles_author_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_pkey PRIMARY KEY (id);


--
-- Name: articles_author_lnk articles_author_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_uq UNIQUE (article_id, author_id);


--
-- Name: articles_category_lnk articles_category_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_pkey PRIMARY KEY (id);


--
-- Name: articles_category_lnk articles_category_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_uq UNIQUE (article_id, category_id);


--
-- Name: articles_cmps articles_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_cmps_pkey PRIMARY KEY (id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: articles_cmps articles_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: choices choices_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.choices
    ADD CONSTRAINT choices_pkey PRIMARY KEY (id);


--
-- Name: choices_question_lnk choices_question_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.choices_question_lnk
    ADD CONSTRAINT choices_question_lnk_pkey PRIMARY KEY (id);


--
-- Name: choices_question_lnk choices_question_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.choices_question_lnk
    ADD CONSTRAINT choices_question_lnk_uq UNIQUE (choice_id, question_id);


--
-- Name: components_shared_media components_shared_media_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);


--
-- Name: components_shared_quotes components_shared_quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);


--
-- Name: components_shared_rich_texts components_shared_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- Name: components_shared_sliders components_shared_sliders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: globals_cmps globals_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_cmps_pkey PRIMARY KEY (id);


--
-- Name: globals globals_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);


--
-- Name: globals_cmps globals_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: questions_quiz_lnk questions_quiz_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.questions_quiz_lnk
    ADD CONSTRAINT questions_quiz_lnk_pkey PRIMARY KEY (id);


--
-- Name: questions_quiz_lnk questions_quiz_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.questions_quiz_lnk
    ADD CONSTRAINT questions_quiz_lnk_uq UNIQUE (question_id, quiz_id);


--
-- Name: quizzes quizzes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.quizzes
    ADD CONSTRAINT quizzes_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: study_sessions study_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.study_sessions
    ADD CONSTRAINT study_sessions_pkey PRIMARY KEY (id);


--
-- Name: study_sessions_user_lnk study_sessions_user_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.study_sessions_user_lnk
    ADD CONSTRAINT study_sessions_user_lnk_pkey PRIMARY KEY (id);


--
-- Name: study_sessions_user_lnk study_sessions_user_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.study_sessions_user_lnk
    ADD CONSTRAINT study_sessions_user_lnk_uq UNIQUE (study_session_id, user_id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: abouts_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX abouts_component_type_idx ON public.abouts_cmps USING btree (component_type);


--
-- Name: abouts_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX abouts_created_by_id_fk ON public.abouts USING btree (created_by_id);


--
-- Name: abouts_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX abouts_documents_idx ON public.abouts USING btree (document_id, locale, published_at);


--
-- Name: abouts_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX abouts_entity_fk ON public.abouts_cmps USING btree (entity_id);


--
-- Name: abouts_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX abouts_field_idx ON public.abouts_cmps USING btree (field);


--
-- Name: abouts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX abouts_updated_by_id_fk ON public.abouts USING btree (updated_by_id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: articles_author_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_author_lnk_fk ON public.articles_author_lnk USING btree (article_id);


--
-- Name: articles_author_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_author_lnk_ifk ON public.articles_author_lnk USING btree (author_id);


--
-- Name: articles_author_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_author_lnk_oifk ON public.articles_author_lnk USING btree (article_ord);


--
-- Name: articles_category_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_category_lnk_fk ON public.articles_category_lnk USING btree (article_id);


--
-- Name: articles_category_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_category_lnk_ifk ON public.articles_category_lnk USING btree (category_id);


--
-- Name: articles_category_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_category_lnk_oifk ON public.articles_category_lnk USING btree (article_ord);


--
-- Name: articles_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_component_type_idx ON public.articles_cmps USING btree (component_type);


--
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);


--
-- Name: articles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_documents_idx ON public.articles USING btree (document_id, locale, published_at);


--
-- Name: articles_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_entity_fk ON public.articles_cmps USING btree (entity_id);


--
-- Name: articles_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_field_idx ON public.articles_cmps USING btree (field);


--
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);


--
-- Name: authors_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);


--
-- Name: authors_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX authors_documents_idx ON public.authors USING btree (document_id, locale, published_at);


--
-- Name: authors_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);


--
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- Name: categories_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_documents_idx ON public.categories USING btree (document_id, locale, published_at);


--
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- Name: choices_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX choices_created_by_id_fk ON public.choices USING btree (created_by_id);


--
-- Name: choices_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX choices_documents_idx ON public.choices USING btree (document_id, locale, published_at);


--
-- Name: choices_question_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX choices_question_lnk_fk ON public.choices_question_lnk USING btree (choice_id);


--
-- Name: choices_question_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX choices_question_lnk_ifk ON public.choices_question_lnk USING btree (question_id);


--
-- Name: choices_question_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX choices_question_lnk_oifk ON public.choices_question_lnk USING btree (choice_ord);


--
-- Name: choices_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX choices_updated_by_id_fk ON public.choices USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: globals_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_component_type_idx ON public.globals_cmps USING btree (component_type);


--
-- Name: globals_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);


--
-- Name: globals_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_documents_idx ON public.globals USING btree (document_id, locale, published_at);


--
-- Name: globals_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_entity_fk ON public.globals_cmps USING btree (entity_id);


--
-- Name: globals_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_field_idx ON public.globals_cmps USING btree (field);


--
-- Name: globals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: questions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX questions_created_by_id_fk ON public.questions USING btree (created_by_id);


--
-- Name: questions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX questions_documents_idx ON public.questions USING btree (document_id, locale, published_at);


--
-- Name: questions_quiz_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX questions_quiz_lnk_fk ON public.questions_quiz_lnk USING btree (question_id);


--
-- Name: questions_quiz_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX questions_quiz_lnk_ifk ON public.questions_quiz_lnk USING btree (quiz_id);


--
-- Name: questions_quiz_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX questions_quiz_lnk_oifk ON public.questions_quiz_lnk USING btree (question_ord);


--
-- Name: questions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX questions_updated_by_id_fk ON public.questions USING btree (updated_by_id);


--
-- Name: quizzes_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX quizzes_created_by_id_fk ON public.quizzes USING btree (created_by_id);


--
-- Name: quizzes_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX quizzes_documents_idx ON public.quizzes USING btree (document_id, locale, published_at);


--
-- Name: quizzes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX quizzes_updated_by_id_fk ON public.quizzes USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: study_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX study_sessions_created_by_id_fk ON public.study_sessions USING btree (created_by_id);


--
-- Name: study_sessions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX study_sessions_documents_idx ON public.study_sessions USING btree (document_id, locale, published_at);


--
-- Name: study_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX study_sessions_updated_by_id_fk ON public.study_sessions USING btree (updated_by_id);


--
-- Name: study_sessions_user_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX study_sessions_user_lnk_fk ON public.study_sessions_user_lnk USING btree (study_session_id);


--
-- Name: study_sessions_user_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX study_sessions_user_lnk_ifk ON public.study_sessions_user_lnk USING btree (user_id);


--
-- Name: study_sessions_user_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX study_sessions_user_lnk_oifk ON public.study_sessions_user_lnk USING btree (study_session_ord);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: abouts abouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: abouts_cmps abouts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.abouts(id) ON DELETE CASCADE;


--
-- Name: abouts abouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles_author_lnk articles_author_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles_author_lnk articles_author_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_ifk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: articles_category_lnk articles_category_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles_category_lnk articles_category_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_ifk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles_cmps articles_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_entity_fk FOREIGN KEY (entity_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors authors_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors authors_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: choices choices_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.choices
    ADD CONSTRAINT choices_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: choices_question_lnk choices_question_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.choices_question_lnk
    ADD CONSTRAINT choices_question_lnk_fk FOREIGN KEY (choice_id) REFERENCES public.choices(id) ON DELETE CASCADE;


--
-- Name: choices_question_lnk choices_question_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.choices_question_lnk
    ADD CONSTRAINT choices_question_lnk_ifk FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE;


--
-- Name: choices choices_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.choices
    ADD CONSTRAINT choices_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: globals globals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: globals_cmps globals_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;


--
-- Name: globals globals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: questions questions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: questions_quiz_lnk questions_quiz_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.questions_quiz_lnk
    ADD CONSTRAINT questions_quiz_lnk_fk FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE;


--
-- Name: questions_quiz_lnk questions_quiz_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.questions_quiz_lnk
    ADD CONSTRAINT questions_quiz_lnk_ifk FOREIGN KEY (quiz_id) REFERENCES public.quizzes(id) ON DELETE CASCADE;


--
-- Name: questions questions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: quizzes quizzes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.quizzes
    ADD CONSTRAINT quizzes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: quizzes quizzes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.quizzes
    ADD CONSTRAINT quizzes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: study_sessions study_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.study_sessions
    ADD CONSTRAINT study_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: study_sessions study_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.study_sessions
    ADD CONSTRAINT study_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: study_sessions_user_lnk study_sessions_user_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.study_sessions_user_lnk
    ADD CONSTRAINT study_sessions_user_lnk_fk FOREIGN KEY (study_session_id) REFERENCES public.study_sessions(id) ON DELETE CASCADE;


--
-- Name: study_sessions_user_lnk study_sessions_user_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.study_sessions_user_lnk
    ADD CONSTRAINT study_sessions_user_lnk_ifk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict 3k3CGidXMnYdv2ZmWSUFiJRCh0vObJIpRgfcAHglWcFai93q2IVvQjfHUapPgmP

--
-- PostgreSQL database cluster dump complete
--

