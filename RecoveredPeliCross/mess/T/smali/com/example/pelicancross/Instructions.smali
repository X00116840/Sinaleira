.class public Lcom/example/pelicancross/Instructions;
.super Lcom/example/pelicancross/MainActivity;
.source "Instructions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/example/pelicancross/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/example/pelicancross/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 9
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Instructions;->setContentView(I)V

    .line 10
    return-void
.end method
