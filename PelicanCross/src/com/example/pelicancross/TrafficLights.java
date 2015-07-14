package com.example.pelicancross;

import android.os.Bundle;
import android.util.Log;


public class TrafficLights extends MainActivity {

	@Override
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
	
		Log.d(msg, "traffic started");
		
		setContentView(R.layout.traffic_lights);

	}

}
