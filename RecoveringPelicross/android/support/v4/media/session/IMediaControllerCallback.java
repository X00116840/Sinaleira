package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import java.util.List;

public abstract interface IMediaControllerCallback
  extends IInterface
{
  public abstract void onEvent(String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void onExtrasChanged(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat)
    throws RemoteException;
  
  public abstract void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat)
    throws RemoteException;
  
  public abstract void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList)
    throws RemoteException;
  
  public abstract void onQueueTitleChanged(CharSequence paramCharSequence)
    throws RemoteException;
  
  public abstract void onSessionDestroyed()
    throws RemoteException;
  
  public abstract void onVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IMediaControllerCallback
  {
    private static final String DESCRIPTOR = "android.support.v4.media.session.IMediaControllerCallback";
    static final int TRANSACTION_onEvent = 1;
    static final int TRANSACTION_onExtrasChanged = 7;
    static final int TRANSACTION_onMetadataChanged = 4;
    static final int TRANSACTION_onPlaybackStateChanged = 3;
    static final int TRANSACTION_onQueueChanged = 5;
    static final int TRANSACTION_onQueueTitleChanged = 6;
    static final int TRANSACTION_onSessionDestroyed = 2;
    static final int TRANSACTION_onVolumeInfoChanged = 8;
    
    public Stub()
    {
      attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
    }
    
    public static IMediaControllerCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
      if ((localIInterface != null) && ((localIInterface instanceof IMediaControllerCallback))) {
        return (IMediaControllerCallback)localIInterface;
      }
      return new Proxy(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
        return true;
      case 1: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        String str = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {}
        for (Bundle localBundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; localBundle2 = null)
        {
          onEvent(str, localBundle2);
          return true;
        }
      case 2: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        onSessionDestroyed();
        return true;
      case 3: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        if (paramParcel1.readInt() != 0) {}
        for (PlaybackStateCompat localPlaybackStateCompat = (PlaybackStateCompat)PlaybackStateCompat.CREATOR.createFromParcel(paramParcel1);; localPlaybackStateCompat = null)
        {
          onPlaybackStateChanged(localPlaybackStateCompat);
          return true;
        }
      case 4: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        if (paramParcel1.readInt() != 0) {}
        for (MediaMetadataCompat localMediaMetadataCompat = (MediaMetadataCompat)MediaMetadataCompat.CREATOR.createFromParcel(paramParcel1);; localMediaMetadataCompat = null)
        {
          onMetadataChanged(localMediaMetadataCompat);
          return true;
        }
      case 5: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        onQueueChanged(paramParcel1.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
        return true;
      case 6: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        if (paramParcel1.readInt() != 0) {}
        for (CharSequence localCharSequence = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel1);; localCharSequence = null)
        {
          onQueueTitleChanged(localCharSequence);
          return true;
        }
      case 7: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        if (paramParcel1.readInt() != 0) {}
        for (Bundle localBundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; localBundle1 = null)
        {
          onExtrasChanged(localBundle1);
          return true;
        }
      }
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
      if (paramParcel1.readInt() != 0) {}
      for (ParcelableVolumeInfo localParcelableVolumeInfo = (ParcelableVolumeInfo)ParcelableVolumeInfo.CREATOR.createFromParcel(paramParcel1);; localParcelableVolumeInfo = null)
      {
        onVolumeInfoChanged(localParcelableVolumeInfo);
        return true;
      }
    }
    
    private static class Proxy
      implements IMediaControllerCallback
    {
      private IBinder mRemote;
      
      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.mRemote;
      }
      
      public String getInterfaceDescriptor()
      {
        return "android.support.v4.media.session.IMediaControllerCallback";
      }
      
      /* Error */
      public void onEvent(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: aload_3
        //   5: ldc 21
        //   7: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_3
        //   11: aload_1
        //   12: invokevirtual 38	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   15: aload_2
        //   16: ifnull +33 -> 49
        //   19: aload_3
        //   20: iconst_1
        //   21: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   24: aload_2
        //   25: aload_3
        //   26: iconst_0
        //   27: invokevirtual 48	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   30: aload_0
        //   31: getfield 15	android/support/v4/media/session/IMediaControllerCallback$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   34: iconst_1
        //   35: aload_3
        //   36: aconst_null
        //   37: iconst_1
        //   38: invokeinterface 54 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 57	android/os/Parcel:recycle	()V
        //   48: return
        //   49: aload_3
        //   50: iconst_0
        //   51: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   54: goto -24 -> 30
        //   57: astore 4
        //   59: aload_3
        //   60: invokevirtual 57	android/os/Parcel:recycle	()V
        //   63: aload 4
        //   65: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	66	0	this	Proxy
        //   0	66	1	paramString	String
        //   0	66	2	paramBundle	Bundle
        //   3	57	3	localParcel	Parcel
        //   57	7	4	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   4	15	57	finally
        //   19	30	57	finally
        //   30	44	57	finally
        //   49	54	57	finally
      }
      
      /* Error */
      public void onExtrasChanged(Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: aload_2
        //   5: ldc 21
        //   7: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_1
        //   11: ifnull +34 -> 45
        //   14: aload_2
        //   15: iconst_1
        //   16: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokevirtual 48	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   25: aload_0
        //   26: getfield 15	android/support/v4/media/session/IMediaControllerCallback$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   29: bipush 7
        //   31: aload_2
        //   32: aconst_null
        //   33: iconst_1
        //   34: invokeinterface 54 5 0
        //   39: pop
        //   40: aload_2
        //   41: invokevirtual 57	android/os/Parcel:recycle	()V
        //   44: return
        //   45: aload_2
        //   46: iconst_0
        //   47: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   50: goto -25 -> 25
        //   53: astore_3
        //   54: aload_2
        //   55: invokevirtual 57	android/os/Parcel:recycle	()V
        //   58: aload_3
        //   59: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	60	0	this	Proxy
        //   0	60	1	paramBundle	Bundle
        //   3	52	2	localParcel	Parcel
        //   53	6	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   4	10	53	finally
        //   14	25	53	finally
        //   25	40	53	finally
        //   45	50	53	finally
      }
      
      /* Error */
      public void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: aload_2
        //   5: ldc 21
        //   7: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_1
        //   11: ifnull +33 -> 44
        //   14: aload_2
        //   15: iconst_1
        //   16: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokevirtual 64	android/support/v4/media/MediaMetadataCompat:writeToParcel	(Landroid/os/Parcel;I)V
        //   25: aload_0
        //   26: getfield 15	android/support/v4/media/session/IMediaControllerCallback$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   29: iconst_4
        //   30: aload_2
        //   31: aconst_null
        //   32: iconst_1
        //   33: invokeinterface 54 5 0
        //   38: pop
        //   39: aload_2
        //   40: invokevirtual 57	android/os/Parcel:recycle	()V
        //   43: return
        //   44: aload_2
        //   45: iconst_0
        //   46: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   49: goto -24 -> 25
        //   52: astore_3
        //   53: aload_2
        //   54: invokevirtual 57	android/os/Parcel:recycle	()V
        //   57: aload_3
        //   58: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	59	0	this	Proxy
        //   0	59	1	paramMediaMetadataCompat	MediaMetadataCompat
        //   3	51	2	localParcel	Parcel
        //   52	6	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   4	10	52	finally
        //   14	25	52	finally
        //   25	39	52	finally
        //   44	49	52	finally
      }
      
      /* Error */
      public void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: aload_2
        //   5: ldc 21
        //   7: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_1
        //   11: ifnull +33 -> 44
        //   14: aload_2
        //   15: iconst_1
        //   16: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokevirtual 69	android/support/v4/media/session/PlaybackStateCompat:writeToParcel	(Landroid/os/Parcel;I)V
        //   25: aload_0
        //   26: getfield 15	android/support/v4/media/session/IMediaControllerCallback$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   29: iconst_3
        //   30: aload_2
        //   31: aconst_null
        //   32: iconst_1
        //   33: invokeinterface 54 5 0
        //   38: pop
        //   39: aload_2
        //   40: invokevirtual 57	android/os/Parcel:recycle	()V
        //   43: return
        //   44: aload_2
        //   45: iconst_0
        //   46: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   49: goto -24 -> 25
        //   52: astore_3
        //   53: aload_2
        //   54: invokevirtual 57	android/os/Parcel:recycle	()V
        //   57: aload_3
        //   58: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	59	0	this	Proxy
        //   0	59	1	paramPlaybackStateCompat	PlaybackStateCompat
        //   3	51	2	localParcel	Parcel
        //   52	6	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   4	10	52	finally
        //   14	25	52	finally
        //   25	39	52	finally
        //   44	49	52	finally
      }
      
      public void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
          localParcel.writeTypedList(paramList);
          this.mRemote.transact(5, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      /* Error */
      public void onQueueTitleChanged(CharSequence paramCharSequence)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: aload_2
        //   5: ldc 21
        //   7: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_1
        //   11: ifnull +34 -> 45
        //   14: aload_2
        //   15: iconst_1
        //   16: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokestatic 81	android/text/TextUtils:writeToParcel	(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
        //   25: aload_0
        //   26: getfield 15	android/support/v4/media/session/IMediaControllerCallback$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   29: bipush 6
        //   31: aload_2
        //   32: aconst_null
        //   33: iconst_1
        //   34: invokeinterface 54 5 0
        //   39: pop
        //   40: aload_2
        //   41: invokevirtual 57	android/os/Parcel:recycle	()V
        //   44: return
        //   45: aload_2
        //   46: iconst_0
        //   47: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   50: goto -25 -> 25
        //   53: astore_3
        //   54: aload_2
        //   55: invokevirtual 57	android/os/Parcel:recycle	()V
        //   58: aload_3
        //   59: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	60	0	this	Proxy
        //   0	60	1	paramCharSequence	CharSequence
        //   3	52	2	localParcel	Parcel
        //   53	6	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   4	10	53	finally
        //   14	25	53	finally
        //   25	40	53	finally
        //   45	50	53	finally
      }
      
      public void onSessionDestroyed()
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
          this.mRemote.transact(2, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      /* Error */
      public void onVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: aload_2
        //   5: ldc 21
        //   7: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_1
        //   11: ifnull +34 -> 45
        //   14: aload_2
        //   15: iconst_1
        //   16: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokevirtual 87	android/support/v4/media/session/ParcelableVolumeInfo:writeToParcel	(Landroid/os/Parcel;I)V
        //   25: aload_0
        //   26: getfield 15	android/support/v4/media/session/IMediaControllerCallback$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   29: bipush 8
        //   31: aload_2
        //   32: aconst_null
        //   33: iconst_1
        //   34: invokeinterface 54 5 0
        //   39: pop
        //   40: aload_2
        //   41: invokevirtual 57	android/os/Parcel:recycle	()V
        //   44: return
        //   45: aload_2
        //   46: iconst_0
        //   47: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   50: goto -25 -> 25
        //   53: astore_3
        //   54: aload_2
        //   55: invokevirtual 57	android/os/Parcel:recycle	()V
        //   58: aload_3
        //   59: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	60	0	this	Proxy
        //   0	60	1	paramParcelableVolumeInfo	ParcelableVolumeInfo
        //   3	52	2	localParcel	Parcel
        //   53	6	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   4	10	53	finally
        //   14	25	53	finally
        //   25	40	53	finally
        //   45	50	53	finally
      }
    }
  }
}


/* Location:           D:\workspace\Sinaleira\RecoveringPelicross\dex2jar-0.0.9.15\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.IMediaControllerCallback
 * JD-Core Version:    0.7.0.1
 */