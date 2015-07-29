package com.example.pelicancross;

//import java.util.List;

import java.util.List;
import java.util.Random;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.RatingBar;
import android.widget.TextView;


public class Database extends MainActivity{	
	
	public EditText player_name;
	public int playerspeed;
	public String msg = "Debugging Database: ";
	public RatingBar ratingBar;
	public TextView pspeed, cspeed, c_player_name, champion_name;

	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);	
		
		setContentView(R.layout.database_entry);	
		
		//find EditText player name on the screen
		player_name = (EditText)findViewById(R.id.player_name);
		
	}
	

    public void newPlayer (View view) {
    	
	   DatabaseHandler dbHandler = new DatabaseHandler(this, null, null, 1);
	
	   //temporary speed random
	   Random rm = new Random();
	   playerspeed = rm.nextInt(50);
	

	   if(player_name.getText().toString().trim().equals("")){
		   player_name.setError( "Please type a name!" );
	   }else{
		   
		   Player player = new Player();
		   player.setPlayerName(player_name.getText().toString());
		   player.setPlayerSpeed(playerspeed);
		   
		   
		   playername = player_name.getText().toString();
		   dbHandler.addPlayer(player);
		   
		   Log.d(msg, playername + " has been added to the database");
		
		   
		   Intent i = new Intent(Database.this, Accelerometer.class);
	       startActivity(i);
	      
	   }
	   
	   List<Player> list = dbHandler.getAllPlayers();
	   Log.d(msg, list.toString());
	   
	           		   	
  }
    
    public void clearPlayers (View view){
    	   
    	   DatabaseHandler dbHandler = new DatabaseHandler(this, null, null, 1);
    	   dbHandler.dropTable();
    	   cspeed = (TextView) findViewById(R.id.speed_db);
    	   pspeed = (TextView) findViewById(R.id.currentspeed_db);
    	   
    	   cspeed.setText("0");
    	   pspeed.setText("0");
    	   ratingBar.setRating(0);
   		
    	   Log.d(msg, "Rank Cleared (drop table)");
    	   
    	   
    }

    
	public int findCurrentSpeed(String playername){
    	
    	Player player = null;
    	if (playername == null){return 0; 	}else{
    
	 	   DatabaseHandler dbHandler = new DatabaseHandler(this, null, null, 1);
	 	   player = (dbHandler.findPlayer(playername));
	    }
    	
		return player.getPlayerSpeed();
 }
    
    
    public int findChampionSpeed(){
   	   DatabaseHandler dbHandler = new DatabaseHandler(this, null, null, 1);
   	   int champion = (dbHandler.findChampionSpeed());
   	   return champion;
    }
    
    public String findChampionName(){
    	   DatabaseHandler dbHandler = new DatabaseHandler(this, null, null, 1);
    	   String champion = (dbHandler.findChampionName());
    	   return champion;
     }
     
    
    @Override
    public void onBackPressed() {
       moveTaskToBack(true); 
       Database.this.finish();
    }
}
