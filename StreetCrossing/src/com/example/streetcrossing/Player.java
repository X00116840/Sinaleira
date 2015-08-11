package com.example.streetcrossing;

public class Player
{
  private int _id;
  private String _playername;
  private int _speed;
  
  public Player() {}
  
  public Player(int paramInt1, String paramString, int paramInt2)
  {
    this._id = paramInt1;
    this._playername = paramString;
    this._speed = paramInt2;
  }
  
  public Player(String paramString, int paramInt)
  {
    this._playername = paramString;
    this._speed = paramInt;
  }
  
  public int getID()
  {
    return this._id;
  }
  
  public String getPlayerName()
  {
    return this._playername;
  }
  
  public int getPlayerSpeed()
  {
    return this._speed;
  }
  
  public void setID(int paramInt)
  {
    this._id = paramInt;
  }
  
  public void setPlayerName(String paramString)
  {
    this._playername = paramString;
  }
  
  public void setPlayerSpeed(int paramInt)
  {
    this._speed = paramInt;
  }
  
  public String toString()
  {
    return "Player [id = " + this._id + " Player=" + this._playername + ", speed=" + this._speed + "]";
  }
}


/* Location:           D:\workspace\Sinaleira\RecoveringPelicross\dex2jar-0.0.9.15\classes-dex2jar.jar
 * Qualified Name:     com.example.pelicancross.Player
 * JD-Core Version:    0.7.0.1
 */