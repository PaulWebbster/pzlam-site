--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Debian 11.2-1.pgdg90+1)
-- Dumped by pg_dump version 11.2 (Debian 11.2-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: pzlamsite; Type: DATABASE; Schema: -; Owner: postgres
--

\connect pzlamsite

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_homepage (
    page_ptr_id integer NOT NULL
);


ALTER TABLE public.home_homepage OWNER TO postgres;

--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO postgres;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO postgres;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO postgres;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO postgres;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_collection OWNER TO postgres;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailcore_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collection_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;


--
-- Name: wagtailcore_collectionviewrestriction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id integer NOT NULL,
    restriction_type character varying(20) NOT NULL,
    password character varying(255) NOT NULL,
    collection_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_collectionviewrestriction OWNER TO postgres;

--
-- Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id integer NOT NULL,
    collectionviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups OWNER TO postgres;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupcollectionpermission OWNER TO postgres;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupcollectionpermission_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_grouppagepermission OWNER TO postgres;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_grouppagepermission_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id integer,
    last_published_at timestamp with time zone,
    draft_title character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_page OWNER TO postgres;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailcore_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_page_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.wagtailcore_pagerevision OWNER TO postgres;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailcore_pagerevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagerevision_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailcore_pagerevision_id_seq OWNED BY public.wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL,
    restriction_type character varying(20) NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction OWNER TO postgres;

--
-- Name: wagtailcore_pageviewrestriction_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id integer NOT NULL,
    pageviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction_groups OWNER TO postgres;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_groups_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255)
);


ALTER TABLE public.wagtailcore_site OWNER TO postgres;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailcore_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_site_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL,
    file_size integer,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtaildocs_document_file_size_check CHECK ((file_size >= 0))
);


ALTER TABLE public.wagtaildocs_document OWNER TO postgres;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtaildocs_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_document_id_seq OWNER TO postgres;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailembeds_embed (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url character varying(200),
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL
);


ALTER TABLE public.wagtailembeds_embed OWNER TO postgres;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailembeds_embed_id_seq OWNER TO postgres;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailforms_formsubmission OWNER TO postgres;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailforms_formsubmission_id_seq OWNER TO postgres;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


ALTER TABLE public.wagtailimages_image OWNER TO postgres;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailimages_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_image_id_seq OWNER TO postgres;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(16) NOT NULL,
    filter_spec character varying(255) NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE public.wagtailimages_rendition OWNER TO postgres;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_rendition_id_seq OWNER TO postgres;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(255) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


ALTER TABLE public.wagtailredirects_redirect OWNER TO postgres;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailredirects_redirect_id_seq OWNER TO postgres;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_editorspick OWNER TO postgres;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailsearch_editorspick_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_editorspick_id_seq OWNER TO postgres;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailsearch_editorspick_id_seq OWNED BY public.wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


ALTER TABLE public.wagtailsearch_query OWNER TO postgres;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailsearch_query_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_query_id_seq OWNER TO postgres;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_querydailyhits OWNER TO postgres;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_querydailyhits_id_seq OWNER TO postgres;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL,
    preferred_language character varying(10) NOT NULL,
    current_time_zone character varying(40) NOT NULL,
    avatar character varying(100) NOT NULL
);


ALTER TABLE public.wagtailusers_userprofile OWNER TO postgres;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailusers_userprofile_id_seq OWNER TO postgres;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: wagtailcore_collection id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupcollectionpermission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: wagtailcore_grouppagepermission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: wagtailcore_page id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);


--
-- Name: wagtailcore_pagerevision id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);


--
-- Name: wagtaildocs_document id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);


--
-- Name: wagtailembeds_embed id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);


--
-- Name: wagtailforms_formsubmission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: wagtailimages_image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);


--
-- Name: wagtailimages_rendition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);


--
-- Name: wagtailredirects_redirect id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: wagtailsearch_editorspick id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: wagtailsearch_query id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);


