.class public interface abstract Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract setActionBarDescription(I)V
    .parameter
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end parameter
.end method

.method public abstract setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end parameter
.end method
