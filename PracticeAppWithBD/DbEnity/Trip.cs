//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PracticeAppWithBD.DbEnity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Trip
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Trip()
        {
            this.Pass_in_trip = new HashSet<Pass_in_trip>();
        }
    
        public int trip_no { get; set; }
        public int ID_comp { get; set; }
        public string plane { get; set; }
        public string town_from { get; set; }
        public string town_to { get; set; }
        public System.DateTime time_out { get; set; }
        public System.DateTime time_in { get; set; }
    
        public virtual Company Company { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Pass_in_trip> Pass_in_trip { get; set; }
    }
}
