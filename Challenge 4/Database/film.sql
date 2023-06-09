PGDMP                         {            film    15.2    15.2 #    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    16595    film    DATABASE     ~   CREATE DATABASE film WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE film;
                postgres    false            �            1259    16662    films    TABLE     �   CREATE TABLE public.films (
    film_code bigint NOT NULL,
    film_name character varying(255),
    sedang_tayang boolean NOT NULL
);
    DROP TABLE public.films;
       public         heap    postgres    false            �            1259    16661 	   films_seq    SEQUENCE     s   CREATE SEQUENCE public.films_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.films_seq;
       public          postgres    false            �            1259    16667    hibernate_sequences    TABLE     t   CREATE TABLE public.hibernate_sequences (
    sequence_name character varying(255) NOT NULL,
    next_val bigint
);
 '   DROP TABLE public.hibernate_sequences;
       public         heap    postgres    false            �            1259    16638 	   schedules    TABLE     ;  CREATE TABLE public.schedules (
    schedule_id integer NOT NULL,
    film_code character varying(10),
    tanggal_tayang date NOT NULL,
    jam_mulai time without time zone NOT NULL,
    jam_selesai time without time zone NOT NULL,
    harga_tiket numeric(10,2) NOT NULL,
    nomor_kursi character varying(255)
);
    DROP TABLE public.schedules;
       public         heap    postgres    false            �            1259    16637    schedules_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedules_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.schedules_schedule_id_seq;
       public          postgres    false    215            &           0    0    schedules_schedule_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.schedules_schedule_id_seq OWNED BY public.schedules.schedule_id;
          public          postgres    false    214            �            1259    16672    schedules_seq    SEQUENCE     w   CREATE SEQUENCE public.schedules_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.schedules_seq;
       public          postgres    false            �            1259    16688    seats    TABLE     �   CREATE TABLE public.seats (
    nomor_masuk bigint NOT NULL,
    nomor_kursi character varying(255),
    studio_name character varying(255)
);
    DROP TABLE public.seats;
       public         heap    postgres    false            �            1259    16673 	   seats_seq    SEQUENCE     s   CREATE SEQUENCE public.seats_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.seats_seq;
       public          postgres    false            �            1259    16686    seq_name    SEQUENCE     q   CREATE SEQUENCE public.seq_name
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.seq_name;
       public          postgres    false            �            1259    16695    user_seq    SEQUENCE     r   CREATE SEQUENCE public.user_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.user_seq;
       public          postgres    false            �            1259    16696    users    TABLE     �   CREATE TABLE public.users (
    no_user bigint NOT NULL,
    email character varying(255),
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16703 	   users_seq    SEQUENCE     s   CREATE SEQUENCE public.users_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.users_seq;
       public          postgres    false            {           2604    16641    schedules schedule_id    DEFAULT     ~   ALTER TABLE ONLY public.schedules ALTER COLUMN schedule_id SET DEFAULT nextval('public.schedules_schedule_id_seq'::regclass);
 D   ALTER TABLE public.schedules ALTER COLUMN schedule_id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    16662    films 
   TABLE DATA           D   COPY public.films (film_code, film_name, sedang_tayang) FROM stdin;
    public          postgres    false    217   ($                 0    16667    hibernate_sequences 
   TABLE DATA           F   COPY public.hibernate_sequences (sequence_name, next_val) FROM stdin;
    public          postgres    false    218   \$                 0    16638 	   schedules 
   TABLE DATA           }   COPY public.schedules (schedule_id, film_code, tanggal_tayang, jam_mulai, jam_selesai, harga_tiket, nomor_kursi) FROM stdin;
    public          postgres    false    215   �$                 0    16688    seats 
   TABLE DATA           F   COPY public.seats (nomor_masuk, nomor_kursi, studio_name) FROM stdin;
    public          postgres    false    222   �$                 0    16696    users 
   TABLE DATA           C   COPY public.users (no_user, email, password, username) FROM stdin;
    public          postgres    false    224   %       '           0    0 	   films_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.films_seq', 201, true);
          public          postgres    false    216            (           0    0    schedules_schedule_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.schedules_schedule_id_seq', 1, false);
          public          postgres    false    214            )           0    0    schedules_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.schedules_seq', 301, true);
          public          postgres    false    219            *           0    0 	   seats_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.seats_seq', 551, true);
          public          postgres    false    220            +           0    0    seq_name    SEQUENCE SET     6   SELECT pg_catalog.setval('public.seq_name', 4, true);
          public          postgres    false    221            ,           0    0    user_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('public.user_seq', 1, true);
          public          postgres    false    223            -           0    0 	   users_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.users_seq', 101, true);
          public          postgres    false    225                       2606    16666    films films_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (film_code);
 :   ALTER TABLE ONLY public.films DROP CONSTRAINT films_pkey;
       public            postgres    false    217            �           2606    16671 ,   hibernate_sequences hibernate_sequences_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.hibernate_sequences
    ADD CONSTRAINT hibernate_sequences_pkey PRIMARY KEY (sequence_name);
 V   ALTER TABLE ONLY public.hibernate_sequences DROP CONSTRAINT hibernate_sequences_pkey;
       public            postgres    false    218            }           2606    16643    schedules schedules_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (schedule_id);
 B   ALTER TABLE ONLY public.schedules DROP CONSTRAINT schedules_pkey;
       public            postgres    false    215            �           2606    16694    seats seats_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.seats
    ADD CONSTRAINT seats_pkey PRIMARY KEY (nomor_masuk);
 :   ALTER TABLE ONLY public.seats DROP CONSTRAINT seats_pkey;
       public            postgres    false    222            �           2606    16702    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (no_user);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    224               $   x�345�t�/*-�W�HU��/�L�,����� x$�            x�KIMK,�)�45������ +�         G   x�M��� ���.��H�!:��A��Z���	�LP��a�L�خt$5e�~b����82:�p�?����J#            x�310�t4�IM,I-R0����� 5�         2   x�3�,ʬJ�qH�M���K�υ�!$�gb^JFfv"�<TFs��qqq uv�     