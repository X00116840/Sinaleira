.class public Lcom/example/pelicancross/Player;
.super Ljava/lang/Object;
.source "Player.java"


# instance fields
.field private _id:I

.field private _playername:Ljava/lang/String;

.field private _speed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "playername"    # Ljava/lang/String;
    .param p3, "speed"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/example/pelicancross/Player;->_id:I

    .line 15
    iput-object p2, p0, Lcom/example/pelicancross/Player;->_playername:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/example/pelicancross/Player;->_speed:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "playername"    # Ljava/lang/String;
    .param p2, "speed"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/example/pelicancross/Player;->_playername:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/example/pelicancross/Player;->_speed:I

    .line 22
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/example/pelicancross/Player;->_id:I

    return v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/example/pelicancross/Player;->_playername:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerSpeed()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/example/pelicancross/Player;->_speed:I

    return v0
.end method

.method public setID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/example/pelicancross/Player;->_id:I

    .line 26
    return-void
.end method

.method public setPlayerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "playername"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/example/pelicancross/Player;->_playername:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setPlayerSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/example/pelicancross/Player;->_speed:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Player [id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/example/pelicancross/Player;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Player="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/pelicancross/Player;->_playername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/example/pelicancross/Player;->_speed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
