.class public Lcom/example/pelicancross/Database;
.super Lcom/example/pelicancross/MainActivity;
.source "Database.java"


# instance fields
.field public c_player_name:Landroid/widget/TextView;

.field public champion_name:Landroid/widget/TextView;

.field public cspeed:Landroid/widget/TextView;

.field public player_name:Landroid/widget/EditText;

.field public playerspeed:I

.field public pspeed:Landroid/widget/TextView;

.field public ratingBar:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/example/pelicancross/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPlayers(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/example/pelicancross/DatabaseHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/example/pelicancross/DatabaseHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 72
    .local v0, dbHandler:Lcom/example/pelicancross/DatabaseHandler;
    invoke-virtual {v0}, Lcom/example/pelicancross/DatabaseHandler;->dropTable()V

    .line 73
    const v1, 0x7f0b0016

    invoke-virtual {p0, v1}, Lcom/example/pelicancross/Database;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/example/pelicancross/Database;->cspeed:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0b0014

    invoke-virtual {p0, v1}, Lcom/example/pelicancross/Database;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/example/pelicancross/Database;->pspeed:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/example/pelicancross/Database;->cspeed:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/example/pelicancross/Database;->pspeed:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcom/example/pelicancross/Database;->ratingBar:Landroid/widget/RatingBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 80
    return-void
.end method

.method public findChampionName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v1, Lcom/example/pelicancross/DatabaseHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v3, v3, v2}, Lcom/example/pelicancross/DatabaseHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 104
    .local v1, dbHandler:Lcom/example/pelicancross/DatabaseHandler;
    invoke-virtual {v1}, Lcom/example/pelicancross/DatabaseHandler;->findChampionName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, champion:Ljava/lang/String;
    return-object v0
.end method

.method public findChampionSpeed()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v1, Lcom/example/pelicancross/DatabaseHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v3, v3, v2}, Lcom/example/pelicancross/DatabaseHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 98
    .local v1, dbHandler:Lcom/example/pelicancross/DatabaseHandler;
    invoke-virtual {v1}, Lcom/example/pelicancross/DatabaseHandler;->findChampionSpeed()I

    move-result v0

    .line 99
    .local v0, champion:I
    return v0
.end method

.method public findCurrentSpeed(Ljava/lang/String;)I
    .locals 4
    .parameter "playername"

    .prologue
    const/4 v3, 0x0

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, player:Lcom/example/pelicancross/Player;
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 92
    :goto_0
    return v2

    .line 88
    :cond_0
    new-instance v0, Lcom/example/pelicancross/DatabaseHandler;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v3, v3, v2}, Lcom/example/pelicancross/DatabaseHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 89
    .local v0, dbHandler:Lcom/example/pelicancross/DatabaseHandler;
    invoke-virtual {v0, p1}, Lcom/example/pelicancross/DatabaseHandler;->findPlayer(Ljava/lang/String;)Lcom/example/pelicancross/Player;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/example/pelicancross/Player;->getPlayerSpeed()I

    move-result v2

    goto :goto_0
.end method

.method public newPlayer(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 37
    iget-object v4, p0, Lcom/example/pelicancross/Database;->msg:Ljava/lang/String;

    const-string v5, "New Player being created"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Lcom/example/pelicancross/DatabaseHandler;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v6, v6, v4}, Lcom/example/pelicancross/DatabaseHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    .local v0, dbHandler:Lcom/example/pelicancross/DatabaseHandler;
    sget v4, Lcom/example/pelicancross/Database;->speed:I

    iput v4, p0, Lcom/example/pelicancross/Database;->playerspeed:I

    .line 41
    iget-object v4, p0, Lcom/example/pelicancross/Database;->msg:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/example/pelicancross/Database;->playerspeed:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " speed has been added to the database"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v4, p0, Lcom/example/pelicancross/Database;->player_name:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    iget-object v4, p0, Lcom/example/pelicancross/Database;->player_name:Landroid/widget/EditText;

    const-string v5, "Please type a name!"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 63
    :goto_0
    invoke-virtual {v0}, Lcom/example/pelicancross/DatabaseHandler;->getAllPlayers()Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/example/pelicancross/Player;>;"
    iget-object v4, p0, Lcom/example/pelicancross/Database;->msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 48
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/example/pelicancross/Player;>;"
    :cond_0
    new-instance v3, Lcom/example/pelicancross/Player;

    invoke-direct {v3}, Lcom/example/pelicancross/Player;-><init>()V

    .line 49
    .local v3, player:Lcom/example/pelicancross/Player;
    iget-object v4, p0, Lcom/example/pelicancross/Database;->player_name:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/example/pelicancross/Player;->setPlayerName(Ljava/lang/String;)V

    .line 50
    iget v4, p0, Lcom/example/pelicancross/Database;->playerspeed:I

    invoke-virtual {v3, v4}, Lcom/example/pelicancross/Player;->setPlayerSpeed(I)V

    .line 53
    iget-object v4, p0, Lcom/example/pelicancross/Database;->player_name:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/example/pelicancross/Database;->playername:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v3}, Lcom/example/pelicancross/DatabaseHandler;->addPlayer(Lcom/example/pelicancross/Player;)V

    .line 56
    iget-object v4, p0, Lcom/example/pelicancross/Database;->msg:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/example/pelicancross/Database;->playername:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " has been added to the database"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/example/pelicancross/Ranking;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/example/pelicancross/Database;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/example/pelicancross/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Database;->setContentView(I)V

    .line 29
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Database;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/pelicancross/Database;->player_name:Landroid/widget/EditText;

    .line 30
    iget-object v0, p0, Lcom/example/pelicancross/Database;->msg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Speed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/example/pelicancross/Database;->speed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method
