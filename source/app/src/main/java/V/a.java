package V;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class a extends e<Bitmap> {

    public final int[] f26362e;

    public final ComponentName f26363f;

    public final RemoteViews f26364g;

    public final Context f26365h;

    public final int f26366i;

    public a(Context context, int i10, int i11, int i12, RemoteViews remoteViews, int... iArr) {
        super(i10, i11);
        if (iArr.length != 0) {
            this.f26365h = (Context) Y.k.e(context, "Context can not be null!");
            this.f26364g = (RemoteViews) Y.k.e(remoteViews, "RemoteViews object can not be null!");
            this.f26362e = (int[]) Y.k.e(iArr, "WidgetIds can not be null!");
            this.f26366i = i12;
            this.f26363f = null;
            return;
        }
        throw new IllegalArgumentException("WidgetIds must have length > 0");
    }

    @Override
    public void h(@NonNull Bitmap bitmap, @Nullable W.f<? super Bitmap> fVar) {
        e(bitmap);
    }

    public final void e(@Nullable Bitmap bitmap) {
        this.f26364g.setImageViewBitmap(this.f26366i, bitmap);
        j();
    }

    @Override
    public void f(@Nullable Drawable drawable) {
        e(null);
    }

    public final void j() {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.f26365h);
        ComponentName componentName = this.f26363f;
        if (componentName != null) {
            appWidgetManager.updateAppWidget(componentName, this.f26364g);
        } else {
            appWidgetManager.updateAppWidget(this.f26362e, this.f26364g);
        }
    }

    public a(Context context, int i10, RemoteViews remoteViews, int... iArr) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i10, remoteViews, iArr);
    }

    public a(Context context, int i10, int i11, int i12, RemoteViews remoteViews, ComponentName componentName) {
        super(i10, i11);
        this.f26365h = (Context) Y.k.e(context, "Context can not be null!");
        this.f26364g = (RemoteViews) Y.k.e(remoteViews, "RemoteViews object can not be null!");
        this.f26363f = (ComponentName) Y.k.e(componentName, "ComponentName can not be null!");
        this.f26366i = i12;
        this.f26362e = null;
    }

    public a(Context context, int i10, RemoteViews remoteViews, ComponentName componentName) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i10, remoteViews, componentName);
    }
}
