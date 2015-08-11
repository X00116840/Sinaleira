package android.support.v4.widget;

import android.widget.EdgeEffect;

class EdgeEffectCompatLollipop
{
  public static boolean onPull(Object paramObject, float paramFloat1, float paramFloat2)
  {
    ((EdgeEffect)paramObject).onPull(paramFloat1, paramFloat2);
    return true;
  }
}


/* Location:           D:\workspace\Sinaleira\RecoveringPelicross\dex2jar-0.0.9.15\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.EdgeEffectCompatLollipop
 * JD-Core Version:    0.7.0.1
 */