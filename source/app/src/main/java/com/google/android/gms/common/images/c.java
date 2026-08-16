package com.google.android.gms.common.images;

import G0.C2560d;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

public final class c implements Runnable {

    public final Uri f61347b;

    @Nullable
    public final ParcelFileDescriptor f61348c;

    public final ImageManager f61349d;

    public c(ImageManager imageManager, @Nullable Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.f61349d = imageManager;
        this.f61347b = uri;
        this.f61348c = parcelFileDescriptor;
    }

    @Override
    public final void run() {
        Handler handler;
        C2560d.b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        ParcelFileDescriptor parcelFileDescriptor = this.f61348c;
        Bitmap bitmap = null;
        boolean z10 = false;
        if (parcelFileDescriptor != null) {
            try {
                bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError e10) {
                Log.e("ImageManager", "OOM while loading bitmap for uri: ".concat(String.valueOf(this.f61347b)), e10);
                z10 = true;
            }
            try {
                this.f61348c.close();
            } catch (IOException e11) {
                Log.e("ImageManager", "closed failed", e11);
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager imageManager = this.f61349d;
        Uri uri = this.f61347b;
        handler = imageManager.f61332b;
        handler.post(new e(imageManager, uri, bitmap, z10, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            Log.w("ImageManager", "Latch interrupted while posting ".concat(String.valueOf(this.f61347b)));
        }
    }
}
