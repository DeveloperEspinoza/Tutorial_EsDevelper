   M S B A M L   `   `   `  ����E  AWpfEjemplo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WpfEjemplo
WpfEjemplo  5   	       WpfEjemplo.Consulta   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:WpfEjemplo     5   	     � Title$  Consulta��5   	   $��523.66��6   $��570.536��6*    � WindowStartupLocation$ CenterScreen=�6:   .��5	      � $��	0,0,13,12q�6   .+�5
   
   �� -   5         ��Name$ label��5
      $;��5                               Formulario de Consulta��6   $
��Left=�6_   $��	10,10,0,0q�6z   $	��Top=�6�    J� RenderTransformOrigin$ 
1.688,0.42&�6�   $	��543��6�   $��37��6�   $
��Bold"�6�   $��18(�6�   �� 5   
   -   5        $ label1��5      $��Buscar��6    $
��Left=�61   $��	60,79,0,0q�6L   $	��Top=�6_   $
��Bold"�6w   �� 5   
   -   5         ��Name$ 
txtmostrar��5      $
��Left=�6&   $��23��6A   $��
112,82,0,0q�6M    �� TextWrapping$
 Wrap=�6a   $	��Top=�6u   $	��284��6�   6�   �� 5   
   -   5         ��Name$ 
btnMostrar��5      $��Mostrar��6%   $
��Left=�67   $��
422,79,0,0q�6R   $	��Top=�6f   $��93��6~   $��26��6�   $
��Bold"�6�   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $
��Left=�6%   $��
60,137,0,0q�6@   $	��Top=�6T   $	��121��6l   $	��455��6y   6�   �� 5   
   -   5        $ label2��5      $��Nombre:��6    $
��Left=�62   $��
60,280,0,0q�6M   $	��Top=�6a   $
��Bold"�6y   �� 5   
   -   5        $ 	txtNombre��5      $
��Left=�6%   $��23��6@   $��125,280,0,0q�6L   $
 Wrap=�6a   $	��Top=�6u   $	��390��6�   �� 5   
   -   5        $ label3��5      $��Ventas:��6    $
��Left=�62   $��
60,335,0,0q�6M   $	��Top=�6a   $
��Bold"�6y   �� 5   
   -	   5        $ 	txtVentas��5      $
��Left=�6%   $��23��6@   $��125,339,0,0q�6L   $
 Wrap=�6a   $	��Top=�6u   $	��390��6�   �� 5   
   -
   5        $ label4��5      $��Estado:��6    $
��Left=�62   $��
60,391,0,0q�6M   $	��Top=�6a   $
��Bold"�6y   �� 5   
   -   5        $ 	txtEstado��5      $
��Left=�6%   $��23��6@   $��125,391,0,0q�6L   $
 Wrap=�6a   $	��Top=�6u   $	��390��6�   �� 5   
   -   5        $ btnModificar��5      $��	Modificar��6'   $
��Left=�6;   $��
60,437,0,0q�6V   $	��Top=�6j   $	��113��6�   $ -0.213,-1.046&�6�   $��31��6�   $
��Bold"�6�   6�   �� 5   
   -   5        $ btnEliminar��5      $��Eliminar��6&   $
��Left=�69   $��225,437,0,0q�6T   $	��Top=�6i   $	��118��6�   $��31��6�   $
��Bold"�6�   6�   �� 5   
   -   5        $ 	btnVolver��5      $��Volver��6$   $
��Left=�65   $��402,437,0,0q�6P   $	��Top=�6e   $	��113��6}   $��31��6�   $
��Bold"�6�   6�   5      5      