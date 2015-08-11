package com.example.pelicancross;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.LinkedList;
import java.util.List;

public class DatabaseHandler
  extends SQLiteOpenHelper
{
  public static final String[] COLUMNS = { "_id", "playername", "speed" };
  public static final String COLUMN_ID = "_id";
  public static final String COLUMN_PLAYERNAME = "playername";
  public static final String COLUMN_SPEED = "speed";
  private static final String DATABASE_NAME = "playerDB.db";
  private static final int DATABASE_VERSION = 1;
  private static final String TABLE_PLAYERS = "players";
  String msg = "Debugging MDBH: ";
  
  public DatabaseHandler(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, "playerDB.db", paramCursorFactory, 1);
  }
  
  public void addPlayer(Player paramPlayer)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("playername", paramPlayer.getPlayerName());
    localContentValues.put("speed", Integer.valueOf(paramPlayer.getPlayerSpeed()));
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    localSQLiteDatabase.insert("players", null, localContentValues);
    localSQLiteDatabase.close();
  }
  
  public boolean deletePlayer(String paramString)
  {
    String str = "Select * FROM players WHERE playername =  \"" + paramString + "\"";
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    Cursor localCursor = localSQLiteDatabase.rawQuery(str, null);
    Player localPlayer = new Player();
    boolean bool1 = localCursor.moveToFirst();
    boolean bool2 = false;
    if (bool1)
    {
      localPlayer.setID(Integer.parseInt(localCursor.getString(0)));
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(localPlayer.getID());
      localSQLiteDatabase.delete("players", "_id = ?", arrayOfString);
      localCursor.close();
      bool2 = true;
    }
    localSQLiteDatabase.close();
    return bool2;
  }
  
  public void dropTable()
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    localSQLiteDatabase.execSQL("DROP TABLE IF EXISTS players");
    onCreate(localSQLiteDatabase);
  }
  
  public String findChampionName()
  {
    Cursor localCursor = getWritableDatabase().rawQuery("Select _id, playername,  MAX(speed) FROM players", null);
    localCursor.moveToFirst();
    return localCursor.getString(1);
  }
  
  public int findChampionSpeed()
  {
    Cursor localCursor = getWritableDatabase().rawQuery("Select _id, playername,  MAX(speed) FROM players", null);
    localCursor.moveToFirst();
    return localCursor.getInt(2);
  }
  
  public Player findPlayer(String paramString)
  {
    String str = "Select * FROM players WHERE playername =  \"" + paramString + "\"";
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    Cursor localCursor = localSQLiteDatabase.rawQuery(str, null);
    Player localPlayer = new Player();
    if (localCursor.moveToFirst())
    {
      localCursor.moveToFirst();
      localPlayer.setID(Integer.parseInt(localCursor.getString(0)));
      localPlayer.setPlayerName(localCursor.getString(1));
      localPlayer.setPlayerSpeed(Integer.parseInt(localCursor.getString(2)));
      localCursor.close();
    }
    for (;;)
    {
      localSQLiteDatabase.close();
      return localPlayer;
      localPlayer = null;
    }
  }
  
  public List<Player> getAllPlayers()
  {
    LinkedList localLinkedList = new LinkedList();
    Cursor localCursor = getWritableDatabase().rawQuery("SELECT  * FROM players", null);
    if (localCursor.moveToFirst()) {
      do
      {
        Player localPlayer = new Player();
        localPlayer.setID(Integer.parseInt(localCursor.getString(0)));
        localPlayer.setPlayerName(localCursor.getString(1));
        localPlayer.setPlayerSpeed(localCursor.getInt(2));
        localLinkedList.add(localPlayer);
      } while (localCursor.moveToNext());
    }
    return localLinkedList;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE players(_id INTEGER PRIMARY KEY,playername TEXT,speed INTEGER)");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS players");
    onCreate(paramSQLiteDatabase);
  }
}


/* Location:           D:\workspace\Sinaleira\RecoveringPelicross\dex2jar-0.0.9.15\classes-dex2jar.jar
 * Qualified Name:     com.example.pelicancross.DatabaseHandler
 * JD-Core Version:    0.7.0.1
 */