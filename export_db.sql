PGDMP                         z         	   PANEET_DB    13.6    13.6 J    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    16720 	   PANEET_DB    DATABASE     f   CREATE DATABASE "PANEET_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Thai_Thailand.874';
    DROP DATABASE "PANEET_DB";
                postgres    false            ?            1259    16791    pamapplicant    TABLE     v  CREATE TABLE public.pamapplicant (
    applicant_id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    tel character varying(255),
    email character varying(255),
    file_name character varying(255),
    paths character varying(255),
    created_date time with time zone DEFAULT CURRENT_TIMESTAMP,
    position_id integer
);
     DROP TABLE public.pamapplicant;
       public         heap    postgres    false            ?            1259    16789    pamapplicant_applicant_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pamapplicant_applicant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.pamapplicant_applicant_id_seq;
       public          postgres    false    205            &           0    0    pamapplicant_applicant_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.pamapplicant_applicant_id_seq OWNED BY public.pamapplicant.applicant_id;
          public          postgres    false    204            ?            1259    16838 
   pamarticle    TABLE     ?  CREATE TABLE public.pamarticle (
    article_id integer NOT NULL,
    name character varying(255),
    summary character varying(255),
    description character varying(255),
    start_date character varying(255) DEFAULT CURRENT_TIMESTAMP,
    end_date character varying(255) DEFAULT CURRENT_TIMESTAMP,
    paths character varying(255),
    created_date character varying(255) DEFAULT CURRENT_TIMESTAMP,
    type_id integer,
    status_id integer
);
    DROP TABLE public.pamarticle;
       public         heap    postgres    false            ?            1259    16836    pamarticle_article_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pamarticle_article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.pamarticle_article_id_seq;
       public          postgres    false    213            '           0    0    pamarticle_article_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pamarticle_article_id_seq OWNED BY public.pamarticle.article_id;
          public          postgres    false    212            ?            1259    16723 
   pamcontact    TABLE     ?  CREATE TABLE public.pamcontact (
    contact_id integer NOT NULL,
    title character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    email character varying(255),
    tel character varying(255),
    description character varying(255),
    created_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    contact_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.pamcontact;
       public         heap    postgres    false            ?            1259    16721    pamcontact_contact_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pamcontact_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.pamcontact_contact_id_seq;
       public          postgres    false    201            (           0    0    pamcontact_contact_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pamcontact_contact_id_seq OWNED BY public.pamcontact.contact_id;
          public          postgres    false    200            ?            1259    16863    pamlogarticleone    TABLE       CREATE TABLE public.pamlogarticleone (
    log_id integer NOT NULL,
    created_date character varying(255) DEFAULT CURRENT_TIMESTAMP,
    updated_date character varying(255),
    description character varying(255),
    position_id integer,
    user_id integer
);
 $   DROP TABLE public.pamlogarticleone;
       public         heap    postgres    false            ?            1259    16875    pamlogarticletwo    TABLE       CREATE TABLE public.pamlogarticletwo (
    log_id integer NOT NULL,
    created_date time with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_date time with time zone DEFAULT CURRENT_TIMESTAMP,
    description character varying(255),
    article_id integer,
    user_id integer
);
 $   DROP TABLE public.pamlogarticletwo;
       public         heap    postgres    false            ?            1259    16873    pamlogarticletwo_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pamlogarticletwo_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.pamlogarticletwo_log_id_seq;
       public          postgres    false    219            )           0    0    pamlogarticletwo_log_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.pamlogarticletwo_log_id_seq OWNED BY public.pamlogarticletwo.log_id;
          public          postgres    false    218            ?            1259    16777    pamposition    TABLE     2  CREATE TABLE public.pamposition (
    position_id integer NOT NULL,
    title character varying(255),
    summary character varying(255),
    start_date time with time zone DEFAULT CURRENT_TIMESTAMP,
    end_date time with time zone DEFAULT CURRENT_TIMESTAMP,
    status_id integer,
    user_id integer
);
    DROP TABLE public.pamposition;
       public         heap    postgres    false            ?            1259    16775    pamposition_position_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pamposition_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.pamposition_position_id_seq;
       public          postgres    false    203            *           0    0    pamposition_position_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.pamposition_position_id_seq OWNED BY public.pamposition.position_id;
          public          postgres    false    202            ?            1259    16816    pamrole    TABLE     ?   CREATE TABLE public.pamrole (
    role_id integer NOT NULL,
    title character varying(255),
    description character varying(255)
);
    DROP TABLE public.pamrole;
       public         heap    postgres    false            ?            1259    16814    pamrole_role_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pamrole_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pamrole_role_id_seq;
       public          postgres    false    209            +           0    0    pamrole_role_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pamrole_role_id_seq OWNED BY public.pamrole.role_id;
          public          postgres    false    208            ?            1259    16827 	   pamstatus    TABLE     ?   CREATE TABLE public.pamstatus (
    status_id integer NOT NULL,
    name character varying(255),
    "description " character varying(255)
);
    DROP TABLE public.pamstatus;
       public         heap    postgres    false            ?            1259    16825    pamstatus_status_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pamstatus_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pamstatus_status_id_seq;
       public          postgres    false    211            ,           0    0    pamstatus_status_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pamstatus_status_id_seq OWNED BY public.pamstatus.status_id;
          public          postgres    false    210            ?            1259    16852    pamtype    TABLE     ?   CREATE TABLE public.pamtype (
    type_id integer NOT NULL,
    name character varying(255),
    description character varying(255)
);
    DROP TABLE public.pamtype;
       public         heap    postgres    false            ?            1259    16850    pamtype_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pamtype_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pamtype_type_id_seq;
       public          postgres    false    215            -           0    0    pamtype_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pamtype_type_id_seq OWNED BY public.pamtype.type_id;
          public          postgres    false    214            ?            1259    16803    pamuser    TABLE     ?   CREATE TABLE public.pamuser (
    user_id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    role_id integer
);
    DROP TABLE public.pamuser;
       public         heap    postgres    false            ?            1259    16801    pamuser_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pamuser_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pamuser_user_id_seq;
       public          postgres    false    207            .           0    0    pamuser_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pamuser_user_id_seq OWNED BY public.pamuser.user_id;
          public          postgres    false    206            ?            1259    16861    panlogarticleone_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.panlogarticleone_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.panlogarticleone_log_id_seq;
       public          postgres    false    217            /           0    0    panlogarticleone_log_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.panlogarticleone_log_id_seq OWNED BY public.pamlogarticleone.log_id;
          public          postgres    false    216            g           2604    16794    pamapplicant applicant_id    DEFAULT     ?   ALTER TABLE ONLY public.pamapplicant ALTER COLUMN applicant_id SET DEFAULT nextval('public.pamapplicant_applicant_id_seq'::regclass);
 H   ALTER TABLE public.pamapplicant ALTER COLUMN applicant_id DROP DEFAULT;
       public          postgres    false    205    204    205            l           2604    16841    pamarticle article_id    DEFAULT     ~   ALTER TABLE ONLY public.pamarticle ALTER COLUMN article_id SET DEFAULT nextval('public.pamarticle_article_id_seq'::regclass);
 D   ALTER TABLE public.pamarticle ALTER COLUMN article_id DROP DEFAULT;
       public          postgres    false    213    212    213            a           2604    16726    pamcontact contact_id    DEFAULT     ~   ALTER TABLE ONLY public.pamcontact ALTER COLUMN contact_id SET DEFAULT nextval('public.pamcontact_contact_id_seq'::regclass);
 D   ALTER TABLE public.pamcontact ALTER COLUMN contact_id DROP DEFAULT;
       public          postgres    false    201    200    201            q           2604    16866    pamlogarticleone log_id    DEFAULT     ?   ALTER TABLE ONLY public.pamlogarticleone ALTER COLUMN log_id SET DEFAULT nextval('public.panlogarticleone_log_id_seq'::regclass);
 F   ALTER TABLE public.pamlogarticleone ALTER COLUMN log_id DROP DEFAULT;
       public          postgres    false    217    216    217            s           2604    16878    pamlogarticletwo log_id    DEFAULT     ?   ALTER TABLE ONLY public.pamlogarticletwo ALTER COLUMN log_id SET DEFAULT nextval('public.pamlogarticletwo_log_id_seq'::regclass);
 F   ALTER TABLE public.pamlogarticletwo ALTER COLUMN log_id DROP DEFAULT;
       public          postgres    false    219    218    219            d           2604    16780    pamposition position_id    DEFAULT     ?   ALTER TABLE ONLY public.pamposition ALTER COLUMN position_id SET DEFAULT nextval('public.pamposition_position_id_seq'::regclass);
 F   ALTER TABLE public.pamposition ALTER COLUMN position_id DROP DEFAULT;
       public          postgres    false    203    202    203            j           2604    16819    pamrole role_id    DEFAULT     r   ALTER TABLE ONLY public.pamrole ALTER COLUMN role_id SET DEFAULT nextval('public.pamrole_role_id_seq'::regclass);
 >   ALTER TABLE public.pamrole ALTER COLUMN role_id DROP DEFAULT;
       public          postgres    false    209    208    209            k           2604    16830    pamstatus status_id    DEFAULT     z   ALTER TABLE ONLY public.pamstatus ALTER COLUMN status_id SET DEFAULT nextval('public.pamstatus_status_id_seq'::regclass);
 B   ALTER TABLE public.pamstatus ALTER COLUMN status_id DROP DEFAULT;
       public          postgres    false    211    210    211            p           2604    16855    pamtype type_id    DEFAULT     r   ALTER TABLE ONLY public.pamtype ALTER COLUMN type_id SET DEFAULT nextval('public.pamtype_type_id_seq'::regclass);
 >   ALTER TABLE public.pamtype ALTER COLUMN type_id DROP DEFAULT;
       public          postgres    false    214    215    215            i           2604    16806    pamuser user_id    DEFAULT     r   ALTER TABLE ONLY public.pamuser ALTER COLUMN user_id SET DEFAULT nextval('public.pamuser_user_id_seq'::regclass);
 >   ALTER TABLE public.pamuser ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    207    206    207                      0    16791    pamapplicant 
   TABLE DATA           ?   COPY public.pamapplicant (applicant_id, firstname, lastname, tel, email, file_name, paths, created_date, position_id) FROM stdin;
    public          postgres    false    205   FX                 0    16838 
   pamarticle 
   TABLE DATA           ?   COPY public.pamarticle (article_id, name, summary, description, start_date, end_date, paths, created_date, type_id, status_id) FROM stdin;
    public          postgres    false    213   cX                 0    16723 
   pamcontact 
   TABLE DATA           ?   COPY public.pamcontact (contact_id, title, firstname, lastname, email, tel, description, created_date, contact_time) FROM stdin;
    public          postgres    false    201   ?X                 0    16863    pamlogarticleone 
   TABLE DATA           q   COPY public.pamlogarticleone (log_id, created_date, updated_date, description, position_id, user_id) FROM stdin;
    public          postgres    false    217   ?X                 0    16875    pamlogarticletwo 
   TABLE DATA           p   COPY public.pamlogarticletwo (log_id, created_date, updated_date, description, article_id, user_id) FROM stdin;
    public          postgres    false    219   Y                 0    16777    pamposition 
   TABLE DATA           l   COPY public.pamposition (position_id, title, summary, start_date, end_date, status_id, user_id) FROM stdin;
    public          postgres    false    203   (Y                 0    16816    pamrole 
   TABLE DATA           >   COPY public.pamrole (role_id, title, description) FROM stdin;
    public          postgres    false    209   EY                 0    16827 	   pamstatus 
   TABLE DATA           D   COPY public.pamstatus (status_id, name, "description ") FROM stdin;
    public          postgres    false    211   bY                 0    16852    pamtype 
   TABLE DATA           =   COPY public.pamtype (type_id, name, description) FROM stdin;
    public          postgres    false    215   Y                 0    16803    pamuser 
   TABLE DATA           H   COPY public.pamuser (user_id, firstname, lastname, role_id) FROM stdin;
    public          postgres    false    207   ?Y       0           0    0    pamapplicant_applicant_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.pamapplicant_applicant_id_seq', 1, false);
          public          postgres    false    204            1           0    0    pamarticle_article_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pamarticle_article_id_seq', 1, false);
          public          postgres    false    212            2           0    0    pamcontact_contact_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pamcontact_contact_id_seq', 2, false);
          public          postgres    false    200            3           0    0    pamlogarticletwo_log_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.pamlogarticletwo_log_id_seq', 1, false);
          public          postgres    false    218            4           0    0    pamposition_position_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.pamposition_position_id_seq', 1, false);
          public          postgres    false    202            5           0    0    pamrole_role_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pamrole_role_id_seq', 1, false);
          public          postgres    false    208            6           0    0    pamstatus_status_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pamstatus_status_id_seq', 1, false);
          public          postgres    false    210            7           0    0    pamtype_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pamtype_type_id_seq', 1, false);
          public          postgres    false    214            8           0    0    pamuser_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pamuser_user_id_seq', 1, false);
          public          postgres    false    206            9           0    0    panlogarticleone_log_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.panlogarticleone_log_id_seq', 1, false);
          public          postgres    false    216            {           2606    16800    pamapplicant pamapplicant_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.pamapplicant
    ADD CONSTRAINT pamapplicant_pkey PRIMARY KEY (applicant_id);
 H   ALTER TABLE ONLY public.pamapplicant DROP CONSTRAINT pamapplicant_pkey;
       public            postgres    false    205            ?           2606    16849    pamarticle pamarticle_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pamarticle
    ADD CONSTRAINT pamarticle_pkey PRIMARY KEY (article_id);
 D   ALTER TABLE ONLY public.pamarticle DROP CONSTRAINT pamarticle_pkey;
       public            postgres    false    213            w           2606    16731    pamcontact pamcontact_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pamcontact
    ADD CONSTRAINT pamcontact_pkey PRIMARY KEY (contact_id);
 D   ALTER TABLE ONLY public.pamcontact DROP CONSTRAINT pamcontact_pkey;
       public            postgres    false    201            ?           2606    16882 &   pamlogarticletwo pamlogarticletwo_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.pamlogarticletwo
    ADD CONSTRAINT pamlogarticletwo_pkey PRIMARY KEY (log_id);
 P   ALTER TABLE ONLY public.pamlogarticletwo DROP CONSTRAINT pamlogarticletwo_pkey;
       public            postgres    false    219            y           2606    16785    pamposition pamposition_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pamposition
    ADD CONSTRAINT pamposition_pkey PRIMARY KEY (position_id);
 F   ALTER TABLE ONLY public.pamposition DROP CONSTRAINT pamposition_pkey;
       public            postgres    false    203                       2606    16824    pamrole pamrole_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pamrole
    ADD CONSTRAINT pamrole_pkey PRIMARY KEY (role_id);
 >   ALTER TABLE ONLY public.pamrole DROP CONSTRAINT pamrole_pkey;
       public            postgres    false    209            ?           2606    16835    pamstatus pamstatus_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pamstatus
    ADD CONSTRAINT pamstatus_pkey PRIMARY KEY (status_id);
 B   ALTER TABLE ONLY public.pamstatus DROP CONSTRAINT pamstatus_pkey;
       public            postgres    false    211            ?           2606    16860    pamtype pamtype_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pamtype
    ADD CONSTRAINT pamtype_pkey PRIMARY KEY (type_id);
 >   ALTER TABLE ONLY public.pamtype DROP CONSTRAINT pamtype_pkey;
       public            postgres    false    215            }           2606    16811    pamuser pamuser_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pamuser
    ADD CONSTRAINT pamuser_pkey PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public.pamuser DROP CONSTRAINT pamuser_pkey;
       public            postgres    false    207            ?           2606    16872 &   pamlogarticleone panlogarticleone_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.pamlogarticleone
    ADD CONSTRAINT panlogarticleone_pkey PRIMARY KEY (log_id);
 P   ALTER TABLE ONLY public.pamlogarticleone DROP CONSTRAINT panlogarticleone_pkey;
       public            postgres    false    217                  x?????? ? ?            x?????? ? ?         ^   x?3?v?H?KM-1?tJ?KO?/?, ????J28,?????8?srR9???t?u?LM?L?????L͌????r??qqq ?G            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?     