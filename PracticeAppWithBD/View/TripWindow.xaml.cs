using PracticeAppWithBD.DbEnity;
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

namespace PracticeAppWithBD.View
{
    /// <summary>
    /// Логика взаимодействия для TripWindow.xaml
    /// </summary>
    public partial class TripWindow : Window
    {
        public TripWindow()
        {
            InitializeComponent();



            txbReys.Text = AppData.db.Pass_in_trip.AsEnumerable().ElementAt(0).Trip.ToString();
        }
    }
}
