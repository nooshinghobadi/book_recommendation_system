--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-07-22 21:27:03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 250 (class 1255 OID 33429)
-- Name: insert_sample_books(); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.insert_sample_books()
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- Insert books
    INSERT INTO app_books_book (title, author, genre) VALUES
    ('Book A1', 'Author 1', 'Adventure'),
    ('Book A2', 'Author 1', 'Mystery'),
    ('Book A3', 'Author 1', 'Science Fiction'),
    ('Book B1', 'Author 2', 'History'),
    ('Book B2', 'Author 2', 'Romance'),
    ('Book B3', 'Author 2', 'Science'),
    ('Book C1', 'Author 3', 'Cooking'),
    ('Book C2', 'Author 3', 'Gardening'),
    ('Book C3', 'Author 3', 'Travel'),
    ('Book D1', 'Author 4', 'Adventure'),
    ('Book D2', 'Author 4', 'Adventure'),
    ('Book D3', 'Author 4', 'Adventure'),
    ('Book E1', 'Author 5', 'Mystery'),
    ('Book E2', 'Author 5', 'Mystery'),
    ('Book E3', 'Author 5', 'Mystery'),
    ('Book F1', 'Author 6', 'Science'),
    ('Book F2', 'Author 7', 'History'),
    ('Book F3', 'Author 8', 'Romance'),
    ('Book F4', 'Author 9', 'Science Fiction'),
    ('Book F5', 'Author 10', 'Cooking'),
    ('Book F6', 'Author 11', 'Gardening'),
    ('Book F7', 'Author 12', 'Travel'),
    ('Book F8', 'Author 13', 'Education'),
    ('Book F9', 'Author 14', 'Horror'),
    ('Book F10', 'Author 15', 'Adventure'),
    ('Book F11', 'Author 16', 'Mystery'),
    ('Book F12', 'Author 17', 'Science'),
    ('Book F13', 'Author 18', 'History'),
    ('Book F14', 'Author 19', 'Romance'),
    ('Book F15', 'Author 20', 'Science Fiction'),
    ('Book F16', 'Author 21', 'Cooking'),
    ('Book F17', 'Author 22', 'Gardening'),
    ('Book F18', 'Author 23', 'Travel'),
    ('Book F19', 'Author 24', 'Education'),
    ('Book F20', 'Author 25', 'Horror'),
    ('Book F21', 'Author 6', 'Romance'),
    ('Book F22', 'Author 7', 'Adventure'),
    ('Book F23', 'Author 8', 'Mystery'),
    ('Book F24', 'Author 9', 'Science'),
    ('Book F25', 'Author 10', 'History'),
    ('Book F26', 'Author 11', 'Romance'),
    ('Book F27', 'Author 12', 'Science Fiction'),
    ('Book F28', 'Author 13', 'Cooking'),
    ('Book F29', 'Author 14', 'Gardening'),
    ('Book F30', 'Author 15', 'Travel'),
    ('Book F31', 'Author 16', 'Education'),
    ('Book F32', 'Author 17', 'Horror'),
    ('Book F33', 'Author 18', 'Adventure'),
    ('Book F34', 'Author 19', 'Mystery'),
    ('Book F35', 'Author 20', 'Science'),
    ('Book F36', 'Author 21', 'History'),
    ('Book F37', 'Author 22', 'Romance'),
    ('Book F38', 'Author 23', 'Science Fiction'),
    ('Book F39', 'Author 24', 'Cooking'),
    ('Book F40', 'Author 25', 'Gardening'),
    ('Book F41', 'Author 6', 'Travel'),
    ('Book F42', 'Author 7', 'Education'),
    ('Book F43', 'Author 8', 'Horror'),
    ('Book F44', 'Author 9', 'Adventure'),
    ('Book F45', 'Author 10', 'Mystery'),
    ('Book F46', 'Author 11', 'Science'),
    ('Book F47', 'Author 12', 'History'),
    ('Book F48', 'Author 13', 'Romance'),
    ('Book F49', 'Author 14', 'Science Fiction'),
    ('Book F50', 'Author 15', 'Cooking')
    ON CONFLICT DO NOTHING;
