using PracticeAppWithBD.DbEnity;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Threading;

namespace PracticeAppWithBD.ViewModel
{
    

    public class WorkSpaceVM:BaseVM

    {
        
        private ObservableCollection<Trip> _tripInfo;
        private Trip _selectedTrip;


        public ObservableCollection<Trip> Trip
        {
            get => _tripInfo;
            set
            {
                _tripInfo = value;
                OnPropertyChanged(nameof(Trip));

            }
        }

        public Trip SelectedTrip
        {
            get => _selectedTrip;
            set
            {
                _selectedTrip = value;
                OnPropertyChanged(nameof(SelectedTrip));
            }
        }


        public void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            
            RebindData();
        }



       
        public void RebindData()
        {

            Trip = new ObservableCollection<Trip>();
            LoadData();
        }



      
        private void SetTimer()
        {
            DispatcherTimer dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 60);
            dispatcherTimer.Start();
        }

        public void DeleteSelectItem()
        {
            if (!(SelectedTrip is null))
            {
                using (var db = new aeroEntities())
                {

                    var result = MessageBox.Show("Вы действительно хотите удалить выбранный рейс?" +
                        "Это действие невозможно отменить.", "Предупреждение", MessageBoxButton.YesNo, MessageBoxImage.Warning);

                    if (result == MessageBoxResult.Yes)
                    {
                        try
                        {
                            var entityForDelete = db.Trip.Where(elem => elem.trip_no == SelectedTrip.trip_no).FirstOrDefault();

                            db.Trip.Remove(entityForDelete);

                            db.SaveChanges();

                            LoadData();

                            MessageBox.Show("Рейс успешно удален", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);

                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message, "Информация", MessageBoxButton.OK, MessageBoxImage.Error);
                        }

                    }

                }
            }
        }

        public WorkSpaceVM()
        {
            RebindData();
            SetTimer();

        }


        public void LoadData()
        {
 
            var result = AppData.db.Trip.ToList();

            result.ForEach(elem => Trip?.Add(elem));
        }


    }

    

}
