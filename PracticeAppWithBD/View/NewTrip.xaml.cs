using PracticeAppWithBD.DbEnity;

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
    /// Логика взаимодействия для NewTrip.xaml
    /// </summary>
    public partial class NewTrip : Window
    {
        public NewTrip()
        {
            InitializeComponent();

            
        }

       /* private ObservableCollection<Trip> _tripInfo;

        public ObservableCollection<Trip> Trip
        {
            
        get => _tripInfo;
            set
            {
                _tripInfo = value;
                OnPropertyChanged(nameof(Trip));
            }
        }*/
        private void BtnOk(object sender, RoutedEventArgs e)
        {
           
            Trip trip = new Trip
            {
                trip_no = Convert.ToInt32(txbTrip_no.Text),
                plane = txbPlane.Text,
                town_from = txbTownFrom.Text,
                town_to = txbTownTo.Text,
                time_out = Convert.ToDateTime(txbTimeOut.Text),
                time_in = Convert.ToDateTime(txbTimeIn.Text)
            };

            AppData.db.Trip.Add(trip);
            AppData.db.SaveChanges();
            MessageBox.Show("Рейс добавлен!");

           // Trip = new ObservableCollection<Trip>();


            Close();

        }

        
    }
}
