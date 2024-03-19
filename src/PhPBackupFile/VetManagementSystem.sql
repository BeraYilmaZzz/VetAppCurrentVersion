PGDMP                      {            VetManagementSystem    16.1    16.1 G    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41304    VetManagementSystem    DATABASE     �   CREATE DATABASE "VetManagementSystem" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
 %   DROP DATABASE "VetManagementSystem";
                postgres    false            �            1259    41307    animal    TABLE     R  CREATE TABLE public.animal (
    animal_id bigint NOT NULL,
    breed character varying(255) NOT NULL,
    colour character varying(255) NOT NULL,
    date_of_birth date,
    gender character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    species character varying(255) NOT NULL,
    customer_id integer NOT NULL
);
    DROP TABLE public.animal;
       public         heap    postgres    false            �            1259    41305    animal_animal_id_seq    SEQUENCE     }   CREATE SEQUENCE public.animal_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.animal_animal_id_seq;
       public          postgres    false    217            �           0    0    animal_animal_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.animal_animal_id_seq OWNED BY public.animal.animal_id;
          public          postgres    false    215            �            1259    41306    animal_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.animal_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.animal_customer_id_seq;
       public          postgres    false    217            �           0    0    animal_customer_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.animal_customer_id_seq OWNED BY public.animal.customer_id;
          public          postgres    false    216            �            1259    41319    appointment    TABLE     �   CREATE TABLE public.appointment (
    id bigint NOT NULL,
    appointment_dates timestamp(6) without time zone,
    animal_id integer NOT NULL,
    doctor_id integer NOT NULL
);
    DROP TABLE public.appointment;
       public         heap    postgres    false            �            1259    41317    appointment_animal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointment_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.appointment_animal_id_seq;
       public          postgres    false    221            �           0    0    appointment_animal_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.appointment_animal_id_seq OWNED BY public.appointment.animal_id;
          public          postgres    false    219            �            1259    41318    appointment_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointment_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.appointment_doctor_id_seq;
       public          postgres    false    221            �           0    0    appointment_doctor_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.appointment_doctor_id_seq OWNED BY public.appointment.doctor_id;
          public          postgres    false    220            �            1259    41316    appointment_id_seq    SEQUENCE     {   CREATE SEQUENCE public.appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.appointment_id_seq;
       public          postgres    false    221            �           0    0    appointment_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.appointment_id_seq OWNED BY public.appointment.id;
          public          postgres    false    218            �            1259    41329    available_date    TABLE     �   CREATE TABLE public.available_date (
    available_id integer NOT NULL,
    available_dates date,
    doctor_id integer NOT NULL
);
 "   DROP TABLE public.available_date;
       public         heap    postgres    false            �            1259    41327    available_date_available_id_seq    SEQUENCE     �   CREATE SEQUENCE public.available_date_available_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.available_date_available_id_seq;
       public          postgres    false    224            �           0    0    available_date_available_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.available_date_available_id_seq OWNED BY public.available_date.available_id;
          public          postgres    false    222            �            1259    41328    available_date_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.available_date_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.available_date_doctor_id_seq;
       public          postgres    false    224                        0    0    available_date_doctor_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.available_date_doctor_id_seq OWNED BY public.available_date.doctor_id;
          public          postgres    false    223            �            1259    41337    customer    TABLE       CREATE TABLE public.customer (
    customer_id bigint NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    mail character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    phone character varying(255) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    41336    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    226                       0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    225            �            1259    41346    doctor    TABLE     �   CREATE TABLE public.doctor (
    doctor_id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(255),
    phone character varying(255)
);
    DROP TABLE public.doctor;
       public         heap    postgres    false            �            1259    41345    doctor_doctor_id_seq    SEQUENCE     }   CREATE SEQUENCE public.doctor_doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.doctor_doctor_id_seq;
       public          postgres    false    228                       0    0    doctor_doctor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.doctor_doctor_id_seq OWNED BY public.doctor.doctor_id;
          public          postgres    false    227            �            1259    41356    vaccine    TABLE       CREATE TABLE public.vaccine (
    vaccine_id bigint NOT NULL,
    code character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    proteciton_finish_date date NOT NULL,
    protection_start_date date NOT NULL,
    animal_id integer NOT NULL
);
    DROP TABLE public.vaccine;
       public         heap    postgres    false            �            1259    41355    vaccine_animal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vaccine_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.vaccine_animal_id_seq;
       public          postgres    false    231                       0    0    vaccine_animal_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.vaccine_animal_id_seq OWNED BY public.vaccine.animal_id;
          public          postgres    false    230            �            1259    41354    vaccine_vaccine_id_seq    SEQUENCE        CREATE SEQUENCE public.vaccine_vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.vaccine_vaccine_id_seq;
       public          postgres    false    231                       0    0    vaccine_vaccine_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.vaccine_vaccine_id_seq OWNED BY public.vaccine.vaccine_id;
          public          postgres    false    229            8           2604    41310    animal animal_id    DEFAULT     t   ALTER TABLE ONLY public.animal ALTER COLUMN animal_id SET DEFAULT nextval('public.animal_animal_id_seq'::regclass);
 ?   ALTER TABLE public.animal ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    217    215    217            9           2604    41311    animal customer_id    DEFAULT     x   ALTER TABLE ONLY public.animal ALTER COLUMN customer_id SET DEFAULT nextval('public.animal_customer_id_seq'::regclass);
 A   ALTER TABLE public.animal ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    217    216    217            :           2604    41322    appointment id    DEFAULT     p   ALTER TABLE ONLY public.appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_id_seq'::regclass);
 =   ALTER TABLE public.appointment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    218    221            ;           2604    41323    appointment animal_id    DEFAULT     ~   ALTER TABLE ONLY public.appointment ALTER COLUMN animal_id SET DEFAULT nextval('public.appointment_animal_id_seq'::regclass);
 D   ALTER TABLE public.appointment ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    219    221    221            <           2604    41324    appointment doctor_id    DEFAULT     ~   ALTER TABLE ONLY public.appointment ALTER COLUMN doctor_id SET DEFAULT nextval('public.appointment_doctor_id_seq'::regclass);
 D   ALTER TABLE public.appointment ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    220    221    221            =           2604    41332    available_date available_id    DEFAULT     �   ALTER TABLE ONLY public.available_date ALTER COLUMN available_id SET DEFAULT nextval('public.available_date_available_id_seq'::regclass);
 J   ALTER TABLE public.available_date ALTER COLUMN available_id DROP DEFAULT;
       public          postgres    false    224    222    224            >           2604    41333    available_date doctor_id    DEFAULT     �   ALTER TABLE ONLY public.available_date ALTER COLUMN doctor_id SET DEFAULT nextval('public.available_date_doctor_id_seq'::regclass);
 G   ALTER TABLE public.available_date ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    41340    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    225    226    226            @           2604    41349    doctor doctor_id    DEFAULT     t   ALTER TABLE ONLY public.doctor ALTER COLUMN doctor_id SET DEFAULT nextval('public.doctor_doctor_id_seq'::regclass);
 ?   ALTER TABLE public.doctor ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    227    228    228            A           2604    41359    vaccine vaccine_id    DEFAULT     x   ALTER TABLE ONLY public.vaccine ALTER COLUMN vaccine_id SET DEFAULT nextval('public.vaccine_vaccine_id_seq'::regclass);
 A   ALTER TABLE public.vaccine ALTER COLUMN vaccine_id DROP DEFAULT;
       public          postgres    false    231    229    231            B           2604    41360    vaccine animal_id    DEFAULT     v   ALTER TABLE ONLY public.vaccine ALTER COLUMN animal_id SET DEFAULT nextval('public.vaccine_animal_id_seq'::regclass);
 @   ALTER TABLE public.vaccine ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    230    231    231            �          0    41307    animal 
   TABLE DATA           m   COPY public.animal (animal_id, breed, colour, date_of_birth, gender, name, species, customer_id) FROM stdin;
    public          postgres    false    217   �S       �          0    41319    appointment 
   TABLE DATA           R   COPY public.appointment (id, appointment_dates, animal_id, doctor_id) FROM stdin;
    public          postgres    false    221   �T       �          0    41329    available_date 
   TABLE DATA           R   COPY public.available_date (available_id, available_dates, doctor_id) FROM stdin;
    public          postgres    false    224   "U       �          0    41337    customer 
   TABLE DATA           Q   COPY public.customer (customer_id, address, city, mail, name, phone) FROM stdin;
    public          postgres    false    226   �U       �          0    41346    doctor 
   TABLE DATA           M   COPY public.doctor (doctor_id, address, city, mail, name, phone) FROM stdin;
    public          postgres    false    228   �V       �          0    41356    vaccine 
   TABLE DATA           s   COPY public.vaccine (vaccine_id, code, name, proteciton_finish_date, protection_start_date, animal_id) FROM stdin;
    public          postgres    false    231   �W                  0    0    animal_animal_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.animal_animal_id_seq', 22, true);
          public          postgres    false    215                       0    0    animal_customer_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.animal_customer_id_seq', 1, false);
          public          postgres    false    216                       0    0    appointment_animal_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.appointment_animal_id_seq', 1, false);
          public          postgres    false    219                       0    0    appointment_doctor_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.appointment_doctor_id_seq', 1, false);
          public          postgres    false    220            	           0    0    appointment_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.appointment_id_seq', 19, true);
          public          postgres    false    218            
           0    0    available_date_available_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.available_date_available_id_seq', 40, true);
          public          postgres    false    222                       0    0    available_date_doctor_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.available_date_doctor_id_seq', 1, false);
          public          postgres    false    223                       0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 11, true);
          public          postgres    false    225                       0    0    doctor_doctor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.doctor_doctor_id_seq', 14, true);
          public          postgres    false    227                       0    0    vaccine_animal_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.vaccine_animal_id_seq', 1, false);
          public          postgres    false    230                       0    0    vaccine_vaccine_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.vaccine_vaccine_id_seq', 35, true);
          public          postgres    false    229            D           2606    41315    animal animal_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (animal_id);
 <   ALTER TABLE ONLY public.animal DROP CONSTRAINT animal_pkey;
       public            postgres    false    217            F           2606    41326    appointment appointment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.appointment DROP CONSTRAINT appointment_pkey;
       public            postgres    false    221            H           2606    41335 "   available_date available_date_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT available_date_pkey PRIMARY KEY (available_id);
 L   ALTER TABLE ONLY public.available_date DROP CONSTRAINT available_date_pkey;
       public            postgres    false    224            J           2606    41344    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    226            L           2606    41353    doctor doctor_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (doctor_id);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            postgres    false    228            N           2606    41364    vaccine vaccine_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT vaccine_pkey PRIMARY KEY (vaccine_id);
 >   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT vaccine_pkey;
       public            postgres    false    231            P           2606    41370 '   appointment fk2kkeptdxfuextg5ch7xp3ytie    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fk2kkeptdxfuextg5ch7xp3ytie FOREIGN KEY (animal_id) REFERENCES public.animal(animal_id);
 Q   ALTER TABLE ONLY public.appointment DROP CONSTRAINT fk2kkeptdxfuextg5ch7xp3ytie;
       public          postgres    false    4676    221    217            O           2606    41365 "   animal fk6pvxm5gfjqxclb651be9unswe    FK CONSTRAINT     �   ALTER TABLE ONLY public.animal
    ADD CONSTRAINT fk6pvxm5gfjqxclb651be9unswe FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 L   ALTER TABLE ONLY public.animal DROP CONSTRAINT fk6pvxm5gfjqxclb651be9unswe;
       public          postgres    false    217    4682    226            R           2606    41380 *   available_date fkk0d6pu1wxarsoou0x2e1cc2on    FK CONSTRAINT     �   ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT fkk0d6pu1wxarsoou0x2e1cc2on FOREIGN KEY (doctor_id) REFERENCES public.doctor(doctor_id);
 T   ALTER TABLE ONLY public.available_date DROP CONSTRAINT fkk0d6pu1wxarsoou0x2e1cc2on;
       public          postgres    false    4684    228    224            S           2606    41385 #   vaccine fkne3kmh8y5pcyxwl4u2w9prw6j    FK CONSTRAINT     �   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT fkne3kmh8y5pcyxwl4u2w9prw6j FOREIGN KEY (animal_id) REFERENCES public.animal(animal_id);
 M   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT fkne3kmh8y5pcyxwl4u2w9prw6j;
       public          postgres    false    4676    231    217            Q           2606    41375 '   appointment fkoeb98n82eph1dx43v3y2bcmsl    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fkoeb98n82eph1dx43v3y2bcmsl FOREIGN KEY (doctor_id) REFERENCES public.doctor(doctor_id);
 Q   ALTER TABLE ONLY public.appointment DROP CONSTRAINT fkoeb98n82eph1dx43v3y2bcmsl;
       public          postgres    false    221    4684    228            �   �   x���AN�0E��Sp#�K�ޖ�]��*�a3%�b�N��P�4\���{�P6H�����|T�h�s���j;��H�I�`ƞCA����:@��pG�@e.���9��q%�ѪQ*����d\5��a�l�J�͙3	ͮ���mšM(-pɁ*�恿�T�5�w�fc�%��_���K5�R�~����`DD/�ޒ��o�ƘA� ���Ϗ�C�#�����թPzxȟ�~��ci��~����<�3�|)��s<qo      �   b   x�e��� �on
