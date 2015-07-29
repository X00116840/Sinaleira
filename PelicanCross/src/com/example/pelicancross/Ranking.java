package com.example.pelicancross;


import android.content.Intent;
import android.os.Bundle;
//import android.util.Log;
import android.view.View;
import android.widget.RatingBar;
import android.widget.TextView;

public class Ranking extends Database {
	String msg = "Debugging R: ";
	
	@Override
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);

		setContentView(R.layout.rank);
			
		
		//Finding all fields on the layout
		ratingBar = (RatingBar) findViewById(R.id.ratingBar);
		pspeed = (TextView) findViewById(R.id.currentspeed_db);
		cspeed = (TextView) findViewById(R.id.speed_db);
		
		
		
		if(playername==null & findChampionName()==null){
			//in case database has NO players and user goes to Rank before playing				
			pspeed.setText(Integer.toString(findCurrentSpeed(playername))+" Start Playing!");
			ratingBar.setRating(0);
			cspeed.setText("0 be the first!");
			}else{ 
				//in case database has players and user goes to Rank before playing
				if(playername==null){
				pspeed.setText(Integer.toString(findCurrentSpeed(playername))+" Start Playing!");
				ratingBar.setRating(0);
				cspeed.setText(Integer.toString(findChampionSpeed())+" by "+findChampionName());
			}else{
			pspeed.setText(Integer.toString(findCurrentSpeed(playername))+" by "+playername);
			ratingBar.setRating((findCurrentSpeed(playername)*5)/findChampionSpeed());
			cspeed.setText(Integer.toString(findChampionSpeed())+" by "+findChampionName());
			}
		}
		
	}	
	
	
	public void playAgain(View view){
		
		 Intent i = new Intent(Ranking.this, Database.class);
         startActivity(i);
         
         
		
	}
	
	
}