using PracticeAppWithBD.DbEnity;
using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для TripWindow.xaml
    /// </summary>
    public partial class TripWindow : Window
    {
        

        public string Text1 { get; }
        public string Text2 { get; }

        public TripWindow(string text1, string text2)
        {


            InitializeComponent();



            Text1 = text1;
            Text2 = text2;
            SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-10UBSAS; Initial Catalog=aero; Integrated Security=True");
            connection.Open();
            string cmd = $"SELECT DISTINCT Pass_in_trip.trip_no,  [name], place , date   FROM  Passenger, Pass_in_trip, Trip Where (Pass_in_trip.ID_psg = {Text2} and Passenger.[name] = '{Text1}')";
            SqlCommand createCommand = new SqlCommand(cmd, connection);
            SqlDataReader sdr = createCommand.ExecuteReader();

            while (sdr.Read())
            {
                txbReys.Text = "Номер вашего рейса: " + sdr["trip_no"].ToString(); 
                txbPlace.Text = "Номер вашего места: " + sdr["place"].ToString();
                txbDate.Text = "Дата полёта: " + sdr["date"].ToString();

            }

            connection.Close();


        }

       
    }
}
