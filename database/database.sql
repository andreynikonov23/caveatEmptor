PGDMP     3    
        
        }            caveat_emptor    15.3    15.3     M           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            P           1262    16517    caveat_emptor    DATABASE     �   CREATE DATABASE caveat_emptor WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE caveat_emptor;
                postgres    false            F          0    16560 	   addresses 
   TABLE DATA           >   COPY public.addresses (id, street, zipcode, city) FROM stdin;
    public          postgres    false    224   �       J          0    16584    bank_accounts 
   TABLE DATA           A   COPY public.bank_accounts (account, bankname, swift) FROM stdin;
    public          postgres    false    228   &       A          0    16537    bids 
   TABLE DATA           D   COPY public.bids (id, amount, "createOn", bidder, item) FROM stdin;
    public          postgres    false    219   �       H          0    16569    billing_details 
   TABLE DATA           O   COPY public.billing_details (id, owner, credit_card, bank_account) FROM stdin;
    public          postgres    false    226   �       B          0    16543 
   categories 
   TABLE DATA           2   COPY public.categories (name, parent) FROM stdin;
    public          postgres    false    220   K       I          0    16577    credit_cards 
   TABLE DATA           E   COPY public.credit_cards (number, "expMonth", "expYear") FROM stdin;
    public          postgres    false    227   �       D          0    16551    images 
   TABLE DATA           5   COPY public.images (id, title, filename) FROM stdin;
    public          postgres    false    222   �       ?          0    16528    items 
   TABLE DATA           `   COPY public.items (id, name, "initialPrice", "auctionEnd", image, seller, category) FROM stdin;
    public          postgres    false    217   G       =          0    16519    users 
   TABLE DATA           c   COPY public.users (id, username, firstname, lastname, billing_details, home, shipping) FROM stdin;
    public          postgres    false    215   #       W           0    0 
   Bid_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Bid_id_seq"', 12, true);
          public          postgres    false    218            X           0    0    Image_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Image_id_seq"', 3, true);
          public          postgres    false    221            Y           0    0    Item_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Item_id_seq"', 8, true);
          public          postgres    false    216            Z           0    0    address_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.address_id_seq', 3, true);
          public          postgres    false    223            [           0    0    billing_details_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.billing_details_id_seq', 6, true);
          public          postgres    false    225            \           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 4, true);
          public          postgres    false    214            F   �   x���A�0E�3����P�.F�l\�!��������)`7���?���\�A�k�;"<Vr���0"�^�Z�HX�D��^/��	^�Oz-��L�9غ�!��������'W9�V�O:'f`����T2���i      J   J   x�st�5��06�NJ-JJ���tru�rt��Z�p��:����݌��t-�M��9��8�M�\ML�b���� `��      A   c   x�m�A
A��_&��:�����H'˲dBY�cI�cpa�,��p
��}~텸"9\�d�w��-��&�z`�����5z8L�r����?��afo݁"�      H   H   x�%ɱ�0�z��o�� U���0��B�sDG@��=�M�C�y}~jIhJZ6J�c�/U� ӒG      B   ;   x��0�¦�M�]��/츰���?��/l�� �뾰U��,�.`������ �+7L      I   Y   x�-ʱ�0�:E��=�DԈ���"$*���W�cqcu1S/������7��XL9�|������&i�L�j��=�$uZ&"� -� 4      D   8   x�3���t���wN,KM,q�-(�/���M7��*H�2�%m�6�%m������ ���      ?   �   x�}�A��@�u�u�H�3�5̸�x 7��$BO��3�Jܺ�^A��9Cy#�*.��������|{�&`I.,�������X��H��^w�ϗ�gn���(����WP�©WN�i���_ o01n�s�qI������L�~F"�ܕ���u�I{n�OO��W֪%�[M^i�uU�OLƹ�,}|0�^�[�(��hx�      =      x����@D��ǐ���5�K� �
Tq-�@��^HI����?b[;��Huu����o�N��ѧ�O�(PHD����2;P~���d��dgk��z`�� %��i&+sp������"��"�3nG�     