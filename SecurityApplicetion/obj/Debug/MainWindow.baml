   M S B A M L   `   `   `  ����N  JSecurityApplicetion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SecurityApplicetionSecurityApplicetion  5   	   $    SecurityApplicetion.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:SecurityApplicetion     5   	   -   5          �Name$  
mainWindow��5   	    � Title$ Вход��5   	   $	��450��6   $	��800��6#   $	��Top=�6/   $��Comic Sans MS)�6G    J� Opacity$ 14Q�6b   ��5
      �� 5   
    �� EndPoint$ 0.5,1&�6    � MappingMode$ RelativeToBoundingBox=�6/    �� 
StartPoint$ 0.5,0&�6S   .��5      �  � Color$ Black��6    � Offset$ 0Q�6)   � 5      $ White��6   $ 1Q�6)   � 5      $ 	#FFE6D420��6   � 5      $ 	#FF20E6C2��6   � 5      $ 	#FFCA90F2��6   $ 0.983Q�6-   � 5      $ 	#FF5F59DE��6   $ 0.337Q�6-   5      .��5      �  � ColumnDefinitions 5   
   �� 5      $
��200* �6   �� 5      $
��100* �6   �� 5      $
��200* �6   	 � RowDefinitions	 5   
   �� 5      $
��100* �6   �� 5      $
��200* �6   �� 5      $
��100* �6   .+�5    
   �� 
 �� Orientation$
 Vertical=�6   $��1��6,   $��1��6<   .+�5!      �� $��Login:��6    �� TextAlignment$ Center=�6&   �� 5"      -   5        $��loginTextBox��5"      $��0 0 0 10q�6*   �� 5#      $��	Password:��6   $ Center=�6)   G� 5$      -   5        $��passwordBox��5$      $��0 0 0 20q�6-   �� 5%      -   5        $��signInButton��5%      $��
Войти��6)   $��0 0 0 40q�6S   �� 5&      -   5        $��registrerButton��5&      $*��$Зарегистрироваться��6,   $y�Hidden=�6f   �� 5'      -   5        $��registretionButton��5'      $��Регистрация��6/   6E   5(      5)      5*      