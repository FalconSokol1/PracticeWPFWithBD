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
    /// Логика взаимодействия для AuthAdmin.xaml
    /// </summary>
    public partial class AuthAdmin : Window
    {
        
        public AuthAdmin()
        {
            InitializeComponent();

           
        }

        private void btnEnter(object sender, RoutedEventArgs e)
        {
            var CurrenUser = AppData.db.Passenger.FirstOrDefault(u => u.name == tbxName.Text && u.ID_psg.ToString() == txbId.Text);

            if (CurrenUser != null)
            {
                WorkSpace workSpace = new WorkSpace();
                workSpace.Show();

                this.Close();

            }
        }
    }
}