END;
$$;


ALTER PROCEDURE public.insert_sample_books() OWNER TO postgres;

--
-- TOC entry 238 (class 1255 OID 33430)
-- Name: insert_sample_reviews(); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.insert_sample_reviews()
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- Insert reviews
    INSERT INTO app_books_review (book_id, user_id, rating) VALUES
    (1, 1, 5),
    (2, 1, 4),
    (3, 1, 3),
    (4, 1, 5),
    (5, 1, 2),
    (6, 1, 4),
    (7, 1, 5),
    (8, 1, 3),
    (9, 1, 4),
    (10, 1, 5),
    (11, 2, 3),
    (12, 2, 4),
    (13, 2, 5),
    (14, 2, 2),
    (15, 2, 4),
    (16, 2, 5),
    (17, 2, 3),
    (18, 2, 4),
    (19, 2, 5),
    (20, 2, 2),
    (21, 3, 4),
    (22, 3, 5),
    (23, 3, 3),
    (24, 3, 4),
    (25, 3, 5),
    (26, 3, 2),
    (27, 3, 4),
    (28, 3, 5),
    (29, 3, 3),
    (30, 3, 4),
    (31, 4, 5),
    (32, 4, 2),
    (33, 4, 4),
    (34, 4, 5),
    (35, 4, 3),
    (36, 4, 4),
    (37, 4, 5),
    (38, 4, 2),
    (39, 4, 4),
    (40, 4, 5),
    (41, 5, 3),
    (42, 5, 4),
    (43, 5, 5),
    (44, 5, 2),
    (45, 5, 4),
    (46, 5, 5),
    (47, 5, 3),
    (48, 5, 4),
    (49, 5, 5),
    (50, 5, 2),
    (1, 2, 4),
    (2, 3, 5),
    (3, 4, 3),
    (4, 5, 4),
    (5, 2, 5),
    (6, 3, 3),
    (7, 4, 4),
    (8, 5, 5),
    (9, 3, 2),
    (10, 2, 4),
    (11, 3, 5),
    (12, 4, 3),
    (13, 5, 4),
    (14, 3, 5),
    (15, 4, 3),
    (16, 5, 4),
    (17, 1, 5),
    (18, 4, 2),
    (19, 5, 4),
    (20, 1, 5)
    ON CONFLICT DO NOTHING;
END;
$$;


ALTER PROCEDURE public.insert_sample_reviews() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 234 (class 1259 OID 33392)
-- Name: app_books_book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_books_book (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    author character varying(200) NOT NULL,
    genre character varying(50) NOT NULL
);


ALTER TABLE public.app_books_book OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 33391)
-- Name: app_books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.app_books_book ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.app_books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 33398)
-- Name: app_books_review; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_books_review (
    id bigint NOT NULL,
    rating integer NOT NULL,
    book_id bigint NOT NULL,
    user_id bigint NOT NULL,
    CONSTRAINT rating_range CHECK (((rating >= 1) AND (rating <= 5)))
);


