
using System.ComponentModel.DataAnnotations;


namespace MovieApp.Models
{
    public class Movie
    {
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        public string Actors { get; set; }
    }
}