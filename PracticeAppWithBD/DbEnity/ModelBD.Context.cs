﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class aeroEntities : DbContext
    {
        public aeroEntities()
            : base("name=aeroEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Company> Company { get; set; }
        public virtual DbSet<Pass_in_trip> Pass_in_trip { get; set; }
        public virtual DbSet<Passenger> Passenger { get; set; }
        public virtual DbSet<Trip> Trip { get; set; }
    }
}