ALTER TABLE public.app_books_review OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 33397)
-- Name: app_books_review_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.app_books_review ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.app_books_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 33320)
-- Name: app_users_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.app_users_user OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 33330)
-- Name: app_users_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_users_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.app_users_user_groups OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 33329)
-- Name: app_users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.app_users_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.app_users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 33319)
-- Name: app_users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.app_users_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.app_users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 33336)
-- Name: app_users_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_users_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.app_users_user_user_permissions OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 33335)
-- Name: app_users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.app_users_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.app_users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 33280)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 33279)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 33288)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 33287)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 33274)
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
-- TOC entry 219 (class 1259 OID 33273)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 33371)
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
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 33370)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 33266)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 33265)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 33258)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 33257)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 237 (class 1259 OID 33420)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 4922 (class 0 OID 33392)
-- Dependencies: 234
-- Data for Name: app_books_book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_books_book (id, title, author, genre) FROM stdin;
1	Book A1	Author 1	Adventure
2	Book A2	Author 1	Mystery
3	Book A3	Author 1	Science Fiction
4	Book B1	Author 2	History
5	Book B2	Author 2	Romance
6	Book B3	Author 2	Science
7	Book C1	Author 3	Cooking
8	Book C2	Author 3	Gardening
9	Book C3	Author 3	Travel
10	Book D1	Author 4	Adventure
11	Book D2	Author 4	Adventure
12	Book D3	Author 4	Adventure
13	Book E1	Author 5	Mystery
14	Book E2	Author 5	Mystery
15	Book E3	Author 5	Mystery
16	Book F1	Author 6	Science
17	Book F2	Author 7	History
18	Book F3	Author 8	Romance
19	Book F4	Author 9	Science Fiction
20	Book F5	Author 10	Cooking
21	Book F6	Author 11	Gardening
22	Book F7	Author 12	Travel
23	Book F8	Author 13	Education
24	Book F9	Author 14	Horror
25	Book F10	Author 15	Adventure
26	Book F11	Author 16	Mystery
27	Book F12	Author 17	Science
28	Book F13	Author 18	History
29	Book F14	Author 19	Romance
30	Book F15	Author 20	Science Fiction
31	Book F16	Author 21	Cooking
32	Book F17	Author 22	Gardening
33	Book F18	Author 23	Travel
34	Book F19	Author 24	Education
35	Book F20	Author 25	Horror
36	Book F21	Author 6	Romance
37	Book F22	Author 7	Adventure
38	Book F23	Author 8	Mystery
39	Book F24	Author 9	Science
40	Book F25	Author 10	History
41	Book F26	Author 11	Romance
42	Book F27	Author 12	Science Fiction
43	Book F28	Author 13	Cooking
44	Book F29	Author 14	Gardening
45	Book F30	Author 15	Travel
46	Book F31	Author 16	Education
47	Book F32	Author 17	Horror
48	Book F33	Author 18	Adventure
49	Book F34	Author 19	Mystery
50	Book F35	Author 20	Science
51	Book F36	Author 21	History
52	Book F37	Author 22	Romance
53	Book F38	Author 23	Science Fiction
54	Book F39	Author 24	Cooking
55	Book F40	Author 25	Gardening
56	Book F41	Author 6	Travel
57	Book F42	Author 7	Education
58	Book F43	Author 8	Horror
59	Book F44	Author 9	Adventure
60	Book F45	Author 10	Mystery
61	Book F46	Author 11	Science
62	Book F47	Author 12	History
63	Book F48	Author 13	Romance
64	Book F49	Author 14	Science Fiction
65	Book F50	Author 15	Cooking
\.


--
-- TOC entry 4924 (class 0 OID 33398)
-- Dependencies: 236
-- Data for Name: app_books_review; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_books_review (id, rating, book_id, user_id) FROM stdin;
351	5	1	1
352	4	2	1
353	3	3	1
354	5	4	1
355	2	5	1
356	4	6	1
357	5	7	1
358	3	8	1
359	4	9	1
360	5	10	1
361	3	11	2
362	4	12	2
363	5	13	2
364	2	14	2
365	4	15	2
366	5	16	2
367	3	17	2
368	4	18	2
369	5	19	2
370	2	20	2
371	4	21	3
372	5	22	3
373	3	23	3
374	4	24	3
375	5	25	3
376	2	26	3
377	4	27	3
378	5	28	3
379	3	29	3
380	4	30	3
381	5	31	4
382	2	32	4
383	4	33	4
384	5	34	4
385	3	35	4
386	4	36	4
387	5	37	4
388	2	38	4
389	4	39	4
390	5	40	4
391	3	41	5
392	4	42	5
393	5	43	5
394	2	44	5
395	4	45	5
396	5	46	5
397	3	47	5
398	4	48	5
399	5	49	5
400	2	50	5
401	4	1	2
402	5	2	3
403	3	3	4
404	4	4	5
405	5	5	2
406	3	6	3
407	4	7	4
408	5	8	5
409	2	9	3
410	4	10	2
411	5	11	3
412	3	12	4
413	4	13	5
414	5	14	3
415	3	15	4
416	4	16	5
417	5	17	1
418	2	18	4
419	4	19	5
420	5	20	1
\.


