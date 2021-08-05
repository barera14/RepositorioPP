
export class Movie {
  private _id: number | undefined;
  private _title : string | undefined;
  private _year : number | undefined;
  private _genres : string | undefined;
  
  public get id(): number | undefined {
    return this._id;
  }
  public set id(value: number | undefined) {
    this._id = value;
  }

  public get title(): string | undefined  {
    return this._title;
  }
  
  public set title(value: string | undefined ) {
    this._title = value;
  }

  public get year(): number | undefined  {
    return this._year;
  }

  public set year(value: number | undefined ) {
    this._year = value;
  }

  public get genres(): string | undefined  {
    return this._genres;
  }

  public set genres(value: string | undefined ) {
    this._genres = value;
  }
}