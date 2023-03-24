using PracticeAppWithBD.DbEnity;

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity.Migrations;
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
        private Trip _tripInfo;

        public NewTrip(Trip trips)
        {
            InitializeComponent();

            if (trips != null)
            {
                _tripInfo = trips = new Trip();
            }
            else
            {
                _tripInfo = trips; 
            }



        }



        private void BtnOk(object sender, RoutedEventArgs e)
        {

            using (var db = new aeroEntities())
            {
                try
                {
                    var validateResult = ValidateEntity();

                    if (validateResult.Length > 0)
                    {
                        MessageBox.Show(validateResult.ToString(), "Информация", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }

                    db.Trip.AddOrUpdate(_tripInfo);

                    db.SaveChanges();

                    MessageBox.Show("Рейс добавлен", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);

                    (Owner as WorkSpace)?.RefreshData();

                    Owner.Focus();

                    this.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Информация", MessageBoxButton.OK, MessageBoxImage.Error);
                }

            }


        }
        private StringBuilder ValidateEntity()
        {
            var errors = new StringBuilder();

            if (_tripInfo != null)
            {
                if (string.IsNullOrEmpty(_tripInfo.trip_no.ToString()))
                {
                    errors.AppendLine("Поле наименование 'Номер борта' не может быть пустым!");
                }

                if (string.IsNullOrEmpty(_tripInfo.plane))
                {
                    errors.AppendLine("Поле наименование 'Название самолёта' не может быть пустым!");
                }

                if (string.IsNullOrEmpty(_tripInfo.town_from))
                {
                    errors.AppendLine("Поле наименование 'Место отправления' не может быть пустым!");
                }

                if (string.IsNullOrEmpty(_tripInfo.town_to))
                {
                    errors.AppendLine("Поле наименование'Место прибытия' не может быть пустым!");
                }

                if (string.IsNullOrEmpty(_tripInfo.time_out.ToString()))
                {
                    errors.AppendLine("Поле наименование 'Время отправления' не может быть пустым!");
                }

                if (string.IsNullOrEmpty(_tripInfo.time_in.ToString()))
                {
                    errors.AppendLine("Поле наименование 'Время прибытия' не может быть пустым!");
                }

            }

            return errors;
        }


    }
}