--
-- Name: wagtailsearch_querydailyhits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: wagtailusers_userprofile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_group (id, name) VALUES (1, 'Moderators');
INSERT INTO public.auth_group (id, name) VALUES (2, 'Editors');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (1, 1, 1);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (2, 2, 1);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (3, 1, 2);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (4, 1, 3);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (5, 1, 4);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (6, 2, 2);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (7, 2, 3);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (8, 2, 4);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (9, 1, 5);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (10, 1, 6);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (11, 1, 7);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (12, 2, 5);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (13, 2, 6);
INSERT INTO public.auth_group_permissions (id, group_id, permission_id) VALUES (14, 2, 7);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can access Wagtail admin', 3, 'access_admin');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can add document', 4, 'add_document');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can change document', 4, 'change_document');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can delete document', 4, 'delete_document');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add image', 5, 'add_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change image', 5, 'change_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete image', 5, 'delete_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can add home page', 2, 'add_homepage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can change home page', 2, 'change_homepage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can delete home page', 2, 'delete_homepage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can view home page', 2, 'view_homepage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can add form submission', 6, 'add_formsubmission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can change form submission', 6, 'change_formsubmission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can delete form submission', 6, 'delete_formsubmission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can view form submission', 6, 'view_formsubmission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can add redirect', 7, 'add_redirect');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can change redirect', 7, 'change_redirect');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can delete redirect', 7, 'delete_redirect');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can view redirect', 7, 'view_redirect');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can add embed', 8, 'add_embed');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can change embed', 8, 'change_embed');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can delete embed', 8, 'delete_embed');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can view embed', 8, 'view_embed');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can add user profile', 9, 'add_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can change user profile', 9, 'change_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can delete user profile', 9, 'delete_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can view user profile', 9, 'view_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view document', 4, 'view_document');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can view image', 5, 'view_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can add rendition', 10, 'add_rendition');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can change rendition', 10, 'change_rendition');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can delete rendition', 10, 'delete_rendition');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can view rendition', 10, 'view_rendition');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can add query', 11, 'add_query');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can change query', 11, 'change_query');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can delete query', 11, 'delete_query');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can view query', 11, 'view_query');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can add Query Daily Hits', 12, 'add_querydailyhits');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can change Query Daily Hits', 12, 'change_querydailyhits');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can delete Query Daily Hits', 12, 'delete_querydailyhits');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can view Query Daily Hits', 12, 'view_querydailyhits');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can add page', 1, 'add_page');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can change page', 1, 'change_page');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can delete page', 1, 'delete_page');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can view page', 1, 'view_page');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can add group page permission', 13, 'add_grouppagepermission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can change group page permission', 13, 'change_grouppagepermission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can delete group page permission', 13, 'delete_grouppagepermission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can view group page permission', 13, 'view_grouppagepermission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can add page revision', 14, 'add_pagerevision');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can change page revision', 14, 'change_pagerevision');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can delete page revision', 14, 'delete_pagerevision');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can view page revision', 14, 'view_pagerevision');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can add page view restriction', 15, 'add_pageviewrestriction');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can change page view restriction', 15, 'change_pageviewrestriction');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can delete page view restriction', 15, 'delete_pageviewrestriction');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can view page view restriction', 15, 'view_pageviewrestriction');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can add site', 16, 'add_site');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can change site', 16, 'change_site');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can delete site', 16, 'delete_site');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can view site', 16, 'view_site');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can add collection', 17, 'add_collection');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can change collection', 17, 'change_collection');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can delete collection', 17, 'delete_collection');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (65, 'Can view collection', 17, 'view_collection');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (66, 'Can add group collection permission', 18, 'add_groupcollectionpermission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (67, 'Can change group collection permission', 18, 'change_groupcollectionpermission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (68, 'Can delete group collection permission', 18, 'delete_groupcollectionpermission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (69, 'Can view group collection permission', 18, 'view_groupcollectionpermission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (70, 'Can add collection view restriction', 19, 'add_collectionviewrestriction');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (71, 'Can change collection view restriction', 19, 'change_collectionviewrestriction');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (72, 'Can delete collection view restriction', 19, 'delete_collectionviewrestriction');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (73, 'Can view collection view restriction', 19, 'view_collectionviewrestriction');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (74, 'Can add Tag', 20, 'add_tag');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (75, 'Can change Tag', 20, 'change_tag');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (76, 'Can delete Tag', 20, 'delete_tag');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (77, 'Can view Tag', 20, 'view_tag');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (78, 'Can add Tagged Item', 21, 'add_taggeditem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (79, 'Can change Tagged Item', 21, 'change_taggeditem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (80, 'Can delete Tagged Item', 21, 'delete_taggeditem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (81, 'Can view Tagged Item', 21, 'view_taggeditem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (82, 'Can add log entry', 22, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (83, 'Can change log entry', 22, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (84, 'Can delete log entry', 22, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (85, 'Can view log entry', 22, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (86, 'Can add permission', 23, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (87, 'Can change permission', 23, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (88, 'Can delete permission', 23, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (89, 'Can view permission', 23, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (90, 'Can add group', 24, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (91, 'Can change group', 24, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (92, 'Can delete group', 24, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (93, 'Can view group', 24, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (94, 'Can add user', 25, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (95, 'Can change user', 25, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (96, 'Can delete user', 25, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (97, 'Can view user', 25, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (98, 'Can add content type', 26, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (99, 'Can change content type', 26, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (100, 'Can delete content type', 26, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (101, 'Can view content type', 26, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (102, 'Can add session', 27, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (103, 'Can change session', 27, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (104, 'Can delete session', 27, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (105, 'Can view session', 27, 'view_session');


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$120000$zemZ9oEuyvf9$B/iyT6l22w8KdCBYD+ha+A9x95pN2CIay13OYBAu/D4=', NULL, true, 'pawel', '', '', 'admin@pzlam.pl', true, true, '2019-02-28 22:42:34.426881+00');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'wagtailcore', 'page');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'home', 'homepage');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'wagtailadmin', 'admin');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'wagtaildocs', 'document');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'wagtailimages', 'image');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'wagtailforms', 'formsubmission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'wagtailredirects', 'redirect');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'wagtailembeds', 'embed');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'wagtailusers', 'userprofile');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'wagtailimages', 'rendition');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'wagtailsearch', 'query');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'wagtailsearch', 'querydailyhits');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'wagtailcore', 'grouppagepermission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'wagtailcore', 'pagerevision');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'wagtailcore', 'pageviewrestriction');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'wagtailcore', 'site');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (17, 'wagtailcore', 'collection');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (18, 'wagtailcore', 'groupcollectionpermission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (19, 'wagtailcore', 'collectionviewrestriction');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (20, 'taggit', 'tag');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (21, 'taggit', 'taggeditem');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (22, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (23, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (24, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (25, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (26, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (27, 'sessions', 'session');


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2019-02-28 22:42:03.969013+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2019-02-28 22:42:04.1619+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2019-02-28 22:42:04.222449+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-02-28 22:42:04.234092+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2019-02-28 22:42:04.245654+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2019-02-28 22:42:04.272185+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2019-02-28 22:42:04.282409+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2019-02-28 22:42:04.29723+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2019-02-28 22:42:04.307975+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2019-02-28 22:42:04.326175+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2019-02-28 22:42:04.330712+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2019-02-28 22:42:04.341422+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2019-02-28 22:42:04.363716+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2019-02-28 22:42:04.377589+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'wagtailcore', '0001_initial', '2019-02-28 22:42:04.694727+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'wagtailcore', '0002_initial_data', '2019-02-28 22:42:04.699181+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'wagtailcore', '0003_add_uniqueness_constraint_on_group_page_permission', '2019-02-28 22:42:04.70316+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'wagtailcore', '0004_page_locked', '2019-02-28 22:42:04.707314+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'wagtailcore', '0005_add_page_lock_permission_to_moderators', '2019-02-28 22:42:04.711567+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'wagtailcore', '0006_add_lock_page_permission', '2019-02-28 22:42:04.71578+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'wagtailcore', '0007_page_latest_revision_created_at', '2019-02-28 22:42:04.719895+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'wagtailcore', '0008_populate_latest_revision_created_at', '2019-02-28 22:42:04.724225+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'wagtailcore', '0009_remove_auto_now_add_from_pagerevision_created_at', '2019-02-28 22:42:04.728418+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'wagtailcore', '0010_change_page_owner_to_null_on_delete', '2019-02-28 22:42:04.732717+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'wagtailcore', '0011_page_first_published_at', '2019-02-28 22:42:04.739295+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'wagtailcore', '0012_extend_page_slug_field', '2019-02-28 22:42:04.745934+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'wagtailcore', '0013_update_golive_expire_help_text', '2019-02-28 22:42:04.75267+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'wagtailcore', '0014_add_verbose_name', '2019-02-28 22:42:04.759598+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'wagtailcore', '0015_add_more_verbose_names', '2019-02-28 22:42:04.76629+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'wagtailcore', '0016_change_page_url_path_to_text_field', '2019-02-28 22:42:04.772859+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'wagtailcore', '0017_change_edit_page_permission_description', '2019-02-28 22:42:04.79479+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'wagtailcore', '0018_pagerevision_submitted_for_moderation_index', '2019-02-28 22:42:04.835743+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'wagtailcore', '0019_verbose_names_cleanup', '2019-02-28 22:42:04.884613+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'wagtailcore', '0020_add_index_on_page_first_published_at', '2019-02-28 22:42:04.912873+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (35, 'wagtailcore', '0021_capitalizeverbose', '2019-02-28 22:42:05.227182+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (36, 'wagtailcore', '0022_add_site_name', '2019-02-28 22:42:05.25714+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (37, 'wagtailcore', '0023_alter_page_revision_on_delete_behaviour', '2019-02-28 22:42:05.289006+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (38, 'wagtailcore', '0024_collection', '2019-02-28 22:42:05.347424+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (39, 'wagtailcore', '0025_collection_initial_data', '2019-02-28 22:42:05.392928+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (40, 'wagtailcore', '0026_group_collection_permission', '2019-02-28 22:42:05.473003+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (41, 'wagtailcore', '0027_fix_collection_path_collation', '2019-02-28 22:42:05.532955+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (42, 'wagtailcore', '0024_alter_page_content_type_on_delete_behaviour', '2019-02-28 22:42:05.566892+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (43, 'wagtailcore', '0028_merge', '2019-02-28 22:42:05.571303+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (44, 'wagtailcore', '0029_unicode_slugfield_dj19', '2019-02-28 22:42:05.586367+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (45, 'wagtailcore', '0030_index_on_pagerevision_created_at', '2019-02-28 22:42:05.611015+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (46, 'wagtailcore', '0031_add_page_view_restriction_types', '2019-02-28 22:42:05.697654+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (47, 'wagtailcore', '0032_add_bulk_delete_page_permission', '2019-02-28 22:42:05.716003+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (48, 'wagtailcore', '0033_remove_golive_expiry_help_text', '2019-02-28 22:42:05.745533+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (49, 'wagtailcore', '0034_page_live_revision', '2019-02-28 22:42:05.777459+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (50, 'wagtailcore', '0035_page_last_published_at', '2019-02-28 22:42:05.832181+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (51, 'wagtailcore', '0036_populate_page_last_published_at', '2019-02-28 22:42:05.852087+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (52, 'wagtailcore', '0037_set_page_owner_editable', '2019-02-28 22:42:05.876717+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (53, 'wagtailcore', '0038_make_first_published_at_editable', '2019-02-28 22:42:05.890832+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (54, 'wagtailcore', '0039_collectionviewrestriction', '2019-02-28 22:42:06.00827+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (55, 'wagtailcore', '0040_page_draft_title', '2019-02-28 22:42:06.065909+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (56, 'home', '0001_initial', '2019-02-28 22:42:06.090789+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (57, 'home', '0002_create_homepage', '2019-02-28 22:42:06.127385+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (58, 'sessions', '0001_initial', '2019-02-28 22:42:06.187194+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (59, 'taggit', '0001_initial', '2019-02-28 22:42:06.316639+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (60, 'taggit', '0002_auto_20150616_2121', '2019-02-28 22:42:06.364295+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (61, 'wagtailadmin', '0001_create_admin_access_permissions', '2019-02-28 22:42:06.4184+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (62, 'wagtailcore', '0041_group_collection_permissions_verbose_name_plural', '2019-02-28 22:42:06.432199+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (63, 'wagtaildocs', '0001_initial', '2019-02-28 22:42:06.46937+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (64, 'wagtaildocs', '0002_initial_data', '2019-02-28 22:42:06.510307+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (65, 'wagtaildocs', '0003_add_verbose_names', '2019-02-28 22:42:06.557428+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (66, 'wagtaildocs', '0004_capitalizeverbose', '2019-02-28 22:42:06.638969+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (67, 'wagtaildocs', '0005_document_collection', '2019-02-28 22:42:06.687036+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (68, 'wagtaildocs', '0006_copy_document_permissions_to_collections', '2019-02-28 22:42:06.730219+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (69, 'wagtaildocs', '0005_alter_uploaded_by_user_on_delete_action', '2019-02-28 22:42:06.759729+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (70, 'wagtaildocs', '0007_merge', '2019-02-28 22:42:06.763679+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (71, 'wagtaildocs', '0008_document_file_size', '2019-02-28 22:42:06.783378+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (72, 'wagtaildocs', '0009_document_verbose_name_plural', '2019-02-28 22:42:06.801571+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (73, 'wagtaildocs', '0010_document_file_hash', '2019-02-28 22:42:06.820948+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (74, 'wagtailembeds', '0001_initial', '2019-02-28 22:42:06.880632+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (75, 'wagtailembeds', '0002_add_verbose_names', '2019-02-28 22:42:06.891272+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (76, 'wagtailembeds', '0003_capitalizeverbose', '2019-02-28 22:42:06.901381+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (77, 'wagtailembeds', '0004_embed_verbose_name_plural', '2019-02-28 22:42:06.910522+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (78, 'wagtailforms', '0001_initial', '2019-02-28 22:42:06.958842+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (79, 'wagtailforms', '0002_add_verbose_names', '2019-02-28 22:42:06.988099+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (80, 'wagtailforms', '0003_capitalizeverbose', '2019-02-28 22:42:07.009272+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (81, 'wagtailimages', '0001_initial', '2019-02-28 22:42:07.253722+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (82, 'wagtailimages', '0002_initial_data', '2019-02-28 22:42:07.261525+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (83, 'wagtailimages', '0003_fix_focal_point_fields', '2019-02-28 22:42:07.268779+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (84, 'wagtailimages', '0004_make_focal_point_key_not_nullable', '2019-02-28 22:42:07.275833+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (85, 'wagtailimages', '0005_make_filter_spec_unique', '2019-02-28 22:42:07.283375+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (86, 'wagtailimages', '0006_add_verbose_names', '2019-02-28 22:42:07.290887+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (87, 'wagtailimages', '0007_image_file_size', '2019-02-28 22:42:07.300981+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (88, 'wagtailimages', '0008_image_created_at_index', '2019-02-28 22:42:07.311395+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (89, 'wagtailimages', '0009_capitalizeverbose', '2019-02-28 22:42:07.321827+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (90, 'wagtailimages', '0010_change_on_delete_behaviour', '2019-02-28 22:42:07.332556+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (91, 'wagtailimages', '0011_image_collection', '2019-02-28 22:42:07.343026+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (92, 'wagtailimages', '0012_copy_image_permissions_to_collections', '2019-02-28 22:42:07.353531+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (93, 'wagtailimages', '0013_make_rendition_upload_callable', '2019-02-28 22:42:07.364391+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (94, 'wagtailimages', '0014_add_filter_spec_field', '2019-02-28 22:42:07.375322+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (95, 'wagtailimages', '0015_fill_filter_spec_field', '2019-02-28 22:42:07.385376+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (96, 'wagtailimages', '0016_deprecate_rendition_filter_relation', '2019-02-28 22:42:07.396262+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (97, 'wagtailimages', '0017_reduce_focal_point_key_max_length', '2019-02-28 22:42:07.406657+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (98, 'wagtailimages', '0018_remove_rendition_filter', '2019-02-28 22:42:07.414339+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (99, 'wagtailimages', '0019_delete_filter', '2019-02-28 22:42:07.421671+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (100, 'wagtailimages', '0020_add-verbose-name', '2019-02-28 22:42:07.428322+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (101, 'wagtailimages', '0021_image_file_hash', '2019-02-28 22:42:07.435281+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (102, 'wagtailredirects', '0001_initial', '2019-02-28 22:42:07.575716+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (103, 'wagtailredirects', '0002_add_verbose_names', '2019-02-28 22:42:07.637309+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (104, 'wagtailredirects', '0003_make_site_field_editable', '2019-02-28 22:42:07.673854+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (105, 'wagtailredirects', '0004_set_unique_on_path_and_site', '2019-02-28 22:42:07.724544+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (106, 'wagtailredirects', '0005_capitalizeverbose', '2019-02-28 22:42:07.824217+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (107, 'wagtailredirects', '0006_redirect_increase_max_length', '2019-02-28 22:42:07.847114+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (108, 'wagtailsearch', '0001_initial', '2019-02-28 22:42:08.010528+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (109, 'wagtailsearch', '0002_add_verbose_names', '2019-02-28 22:42:08.084778+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (110, 'wagtailsearch', '0003_remove_editors_pick', '2019-02-28 22:42:08.118122+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (111, 'wagtailsearch', '0004_querydailyhits_verbose_name_plural', '2019-02-28 22:42:08.129531+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (112, 'wagtailusers', '0001_initial', '2019-02-28 22:42:08.197005+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (113, 'wagtailusers', '0002_add_verbose_name_on_userprofile', '2019-02-28 22:42:08.258012+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (114, 'wagtailusers', '0003_add_verbose_names', '2019-02-28 22:42:08.27582+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (115, 'wagtailusers', '0004_capitalizeverbose', '2019-02-28 22:42:08.326965+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (116, 'wagtailusers', '0005_make_related_name_wagtail_specific', '2019-02-28 22:42:08.353748+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (117, 'wagtailusers', '0006_userprofile_prefered_language', '2019-02-28 22:42:08.378296+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (118, 'wagtailusers', '0007_userprofile_current_time_zone', '2019-02-28 22:42:08.413396+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (119, 'wagtailusers', '0008_userprofile_avatar', '2019-02-28 22:42:08.441208+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (120, 'wagtailusers', '0009_userprofile_verbose_name_plural', '2019-02-28 22:42:08.461329+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (121, 'wagtailimages', '0001_squashed_0021', '2019-02-28 22:42:08.469828+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (122, 'wagtailcore', '0001_squashed_0016_change_page_url_path_to_text_field', '2019-02-28 22:42:08.47815+00');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.home_homepage (page_ptr_id) VALUES (3);


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.wagtailcore_collection (id, path, depth, numchild, name) VALUES (1, '0001', 1, 0, 'Root');


--
-- Data for Name: wagtailcore_collectionviewrestriction; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) VALUES (1, 1, 1, 2);
INSERT INTO public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) VALUES (2, 1, 2, 2);
INSERT INTO public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) VALUES (3, 1, 1, 3);
INSERT INTO public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) VALUES (4, 1, 2, 3);
INSERT INTO public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) VALUES (5, 1, 1, 5);
INSERT INTO public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) VALUES (6, 1, 2, 5);
INSERT INTO public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) VALUES (7, 1, 1, 6);
INSERT INTO public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) VALUES (8, 1, 2, 6);


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) VALUES (1, 'add', 1, 1);
INSERT INTO public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) VALUES (2, 'edit', 1, 1);
INSERT INTO public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) VALUES (3, 'publish', 1, 1);
INSERT INTO public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) VALUES (4, 'add', 2, 1);
INSERT INTO public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) VALUES (5, 'edit', 2, 1);
INSERT INTO public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) VALUES (6, 'lock', 1, 1);


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title) VALUES (1, '0001', 1, 1, 'Root', 'root', true, false, '/', '', false, '', NULL, NULL, false, 1, NULL, false, NULL, NULL, NULL, NULL, 'Root');
INSERT INTO public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title) VALUES (3, '00010001', 2, 0, 'Home', 'home', true, false, '/home/', '', false, '', NULL, NULL, false, 2, NULL, false, NULL, NULL, NULL, NULL, 'Home');


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailcore_pageviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) VALUES (2, 'localhost', 80, true, 3, NULL);


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 14, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 105, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 27, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 122, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1, false);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, false);


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 8, true);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 3, true);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 1, false);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 2, true);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, false);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, false);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 1, false);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 1, false);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 1, false);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, false);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailsearch_editorspick_id_seq', 1, false);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, false);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_homepage home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site wagtailcore_site_hostname_port_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_url_max_width_8a2922d8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_url_max_width_8a2922d8_uniq UNIQUE (url, max_width);


--
-- Name: wagtailforms_formsubmission wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_image wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_old_path_site_id_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON public.wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_collectionview_collectionviewrestriction__47320efd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);


--
-- Name: wagtailcore_collectionviewrestriction_collection_id_761908ec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_collection_id_5423575a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_05d61460; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_permission_id_1b626275; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);


--
-- Name: wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON public.wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON public.wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagerevision_created_at_66954e3b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON public.wagtailcore_pagerevision USING btree (created_at);


--
-- Name: wagtailcore_pagerevision_page_id_d421cc1d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON public.wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON public.wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON public.wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);


--
-- Name: wagtailcore_pageviewrestriction_groups_group_id_6460f223; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON public.wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON public.wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);


--
-- Name: wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON public.wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailsearch_editorspick_page_id_28cbc274; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON public.wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_editorspick_query_id_c6eee4a0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON public.wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON public.wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepage home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collecti_collection_id_761908ec_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_group_id_05d61460_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_page_id_710b114a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_content_type_id_c28424df_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_live_revision_id_930bd822_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_group_id_6460f223_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_collection_id_23881625_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsubmission wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendition wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_site_id_780a0e1e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_page_id_28cbc274_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_queryd_query_id_2185994b_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

