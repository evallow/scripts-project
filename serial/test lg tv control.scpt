FasdUAS 1.101.10   ��   ��    k             l      ��  ��    @ : EJV - simple tests to check functionality of LG TV codes      � 	 	 t   E J V   -   s i m p l e   t e s t s   t o   c h e c k   f u n c t i o n a l i t y   o f   L G   T V   c o d e s     
  
 l     ��������  ��  ��        l     ��  ��    , & set serialPortList to serialport list     �   L   s e t   s e r i a l P o r t L i s t   t o   s e r i a l p o r t   l i s t      l     ��������  ��  ��        l     ��  ��    %   display dialog serialPortList     �   >     d i s p l a y   d i a l o g   s e r i a l P o r t L i s t      l     ��������  ��  ��        l     ��  ��    9 3 do shell script "stty -hupcl < /dev/cu.KeySerial1"     �   f   d o   s h e l l   s c r i p t   " s t t y   - h u p c l   <   / d e v / c u . K e y S e r i a l 1 "       l     !���� ! I    �� "��
�� .sysoexecTEXT���     TEXT " m      # # � $ $ > s t t y   - h u p c l   <   / d e v / c u . u s b s e r i a l��  ��  ��      % & % l     ��������  ��  ��   &  ' ( ' l    )���� ) r     * + * I   �� ,��
�� .sysontocTEXT       shor , l    -���� - m    ���� ��  ��  ��   + o      ���� 0 crchar CRchar��  ��   (  . / . l    0���� 0 r     1 2 1 b     3 4 3 m     5 5 � 6 6  k a   0 1   0 1 4 o    ���� 0 crchar CRchar 2 o      ���� 0 tvon tvON��  ��   /  7 8 7 l    9���� 9 r     : ; : b     < = < m     > > � ? ?  k a   0 1   0 0 = o    ���� 0 crchar CRchar ; o      ���� 0 tvoff tvOFF��  ��   8  @ A @ l    B���� B r     C D C b     E F E m     G G � H H  k b   0 1   0 8 F o    ���� 0 crchar CRchar D o      ���� 0 tvtivo tvTivo��  ��   A  I J I l    % K���� K r     % L M L b     # N O N m     ! P P � Q Q  k b   0 1   0 1 O o   ! "���� 0 crchar CRchar M o      ���� 0 tvcable tvCable��  ��   J  R S R l  & + T���� T r   & + U V U b   & ) W X W m   & ' Y Y � Z Z  k b   0 1   0 2 X o   ' (���� 0 crchar CRchar V o      ���� 0 tvav1 tvAV1��  ��   S  [ \ [ l  , 3 ]���� ] r   , 3 ^ _ ^ b   , / ` a ` m   , - b b � c c  k b   0 1   0 3 a o   - .���� 0 crchar CRchar _ o      ���� 0 tvav2 tvAV2��  ��   \  d e d l  4 = f���� f r   4 = g h g b   4 9 i j i m   4 7 k k � l l  k b   0 1   0 4 j o   7 8���� 0 crchar CRchar h o      ���� 0 tvcomponent1 tvComponent1��  ��   e  m n m l  > G o���� o r   > G p q p b   > C r s r m   > A t t � u u  k b   0 1   0 5 s o   A B���� 0 crchar CRchar q o      ���� 0 tvcomponent2 tvComponent2��  ��   n  v w v l  H Q x���� x r   H Q y z y b   H M { | { m   H K } } � ~ ~  k b   0 1   0 7 | o   K L���� 0 crchar CRchar z o      ���� 0 tvrgbpc tvRGBPC��  ��   w   �  l  R [ ����� � r   R [ � � � b   R W � � � m   R U � � � � �  x b   0 1   9 0 � o   U V���� 0 crchar CRchar � o      ���� 0 tvhdmi1 tvHDMI1��  ��   �  � � � l  \ e ����� � r   \ e � � � b   \ a � � � m   \ _ � � � � �  x b   0 1   9 1 � o   _ `���� 0 crchar CRchar � o      ���� 0 tvhdmi2 tvHDMI2��  ��   �  � � � l  f o ����� � r   f o � � � b   f k � � � m   f i � � � � �  x b   0 1   9 2 � o   i j���� 0 crchar CRchar � o      ���� 0 tvhdmi3 tvHDMI3��  ��   �  � � � l     ��������  ��  ��   �  � � � l  p y ����� � r   p y � � � b   p u � � � m   p s � � � � �  k e   0 1   0 0 � o   s t���� 0 crchar CRchar � o      ���� 0 tvmute tvMute��  ��   �  � � � l  z � ����� � r   z � � � � b   z  � � � m   z } � � � � �  k e   0 1   0 1 � o   } ~���� 0 crchar CRchar � o      ���� 0 tvunmute tvUnMute��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � b   � � � � � m   � � � � � � �  k f   0 1   0 0 � o   � ����� 0 crchar CRchar � o      ���� 0 
tvvolstep0 
tvVolStep0��  ��   �  � � � l  � � ����� � r   � � � � � b   � � � � � m   � � � � � � �  k f   0 1   1 9 � o   � ����� 0 crchar CRchar � o      ���� 0 tvvolstep25 tvVolStep25��  ��   �  � � � l  � � ����� � r   � � � � � b   � � � � � m   � � � � � � �  k f   0 1   0 1 � o   � ����� 0 crchar CRchar � o      ���� 0 tvvolstep01 tvVolStep01��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � I  � ��� � �
�� .SPA_oSPAlong        TEXT � m   � � � � � � � " / d e v / c u . u s b s e r i a l � �� � �
�� 
SPbr � m   � �����%� � �� ���
�� 
SPhs � m   � �����  ��   � o      ���� 0 portref portRef��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � ����� � Z   � � ��� � � =  � � � � � o   � ����� 0 portref portRef � m   � ������� � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � � B   c o u l d   n o t   o p e n   c o n n e c t i o n   t o   T V  ��  ��   � k   � � �  � � � l  � ���~�}�  �~  �}   �  � � � I  � ��| � �
�| .SPA_wSPAnull���     TEXT � o   � ��{�{ 0 tvon tvON � �z ��y
�z 
SPpt � o   � ��x�x 0 portref portRef�y   �  � � � I  � ��w ��v
�w .sysodelanull��� ��� nmbr � m   � ��u�u �v   �  � � � l  � ��t � ��t   � - '	serialport write "kf 01 10" to portRef    � � � � N 	 s e r i a l p o r t   w r i t e   " k f   0 1   1 0 "   t o   p o r t R e f �  � � � I  � ��s � �
�s .SPA_wSPAnull���     TEXT � o   � ��r�r 0 tvhdmi3 tvHDMI3 � �q ��p
�q 
SPpt � o   � ��o�o 0 portref portRef�p   �  � � � I  � ��n ��m
�n .sysodelanull��� ��� nmbr � m   � ��l�l �m   �    l   � ��k�k   � �		delay 1	serialport write tvON to portRef	delay 1	serialport write tvHDMI1 to portRef	delay 2	serialport write tvHDMI2 to portRef	delay 2	serialport write tvHDMI3 to portRef    �n 	  	 d e l a y   1  	 s e r i a l p o r t   w r i t e   t v O N   t o   p o r t R e f  	 d e l a y   1  	 s e r i a l p o r t   w r i t e   t v H D M I 1   t o   p o r t R e f  	 d e l a y   2  	 s e r i a l p o r t   w r i t e   t v H D M I 2   t o   p o r t R e f  	 d e l a y   2  	 s e r i a l p o r t   w r i t e   t v H D M I 3   t o   p o r t R e f   l  � ��j�i�h�j  �i  �h    l  � ��g	
�g  	    Never gets anything back?   
 � 4   N e v e r   g e t s   a n y t h i n g   b a c k ?  Z   ��f�e =  � � l  � ��d�c I  � ��b�a�`
�b .SPA_aSPAlong        long�a  �`  �d  �c   m   � ��_�_�� k   �  r   � I  ��^�]�\
�^ .SPA_rSPATEXT        long�]  �\   o      �[�[ 0 newreply newReply �Z I �Y�X
�Y .sysodlogaskr        TEXT o  �W�W 0 newreply newReply�X  �Z  �f  �e    l �V�U�T�V  �U  �T    I �S�R
�S .SPA_cSPAnull���     long o  �Q�Q 0 portref portRef�R     l �P�O�N�P  �O  �N    !�M! l �L"#�L  "  	display dialog " done "   # �$$ 0 	 d i s p l a y   d i a l o g   "   d o n e   "�M  ��  ��   � %&% l     �K�J�I�K  �J  �I  & '(' l     �H�G�F�H  �G  �F  ( )*) l     �E�D�C�E  �D  �C  * +,+ l     �B�A�@�B  �A  �@  , -�?- l      �>./�>  .��
	serialport write xstr to portRef	delay 1	-- go off hook	set xstr to "ATH1" & return	serialport write xstr to portRef	delay 2	-- dial		set thephonenum to "123 4567"	set xstr to "ATDT" & thephonenum & return	serialport write xstr to portRef		display dialog "Dialing " & (thephonenum) & return & �		"Pick up the receiver, then click OK to hang up the modem." buttons {"OK"} default button 1	--	hang up	set xstr to "ATH" & return	serialport write xstr to portRef
	   / �00� 
 	 s e r i a l p o r t   w r i t e   x s t r   t o   p o r t R e f  	 d e l a y   1  	 - -   g o   o f f   h o o k  	 s e t   x s t r   t o   " A T H 1 "   &   r e t u r n  	 s e r i a l p o r t   w r i t e   x s t r   t o   p o r t R e f  	 d e l a y   2  	 - -   d i a l 	  	 s e t   t h e p h o n e n u m   t o   " 1 2 3   4 5 6 7 "  	 s e t   x s t r   t o   " A T D T "   &   t h e p h o n e n u m   &   r e t u r n  	 s e r i a l p o r t   w r i t e   x s t r   t o   p o r t R e f  	  	 d i s p l a y   d i a l o g   " D i a l i n g   "   &   ( t h e p h o n e n u m )   &   r e t u r n   &   �  	 	 " P i c k   u p   t h e   r e c e i v e r ,   t h e n   c l i c k   O K   t o   h a n g   u p   t h e   m o d e m . "   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1  	 - - 	 h a n g   u p  	 s e t   x s t r   t o   " A T H "   &   r e t u r n  	 s e r i a l p o r t   w r i t e   x s t r   t o   p o r t R e f 
 	�?       �=12�=  1 �<
�< .aevtoappnull  �   � ****2 �;3�:�945�8
�; .aevtoappnull  �   � ****3 k    66  77  '88  .99  7::  @;;  I<<  R==  [>>  d??  m@@  vAA  BB  �CC  �DD  �EE  �FF  �GG  �HH  �II  �JJ  ��7�7  �:  �9  4  5 7 #�6�5�4�3 5�2 >�1 G�0 P�/ Y�. b�- k�, t�+ }�* ��) ��( ��' ��& ��% ��$ ��# ��" ��!� ���� ���������
�6 .sysoexecTEXT���     TEXT�5 
�4 .sysontocTEXT       shor�3 0 crchar CRchar�2 0 tvon tvON�1 0 tvoff tvOFF�0 0 tvtivo tvTivo�/ 0 tvcable tvCable�. 0 tvav1 tvAV1�- 0 tvav2 tvAV2�, 0 tvcomponent1 tvComponent1�+ 0 tvcomponent2 tvComponent2�* 0 tvrgbpc tvRGBPC�) 0 tvhdmi1 tvHDMI1�( 0 tvhdmi2 tvHDMI2�' 0 tvhdmi3 tvHDMI3�& 0 tvmute tvMute�% 0 tvunmute tvUnMute�$ 0 
tvvolstep0 
tvVolStep0�# 0 tvvolstep25 tvVolStep25�" 0 tvvolstep01 tvVolStep01
�! 
SPbr� %�
� 
SPhs� 
� .SPA_oSPAlong        TEXT� 0 portref portRef
� .sysodlogaskr        TEXT
� 
SPpt
� .SPA_wSPAnull���     TEXT
� .sysodelanull��� ��� nmbr
� .SPA_aSPAlong        long
� .SPA_rSPATEXT        long� 0 newreply newReply
� .SPA_cSPAnull���     long�8�j O�j E�O��%E�O��%E�O��%E�O��%E�O��%E�O��%E` Oa �%E` Oa �%E` Oa �%E` Oa �%E` Oa �%E` Oa �%E` Oa �%E` Oa �%E`  Oa !�%E` "Oa #�%E` $Oa %�%E` &Oa 'a (a )a *ja + ,E` -O_ -i  a .j /Y S�a 0_ -l 1Oa +j 2O_ a 0_ -l 1Olj 2O*j 3i  *j 4E` 5O_ 5j /Y hO_ -j 6OP ascr  ��ޭ