package com.example.pelicancross;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import android.view.View;

public class MainActivity
  extends Activity
{
  public static String playername;
  public static int speed;
  String msg = "Playing: ";
  
  public void exitApp(View paramView)
  {
    Log.d(this.msg, "Game Finished ****************************************");
    Process.killProcess(Process.myPid());
    System.exit(1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903043);
  }
  
  public void play(View paramView)
  {
    startActivity(new Intent(this, Accelerometer.class));
    Log.d(this.msg, "Clicked on Play****************************************");
  }
  
  public void showInstructions(View paramView)
  {
    startActivity(new Intent(this, Instructions.class));
    Log.d(this.msg, "Showing instructions ****************************************");
  }
  
  public void showRank(View paramView)
  {
    startActivity(new Intent(this, Ranking.class));
    finish();
    Log.d(this.msg, "Clicked on Rank ****************************************");
  }
}


/* Location:           D:\workspace\Sinaleira\RecoveringPelicross\dex2jar-0.0.9.15\classes-dex2jar.jar
 * Qualified Name:     com.example.pelicancross.MainActivity
 * JD-Core Version:    0.7.0.1
 */