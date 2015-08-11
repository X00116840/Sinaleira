package com.example.pelicancross;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.RatingBar;
import android.widget.TextView;

public class Ranking
  extends Database
{
  public void onCreate(Bundle paramBundle)
  {
    int i = 1;
    super.onCreate(paramBundle);
    Log.d(this.msg, "show rank after playing ***********************");
    setContentView(2130903044);
    this.ratingBar = ((RatingBar)findViewById(2131427351));
    this.pspeed = ((TextView)findViewById(2131427348));
    this.cspeed = ((TextView)findViewById(2131427350));
    int j;
    if (playername == null)
    {
      j = i;
      if (findChampionName() != null) {
        break label144;
      }
    }
    for (;;)
    {
      if ((j & i) == 0) {
        break label149;
      }
      this.pspeed.setText(Integer.toString(findCurrentSpeed(playername)) + " Start Playing!");
      this.ratingBar.setRating(0.0F);
      this.cspeed.setText("0 Become the champion!");
      return;
      j = 0;
      break;
      label144:
      i = 0;
    }
    label149:
    if (playername == null)
    {
      this.pspeed.setText(Integer.toString(findCurrentSpeed(playername)) + " Start Playing!");
      this.ratingBar.setRating(0.0F);
      this.cspeed.setText(Integer.toString(findChampionSpeed()) + " by " + findChampionName());
      return;
    }
    this.pspeed.setText(Integer.toString(findCurrentSpeed(playername)) + " by " + playername);
    this.ratingBar.setRating(5 * findCurrentSpeed(playername) / findChampionSpeed());
    this.cspeed.setText(Integer.toString(findChampionSpeed()) + " by " + findChampionName());
  }
  
  public void playAgain(View paramView)
  {
    startActivity(new Intent(this, Accelerometer.class));
    finish();
  }
}


/* Location:           D:\workspace\Sinaleira\RecoveringPelicross\dex2jar-0.0.9.15\classes-dex2jar.jar
 * Qualified Name:     com.example.pelicancross.Ranking
 * JD-Core Version:    0.7.0.1
 */