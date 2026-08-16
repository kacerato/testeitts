package com.google.android.gms.common.images;

import G0.C2560d;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.gms.common.images.ImageManager;
import g1.m;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

public final class e implements Runnable {

    public final Uri f61352b;

    @Nullable
    public final Bitmap f61353c;

    public final CountDownLatch f61354d;

    public final ImageManager f61355e;

    public e(ImageManager imageManager, @Nullable Uri uri, Bitmap bitmap, boolean z10, CountDownLatch countDownLatch) {
        this.f61355e = imageManager;
        this.f61352b = uri;
        this.f61353c = bitmap;
        this.f61354d = countDownLatch;
    }

    @Override
    public final void run() {
        Map map;
        Object obj;
        HashSet hashSet;
        ArrayList arrayList;
        Map map2;
        m mVar;
        Map map3;
        C2560d.a("OnBitmapLoadedRunnable must be executed in the main thread");
        map = this.f61355e.f61336f;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.remove(this.f61352b);
        if (imageReceiver != null) {
            arrayList = imageReceiver.f61339c;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                i iVar = (i) arrayList.get(i10);
                Bitmap bitmap = this.f61353c;
                if (bitmap != null) {
                    iVar.c(this.f61355e.f61331a, bitmap, false);
                } else {
                    ImageManager imageManager = this.f61355e;
                    Uri uri = this.f61352b;
                    map2 = imageManager.f61337g;
                    map2.put(uri, Long.valueOf(SystemClock.elapsedRealtime()));
                    ImageManager imageManager2 = this.f61355e;
                    Context context = imageManager2.f61331a;
                    mVar = imageManager2.f61334d;
                    iVar.b(context, mVar, false);
                }
                if (!(iVar instanceof h)) {
                    map3 = this.f61355e.f61335e;
                    map3.remove(iVar);
                }
            }
        }
        this.f61354d.countDown();
        obj = ImageManager.f61328h;
        synchronized (obj) {
            hashSet = ImageManager.f61329i;
            hashSet.remove(this.f61352b);
        }
    }
}
