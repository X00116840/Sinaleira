.class public Lcom/example/pelicancross/DatabaseHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHandler.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_PLAYERNAME:Ljava/lang/String; = "playername"

.field public static final COLUMN_SPEED:Ljava/lang/String; = "speed"

.field private static final DATABASE_NAME:Ljava/lang/String; = "playerDB.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_PLAYERS:Ljava/lang/String; = "players"


# instance fields
.field msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "playername"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "speed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/example/pelicancross/DatabaseHandler;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 32
    const-string v0, "playerDB.db"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    const-string v0, "Debugging MDBH: "

    iput-object v0, p0, Lcom/example/pelicancross/DatabaseHandler;->msg:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public addPlayer(Lcom/example/pelicancross/Player;)V
    .locals 4
    .param p1, "player"    # Lcom/example/pelicancross/Player;

    .prologue
    .line 54
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "playername"

    invoke-virtual {p1}, Lcom/example/pelicancross/Player;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "speed"

    invoke-virtual {p1}, Lcom/example/pelicancross/Player;->getPlayerSpeed()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    invoke-virtual {p0}, Lcom/example/pelicancross/DatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "players"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 59
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 60
    return-void
.end method

.method public deletePlayer(Ljava/lang/String;)Z
    .locals 10
    .param p1, "playername"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 86
    const/4 v4, 0x0

    .line 88
    .local v4, "result":Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Select * FROM players WHERE playername =  \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/pelicancross/DatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 92
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v2, Lcom/example/pelicancross/Player;

    invoke-direct {v2}, Lcom/example/pelicancross/Player;-><init>()V

    .line 96
    .local v2, "player":Lcom/example/pelicancross/Player;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/example/pelicancross/Player;->setID(I)V

    .line 98
    const-string v5, "players"

    const-string v6, "_id = ?"

    .line 99
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2}, Lcom/example/pelicancross/Player;->getID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 98
    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v4, 0x1

    .line 103
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    return v4
.end method

.method public dropTable()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/example/pelicancross/DatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DROP TABLE IF EXISTS players"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/example/pelicancross/DatabaseHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 142
    return-void
.end method

.method public findChampionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    const-string v2, "Select _id, playername,  MAX(speed) FROM players"

    .line 156
    .local v2, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/pelicancross/DatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 157
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 158
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 159
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public findChampionSpeed()I
    .locals 4

    .prologue
    .line 146
    const-string v2, "Select _id, playername,  MAX(speed) FROM players"

    .line 147
    .local v2, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/pelicancross/DatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 148
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 149
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    return v3
.end method

.method public findPlayer(Ljava/lang/String;)Lcom/example/pelicancross/Player;
    .locals 6
    .param p1, "playername"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Select * FROM players WHERE playername =  \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/pelicancross/DatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 67
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 69
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v2, Lcom/example/pelicancross/Player;

    invoke-direct {v2}, Lcom/example/pelicancross/Player;-><init>()V

    .line 71
    .local v2, "player":Lcom/example/pelicancross/Player;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/example/pelicancross/Player;->setID(I)V

    .line 74
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/example/pelicancross/Player;->setPlayerName(Ljava/lang/String;)V

    .line 75
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/example/pelicancross/Player;->setPlayerSpeed(I)V

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 80
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    return-object v2

    .line 78
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllPlayers()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/example/pelicancross/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 113
    .local v3, "players":Ljava/util/List;, "Ljava/util/List<Lcom/example/pelicancross/Player;>;"
    const-string v4, "SELECT  * FROM players"

    .line 116
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/pelicancross/DatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 117
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 121
    .local v2, "item":Lcom/example/pelicancross/Player;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    :cond_0
    new-instance v2, Lcom/example/pelicancross/Player;

    .end local v2    # "item":Lcom/example/pelicancross/Player;
    invoke-direct {v2}, Lcom/example/pelicancross/Player;-><init>()V

    .line 124
    .restart local v2    # "item":Lcom/example/pelicancross/Player;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/example/pelicancross/Player;->setID(I)V

    .line 125
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/example/pelicancross/Player;->setPlayerName(Ljava/lang/String;)V

    .line 126
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/example/pelicancross/Player;->setPlayerSpeed(I)V

    .line 129
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    :cond_1
    return-object v3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 38
    const-string v0, "CREATE TABLE players(_id INTEGER PRIMARY KEY,playername TEXT,speed INTEGER)"

    .line 42
    .local v0, "CREATE_PLAYERS_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 48
    const-string v0, "DROP TABLE IF EXISTS players"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/example/pelicancross/DatabaseHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    return-void
.end method
