FasdUAS 1.101.10   ��   ��    k             l     �� ��    3 - Sample stand-alone script for Serial Bridge.       	  l     ������  ��   	  
  
 l     �� ��    T N This script illustrates how to send commands to Serial Bridge to: send serial         l     �� ��    8 2 data, wait for serial data, and read serial data.         l     ������  ��        l     �� ��    N H This is an independent script and shows how raw commands can be used to         l     �� ��    P J control an open connection. You can also modify a connection's attachment         l     �� ��    P J script, which Serial Bridge automatically launches when the connection is         l     �� ��    T N opened, by pressing the "Edit Script..." button inside the connection window.         l     ��  ��     S M Depending on your application you might need an independent script like this      ! " ! l     �� #��   # N H example, a Serial Bridge managed attachment connection script, or both.    "  $ % $ l     ������  ��   %  & ' & l     �� (��   ( M G The property conncectionName must be set to the name of the connection    '  ) * ) l     �� +��   + N H you want to control. By default, Serial Bridge calls the first one "New    *  , - , l     �� .��   . N H Connection". The connection name is always the folder name in which the    -  / 0 / l     �� 1��   1 &   database settings file resides.    0  2 3 2 l     ������  ��   3  4 5 4 l     �� 6��   6 , & 2005-03-29 Original. (Matt Bendiksen)    5  7 8 7 l     �� 9��   9 X R 2005-04-01 Improved termination of concurrent connection events. (Matt Bendiksen)    8  : ; : l     ������  ��   ;  < = < l     �� >��   >  	---------    =  ? @ ? l     �� A��   A X R Change "New Connection" below to match the serial connection you want to control:    @  B C B j     �� D��  0 connectionname connectionName D m      E E  New Connection    C  F G F l     ������  ��   G  H I H l     �� J��   J  	---------    I  K L K l     �� M��   M       L  N O N l    � P�� P O     � Q R Q k    � S S  T U T l   �� V��   V Q K---------------------------------------------------------------------------    U  W X W l    �� Y��   Y � � To send data use the "send to source" verb. You can either send
				 * a single byte, multiple bytes as a list, or a string. To send a single byte:
				     X  Z [ Z I   �� \ ]
�� .SRBRSdDtnull���    TEXT \ o    	����  0 connectionname connectionName ] �� ^��
�� 
SnBa ^ m   
 ���� ��   [  _ ` _ l   ������  ��   `  a b a l    �� c��   c ' ! or to send multiple bytes:
				     b  d e d I   "�� f g
�� .SRBRSdDtnull���    TEXT f o    ����  0 connectionname connectionName g �� h��
�� 
SnBL h J     i i  j k j m    ����  k  l m l m    ����  m  n o n m    ����  o  p q p m    ����  q  r s r m    ����   s  t�� t m    ���� @��  ��   e  u v u l  # #������  ��   v  w x w l   # #�� y��   y + % or to send a character string:
				     x  z { z I  # .�� | }
�� .SRBRSdDtnull���    TEXT | o   # (����  0 connectionname connectionName } �� ~��
�� 
SnDa ~ m   ) *    hello world   ��   {  � � � l  / /������  ��   �  � � � l  / /�� ���   � M G IMPORTANT: Only one script at a time is allowed to wait or read serial    �  � � � l  / /�� ���   � M G data from a single connection. Calling the wait below, if you have the    �  � � � l  / /�� ���   � R L connection script also running, will automatically terminate the connection    �  � � � l  / /�� ���   � N H script. If after running this script you want to restart the connection    �  � � � l  / /�� ���   � N H script, then press the "Reload Script" button in the connection window.    �  � � � l  / /������  ��   �  � � � l  / /�� ���   � Q K---------------------------------------------------------------------------    �  � � � l   / /�� ���   �:4 "wait for data" will block our script until serial data become
				 * available to read. Note it has optional argument to specify
				 * the number of bytes to wait for ("to count") and the maximum
				 * amount of time to wait in milliseconds until a timeout error is
				 * thrown ("timeout after").
				     �  � � � I  / :�� � �
�� .SRBRWtDtnull���    TEXT � o   / 4����  0 connectionname connectionName � �� ���
�� 
ByCt � m   5 6���� ��   �  � � � l  ; ;������  ��   �  � � � l   ; ;�� ���   � _ Y Now that 25 bytes of data are available to read, we can extract out a single byte:
				     �  � � � r   ; H � � � I  ; D�� ���
�� .SRBRRdBtshor       TEXT � o   ; @����  0 connectionname connectionName��   � o      ���� 0 
singlebyte 
singleByte �  � � � I  I ^�� � �
�� .SRBRLog null���    TEXT � b   I T � � � m   I L � �  one byte =     � l  L S ��� � c   L S � � � o   L O���� 0 
singlebyte 
singleByte � m   O R��
�� 
long��   � �� ���
�� 
LgTy � m   W Z � �  Sample   ��   �  � � � l  _ _������  ��   �  � � � l   _ _�� ���   �   or multiple bytes:
				     �  � � � r   _ n � � � I  _ j�� � �
�� .SRBRRdBLshor  @    TEXT � o   _ d����  0 connectionname connectionName � �� ���
�� 
ByCt � m   e f���� ��   � o      ���� 0 
threebytes 
threeBytes �  � � � I  o ��� � �
�� .SRBRLog null���    TEXT � b   o { � � � m   o r � �  first byte =     � n   r z � � � 4   u z�� �
�� 
cobj � m   x y����  � o   r u���� 0 
threebytes 
threeBytes � �� ���
�� 
LgTy � m   ~ � � �  Sample   ��   �  � � � I  � ��� � �
�� .SRBRLog null���    TEXT � b   � � � � � m   � � � �  second byte =     � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 
threebytes 
threeBytes � �� ���
�� 
LgTy � m   � � � �  Sample   ��   �  � � � I  � ��� � �
�� .SRBRLog null���    TEXT � b   � � � � � m   � � � �  third byte =     � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 
threebytes 
threeBytes � �� ���
�� 
LgTy � m   � � � �  Sample   ��   �  � � � l  � �������  ��   �  � � � l   � ��� ���   � ) # or a string of 5 characters:
				     �  � � � r   � � � � � I  � ��� � �
�� .SRBRRdDtTEXT       TEXT � o   � �����  0 connectionname connectionName � �� ���
�� 
ByCt � m   � ����� ��   � o      ����  0 fivecharstring fiveCharString �  � � � I  � ��� � �
�� .SRBRLog null���    TEXT � b   � � � � � m   � � � �  five character string =     � o   � ���  0 fivecharstring fiveCharString � �~ ��}
�~ 
LgTy � m   � � � �  Sample   �}   �  � � � l  � ��|�{�|  �{   �  � � � l   � ��z ��z   � 9 3 or a string of all the available characters:
				     �  � � � r   � �   I  � ��y�x
�y .SRBRRdDtTEXT       TEXT o   � ��w�w  0 connectionname connectionName�x   o      �v�v 0 restofstring restOfString �  I  � ��u
�u .SRBRLog null���    TEXT b   � � m   � �		  rest of string =     o   � ��t�t 0 restofstring restOfString �s
�r
�s 
LgTy
 m   � �  Sample   �r    l  � ��q�p�q  �p   �o l   � ��n�n  WQ The above read verbs all have an optional argument, "timeout after",
				 * to specify how long to wait in milliseconds for the data if it is not
				 * currently available. If no timeout argument is present, then a
				 * timeout error will be immediately thrown if there is not enough
				 * data present to fulfill the request.
				    �o   R m     Bnull     ߀�� �Serial Bridge_d.app��� 7���p  � b    )       �(�K� ���� bSRBR  alis    �  
Halo Anvil                 ���aH+   �Serial Bridge_d.app                                             !
Ҿm��        ����  	                Output    ���      �m�     � �� {& {$ �& �  ^Halo Anvil:Users:mattb:Perceptive Automation:Code:serialbridge.proj:Output:Serial Bridge_d.app  (  S e r i a l   B r i d g e _ d . a p p   
 H a l o   A n v i l  SUsers/mattb/Perceptive Automation/Code/serialbridge.proj/Output/Serial Bridge_d.app   /    ��  ��   O  l     �m�l�m  �l    l     �k�j�k  �j   �i l     �h�g�h  �g  �i       �f E�f   �e�d�e  0 connectionname connectionName
�d .aevtoappnull  �   � **** �c�b�a�`
�c .aevtoappnull  �   � **** k     �  N�_�_  �b  �a     (�^�]�\�[�Z�Y�X�W�V�U�T �S�R�Q�P�O ��N�M ��L�K�J ��I � � � � ��H�G�F � ��E	
�^ 
SnBa�] 
�\ .SRBRSdDtnull���    TEXT
�[ 
SnBL�Z �Y �X �W  �V @�U 
�T 
SnDa
�S 
ByCt�R 
�Q .SRBRWtDtnull���    TEXT
�P .SRBRRdBtshor       TEXT�O 0 
singlebyte 
singleByte
�N 
long
�M 
LgTy
�L .SRBRLog null���    TEXT
�K .SRBRRdBLshor  @    TEXT�J 0 
threebytes 
threeBytes
�I 
cobj�H 
�G .SRBRRdDtTEXT       TEXT�F  0 fivecharstring fiveCharString�E 0 restofstring restOfString�` �� �b   ��l Ob   �l������vl Ob   ��l Ob   ��l Ob   j E` Oa _ a &%a a l Ob   �ml E` Oa _ a k/%a a l Oa _ a l/%a a l Oa _ a m/%a a l Ob   �a  l !E` "Oa #_ "%a a $l Ob   j !E` %Oa &_ %%a a 'l OPUascr  ��ޭ