.class public Lcom/example/pelicancross/Ranking;
.super Lcom/example/pelicancross/Database;
.source "Ranking.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/example/pelicancross/Database;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 15
    invoke-super {p0, p1}, Lcom/example/pelicancross/Database;->onCreate(Landroid/os/Bundle;)V

    .line 16
    iget-object v0, p0, Lcom/example/pelicancross/Ranking;->msg:Ljava/lang/String;

    const-string v3, "show rank after playing ***********************"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Ranking;->setContentView(I)V

    .line 20
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Ranking;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/example/pelicancross/Ranking;->ratingBar:Landroid/widget/RatingBar;

    .line 21
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Ranking;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/pelicancross/Ranking;->pspeed:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Ranking;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/pelicancross/Ranking;->cspeed:Landroid/widget/TextView;

    .line 24
    sget-object v0, Lcom/example/pelicancross/Ranking;->playername:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/example/pelicancross/Ranking;->findChampionName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/example/pelicancross/Ranking;->pspeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/example/pelicancross/Ranking;->playername:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/example/pelicancross/Ranking;->findCurrentSpeed(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Start Playing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/example/pelicancross/Ranking;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 28
    iget-object v0, p0, Lcom/example/pelicancross/Ranking;->cspeed:Landroid/widget/TextView;

    const-string v1, "0 Become the champion!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 24
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 31
    :cond_2
    sget-object v0, Lcom/example/pelicancross/Ranking;->playername:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 32
    iget-object v0, p0, Lcom/example/pelicancross/Ranking;->pspeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/example/pelicancross/Ranking;->playername:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/example/pelicancross/Ranking;->findCurrentSpeed(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Start Playing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/example/pelicancross/Ranking;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 34
    iget-object v0, p0, Lcom/example/pelicancross/Ranking;->cspeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/example/pelicancross/Ranking;->findChampionSpeed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/example/pelicancross/Ranking;->findChampionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/example/pelicancross/Ranking;->pspeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/example/pelicancross/Ranking;->playername:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/example/pelicancross/Ranking;->findCurrentSpeed(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/example/pelicancross/Ranking;->playername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/example/pelicancross/Ranking;->ratingBar:Landroid/widget/RatingBar;

    sget-object v1, Lcom/example/pelicancross/Ranking;->playername:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/example/pelicancross/Ranking;->findCurrentSpeed(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {p0}, Lcom/example/pelicancross/Ranking;->findChampionSpeed()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 38
    iget-object v0, p0, Lcom/example/pelicancross/Ranking;->cspeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/example/pelicancross/Ranking;->findChampionSpeed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/example/pelicancross/Ranking;->findChampionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public playAgain(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/pelicancross/Accelerometer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Ranking;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/example/pelicancross/Ranking;->finish()V

    .line 49
    return-void
.end method
