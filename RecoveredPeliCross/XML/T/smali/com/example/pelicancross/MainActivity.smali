.class public Lcom/example/pelicancross/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field public static playername:Ljava/lang/String;

.field public static speed:I


# instance fields
.field msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    const-string v0, "Playing: "

    iput-object v0, p0, Lcom/example/pelicancross/MainActivity;->msg:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public exitApp(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/example/pelicancross/MainActivity;->msg:Ljava/lang/String;

    const-string v1, "Game Finished ****************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/MainActivity;->setContentView(I)V

    .line 23
    return-void
.end method

.method public play(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/pelicancross/Accelerometer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/pelicancross/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 30
    iget-object v1, p0, Lcom/example/pelicancross/MainActivity;->msg:Ljava/lang/String;

    const-string v2, "Clicked on Play****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public showInstructions(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/pelicancross/Instructions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/pelicancross/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    iget-object v1, p0, Lcom/example/pelicancross/MainActivity;->msg:Ljava/lang/String;

    const-string v2, "Showing instructions ****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public showRank(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/pelicancross/Ranking;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/pelicancross/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/example/pelicancross/MainActivity;->finish()V

    .line 37
    iget-object v1, p0, Lcom/example/pelicancross/MainActivity;->msg:Ljava/lang/String;

    const-string v2, "Clicked on Rank ****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method
