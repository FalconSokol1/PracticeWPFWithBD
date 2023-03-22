using PracticeAppWithBD.DbEnity;
using PracticeAppWithBD.View;
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

namespace PracticeAppWithBD
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
       
        public MainWindow()
        {
            InitializeComponent();
        }

       
            
        

        private void btnEnter(object sender, RoutedEventArgs e)
        {
            var CurrenUser = AppData.db.Passenger.FirstOrDefault(u => u.name == tbxName.Text && u.ID_psg.ToString() == txbId.Text);

            
            
          

            if (CurrenUser != null)
            {
                TripWindow tripWindow = new TripWindow(tbxName.Text, txbId.Text);
                tripWindow.Show();
                
                

                this.Close();
                
            }
        }
    }
}
