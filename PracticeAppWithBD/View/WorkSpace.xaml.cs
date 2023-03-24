using PracticeAppWithBD.DbEnity;
using PracticeAppWithBD.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;

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
            this.DataContext = new WorkSpaceVM();

        }


        private void btnNewTrip(object sender, RoutedEventArgs e)
        {
            var newTrip = new NewTrip(null);

            newTrip.Show();
        }

        private void btnDeleteTrip(object sender, RoutedEventArgs e)
        {
            (DataContext as WorkSpaceVM).DeleteSelectItem();
        }

        private void btnUpdateGrid(object sender, RoutedEventArgs e)
        {
            RefreshData();
        }

        public void RefreshData()
        {
            (DataContext as WorkSpaceVM).LoadData();
        }

        private void btnUpdateTrip(object sender, RoutedEventArgs e)
        {
            var newTrip = new NewTrip((DataContext as WorkSpaceVM).SelectedTrip);

            newTrip.Show();
        }
    }
}
