package com.example.streetcrossing;

import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Date;

public class Accelerometer
  extends MainActivity
  implements SensorEventListener
{
  private int TIME_OUT = 6;
  private Sensor accelerometer;
  private ImageView amberLight;
  private TextView currentX;
  private TextView currentY;
  private TextView currentZ;
  Date date = new Date();
  private float deltaX = 0.0F;
  private float deltaY = 0.0F;
  private float deltaZ = 0.0F;
  private ImageView greenLight;
  private float lastX;
  private float lastY;
  private float lastZ;
  private ImageView redLight;
  private SensorManager sensorManager;
  Long time;
  int timeChange = 0;
  
  public boolean changingLights(int paramInt)
  {
    Log.d(this.msg, "changingLights time = " + paramInt);
    this.redLight.setImageResource(2130837515);
    if (paramInt > 5L + this.time.longValue())
    {
      this.redLight.setImageResource(2130837515);
      this.greenLight.setImageResource(2130837511);
      this.amberLight.setImageResource(2130837511);
      Log.d(this.msg, "REDLIGHT time = " + paramInt);
      onPause();
      return true;
    }
    if (paramInt > 4L + this.time.longValue())
    {
      this.amberLight.setImageResource(2130837505);
      this.greenLight.setImageResource(2130837511);
      this.redLight.setImageResource(2130837511);
      Log.d(this.msg, "AMBER time = " + paramInt);
      return true;
    }
    if (paramInt > 2L + this.time.longValue())
    {
      this.amberLight.setImageResource(2130837511);
      this.greenLight.setImageResource(2130837509);
      this.redLight.setImageResource(2130837511);
      Log.d(this.msg, "GREEN time = " + paramInt);
      onResume();
      return true;
    }
    return false;
  }
  
  public void displayCleanValues()
  {
    this.currentX.setText("0.0");
    this.currentY.setText("0.0");
    this.currentZ.setText("0.0");
  }
  
  public void displayCurrentValues()
  {
    this.currentX.setText(Float.toString(this.deltaX));
    this.currentY.setText(Float.toString(this.deltaY));
    this.currentZ.setText(Float.toString(this.deltaZ));
  }
  
  public void initializeViews()
  {
    this.redLight = ((ImageView)findViewById(2131427330));
    this.amberLight = ((ImageView)findViewById(2131427331));
    this.greenLight = ((ImageView)findViewById(2131427332));
    this.currentX = ((TextView)findViewById(2131427333));
    this.currentY = ((TextView)findViewById(2131427334));
    this.currentZ = ((TextView)findViewById(2131427335));
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onBackPressed()
  {
    moveTaskToBack(true);
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903040);
    initializeViews();
    this.sensorManager = ((SensorManager)getSystemService("sensor"));
    if (this.sensorManager.getDefaultSensor(1) != null)
    {
      this.accelerometer = this.sensorManager.getDefaultSensor(1);
      this.sensorManager.registerListener(this, this.accelerometer, 3);
      this.time = Long.valueOf(60 * (60 * this.date.getHours() + this.date.getMinutes()) + this.date.getSeconds());
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    Log.d(this.msg, "onPause *********************************");
    this.sensorManager.unregisterListener(this);
    finish();
    startActivity(new Intent(this, Database.class));
  }
  
  protected void onResume()
  {
    super.onResume();
    Log.d(this.msg, "onResume *********************************");
    this.sensorManager.registerListener(this, this.accelerometer, 3);
  }
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    timer();
    displayCleanValues();
    displayCurrentValues();
    this.deltaX = Math.abs(this.lastX - paramSensorEvent.values[0]);
    this.deltaY = Math.abs(this.lastY - paramSensorEvent.values[1]);
    this.deltaZ = Math.abs(this.lastZ - paramSensorEvent.values[2]);
    if (this.deltaX < 2.0F) {
      this.deltaX = 0.0F;
    }
    if (this.deltaY < 2.0F) {
      this.deltaY = 0.0F;
    }
    if (this.deltaZ < 2.0F) {
      this.deltaZ = 0.0F;
    }
    this.lastX = paramSensorEvent.values[0];
    this.lastY = paramSensorEvent.values[1];
    this.lastZ = paramSensorEvent.values[2];
    speed = (int)(this.lastX + this.lastY + this.lastZ);
  }
  
  public void restart(View paramView)
  {
    startActivity(new Intent(this, MainActivity.class));
    finish();
  }
  
  public void timer()
  {
    Date localDate = new Date();
    long l = 60 * (60 * localDate.getHours() + localDate.getMinutes()) + localDate.getSeconds();
    changingLights((int)l);
    if (l > this.time.longValue() + this.TIME_OUT)
    {
      startActivity(new Intent(this, Database.class));
      finish();
    }
  }
}