package com.example.pelicancross;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;


public class MainActivity extends Activity  {

	public static int speed;
	public static String playername;
	String msg = "Playing: ";

	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);	
		setContentView(R.layout.main_menu);
		
	}


	public void play(View view){		
		 //Intent i = new Intent(Ranking.this, Database.class);
		Intent i = new Intent(MainActivity.this, Accelerometer.class);
        startActivity(i);	
        Log.d(msg, "Clicked on Play****************************************");
	}
	
    public void showRank(View v) {
    	 Intent i = new Intent(MainActivity.this, Ranking.class);
         startActivity(i);
         MainActivity.this.finish();
         Log.d(msg, "Clicked on Rank ****************************************");         
    }
    
	public void exitApp(View view){
		Log.d(msg, "Game Finished ****************************************");
		android.os.Process.killProcess(android.os.Process.myPid());
        System.exit(1);
	}
	
    public void showInstructions(View v) {
    	Intent i = new Intent(MainActivity.this, Instructions.class);
       startActivity(i);
       Log.d(msg, "Showing instructions ****************************************");
    }
      
	
} //End MainActivity 
