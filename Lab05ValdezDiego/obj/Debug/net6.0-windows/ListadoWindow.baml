   M S B A M L   `   `   `  ����K  GLab05ValdezDiego, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Lab05ValdezDiegoLab05ValdezDiego  5   	   $    Lab05ValdezDiego.ListadoWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:Lab05ValdezDiego     5   	     � Title$  ListadoWindow��5   	   $	��450��6   $	��800��6,   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5        $��
McDataGrid��5
         AutoGenerateColumns$ False��6%   $
��Left=�6A   $	��Top=�6\   $	��500��6t   $
��1200��6�   $��	12,21,0,0q�6�   
�������   RowBackground
 �����   AlternatingRowBackground
 ��ح�
�������$��1q�6     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
ID Cliente��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 69   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6E   �� *	Idcliente+  5      $ Nombre Compañia��6%   $	 100 6>    6J   �� *Nombrecompañia+  5      $ Nombre Contacto��6%   $	 100 6>    6J   �� *Nombrecontacto+  5      $ Cargo Contacto��6%   $	 100 6=    6I   �� *Cargocontacto+  5      $ 
Dirección��6%   $	 100 68    6D   �� *	Direccion+  5      $ Ciudad��6%   $	 100 65    6A   �� *Ciudad+  5      $ Region��6%   $	 100 65    6A   �� *Region+  5      $ 	CodPostal��6%   $	 100 68    6D   �� *	Codpostal+  5      $
 Pais��6%   $	 100 63    6?   �� *Pais+  5      $ Telefono��6%   $	 100 67    6C   �� *
Telefono+  5      $	 Fax��6%   $	 100 62    6>   �� *Fax+  5      $ Activo��6%   $	 100 65    6A   �� *Activo+5      5      5      