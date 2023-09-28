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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;

namespace Lab05ValdezDiego
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string connectionString = "Data Source=LAPTOP-KUI6COAV\\SQLEXPRESS;Initial Catalog=Neptuno;User ID=dvaldez1;Password=terminator";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("InsertarClientes", connection);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@idcliente", txtIdCliente.Text);
                    cmd.Parameters.AddWithValue("@nombrecompañia", txtNombreCompañia.Text);
                    cmd.Parameters.AddWithValue("@nombrecontacto", txtNombreContacto.Text);
                    cmd.Parameters.AddWithValue("@cargocontacto", txtCargoContacto.Text);
                    cmd.Parameters.AddWithValue("@direccion", txtDireccion.Text);
                    cmd.Parameters.AddWithValue("@ciudad", txtCiudad.Text);
                    cmd.Parameters.AddWithValue("@region", txtRegion.Text);
                    cmd.Parameters.AddWithValue("@codpostal", txtCodPostal.Text);
                    cmd.Parameters.AddWithValue("@pais", txtPais.Text);
                    cmd.Parameters.AddWithValue("@telefono", txtTelefono.Text);
                    cmd.Parameters.AddWithValue("@fax", txtFax.Text);
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Cliente ingresado cexitosamente.");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ocurrio un error al ingresar el cliente: " + ex.Message);
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            ListadoWindow window1 = new ListadoWindow();
            window1.Show();
            this.Close();
        }
    }
}
