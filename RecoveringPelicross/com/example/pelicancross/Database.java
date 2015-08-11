package com.example.pelicancross;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.RatingBar;
import android.widget.TextView;
import java.util.List;

public class Database
  extends MainActivity
{
  public TextView c_player_name;
  public TextView champion_name;
  public TextView cspeed;
  public EditText player_name;
  public int playerspeed;
  public TextView pspeed;
  public RatingBar ratingBar;
  
  public void clearPlayers(View paramView)
  {
    new DatabaseHandler(this, null, null, 1).dropTable();
    this.cspeed = ((TextView)findViewById(2131427350));
    this.pspeed = ((TextView)findViewById(2131427348));
    this.cspeed.setText("0");
    this.pspeed.setText("0");
    this.ratingBar.setRating(0.0F);
  }
  
  public String findChampionName()
  {
    return new DatabaseHandler(this, null, null, 1).findChampionName();
  }
  
  public int findChampionSpeed()
  {
    return new DatabaseHandler(this, null, null, 1).findChampionSpeed();
  }
  
  public int findCurrentSpeed(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    return new DatabaseHandler(this, null, null, 1).findPlayer(paramString).getPlayerSpeed();
  }
  
  public void newPlayer(View paramView)
  {
    Log.d(this.msg, "New Player being created");
    DatabaseHandler localDatabaseHandler = new DatabaseHandler(this, null, null, 1);
    this.playerspeed = speed;
    Log.d(this.msg, this.playerspeed + " speed has been added to the database");
    if (this.player_name.getText().toString().trim().equals("")) {
      this.player_name.setError("Please type a name!");
    }
    for (;;)
    {
      List localList = localDatabaseHandler.getAllPlayers();
      Log.d(this.msg, localList.toString());
      return;
      Player localPlayer = new Player();
      localPlayer.setPlayerName(this.player_name.getText().toString());
      localPlayer.setPlayerSpeed(this.playerspeed);
      playername = this.player_name.getText().toString();
      localDatabaseHandler.addPlayer(localPlayer);
      Log.d(this.msg, playername + " has been added to the database");
      startActivity(new Intent(this, Ranking.class));
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903041);
    this.player_name = ((EditText)findViewById(2131427337));
    Log.d(this.msg, "Speed " + speed);
  }
}


/* Location:           D:\workspace\Sinaleira\RecoveringPelicross\dex2jar-0.0.9.15\classes-dex2jar.jar
 * Qualified Name:     com.example.pelicancross.Database
 * JD-Core Version:    0.7.0.1
 */