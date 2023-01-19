
using MovieCrud.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
 
namespace MovieApp.Entity
{
    public class Repository<T> : IRepository<T> where T : class
    {
        private MovieContext context;

        public Repository(MovieContext context)
        {
            this.context = context;
        }

        public async Task CreateAsync(T entity)
        {
            if (entity == null)
                throw new ArgumentNullException(nameof(entity));

            context.Add(entity);
            await context.SaveChangesAsync();
        }
    }






