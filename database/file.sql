PGDMP     #            
        }            caveat_emptor    15.3    15.3 C    M           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            P           1262    16517    caveat_emptor    DATABASE     �   CREATE DATABASE caveat_emptor WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE caveat_emptor;
                postgres    false            �            1259    16537    bids    TABLE     �   CREATE TABLE public.bids (
    id integer NOT NULL,
    amount double precision NOT NULL,
    "createOn" date NOT NULL,
    bidder integer NOT NULL,
    item integer NOT NULL
);
    DROP TABLE public.bids;
       public         heap    postgres    false            �            1259    16536 
   Bid_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Bid_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."Bid_id_seq";
       public          postgres    false    219            Q           0    0 
   Bid_id_seq    SEQUENCE OWNED BY     <   ALTER SEQUENCE public."Bid_id_seq" OWNED BY public.bids.id;
          public          postgres    false    218            �            1259    16551    images    TABLE     u   CREATE TABLE public.images (
    id integer NOT NULL,
    title character varying,
    filename character varying
);
    DROP TABLE public.images;
       public         heap    postgres    false            �            1259    16550    Image_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Image_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Image_id_seq";
       public          postgres    false    222            R           0    0    Image_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public."Image_id_seq" OWNED BY public.images.id;
          public          postgres    false    221            �            1259    16528    items    TABLE       CREATE TABLE public.items (
    id integer NOT NULL,
    name character varying NOT NULL,
    "initialPrice" double precision NOT NULL,
    "auctionEnd" date NOT NULL,
    image integer,
    seller integer NOT NULL,
    category character varying NOT NULL
);
    DROP TABLE public.items;
       public         heap    postgres    false            �            1259    16527    Item_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Item_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Item_id_seq";
       public          postgres    false    217            S           0    0    Item_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE public."Item_id_seq" OWNED BY public.items.id;
          public          postgres    false    216            �            1259    16560 	   addresses    TABLE     �   CREATE TABLE public.addresses (
    id integer NOT NULL,
    street character varying NOT NULL,
    zipcode character varying,
    city character varying
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            �            1259    16559    address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.address_id_seq;
       public          postgres    false    224            T           0    0    address_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.address_id_seq OWNED BY public.addresses.id;
          public          postgres    false    223            �            1259    16584    bank_accounts    TABLE     �   CREATE TABLE public.bank_accounts (
    account character varying NOT NULL,
    bankname character varying NOT NULL,
    swift character varying NOT NULL
);
 !   DROP TABLE public.bank_accounts;
       public         heap    postgres    false            �            1259    16569    billing_details    TABLE     �   CREATE TABLE public.billing_details (
    id integer NOT NULL,
    owner integer,
    credit_card character varying NOT NULL,
    bank_account character varying NOT NULL
);
 #   DROP TABLE public.billing_details;
       public         heap    postgres    false            �            1259    16568    billing_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.billing_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.billing_details_id_seq;
       public          postgres    false    226            U           0    0    billing_details_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.billing_details_id_seq OWNED BY public.billing_details.id;
          public          postgres    false    225            �            1259    16543 
   categories    TABLE     f   CREATE TABLE public.categories (
    name character varying NOT NULL,
    parent character varying
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16577    credit_cards    TABLE     �   CREATE TABLE public.credit_cards (
    number character varying NOT NULL,
    "expMonth" character varying NOT NULL,
    "expYear" character varying NOT NULL
);
     DROP TABLE public.credit_cards;
       public         heap    postgres    false            �            1259    16519    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying NOT NULL,
    firstname character varying,
    lastname character varying,
    billing_details integer,
    home integer,
    shipping integer
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16518    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    215            V           0    0    user_id_seq    SEQUENCE OWNED BY     <   ALTER SEQUENCE public.user_id_seq OWNED BY public.users.id;
          public          postgres    false    214            �           2604    16563    addresses id    DEFAULT     j   ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);
 ;   ALTER TABLE public.addresses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16540    bids id    DEFAULT     c   ALTER TABLE ONLY public.bids ALTER COLUMN id SET DEFAULT nextval('public."Bid_id_seq"'::regclass);
 6   ALTER TABLE public.bids ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16572    billing_details id    DEFAULT     x   ALTER TABLE ONLY public.billing_details ALTER COLUMN id SET DEFAULT nextval('public.billing_details_id_seq'::regclass);
 A   ALTER TABLE public.billing_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    16554 	   images id    DEFAULT     g   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public."Image_id_seq"'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16531    items id    DEFAULT     e   ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public."Item_id_seq"'::regclass);
 7   ALTER TABLE public.items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16522    users id    DEFAULT     c   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            F          0    16560 	   addresses 
   TABLE DATA                 public          postgres    false    224   �I       J          0    16584    bank_accounts 
   TABLE DATA                 public          postgres    false    228   �J       A          0    16537    bids 
   TABLE DATA                 public          postgres    false    219   QK       H          0    16569    billing_details 
   TABLE DATA                 public          postgres    false    226   L       B          0    16543 
   categories 
   TABLE DATA                 public          postgres    false    220   �L       I          0    16577    credit_cards 
   TABLE DATA                 public          postgres    false    227   M       D          0    16551    images 
   TABLE DATA                 public          postgres    false    222   �M       ?          0    16528    items 
   TABLE DATA                 public          postgres    false    217   %N       =          0    16519    users 
   TABLE DATA                 public          postgres    false    215   8O       W           0    0 
   Bid_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Bid_id_seq"', 12, true);
          public          postgres    false    218            X           0    0    Image_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Image_id_seq"', 3, true);
          public          postgres    false    221            Y           0    0    Item_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Item_id_seq"', 8, true);
          public          postgres    false    216            Z           0    0    address_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.address_id_seq', 3, true);
          public          postgres    false    223            [           0    0    billing_details_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.billing_details_id_seq', 6, true);
          public          postgres    false    225            \           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 4, true);
          public          postgres    false    214            �           2606    16542    bids Bid_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.bids
    ADD CONSTRAINT "Bid_pkey" PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.bids DROP CONSTRAINT "Bid_pkey";
       public            postgres    false    219            �           2606    16558    images Image_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.images
    ADD CONSTRAINT "Image_pkey" PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.images DROP CONSTRAINT "Image_pkey";
       public            postgres    false    222            �           2606    16535    items Item_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.items
    ADD CONSTRAINT "Item_pkey" PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.items DROP CONSTRAINT "Item_pkey";
       public            postgres    false    217            �           2606    16567    addresses address_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.addresses DROP CONSTRAINT address_pkey;
       public            postgres    false    224            �           2606    16590     bank_accounts bank_accounts_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.bank_accounts
    ADD CONSTRAINT bank_accounts_pkey PRIMARY KEY (account);
 J   ALTER TABLE ONLY public.bank_accounts DROP CONSTRAINT bank_accounts_pkey;
       public            postgres    false    228            �           2606    16576 $   billing_details billing_details_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.billing_details
    ADD CONSTRAINT billing_details_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.billing_details DROP CONSTRAINT billing_details_pkey;
       public            postgres    false    226            �           2606    16549    categories category_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT category_pkey PRIMARY KEY (name);
 B   ALTER TABLE ONLY public.categories DROP CONSTRAINT category_pkey;
       public            postgres    false    220            �           2606    16583    credit_cards credit_cards_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.credit_cards
    ADD CONSTRAINT credit_cards_pkey PRIMARY KEY (number);
 H   ALTER TABLE ONLY public.credit_cards DROP CONSTRAINT credit_cards_pkey;
       public            postgres    false    227            �           2606    16526    users user_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public            postgres    false    215            �           2606    16626    bids bids_item_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.bids
    ADD CONSTRAINT bids_item_fk FOREIGN KEY (item) REFERENCES public.items(id) NOT VALID;
 ;   ALTER TABLE ONLY public.bids DROP CONSTRAINT bids_item_fk;
       public          postgres    false    219    217    3219            �           2606    16621    bids bids_users_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.bids
    ADD CONSTRAINT bids_users_fk FOREIGN KEY (bidder) REFERENCES public.users(id) NOT VALID;
 <   ALTER TABLE ONLY public.bids DROP CONSTRAINT bids_users_fk;
       public          postgres    false    219    3217    215            �           2606    16616 0   billing_details billing_details_bank_accounts_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.billing_details
    ADD CONSTRAINT billing_details_bank_accounts_fk FOREIGN KEY (bank_account) REFERENCES public.bank_accounts(account) NOT VALID;
 Z   ALTER TABLE ONLY public.billing_details DROP CONSTRAINT billing_details_bank_accounts_fk;
       public          postgres    false    228    226    3233            �           2606    16611 /   billing_details billing_details_credit_cards_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.billing_details
    ADD CONSTRAINT billing_details_credit_cards_fk FOREIGN KEY (credit_card) REFERENCES public.credit_cards(number) NOT VALID;
 Y   ALTER TABLE ONLY public.billing_details DROP CONSTRAINT billing_details_credit_cards_fk;
       public          postgres    false    227    226    3231            �           2606    16606 (   billing_details billing_details_users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.billing_details
    ADD CONSTRAINT billing_details_users_fk FOREIGN KEY (owner) REFERENCES public.users(id) NOT VALID;
 R   ALTER TABLE ONLY public.billing_details DROP CONSTRAINT billing_details_users_fk;
       public          postgres    false    3217    226    215            �           2606    16641    categories category_parent_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT category_parent_fk FOREIGN KEY (parent) REFERENCES public.categories(name) NOT VALID;
 G   ALTER TABLE ONLY public.categories DROP CONSTRAINT category_parent_fk;
       public          postgres    false    3223    220    220            �           2606    16646    items items_categories_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_categories_fk FOREIGN KEY (category) REFERENCES public.categories(name) NOT VALID;
 C   ALTER TABLE ONLY public.items DROP CONSTRAINT items_categories_fk;
       public          postgres    false    217    220    3223            �           2606    16631    items items_images_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_images_fk FOREIGN KEY (image) REFERENCES public.items(id) NOT VALID;
 ?   ALTER TABLE ONLY public.items DROP CONSTRAINT items_images_fk;
       public          postgres    false    217    217    3219            �           2606    16636    items items_users_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_users_fk FOREIGN KEY (seller) REFERENCES public.users(id) NOT VALID;
 >   ALTER TABLE ONLY public.items DROP CONSTRAINT items_users_fk;
       public          postgres    false    217    215    3217            �           2606    16601    users user_billing_details_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_billing_details_fk FOREIGN KEY (billing_details) REFERENCES public.billing_details(id) NOT VALID;
 G   ALTER TABLE ONLY public.users DROP CONSTRAINT user_billing_details_fk;
       public          postgres    false    3229    215    226            �           2606    16591    users user_home_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_home_fk FOREIGN KEY (home) REFERENCES public.addresses(id) NOT VALID;
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT user_home_fk;
       public          postgres    false    215    224    3227            �           2606    16596    users user_shipping_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_shipping_fk FOREIGN KEY (shipping) REFERENCES public.addresses(id) NOT VALID;
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT user_shipping_fk;
       public          postgres    false    215    224    3227            F   �   x���v
Q���W((M��L�KLI)J-.N-Vs�	uV�0�QP�0�b߅�{.6^�ua��V�S.콰��Nu�������1�ua��ev\ة �컰����.6 Y[�5��<���d��[���\�Z2f�&S#cs��d2i!��������b?�3Csu��>����, {~߅� 㹸 GT��      J   {   x���v
Q���W((M��L�KJ�ˎOLN�/�+)Vs�	uV�Pwt�5��06R�QPNJ-)���\]�5��<I1	h��	Hw���#co7crҵ4716ivQ�&n�&� c�� �=l      A   �   x��ѱ
�0�=Oq[�������! l�Z��� ��'�� Sȗ��$u}{ u����6O�q�>�?��VVCM���r�Ƞ3+��@�J�������S�����Q�����2���Y̞y����c����U������4ϟG���sO
��zso�G      H   �   x���v
Q���W((M��L�K�����K�OI-I��)Vs�	uV�0�Q����QP7261bsc3u ��Q�����H]Ӛ˓xM�4712�071h��	��!han4�h$�@']Kscc��\\ 3A�      B   h   x���v
Q���W((M��L�KN,IM�/�L-Vs�	uV�P�0�¦�M�]��/츰��u�PMk.O"�a���A��*\؀�D�6��� �QR5      I   �   x���v
Q���W((M��L�K.JM�,�ON,J)Vs�	uV�P72�072�0677�P�QP������.6\�pa����������5�'�F�����j6r��>�a�$fb���f&&`��\�p��b�0����qq �NLm      D   c   x���v
Q���W((M��L���MLO-Vs�	uV�0�Q����QPw���wN,KM,q�-(�/���M7��*HW״��$h�1^���7��AF0��� �Bo      ?     x���v
Q���W((M��L��,I�-Vs�	uV�0�QPw�H-+��I-Q���+IUpN,��W�Q06 ��������B}|t���&\�t��¾{�x�v_ء�i��I�N3�f������ļt��ļ�T��F��6��Q�Fs�f�Լ*��ĒԼ]���������<��&�54"��& k�_�z�hu���
6��PH�d��$&+���%��+8嗦g$�*Z��c��&D�  Ѭ�      =   �   x���v
Q���W((M��L�+-N-*Vs�	uV�0�QPO�K)J�T�.L�����^�	�Ͻ��®����.l���(��5�'!����S�2s�M��hȎ���9`#7\l��t��b��F�%;�V��( �dD�@���&VT@M�paМ����/� �u����9�@S�� a�o(     