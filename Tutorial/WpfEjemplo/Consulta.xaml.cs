using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using EN;
using BL;

namespace WpfEjemplo
{
    /// <summary>
    /// Lógica de interacción para Consulta.xaml
    /// </summary>
    public partial class Consulta : Window
    {
        Ventas _en = new Ventas();
        VentasBL _bl = new VentasBL();
        public Consulta()
        {
            InitializeComponent();
        }

        private void btnMostrar_Click(object sender, RoutedEventArgs e)
        {
            if(!(txtmostrar.Text == ""))
            {
                _en.Nombre = txtmostrar.Text;
                dataGrid.ItemsSource = _bl.MostrarVentasPorNombre(_en);
            }
        }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            _en = dataGrid.SelectedItems as Ventas;
            if (_en != null)
            {
                txtNombre.Text = _en.Nombre;
                txtVentas.Text = Convert.ToString(_en.TotalVentas);
                txtEstado.Text = _en.Estado;
            }
        }

        private void btnModificar_Click(object sender, RoutedEventArgs e)
        {
            if (txtNombre.Text != "" && txtVentas.Text != "" && txtEstado.Text != "")
            {
                _en.Nombre = txtNombre.Text;
                _en.TotalVentas = Convert.ToInt64(txtVentas.Text);
                _en.Estado = txtEstado.Text;
                if (_bl.ModificarVentas(_en) < 0)
                {
                    MessageBox.Show("El registro se modifico correctamente", "Exito!", MessageBoxButton.OK, MessageBoxImage.Asterisk);
                    dataGrid.Items.Refresh();
                    dataGrid.ItemsSource = _bl.MostrarVentas();
                }
                else
                {
                    MessageBox.Show("No se pudo modificar", "Error!", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show("Seleccione un registro", "Error!", MessageBoxButton.OK, MessageBoxImage.Error);

            }
            }

        private void btnEliminar_Click(object sender, RoutedEventArgs e)
        {
            if (txtNombre.Text != "" && txtVentas.Text != "" && txtEstado.Text != "")
            {
                MessageBoxResult r = MessageBox.Show("Estas seguro de eliminar este registro", "Alerta", MessageBoxButton.OKCancel, MessageBoxImage.Question);
                if (r== MessageBoxResult.OK)
                {
                    _bl.EliminarVentas(_en);
                    dataGrid.Items.Refresh();
                    dataGrid.ItemsSource = _bl.MostrarVentas();
                }
                if(r== MessageBoxResult.Cancel)
                {
                }
            }

        }

        private void btnVolver_Click(object sender, RoutedEventArgs e)
        {
            MainWindow _ver = new MainWindow();
            this.Close();
            _ver.ShowDialog();
        }

        private void txtmostrar_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
    }