--
-- TOC entry 4914 (class 0 OID 33320)
-- Dependencies: 226
-- Data for Name: app_users_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$600000$OjridRlaYF8DxkNT2Ccia4$Bk5Xn7BdPqM3/9dpIdJJB9kNT5B7YmlGfZpAx6pBvHU=	\N	f	user1				f	t	2024-07-22 18:44:10.280243+03:30
2	pbkdf2_sha256$600000$EyEHUPxgGAUWCzFdeSuDoL$QHDu48q1hi7/YDwebo6/7vdqFE1dhVd8mn+Z3aucZqg=	\N	f	user2				f	t	2024-07-22 18:44:10.799672+03:30
3	pbkdf2_sha256$600000$NlIok4YKoX7B4HI1zTKyRk$FXBfJLkMwp4EU6aW/4sC69CUozDwxLJbd3Hqp21tXhg=	\N	f	user3				f	t	2024-07-22 18:44:11.293307+03:30
4	pbkdf2_sha256$600000$q6LGQQztDvz1xTv1m7aRLm$x51zZkqrhwJsJ020zQTMTlBDVHR+JNjtWumiOGrniVg=	\N	f	user4				f	t	2024-07-22 18:44:11.957684+03:30
5	pbkdf2_sha256$600000$vBN9WcJi4GOR48cxTy579Y$wDCa+3SkwHWulyDykvsb4NuADijyhVGwJ8dbXE1Nm7E=	\N	f	user5				f	t	2024-07-22 18:44:12.613604+03:30
6	pbkdf2_sha256$600000$KhglrEi8SMtcJZHOJ4SiWi$Dlw3aVaiAuL4bfXkKt/RIgeM31q4eeftu4vrye/Sz20=	\N	f	testuser				f	t	2024-07-22 19:26:47.436598+03:30
\.


--
-- TOC entry 4916 (class 0 OID 33330)
-- Dependencies: 228
-- Data for Name: app_users_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 4918 (class 0 OID 33336)
-- Dependencies: 230
-- Data for Name: app_users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4910 (class 0 OID 33280)
-- Dependencies: 222
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 4912 (class 0 OID 33288)
-- Dependencies: 224
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4908 (class 0 OID 33274)
-- Dependencies: 220
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add book	6	add_book
22	Can change book	6	change_book
23	Can delete book	6	delete_book
24	Can view book	6	view_book
25	Can add review	7	add_review
26	Can change review	7	change_review
27	Can delete review	7	delete_review
28	Can view review	7	view_review
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
\.


--
-- TOC entry 4920 (class 0 OID 33371)
-- Dependencies: 232
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 4906 (class 0 OID 33266)
-- Dependencies: 218
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	app_books	book
7	app_books	review
8	app_users	user
\.


--
-- TOC entry 4904 (class 0 OID 33258)
-- Dependencies: 216
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-07-22 17:22:46.987744+03:30
2	contenttypes	0002_remove_content_type_name	2024-07-22 17:22:47.081456+03:30
3	auth	0001_initial	2024-07-22 17:22:47.476943+03:30
4	auth	0002_alter_permission_name_max_length	2024-07-22 17:22:47.476943+03:30
5	auth	0003_alter_user_email_max_length	2024-07-22 17:22:47.50139+03:30
6	auth	0004_alter_user_username_opts	2024-07-22 17:22:47.509756+03:30
7	auth	0005_alter_user_last_login_null	2024-07-22 17:22:47.523417+03:30
8	auth	0006_require_contenttypes_0002	2024-07-22 17:22:47.526079+03:30
9	auth	0007_alter_validators_add_error_messages	2024-07-22 17:22:47.538482+03:30
10	auth	0008_alter_user_username_max_length	2024-07-22 17:22:47.542665+03:30
11	auth	0009_alter_user_last_name_max_length	2024-07-22 17:22:47.556086+03:30
12	auth	0010_alter_group_name_max_length	2024-07-22 17:22:47.585562+03:30
13	auth	0011_update_proxy_permissions	2024-07-22 17:22:47.601442+03:30
14	auth	0012_alter_user_first_name_max_length	2024-07-22 17:22:47.609344+03:30
15	app_users	0001_initial	2024-07-22 17:22:48.303957+03:30
16	admin	0001_initial	2024-07-22 17:22:48.48509+03:30
17	admin	0002_logentry_remove_auto_add	2024-07-22 17:22:48.495202+03:30
18	admin	0003_logentry_add_action_flag_choices	2024-07-22 17:22:48.512333+03:30
19	app_books	0001_initial	2024-07-22 17:22:48.592337+03:30
20	app_books	0002_initial	2024-07-22 17:22:48.725503+03:30
21	sessions	0001_initial	2024-07-22 17:22:48.857039+03:30
\.


