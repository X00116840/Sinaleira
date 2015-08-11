package android.support.v4.app;

import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.view.View;

abstract interface FragmentContainer
{
  @Nullable
  public abstract View findViewById(@IdRes int paramInt);
  
  public abstract boolean hasView();
}


/* Location:           D:\workspace\Sinaleira\RecoveringPelicross\dex2jar-0.0.9.15\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentContainer
 * JD-Core Version:    0.7.0.1
 */