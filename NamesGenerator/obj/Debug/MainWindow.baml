   M S B A M L   `   `   `  ����  Names Generator    NamesGenerator.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   X TXceed.Wpf.Toolkit, Version=2.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	     � Title$  Names Generator��5   	   $	��477��6!   $	��279��6.    � WindowStartupLocation$ CenterScreen=�6:   .��5      � .+�5   
   �� $��Generator settings��6   $��
10,10,10,0q�6/   $	��Top=�6C   $	��145��6[   .��5      � $��
10,10,-2,3q�6   .+�5	      %  Xceed.Wpf.Toolkit.IntegerUpDown  -   5          Name$ MinLength_IntegerUpDown��5	   %   $��75,3,0,0q�6F   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 2X�6X      Value$ 3X�6d   $��20��6n   $	��Top=�6z   $
��Left=�6�   $��61��6�      Maximum$ 	999999999X�6�   6�   �� 5
      $��Min. length:��6   $
��Left=�6/   $	��Top=�6J     5      -   5        $ MaxLength_IntegerUpDown��5   %   $��	75,34,0,0q�6F   $ 2X�6Y   $ 8X�6e   $��20��6o   $	��Top=�6{   $
��Left=�6�   $��61��6�   $ 	999999999X�6�   6�   �� 5      $��Max. length:��6   $
��Left=�6/   $	��Top=�6J   $��0,31,0,0q�6b     5      -   5        $ Count_IntegerUpDown��5   %   $��	75,65,0,0q�6B   $ 1X�6U   $	 100X�6a   $��20��6m   $	��Top=�6y   $
��Left=�6�   $��61��6�   $ 	999999999X�6�   �� 5      $��Count:��6   $
��Left=�6)   $	��Top=�6D   $��0,62,0,0q�6\   �� 5      -   5         ��Name$  IsStartsWithVowel_CheckBox��5      $��Starts with vowel��6?   $
��Left=�6[   $��4,93,0,0q�6v   $	��Top=�6�   5      5      �� 5   
   -   5         ��Name$ Generate_Button��5      $��Generate��6*   $��10,160,10,0q�6=   $	��Top=�6R   $��35��6j   6v   �� 5   
   -   5         ��Name$ Words_TextBox��5      $��10,200,10,10q�6)   	 �� TextWrapping$
	 Wrap=�6?   "
 �� VerticalScrollBarVisibility$

 Auto=�6S   $ �� HorizontalScrollBarVisibility$
 Auto=�6v    �� 
IsReadOnly . 6�   5      5      