--
-- TOC entry 4925 (class 0 OID 33420)
-- Dependencies: 237
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 233
-- Name: app_books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_books_book_id_seq', 65, true);


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 235
-- Name: app_books_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_books_review_id_seq', 421, true);


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 227
-- Name: app_users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_users_user_groups_id_seq', 1, false);


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 225
-- Name: app_users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_users_user_id_seq', 6, true);


--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 229
-- Name: app_users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_users_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 217
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 215
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- TOC entry 4736 (class 2606 OID 33396)
-- Name: app_books_book app_books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_books_book
    ADD CONSTRAINT app_books_book_pkey PRIMARY KEY (id);


--
-- TOC entry 4738 (class 2606 OID 33415)
-- Name: app_books_book app_books_book_title_author_genre_42b6bdff_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_books_book
    ADD CONSTRAINT app_books_book_title_author_genre_42b6bdff_uniq UNIQUE (title, author, genre);


--
-- TOC entry 4741 (class 2606 OID 33418)
-- Name: app_books_review app_books_review_book_id_user_id_54731442_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_books_review
    ADD CONSTRAINT app_books_review_book_id_user_id_54731442_uniq UNIQUE (book_id, user_id);


--
-- TOC entry 4743 (class 2606 OID 33402)
-- Name: app_books_review app_books_review_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_books_review
    ADD CONSTRAINT app_books_review_pkey PRIMARY KEY (id);


--
-- TOC entry 4721 (class 2606 OID 33334)
-- Name: app_users_user_groups app_users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_users_user_groups
    ADD CONSTRAINT app_users_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 4724 (class 2606 OID 33343)
-- Name: app_users_user_groups app_users_user_groups_user_id_group_id_1f1aa864_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_users_user_groups
    ADD CONSTRAINT app_users_user_groups_user_id_group_id_1f1aa864_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 4715 (class 2606 OID 33326)
-- Name: app_users_user app_users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_users_user
    ADD CONSTRAINT app_users_user_pkey PRIMARY KEY (id);


--
-- TOC entry 4726 (class 2606 OID 33357)
-- Name: app_users_user_user_permissions app_users_user_user_perm_user_id_permission_id_671d2872_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_users_user_user_permissions
    ADD CONSTRAINT app_users_user_user_perm_user_id_permission_id_671d2872_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 4729 (class 2606 OID 33340)
-- Name: app_users_user_user_permissions app_users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_users_user_user_permissions
    ADD CONSTRAINT app_users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4718 (class 2606 OID 33328)
-- Name: app_users_user app_users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_users_user
    ADD CONSTRAINT app_users_user_username_key UNIQUE (username);


--
-- TOC entry 4705 (class 2606 OID 33317)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 4710 (class 2606 OID 33303)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 4713 (class 2606 OID 33292)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4707 (class 2606 OID 33284)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 4700 (class 2606 OID 33294)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 4702 (class 2606 OID 33278)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 4733 (class 2606 OID 33378)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 4695 (class 2606 OID 33272)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 4697 (class 2606 OID 33270)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 4693 (class 2606 OID 33264)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4747 (class 2606 OID 33426)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 4739 (class 1259 OID 33408)
-- Name: app_books_review_book_id_1c7ab8aa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_books_review_book_id_1c7ab8aa ON public.app_books_review USING btree (book_id);


