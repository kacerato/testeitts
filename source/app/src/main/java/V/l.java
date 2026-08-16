package V;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class l extends e<Bitmap> {

    public final RemoteViews f26396e;

    public final Context f26397f;

    public final int f26398g;

    public final String f26399h;

    public final Notification f26400i;

    public final int f26401j;

    public l(Context context, int i10, RemoteViews remoteViews, Notification notification, int i11) {
        this(context, i10, remoteViews, notification, i11, null);
    }

    private void e(@Nullable Bitmap bitmap) {
        this.f26396e.setImageViewBitmap(this.f26401j, bitmap);
        j();
    }

    private void j() {
        ((NotificationManager) Y.k.d((NotificationManager) this.f26397f.getSystemService(Context.NOTIFICATION_SERVICE))).notify(this.f26399h, this.f26398g, this.f26400i);
    }

    @Override
    public void h(@NonNull Bitmap bitmap, @Nullable W.f<? super Bitmap> fVar) {
        e(bitmap);
    }

    @Override
    public void f(@Nullable Drawable drawable) {
        e(null);
    }

    public l(Context context, int i10, RemoteViews remoteViews, Notification notification, int i11, String str) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i10, remoteViews, notification, i11, str);
    }

    public l(Context context, int i10, int i11, int i12, RemoteViews remoteViews, Notification notification, int i13, String str) {
        super(i10, i11);
        this.f26397f = (Context) Y.k.e(context, "Context must not be null!");
        this.f26400i = (Notification) Y.k.e(notification, "Notification object can not be null!");
        this.f26396e = (RemoteViews) Y.k.e(remoteViews, "RemoteViews object can not be null!");
        this.f26401j = i12;
        this.f26398g = i13;
        this.f26399h = str;
    }
}
