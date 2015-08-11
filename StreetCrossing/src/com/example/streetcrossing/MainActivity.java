package com.example.streetcrossing;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;


public class MainActivity extends Activity {
	
	  public static String playername;
	  public static int speed;
	  String msg = "Playing: ";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
				
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main_menu);
			
		mainControls();
	}

protected void mainControls() {
		
		//find button PLAY and create a new player when clicked
		Button buttonPlay = (Button) findViewById(R.id.buttonPlay);		
		//register click event with button play
		buttonPlay.setOnClickListener(new View.OnClickListener() {
	       public void onClick(View v) {
	           Intent i = new Intent(MainActivity.this, Accelerometer.class);
	           startActivity(i);
	       }
	    });
		 
		//find button Ranking and open current Ranking when clicked
		Button buttonRanking = (Button) findViewById(R.id.buttonRanking);
		//register click event for button Ranking
		buttonRanking.setOnClickListener(new View.OnClickListener() {
           public void onClick(View v) {	        	   
	           Intent i = new Intent(MainActivity.this, Ranking.class);
		           startActivity(i);
	           }
	        });
		
		//find button Instructions and open Instructions layout when clicked
		final Button buttonInst = (Button) findViewById(R.id.buttonInstructions);
		buttonInst.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	setContentView(R.layout.instructions);
            }
        });
		
		//find button Instructions and open Instructions layout when clicked
		final Button buttonExit = (Button) findViewById(R.id.buttonExit);
		buttonExit.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	finish();
            }
        });

	}

//Exit the App
public void exitApp(View paramView)
{
  Process.killProcess(Process.myPid());
  System.exit(1);
}


}