--
-- TOC entry 4744 (class 1259 OID 33419)
-- Name: app_books_review_user_id_b67b043a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_books_review_user_id_b67b043a ON public.app_books_review USING btree (user_id);


--
-- TOC entry 4719 (class 1259 OID 33355)
-- Name: app_users_user_groups_group_id_653c9395; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_users_user_groups_group_id_653c9395 ON public.app_users_user_groups USING btree (group_id);


--
-- TOC entry 4722 (class 1259 OID 33354)
-- Name: app_users_user_groups_user_id_e6c30071; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_users_user_groups_user_id_e6c30071 ON public.app_users_user_groups USING btree (user_id);


--
-- TOC entry 4727 (class 1259 OID 33369)
-- Name: app_users_user_user_permissions_permission_id_c70faced; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_users_user_user_permissions_permission_id_c70faced ON public.app_users_user_user_permissions USING btree (permission_id);


--
-- TOC entry 4730 (class 1259 OID 33368)
-- Name: app_users_user_user_permissions_user_id_90f8c54e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_users_user_user_permissions_user_id_90f8c54e ON public.app_users_user_user_permissions USING btree (user_id);


--
-- TOC entry 4716 (class 1259 OID 33341)
-- Name: app_users_user_username_0d0f8855_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_users_user_username_0d0f8855_like ON public.app_users_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 4703 (class 1259 OID 33318)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 4708 (class 1259 OID 33314)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 4711 (class 1259 OID 33315)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 4698 (class 1259 OID 33300)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 4731 (class 1259 OID 33389)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 4734 (class 1259 OID 33390)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 4745 (class 1259 OID 33428)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 4748 (class 1259 OID 33427)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 4758 (class 2606 OID 33403)
-- Name: app_books_review app_books_review_book_id_1c7ab8aa_fk_app_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_books_review
    ADD CONSTRAINT app_books_review_book_id_1c7ab8aa_fk_app_books_book_id FOREIGN KEY (book_id) REFERENCES public.app_books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4759 (class 2606 OID 33409)
-- Name: app_books_review app_books_review_user_id_b67b043a_fk_app_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_books_review
    ADD CONSTRAINT app_books_review_user_id_b67b043a_fk_app_users_user_id FOREIGN KEY (user_id) REFERENCES public.app_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4752 (class 2606 OID 33349)
-- Name: app_users_user_groups app_users_user_groups_group_id_653c9395_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_users_user_groups
    ADD CONSTRAINT app_users_user_groups_group_id_653c9395_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4753 (class 2606 OID 33344)
-- Name: app_users_user_groups app_users_user_groups_user_id_e6c30071_fk_app_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_users_user_groups
    ADD CONSTRAINT app_users_user_groups_user_id_e6c30071_fk_app_users_user_id FOREIGN KEY (user_id) REFERENCES public.app_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4754 (class 2606 OID 33363)
-- Name: app_users_user_user_permissions app_users_user_user__permission_id_c70faced_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_users_user_user_permissions
    ADD CONSTRAINT app_users_user_user__permission_id_c70faced_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4755 (class 2606 OID 33358)
-- Name: app_users_user_user_permissions app_users_user_user__user_id_90f8c54e_fk_app_users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_users_user_user_permissions
    ADD CONSTRAINT app_users_user_user__user_id_90f8c54e_fk_app_users FOREIGN KEY (user_id) REFERENCES public.app_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4750 (class 2606 OID 33309)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4751 (class 2606 OID 33304)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4749 (class 2606 OID 33295)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4756 (class 2606 OID 33379)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4757 (class 2606 OID 33384)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_app_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_app_users_user_id FOREIGN KEY (user_id) REFERENCES public.app_users_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2024-07-22 21:27:04

--
-- PostgreSQL database dump complete
--

