
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;



namespace MovieApp.Entity

{
    public interface IRepository<T> where T : class
    {
        Task CreateAsync(T entity )
    }
}
