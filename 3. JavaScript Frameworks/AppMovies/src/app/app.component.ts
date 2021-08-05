import { Component } from '@angular/core';
import { Movie } from './movie';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {
  title = 'AppMovies';  
  public objMovie = new Movie();
  public ListMovie: Movie[] = [];
  public order:boolean=false;


  saveMovie(){   
    if(this.objMovie.title == "" || this.objMovie.title == undefined){
      alert("Field title")
    }else  if(this.objMovie.year == null || this.objMovie.year == undefined){
      alert("Field year")
    }else if(this.objMovie.genres == "" || this.objMovie.genres == undefined){
      alert("Field genres")
    }else {
      this.ListMovie.push(this.objMovie);
      this.objMovie = new Movie();
    }
  }

  deleteMovie(index:number){    
    this.ListMovie.splice(index,1);
  }

  orderYears(){
    if(this.order){
      this.order = false;      
      this.ListMovie.sort((a:any,b:any)=>b.year - a.year);
    }else{
      this.order = true;
      this.ListMovie.sort((a:any,b:any)=>a.year - b.year);
    }
    
  }

}
