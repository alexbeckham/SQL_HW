PGDMP          :                y            FinTech_sql_hw    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16489    FinTech_sql_hw    DATABASE     [   CREATE DATABASE "FinTech_sql_hw" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
     DROP DATABASE "FinTech_sql_hw";
                postgres    false            �            1259    16490 
   Cardholder    TABLE     h   CREATE TABLE public."Cardholder" (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
     DROP TABLE public."Cardholder";
       public         heap    postgres    false            �            1259    16495    Credit_Card    TABLE     s   CREATE TABLE public."Credit_Card" (
    card character varying(20) NOT NULL,
    cardholder_id integer NOT NULL
);
 !   DROP TABLE public."Credit_Card";
       public         heap    postgres    false            �            1259    16500    Merchant    TABLE     �   CREATE TABLE public."Merchant" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    id_merchant_category integer NOT NULL
);
    DROP TABLE public."Merchant";
       public         heap    postgres    false            �            1259    16505    Merchant_Category    TABLE     o   CREATE TABLE public."Merchant_Category" (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
 '   DROP TABLE public."Merchant_Category";
       public         heap    postgres    false            �            1259    16510    Transaction    TABLE     �   CREATE TABLE public."Transaction" (
    id integer NOT NULL,
    date timestamp without time zone NOT NULL,
    amount integer NOT NULL,
    card character varying(20) NOT NULL,
    id_merchant integer NOT NULL
);
 !   DROP TABLE public."Transaction";
       public         heap    postgres    false            :           2606    16494    Cardholder pk_Cardholder 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Cardholder"
    ADD CONSTRAINT "pk_Cardholder" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Cardholder" DROP CONSTRAINT "pk_Cardholder";
       public            postgres    false    200            <           2606    16499    Credit_Card pk_Credit_Card 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Credit_Card"
    ADD CONSTRAINT "pk_Credit_Card" PRIMARY KEY (card);
 H   ALTER TABLE ONLY public."Credit_Card" DROP CONSTRAINT "pk_Credit_Card";
       public            postgres    false    201            >           2606    16504    Merchant pk_Merchant 
   CONSTRAINT     V   ALTER TABLE ONLY public."Merchant"
    ADD CONSTRAINT "pk_Merchant" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Merchant" DROP CONSTRAINT "pk_Merchant";
       public            postgres    false    202            @           2606    16509 &   Merchant_Category pk_Merchant_Category 
   CONSTRAINT     h   ALTER TABLE ONLY public."Merchant_Category"
    ADD CONSTRAINT "pk_Merchant_Category" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Merchant_Category" DROP CONSTRAINT "pk_Merchant_Category";
       public            postgres    false    203            B           2606    16514    Transaction pk_Transaction 
   CONSTRAINT     \   ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT "pk_Transaction" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Transaction" DROP CONSTRAINT "pk_Transaction";
       public            postgres    false    204            C           2606    16515 (   Credit_Card fk_Credit_Card_cardholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Credit_Card"
    ADD CONSTRAINT "fk_Credit_Card_cardholder_id" FOREIGN KEY (cardholder_id) REFERENCES public."Cardholder"(id);
 V   ALTER TABLE ONLY public."Credit_Card" DROP CONSTRAINT "fk_Credit_Card_cardholder_id";
       public          postgres    false    3130    201    200            D           2606    16520 )   Merchant fk_Merchant_id_merchant_category    FK CONSTRAINT     �   ALTER TABLE ONLY public."Merchant"
    ADD CONSTRAINT "fk_Merchant_id_merchant_category" FOREIGN KEY (id_merchant_category) REFERENCES public."Merchant_Category"(id);
 W   ALTER TABLE ONLY public."Merchant" DROP CONSTRAINT "fk_Merchant_id_merchant_category";
       public          postgres    false    203    3136    202            E           2606    16525    Transaction fk_Transaction_card    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT "fk_Transaction_card" FOREIGN KEY (card) REFERENCES public."Credit_Card"(card);
 M   ALTER TABLE ONLY public."Transaction" DROP CONSTRAINT "fk_Transaction_card";
       public          postgres    false    204    201    3132            F           2606    16530 &   Transaction fk_Transaction_id_merchant    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT "fk_Transaction_id_merchant" FOREIGN KEY (id_merchant) REFERENCES public."Merchant"(id);
 T   ALTER TABLE ONLY public."Transaction" DROP CONSTRAINT "fk_Transaction_id_merchant";
       public          postgres    false    204    3134    202           