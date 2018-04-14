PGDMP     1    9                v            List_db    10.3    10.1                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       1262    16393    List_db    DATABASE     �   CREATE DATABASE "List_db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "List_db";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16406    Asset_Categories    TABLE     �  CREATE TABLE "Asset_Categories" (
    id integer NOT NULL,
    name_c "char" NOT NULL,
    description_c "char",
    capacity_c integer,
    "locationID_c" character varying,
    remarks_c "char",
    name_subc "char",
    description_subc "char",
    capacity_subc integer,
    "locationID_subc" character varying
);
ALTER TABLE ONLY "Asset_Categories" ALTER COLUMN id SET (n_distinct=1);
 &   DROP TABLE public."Asset_Categories";
       public         postgres    false    3            �            1259    16403    Asset_Location    TABLE     4  CREATE TABLE "Asset_Location" (
    id integer NOT NULL,
    name_current "char",
    code_current integer,
    address_current "char",
    "phoneNo_current" integer,
    "faxNo_current" integer,
    name_l "char",
    code_l integer,
    address_l integer,
    "phoneNo_l" integer,
    "faxNo_l" integer
);
 $   DROP TABLE public."Asset_Location";
       public         postgres    false    3            �            1259    16394    Assets    TABLE        CREATE TABLE "Assets" (
    name "char",
    description "char",
    id integer NOT NULL,
    code integer,
    type "char"
);
    DROP TABLE public."Assets";
       public         postgres    false    3            �            1259    16400    User_Managements    TABLE     �   CREATE TABLE "User_Managements" (
    id integer NOT NULL,
    name "char",
    "position" "char",
    expertise "char",
    department "char"
);
 &   DROP TABLE public."User_Managements";
       public         postgres    false    3            �
          0    16406    Asset_Categories 
   TABLE DATA               �   COPY "Asset_Categories" (id, name_c, description_c, capacity_c, "locationID_c", remarks_c, name_subc, description_subc, capacity_subc, "locationID_subc") FROM stdin;
    public       postgres    false    199   )       �
          0    16403    Asset_Location 
   TABLE DATA               �   COPY "Asset_Location" (id, name_current, code_current, address_current, "phoneNo_current", "faxNo_current", name_l, code_l, address_l, "phoneNo_l", "faxNo_l") FROM stdin;
    public       postgres    false    198   j       �
          0    16394    Assets 
   TABLE DATA               >   COPY "Assets" (name, description, id, code, type) FROM stdin;
    public       postgres    false    196   �       �
          0    16400    User_Managements 
   TABLE DATA               R   COPY "User_Managements" (id, name, "position", expertise, department) FROM stdin;
    public       postgres    false    197   �       �
           2606    16413 &   Asset_Categories Asset_Categories_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Asset_Categories"
    ADD CONSTRAINT "Asset_Categories_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Asset_Categories" DROP CONSTRAINT "Asset_Categories_pkey";
       public         postgres    false    199            ~
           2606    16415 "   Asset_Location Asset_Location_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Asset_Location"
    ADD CONSTRAINT "Asset_Location_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Asset_Location" DROP CONSTRAINT "Asset_Location_pkey";
       public         postgres    false    198            z
           2606    16417    Assets Assets_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY "Assets"
    ADD CONSTRAINT "Assets_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Assets" DROP CONSTRAINT "Assets_pkey";
       public         postgres    false    196            |
           2606    16419 &   User_Managements User_Managements_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "User_Managements"
    ADD CONSTRAINT "User_Managements_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."User_Managements" DROP CONSTRAINT "User_Managements_pkey";
       public         postgres    false    197            �
   1   x�3�L�,�442�t ;�".#�" ����A�R8�#C�=... (�	�      �
   <   x�3�,�442�,�&�f�*�*�e�Y�ild�Y�infjbAH�(P9�0W� ���      �
   !   x�+�L�4�442��*���4��b���� T�5      �
      x�3�,�����L�2��A�=... C�     