PGDMP  3                    |            pgmoda_prod    16.4    16.4 =    =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            @           1262    51660    pgmoda_prod    DATABASE     }   CREATE DATABASE pgmoda_prod WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE pgmoda_prod;
                postgres    false            �            1259    51661    cliente    TABLE     �   CREATE TABLE public.cliente (
    id bigint NOT NULL,
    dni character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    51713    cliente_seq    SEQUENCE     u   CREATE SEQUENCE public.cliente_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cliente_seq;
       public          postgres    false            �            1259    51668    color    TABLE     X   CREATE TABLE public.color (
    id bigint NOT NULL,
    color character varying(255)
);
    DROP TABLE public.color;
       public         heap    postgres    false            �            1259    51714 	   color_seq    SEQUENCE     s   CREATE SEQUENCE public.color_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.color_seq;
       public          postgres    false            �            1259    51673 	   formapago    TABLE     `   CREATE TABLE public.formapago (
    id bigint NOT NULL,
    formapago character varying(255)
);
    DROP TABLE public.formapago;
       public         heap    postgres    false            �            1259    51715    formapago_seq    SEQUENCE     w   CREATE SEQUENCE public.formapago_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.formapago_seq;
       public          postgres    false            �            1259    51678    genero    TABLE     Z   CREATE TABLE public.genero (
    id bigint NOT NULL,
    genero character varying(255)
);
    DROP TABLE public.genero;
       public         heap    postgres    false            �            1259    51716 
   genero_seq    SEQUENCE     t   CREATE SEQUENCE public.genero_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.genero_seq;
       public          postgres    false            �            1259    51683    marca    TABLE     X   CREATE TABLE public.marca (
    id bigint NOT NULL,
    marca character varying(255)
);
    DROP TABLE public.marca;
       public         heap    postgres    false            �            1259    51717 	   marca_seq    SEQUENCE     s   CREATE SEQUENCE public.marca_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.marca_seq;
       public          postgres    false            �            1259    51688    producto    TABLE       CREATE TABLE public.producto (
    id bigint NOT NULL,
    costocompra double precision,
    precioventa double precision,
    producto character varying(255),
    stock integer,
    color_id bigint NOT NULL,
    genero_id bigint NOT NULL,
    marca_id bigint NOT NULL
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    51718    producto_seq    SEQUENCE     v   CREATE SEQUENCE public.producto_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.producto_seq;
       public          postgres    false            �            1259    51693    talla    TABLE     X   CREATE TABLE public.talla (
    id bigint NOT NULL,
    talla character varying(255)
);
    DROP TABLE public.talla;
       public         heap    postgres    false            �            1259    51719 	   talla_seq    SEQUENCE     s   CREATE SEQUENCE public.talla_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.talla_seq;
       public          postgres    false            �            1259    51698 	   tipoventa    TABLE     `   CREATE TABLE public.tipoventa (
    id bigint NOT NULL,
    tipoventa character varying(255)
);
    DROP TABLE public.tipoventa;
       public         heap    postgres    false            �            1259    51720    tipoventa_seq    SEQUENCE     w   CREATE SEQUENCE public.tipoventa_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tipoventa_seq;
       public          postgres    false            �            1259    51703    venta    TABLE       CREATE TABLE public.venta (
    id bigint NOT NULL,
    fechaventa timestamp(6) without time zone,
    igv numeric(38,2),
    subtotal numeric(38,2),
    total numeric(38,2),
    cliente_id bigint NOT NULL,
    id_forma_pago bigint NOT NULL,
    id_tipo_venta bigint NOT NULL
);
    DROP TABLE public.venta;
       public         heap    postgres    false            �            1259    51721 	   venta_seq    SEQUENCE     s   CREATE SEQUENCE public.venta_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.venta_seq;
       public          postgres    false            �            1259    51708    ventadetalle    TABLE     �   CREATE TABLE public.ventadetalle (
    id bigint NOT NULL,
    cantidad integer,
    descripcion character varying(255),
    importe numeric(38,2),
    preciounitario numeric(38,2),
    idventa bigint NOT NULL
);
     DROP TABLE public.ventadetalle;
       public         heap    postgres    false            �            1259    51722    ventadetalle_seq    SEQUENCE     z   CREATE SEQUENCE public.ventadetalle_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ventadetalle_seq;
       public          postgres    false            '          0    51661    cliente 
   TABLE DATA           2   COPY public.cliente (id, dni, nombre) FROM stdin;
    public          postgres    false    215   *@       (          0    51668    color 
   TABLE DATA           *   COPY public.color (id, color) FROM stdin;
    public          postgres    false    216   u@       )          0    51673 	   formapago 
   TABLE DATA           2   COPY public.formapago (id, formapago) FROM stdin;
    public          postgres    false    217   �@       *          0    51678    genero 
   TABLE DATA           ,   COPY public.genero (id, genero) FROM stdin;
    public          postgres    false    218   A       +          0    51683    marca 
   TABLE DATA           *   COPY public.marca (id, marca) FROM stdin;
    public          postgres    false    219   MA       ,          0    51688    producto 
   TABLE DATA           p   COPY public.producto (id, costocompra, precioventa, producto, stock, color_id, genero_id, marca_id) FROM stdin;
    public          postgres    false    220   �A       -          0    51693    talla 
   TABLE DATA           *   COPY public.talla (id, talla) FROM stdin;
    public          postgres    false    221   �A       .          0    51698 	   tipoventa 
   TABLE DATA           2   COPY public.tipoventa (id, tipoventa) FROM stdin;
    public          postgres    false    222   �A       /          0    51703    venta 
   TABLE DATA           o   COPY public.venta (id, fechaventa, igv, subtotal, total, cliente_id, id_forma_pago, id_tipo_venta) FROM stdin;
    public          postgres    false    223   <B       0          0    51708    ventadetalle 
   TABLE DATA           c   COPY public.ventadetalle (id, cantidad, descripcion, importe, preciounitario, idventa) FROM stdin;
    public          postgres    false    224   �B       A           0    0    cliente_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cliente_seq', 1, false);
          public          postgres    false    225            B           0    0 	   color_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.color_seq', 1, false);
          public          postgres    false    226            C           0    0    formapago_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.formapago_seq', 1, false);
          public          postgres    false    227            D           0    0 
   genero_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.genero_seq', 1, false);
          public          postgres    false    228            E           0    0 	   marca_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.marca_seq', 51, true);
          public          postgres    false    229            F           0    0    producto_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.producto_seq', 51, true);
          public          postgres    false    230            G           0    0 	   talla_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.talla_seq', 1, false);
          public          postgres    false    231            H           0    0    tipoventa_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tipoventa_seq', 1, false);
          public          postgres    false    232            I           0    0 	   venta_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.venta_seq', 51, true);
          public          postgres    false    233            J           0    0    ventadetalle_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ventadetalle_seq', 51, true);
          public          postgres    false    234            ~           2606    51667    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    215            �           2606    51672    color color_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.color DROP CONSTRAINT color_pkey;
       public            postgres    false    216            �           2606    51677    formapago formapago_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.formapago
    ADD CONSTRAINT formapago_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.formapago DROP CONSTRAINT formapago_pkey;
       public            postgres    false    217            �           2606    51682    genero genero_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
       public            postgres    false    218            �           2606    51687    marca marca_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_pkey;
       public            postgres    false    219            �           2606    51692    producto producto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    220            �           2606    51697    talla talla_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.talla
    ADD CONSTRAINT talla_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.talla DROP CONSTRAINT talla_pkey;
       public            postgres    false    221            �           2606    51702    tipoventa tipoventa_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tipoventa
    ADD CONSTRAINT tipoventa_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tipoventa DROP CONSTRAINT tipoventa_pkey;
       public            postgres    false    222            �           2606    51707    venta venta_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public            postgres    false    223            �           2606    51712    ventadetalle ventadetalle_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ventadetalle
    ADD CONSTRAINT ventadetalle_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ventadetalle DROP CONSTRAINT ventadetalle_pkey;
       public            postgres    false    224            �           2606    51738    venta fk_cliente_venta    FK CONSTRAINT     z   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_cliente_venta FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);
 @   ALTER TABLE ONLY public.venta DROP CONSTRAINT fk_cliente_venta;
       public          postgres    false    223    4734    215            �           2606    51723    producto fk_color_producto    FK CONSTRAINT     z   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_color_producto FOREIGN KEY (color_id) REFERENCES public.color(id);
 D   ALTER TABLE ONLY public.producto DROP CONSTRAINT fk_color_producto;
       public          postgres    false    216    4736    220            �           2606    51743    venta fk_formapago_venta    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_formapago_venta FOREIGN KEY (id_forma_pago) REFERENCES public.formapago(id);
 B   ALTER TABLE ONLY public.venta DROP CONSTRAINT fk_formapago_venta;
       public          postgres    false    223    217    4738            �           2606    51728    producto fk_genero_producto    FK CONSTRAINT     }   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_genero_producto FOREIGN KEY (genero_id) REFERENCES public.genero(id);
 E   ALTER TABLE ONLY public.producto DROP CONSTRAINT fk_genero_producto;
       public          postgres    false    4740    220    218            �           2606    51733    producto fk_marca_producto    FK CONSTRAINT     z   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_marca_producto FOREIGN KEY (marca_id) REFERENCES public.marca(id);
 D   ALTER TABLE ONLY public.producto DROP CONSTRAINT fk_marca_producto;
       public          postgres    false    4742    220    219            �           2606    51748    venta fk_tipoventa_venta    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_tipoventa_venta FOREIGN KEY (id_tipo_venta) REFERENCES public.tipoventa(id);
 B   ALTER TABLE ONLY public.venta DROP CONSTRAINT fk_tipoventa_venta;
       public          postgres    false    4748    223    222            �           2606    51753 (   ventadetalle fkktab4xx5tke6o3l2chsarghnh    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventadetalle
    ADD CONSTRAINT fkktab4xx5tke6o3l2chsarghnh FOREIGN KEY (idventa) REFERENCES public.venta(id);
 R   ALTER TABLE ONLY public.ventadetalle DROP CONSTRAINT fkktab4xx5tke6o3l2chsarghnh;
       public          postgres    false    224    4750    223            '   ;   x�3�4426153�t��KTp��)M,*I�2�4735162�t�I�SpO,J�L����� N��      (   L   x�3�K-JI�2�t�M,�����2��K,J��J�2���/JL����/N���M,*:�9��Ѐӽ(��+F��� �q�      )   6   x�3�tMKM.�,��2�L,H�2�����2�)J�+NK-J�K�L����� Ao[      *   &   x�3����M*J�2�tI�M�2���,N������� ��      +   %   x�3�(�MJ�2����N�2�tL�LI,����� s�7      ,   N   x�3�47�45�tN��,NT�J-*N��44�4�4�4�2�46�42�H�+I���SHIUK-.�,� *1�4����� j��      -      x������ � �      .   /   x�3�t��qq�2�tst	r�2���qTpqUs����qqq ���      /   Q   x�e���0�f��>C����-����؍ Ȁ��A]��9��wr�b�g�n;	�x����j6�o!������q3{^      0   v   x�3�4�tN��,NT�J-*N�T�pL�LI,�Q���M*J�Qp�M,������443�30�4��\F�F��y%�9�y
)�
a��%�E
���@m.���ȚML@��� z���k����� 22�     