��Zp��C��JL�՗k��DM*��3v����H�eЦi�,�,O�6s+���d����c�as�K����͓#Ìsp�'W      �   {   x�]�A!��7�����c�lf/$UQ����@���h�.�e8��c5%p�4a���G��)V��w����ʕ�3y^5RIK'� ū���녋����(�b��][�0��q����;6�      �   /  x�U�KN�0���S��Eڸ�]_l*!�!!��4����(q�,H��ٕ���J:�ߟ�O�LQ����-.}��[8�~Wjc�ӳ�X�:�;e����e0��A)u4�hC��xG/8*�n����������"�~saU�?IU����8ז������9q����^x�.�Y�O�A��1D�N8���z�d����$�R���MI8��Iwڑ��3���]Xz�ǽ�s:�	'��߯M�ƜӐ3Ҧ�����m2� .�j����Ǯ8�ʦGi΅nh��]�:�x�B�?S	��      �   �   x�e��N�0���S�Έ�?Y����i���E-��fS������H��z������3P����ȶ�n��=jcF���eM]�5��e���I,��7㝷@)u�{��!I3|Ԗq�9�n�;��W6d+k2ZV�h7���Dn��J(�x�'�������oʱ����A�����M<}7��j.�y\��(mM��r�\_O@�
g�e�Py�&��ORS[��$\��%�^o���P��k!��B� 0�~=      �   �   x���1�@�z�\`���"P�J���1��
b�e<w�{�(Zh%����M6�3D`﷾3 $ZQ�4��(b� ��X��Wӳ�;�x��W�EiH9�d�P����{Ҧ�ƚ(��Cd�2�Dv�/奨��i%�YxF�hct�o��B�83��Su.���˦��F1}F\�%�&��(��G��2��s1��     