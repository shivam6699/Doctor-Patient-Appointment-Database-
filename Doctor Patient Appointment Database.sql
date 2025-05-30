PGDMP  ,    ;                }         $   Doctor patient Appointments Database    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    24854 $   Doctor patient Appointments Database    DATABASE     �   CREATE DATABASE "Doctor patient Appointments Database" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
 6   DROP DATABASE "Doctor patient Appointments Database";
                     postgres    false            �            1259    24877    appointments    TABLE     �   CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    doctor_id integer,
    patient_id integer,
    appointment_date date,
    reason text,
    status character varying(20)
);
     DROP TABLE public.appointments;
       public         heap r       postgres    false            �            1259    24855    departments    TABLE     t   CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(100)
);
    DROP TABLE public.departments;
       public         heap r       postgres    false            �            1259    24865    doctors    TABLE       CREATE TABLE public.doctors (
    doctor_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    email character varying(100),
    phone character varying(20),
    department_id integer,
    specialty_id integer,
    joining_date date
);
    DROP TABLE public.doctors;
       public         heap r       postgres    false            �            1259    24870    patients    TABLE       CREATE TABLE public.patients (
    patient_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    email character varying(100),
    phone character varying(20),
    date_of_birth date,
    gender character varying(10),
    address text
);
    DROP TABLE public.patients;
       public         heap r       postgres    false            �            1259    24884    payments    TABLE     �   CREATE TABLE public.payments (
    payment_id integer NOT NULL,
    appointment_id integer,
    payment_date date,
    payment_amount numeric(10,2),
    payment_method character varying(20)
);
    DROP TABLE public.payments;
       public         heap r       postgres    false            �            1259    24860    specialties    TABLE     r   CREATE TABLE public.specialties (
    specialty_id integer NOT NULL,
    specialty_name character varying(100)
);
    DROP TABLE public.specialties;
       public         heap r       postgres    false            �          0    24877    appointments 
   TABLE DATA           o   COPY public.appointments (appointment_id, doctor_id, patient_id, appointment_date, reason, status) FROM stdin;
    public               postgres    false    221   �       �          0    24855    departments 
   TABLE DATA           E   COPY public.departments (department_id, department_name) FROM stdin;
    public               postgres    false    217   �       �          0    24865    doctors 
   TABLE DATA           |   COPY public.doctors (doctor_id, first_name, last_name, email, phone, department_id, specialty_id, joining_date) FROM stdin;
    public               postgres    false    219   0       �          0    24870    patients 
   TABLE DATA           s   COPY public.patients (patient_id, first_name, last_name, email, phone, date_of_birth, gender, address) FROM stdin;
    public               postgres    false    220   �       �          0    24884    payments 
   TABLE DATA           l   COPY public.payments (payment_id, appointment_id, payment_date, payment_amount, payment_method) FROM stdin;
    public               postgres    false    222   !       �          0    24860    specialties 
   TABLE DATA           C   COPY public.specialties (specialty_id, specialty_name) FROM stdin;
    public               postgres    false    218   �       =           2606    24883    appointments appointments_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public                 postgres    false    221            5           2606    24859    departments departments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public                 postgres    false    217            9           2606    24869    doctors doctors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctor_id);
 >   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_pkey;
       public                 postgres    false    219            ;           2606    24876    patients patients_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (patient_id);
 @   ALTER TABLE ONLY public.patients DROP CONSTRAINT patients_pkey;
       public                 postgres    false    220            ?           2606    24888    payments payments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public                 postgres    false    222            7           2606    24864    specialties specialties_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.specialties
    ADD CONSTRAINT specialties_pkey PRIMARY KEY (specialty_id);
 F   ALTER TABLE ONLY public.specialties DROP CONSTRAINT specialties_pkey;
       public                 postgres    false    218            �   �   x�]��
�0�'_����c)\����^h�ƒ�b�ޤ�1Ȅ��d�I�Ē�i�y'([�T(_Ͼ#CK1�Z)�$Q���n��Y'��;.��?���'z�F)TM��px�@���k1�Ae����}��,�c샡vpxs�[����pxa���H2S�8��*�z����~�$ƲV��Z*�'.�a����c��?c�      �   o   x�3�tN,J����O��2��K--���9��J2�RS2���L8��Ē"ǔ�%�(7��Ќ�?/�4�J��e�P\���S�e��X\R���W�
5�Ѐ3ʌ���� `�-V      �   C  x�uR�n!���8��EI�X�R�H���H��ug��|}v9�h(f
F���`��	�)�G� ї1/�pwQ�r���Z��$(��Zr���L�.������řx� ?��4\kf�N��^�N�6%~HUL4�P\�\Y����n,�,y����l�bb�A`��+ōd�q��F8��}�s�	4������#8�
���ZT��B�����0������a����HO]1j�C�>R��c����-��
K�D�b�A�����c�]����b/ı����f0tZ2��]JX��W?�i$����� t^��a麾c�a�g      �   �  x�m��n�0E�����C�]�wZ�A�nh��S�A+	�����pq(�^)��S�w8�R!�EL�˷�R}�K�Mc['Ay/��\Y��C���-C�jZh�*kx����ZlO8�R��,��kK�Wv����dxަ)BO,>��LM�s��.�\�ٯ�#W7a�e)5�K�@4�1T�in�9��
��s$��ۏ��r���Y�s���8��sI�چ=��iᮆq���8�+��s2K�4����H�s�:��J.�5�����l�q�����-W�GR�c�}}�O�:x�c=ª/�[bq ��9
��Lێ]��o�������1!�ᜩ#����]��ֳ�s�$V���)�X�Q	�l�j��W�9���=�}>/�W,�$���      �   �   x�e�;�0D��Sp�Dk�ן:w��H$hR8p��H�f�ތ����ׁ���<2c�ۃ<Đ �P[���2�6�@�P�׸�ۻ���P@2�N�b� ���U+'DCQ�rF6#��8�{���~+����D��7B�      �   o   x�3�tN,J����O��2��K--���9��J2�RS2���L8��Ē"ǔ�%�(7��Ќ�?/�4�J��e�P\���S�e��X\R���W�
5�Ѐ3ʌ���� `�-V     