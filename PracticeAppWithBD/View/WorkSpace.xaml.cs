using PracticeAppWithBD.DbEnity;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
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

namespace PracticeAppWithBD.View
{
    /// <summary>
    /// Логика взаимодействия для WorkSpace.xaml
    /// </summary>
    public partial class WorkSpace : Window
    {

        public WorkSpace()
        {


            InitializeComponent();


            

            SqlConnection connectString = new SqlConnection(@"Data Source=DESKTOP-10UBSAS; Initial Catalog=aero; Integrated Security=True");
            connectString.Open();

            SqlCommand cmd = new SqlCommand
            {
                CommandText = "SELECT trip_no, plane, town_from, town_to, time_out, time_in FROM Trip",
                Connection = connectString
            };

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable("Рейсы");
            adapter.Fill(dt);

            gdTrip.ItemsSource = dt.DefaultView;

        }

        private void btnNewTrip(object sender, RoutedEventArgs e)
        {
            NewTrip newTrip = new NewTrip();
            newTrip.ShowDialog();
        }

        public void RefreshDataGrid()
        {
            // Обновляем данные в DataGrid
            gdTrip.Items.Refresh();
        }

      

        
    }
}
