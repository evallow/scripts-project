FasdUAS 1.101.10   ��   ��    k             l      ��  ��    @ : EJV - simple tests to check functionality of LG TV codes      � 	 	 t   E J V   -   s i m p l e   t e s t s   t o   c h e c k   f u n c t i o n a l i t y   o f   L G   T V   c o d e s     
  
 l     ��������  ��  ��        l     ��  ��    , & set serialPortList to serialport list     �   L   s e t   s e r i a l P o r t L i s t   t o   s e r i a l p o r t   l i s t      l     ��������  ��  ��        l     ��  ��    %   display dialog serialPortList     �   >     d i s p l a y   d i a l o g   s e r i a l P o r t L i s t      l     ��������  ��  ��        l     ����  I    �� ��
�� .sysoexecTEXT���     TEXT  m        �   @ s t t y   - h u p c l   <   / d e v / c u . K e y S e r i a l 1��  ��  ��       !   l     ��������  ��  ��   !  " # " l    $���� $ r     % & % I   �� '��
�� .sysontocTEXT       shor ' l    (���� ( m    ���� ��  ��  ��   & o      ���� 0 crchar CRchar��  ��   #  ) * ) l    +���� + r     , - , b     . / . m     0 0 � 1 1 
 P W O F F / o    ���� 0 crchar CRchar - o      ���� 0 denonon DenonON��  ��   *  2 3 2 l     �� 4 5��   4   set tvTivo to tvHDMI1    5 � 6 6 ,   s e t   t v T i v o   t o   t v H D M I 1 3  7 8 7 l     ��������  ��  ��   8  9 : 9 l    ;���� ; r     < = < I   �� > ?
�� .SPA_oSPAlong        TEXT > m     @ @ � A A $ / d e v / c u . K e y S e r i a l 1 ? �� B C
�� 
SPbr B m    ����%� C �� D��
�� 
SPhs D m    ����  ��   = o      ���� 0 portref portRef��  ��   :  E F E l     ��������  ��  ��   F  G H G l    e I���� I Z     e J K�� L J =    # M N M o     !���� 0 portref portRef N m   ! "������ K I  & +�� O��
�� .sysodlogaskr        TEXT O m   & ' P P � Q Q B   c o u l d   n o t   o p e n   c o n n e c t i o n   t o   T V  ��  ��   L k   . e R R  S T S l  . .��������  ��  ��   T  U V U I  . 7�� W X
�� .SPA_wSPAnull���     TEXT W o   . /���� 0 denonon DenonON X �� Y��
�� 
SPpt Y o   2 3���� 0 portref portRef��   V  Z [ Z I  8 =�� \��
�� .sysodelanull��� ��� nmbr \ m   8 9���� ��   [  ] ^ ] l  > >�� _ `��   _ - '	serialport write "kf 01 10" to portRef    ` � a a N 	 s e r i a l p o r t   w r i t e   " k f   0 1   1 0 "   t o   p o r t R e f ^  b c b l   > >�� d e��   d � �		delay 1	serialport write tvON to portRef	delay 1	serialport write tvHDMI1 to portRef	delay 2	serialport write tvHDMI2 to portRef	delay 2	serialport write tvHDMI3 to portRef    e � f fn 	  	 d e l a y   1  	 s e r i a l p o r t   w r i t e   t v O N   t o   p o r t R e f  	 d e l a y   1  	 s e r i a l p o r t   w r i t e   t v H D M I 1   t o   p o r t R e f  	 d e l a y   2  	 s e r i a l p o r t   w r i t e   t v H D M I 2   t o   p o r t R e f  	 d e l a y   2  	 s e r i a l p o r t   w r i t e   t v H D M I 3   t o   p o r t R e f  c  g h g l  > >��������  ��  ��   h  i j i l  > >�� k l��   k    Never gets anything back?    l � m m 4   N e v e r   g e t s   a n y t h i n g   b a c k ? j  n o n Z   > ] p q���� p =  > E r s r l  > C t���� t I  > C������
�� .SPA_aSPAlong        long��  ��  ��  ��   s m   C D������ q k   H Y u u  v w v r   H Q x y x I  H M������
�� .SPA_rSPATEXT        long��  ��   y o      ���� 0 newreply newReply w  z�� z I  R Y�� {��
�� .sysodlogaskr        TEXT { o   R U���� 0 newreply newReply��  ��  ��  ��   o  | } | l  ^ ^��������  ��  ��   }  ~  ~ I  ^ c�� ���
�� .SPA_cSPAnull���     long � o   ^ _���� 0 portref portRef��     � � � l  d d��������  ��  ��   �  ��� � l  d d�� � ���   �  	display dialog " done "    � � � � 0 	 d i s p l a y   d i a l o g   "   d o n e   "��  ��  ��   H  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l      �� � ���   ���
	serialport write xstr to portRef	delay 1	-- go off hook	set xstr to "ATH1" & return	serialport write xstr to portRef	delay 2	-- dial		set thephonenum to "123 4567"	set xstr to "ATDT" & thephonenum & return	serialport write xstr to portRef		display dialog "Dialing " & (thephonenum) & return & �		"Pick up the receiver, then click OK to hang up the modem." buttons {"OK"} default button 1	--	hang up	set xstr to "ATH" & return	serialport write xstr to portRef
	    � � � �� 
 	 s e r i a l p o r t   w r i t e   x s t r   t o   p o r t R e f  	 d e l a y   1  	 - -   g o   o f f   h o o k  	 s e t   x s t r   t o   " A T H 1 "   &   r e t u r n  	 s e r i a l p o r t   w r i t e   x s t r   t o   p o r t R e f  	 d e l a y   2  	 - -   d i a l 	  	 s e t   t h e p h o n e n u m   t o   " 1 2 3   4 5 6 7 "  	 s e t   x s t r   t o   " A T D T "   &   t h e p h o n e n u m   &   r e t u r n  	 s e r i a l p o r t   w r i t e   x s t r   t o   p o r t R e f  	  	 d i s p l a y   d i a l o g   " D i a l i n g   "   &   ( t h e p h o n e n u m )   &   r e t u r n   &   �  	 	 " P i c k   u p   t h e   r e c e i v e r ,   t h e n   c l i c k   O K   t o   h a n g   u p   t h e   m o d e m . "   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1  	 - - 	 h a n g   u p  	 s e t   x s t r   t o   " A T H "   &   r e t u r n  	 s e r i a l p o r t   w r i t e   x s t r   t o   p o r t R e f 
 	��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     e � �   � �  " � �  ) � �  9 � �  G����  ��  ��   �   �  �������� 0�� @��������~�} P�|�{�z�y�x�w�v�u
�� .sysoexecTEXT���     TEXT�� 
�� .sysontocTEXT       shor�� 0 crchar CRchar�� 0 denonon DenonON
�� 
SPbr��%�
�� 
SPhs� 
�~ .SPA_oSPAlong        TEXT�} 0 portref portRef
�| .sysodlogaskr        TEXT
�{ 
SPpt
�z .SPA_wSPAnull���     TEXT
�y .sysodelanull��� ��� nmbr
�x .SPA_aSPAlong        long
�w .SPA_rSPATEXT        long�v 0 newreply newReply
�u .SPA_cSPAnull���     long�� f�j O�j E�O��%E�O����j� E�O�i  
�j Y 9�a �l O�j O*j i  *j E` O_ j Y hO�j OPascr  ��ޭ