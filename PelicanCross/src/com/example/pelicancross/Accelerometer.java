package com.example.pelicancross;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
//import android.os.SystemClock;
import android.view.View;
//import android.widget.Chronometer;
import android.widget.ImageView;
//import android.util.Log;
import android.widget.TextView;


public class Accelerometer extends Database implements SensorEventListener {
		
	
	private ImageView redLight, amberLight, greenLight;
		
	private float lastX, lastY, lastZ;
	private long lastUpdate = 0;
	

	private SensorManager sensorManager;
	private Sensor accelerometer;
	//private Chronometer chronometer;
	private float deltaX = 0;
	private float deltaY = 0;
	private float deltaZ = 0;

	private TextView currentX, currentY, currentZ, tmp;

	@Override
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		
		setContentView(R.layout.accelerometer);	
		//Log.d(msg, "Accelerometer Activity");
		initializeViews();
		changingLights();
		
		sensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
		if (sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER) != null) {
			// success! we have an accelerometer

			accelerometer = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
			sensorManager.registerListener(this, accelerometer, SensorManager.SENSOR_DELAY_NORMAL);
			//Log.d(msg, "Accelerometer found");
			
		} else {
			// failed! we don't have an accelerometer!
		}
	}	
	

	public void initializeViews() {

		
		redLight = (ImageView) findViewById(R.id.red_lgt);	
		amberLight = (ImageView) findViewById(R.id.amber_lgt);
		greenLight = (ImageView) findViewById(R.id.green_lgt);
		tmp = (TextView) findViewById(R.id.temp);
		//displays x y z
		currentX = (TextView) findViewById(R.id.currentX);
		currentY = (TextView) findViewById(R.id.currentY);
		currentZ = (TextView) findViewById(R.id.currentZ);
	}

	public void changingLights(){		
		//Start Red		

	        }
		
	
	//onResume() register the accelerometer for listening the events
	protected void onResume() {
		super.onResume();
		sensorManager.registerListener(this, accelerometer, SensorManager.SENSOR_DELAY_NORMAL);
	}

	//onPause() unregister the accelerometer for stop listening the events
	protected void onPause() {
		super.onPause();
		sensorManager.unregisterListener(this);
	}

	
	@Override
	public void onSensorChanged(SensorEvent event) {

		// clean current values
		displayCleanValues();
		// display the current x,y,z accelerometer values
		displayCurrentValues();
		// display the max x,y,z accelerometer values
		//displayMaxValues();

		// get the change of the x,y,z values of the accelerometer
		deltaX = Math.abs(lastX - event.values[0]);
		deltaY = Math.abs(lastY - event.values[1]);
		deltaZ = Math.abs(lastZ - event.values[2]);
		
		// if the change is below 2, it is just plain noise
		if (deltaX < 2)
			deltaX = 0;
		if (deltaY < 2)
			deltaY = 0;
		if (deltaZ < 2)
			deltaZ = 0;

		// set the last know values of x,y,z
		lastX = event.values[0];
		lastY = event.values[1];
		lastZ = event.values[2];
		
		//Last Update represents the Chronometer and each one has a second of time
		lastUpdate = lastUpdate+1; 
		

    	
		if(lastUpdate>5){
	        redLight.setImageResource(R.drawable.redlight);
	    	greenLight.setImageResource(R.drawable.lightoff);
	    	amberLight.setImageResource(R.drawable.lightoff);

	        }
		if(lastUpdate>10){
	        amberLight.setImageResource(R.drawable.lightoff);
	    	greenLight.setImageResource(R.drawable.greenlight);
	     	redLight.setImageResource(R.drawable.lightoff);

	     	}
		if(lastUpdate>15){
	        amberLight.setImageResource(R.drawable.amberlight);
	    	greenLight.setImageResource(R.drawable.lightoff);
	     	redLight.setImageResource(R.drawable.lightoff);	

		}
		if(lastUpdate>20){
			
	        redLight.setImageResource(R.drawable.redlight);
	    	greenLight.setImageResource(R.drawable.lightoff);
	    	amberLight.setImageResource(R.drawable.lightoff);
	    	
		    	lastUpdate=0;
		    	Intent i = new Intent(Accelerometer.this, Ranking.class);
				startActivity(i);
		    }
        
	}

	
	public void displayCleanValues() {
		currentX.setText("0.0");
		currentY.setText("0.0");
		currentZ.setText("0.0");

	}

	// display the current x,y,z accelerometer values
	public void displayCurrentValues() {
		currentX.setText(Float.toString(deltaX));
		currentY.setText(Float.toString(deltaY));
		currentZ.setText(Float.toString(deltaZ));
		tmp.setText(Float.toString(lastUpdate));
		
	
	}
	public void showRank(View view){

		Intent i = new Intent(Accelerometer.this, Ranking.class);
		startActivity(i);
         
         
		
	}
	@Override
	public void onAccuracyChanged(Sensor sensor, int accuracy) {}
}
