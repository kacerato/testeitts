package com.google.android.gms.common.images;

import G0.C2560d;
import G0.C2574k;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import g1.m;
import g1.t;
import g1.u;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public final class ImageManager {

    public static final Object f61328h = new Object();

    public static final HashSet f61329i = new HashSet();

    public static ImageManager f61330j;

    public final Context f61331a;

    public final Handler f61332b = new u(Looper.getMainLooper());

    public final ExecutorService f61333c = t.a().b(4, 2);

    public final m f61334d = new m();

    public final Map f61335e = new HashMap();

    public final Map f61336f = new HashMap();

    public final Map f61337g = new HashMap();

    @KeepName
    public final class ImageReceiver extends ResultReceiver {

        public final Uri f61338b;

        public final ArrayList f61339c;

        public ImageReceiver(Uri uri) {
            super(new u(Looper.getMainLooper()));
            this.f61338b = uri;
            this.f61339c = new ArrayList();
        }

        public final void c(i iVar) {
            C2560d.a("ImageReceiver.addImageRequest() must be called in the main thread");
            this.f61339c.add(iVar);
        }

        public final void d(i iVar) {
            C2560d.a("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.f61339c.remove(iVar);
        }

        public final void e() {
            Intent intent = new Intent(C2574k.f7433c);
            intent.setPackage("com.google.android.gms");
            intent.putExtra(C2574k.f7434d, this.f61338b);
            intent.putExtra(C2574k.f7435e, this);
            intent.putExtra(C2574k.f7436f, 3);
            ImageManager.this.f61331a.sendBroadcast(intent);
        }

        @Override
        public final void onReceiveResult(int i10, Bundle bundle) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
            ImageManager imageManager = ImageManager.this;
            imageManager.f61333c.execute(new c(imageManager, this.f61338b, parcelFileDescriptor));
        }
    }

    public interface a {
        void a(@NonNull Uri uri, @Nullable Drawable drawable, boolean z10);
    }

    public ImageManager(Context context, boolean z10) {
        this.f61331a = context.getApplicationContext();
    }

    @NonNull
    public static ImageManager a(@NonNull Context context) {
        if (f61330j == null) {
            f61330j = new ImageManager(context, false);
        }
        return f61330j;
    }

    public void b(@NonNull ImageView imageView, int i10) {
        p(new g(imageView, i10));
    }

    public void c(@NonNull ImageView imageView, @NonNull Uri uri) {
        p(new g(imageView, uri));
    }

    public void d(@NonNull ImageView imageView, @NonNull Uri uri, int i10) {
        g gVar = new g(imageView, uri);
        gVar.f61360b = i10;
        p(gVar);
    }

    public void e(@NonNull a aVar, @NonNull Uri uri) {
        p(new h(aVar, uri));
    }

    public void f(@NonNull a aVar, @NonNull Uri uri, int i10) {
        h hVar = new h(aVar, uri);
        hVar.f61360b = i10;
        p(hVar);
    }

    public final void p(i iVar) {
        C2560d.a("ImageManager.loadImage() must be called in the main thread");
        new d(this, iVar).run();
    }
}
