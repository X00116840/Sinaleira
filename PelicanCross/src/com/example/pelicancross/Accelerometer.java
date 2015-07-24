package com.example.pelicancross;

import java.util.Date;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.widget.ImageView;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class Accelerometer extends MainActivity implements SensorEventListener {
	
	private ImageView redLight, amberLight, greenLight;
	private float lastX, lastY, lastZ;
	private TextView currentX, currentY, currentZ;
	private SensorManager sensorManager;
	private Sensor accelerometer;
	
	
	private float deltaX = 0;
	private float deltaY = 0;
	private float deltaZ = 0;
	
	//Time control for the traffic lights
	Date date = new Date(); 
	Long time;
	int timeChange=0;
	private int TIME_OUT=6; 

	@Override
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		
		setContentView(R.layout.accelerometer);	
		initializeViews();
		
		sensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
		if (sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER) != null) {
			// success! we have an accelerometer

			accelerometer = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
			sensorManager.registerListener(this, accelerometer, SensorManager.SENSOR_DELAY_NORMAL);
			//Log.d(msg, "Accelerometer found");

			time = (long) (((((date.getHours() * 60) + date.getMinutes())* 60 ) + date.getSeconds()));	

		} else {
			// failed! we don't have an accelerometer!
		}
	}	
	
    
	 public void timer(){
		Date date2; 
		long timeAux;
		
		date2 = new Date(); 
		timeAux = (long) (((((date2.getHours() * 60) + date2.getMinutes())* 60 ) + date2.getSeconds()));		
		changingLights((int)timeAux);
					
		if(timeAux > time + TIME_OUT){
			Intent i = new Intent(Accelerometer.this, Database.class);
			startActivity(i);			         
			Accelerometer.this.finish();
		}			
	 }

	public void initializeViews() {
		redLight = (ImageView) findViewById(R.id.red_lgt);	
		amberLight = (ImageView) findViewById(R.id.amber_lgt);
		greenLight = (ImageView) findViewById(R.id.green_lgt);
		
		//displays x y z
		currentX = (TextView) findViewById(R.id.currentX);
		currentY = (TextView) findViewById(R.id.currentY);
		currentZ = (TextView) findViewById(R.id.currentZ);
	}

	public boolean changingLights(int t){
		
		Log.d(msg, "changingLights time = "+ t);
		redLight.setImageResource(R.drawable.redlight);

 	
    	if(t>time + 5){
  	        redLight.setImageResource(R.drawable.redlight);
  	    	greenLight.setImageResource(R.drawable.lightoff);
  	    	amberLight.setImageResource(R.drawable.lightoff);
  	    	Log.d(msg, "REDLIGHT time = "+t);
  	    	onPause();
  	    	return true;
  		}if(t>time + 4){
 	        amberLight.setImageResource(R.drawable.amberlight);
 	    	greenLight.setImageResource(R.drawable.lightoff);
 	     	redLight.setImageResource(R.drawable.lightoff);	
 	     	Log.d(msg, "AMBER time = "+t);
 	     	return true;
 		}if(t>time + 2){
	        amberLight.setImageResource(R.drawable.lightoff);
	    	greenLight.setImageResource(R.drawable.greenlight);
	     	redLight.setImageResource(R.drawable.lightoff);
	     	Log.d(msg, "GREEN time = "+t);
	     	onResume();
	     	return true;
	     }return false;		
	 }
		

	
	//onResume() register the accelerometer for listening the events
	protected void onResume() {
		super.onResume();
		Log.d(msg, "onResume *********************************");
		sensorManager.registerListener(this, accelerometer, SensorManager.SENSOR_DELAY_NORMAL);
	
	}

	//onPause() unregister the accelerometer for stop listening the events
	protected void onPause() {
		super.onPause();
		Log.d(msg, "onPause *********************************");
		sensorManager.unregisterListener(this);
        Accelerometer.this.finish();
        Intent i = new Intent(Accelerometer.this, Database.class);
        startActivity(i); 
	}

	
	@Override
	public void onSensorChanged(SensorEvent event) {
		//Log.d(msg, "onSensorChanged *********************************");
		timer();
		displayCleanValues();
		displayCurrentValues();

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
		
		speed=(int) (lastX+lastY+lastZ);
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
		
	}

    public void restart(View v) {
      	 Intent i = new Intent(Accelerometer.this, MainActivity.class);
         startActivity(i);
         Accelerometer.this.finish();
      }
    
    @Override
    public void onBackPressed() {
       moveTaskToBack(true); 
       Accelerometer.this.finish();
    }
    
	@Override
	public void onAccuracyChanged(Sensor sensor, int accuracy) {}
	
}
