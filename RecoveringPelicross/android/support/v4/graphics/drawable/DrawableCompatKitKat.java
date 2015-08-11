package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompatKitKat
{
  public static boolean isAutoMirrored(Drawable paramDrawable)
  {
    return paramDrawable.isAutoMirrored();
  }
  
  public static void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean)
  {
    paramDrawable.setAutoMirrored(paramBoolean);
  }
  
  public static Drawable wrapForTinting(Drawable paramDrawable)
  {
    if (!(paramDrawable instanceof DrawableWrapperKitKat)) {
      paramDrawable = new DrawableWrapperKitKat(paramDrawable);
    }
    return paramDrawable;
  }
}


/* Location:           D:\workspace\Sinaleira\RecoveringPelicross\dex2jar-0.0.9.15\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableCompatKitKat
 * JD-Core Version:    0.7.0.1
 */