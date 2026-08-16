package com.google.android.gms.common.images;

import G0.C2560d;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import g1.m;
import java.util.HashSet;
import java.util.Map;

public final class d implements Runnable {

    public final i f61350b;

    public final ImageManager f61351c;

    public d(ImageManager imageManager, i iVar) {
        this.f61351c = imageManager;
        this.f61350b = iVar;
    }

    @Override
    public final void run() {
        Map map;
        m mVar;
        Map map2;
        Map map3;
        Object obj;
        HashSet hashSet;
        HashSet hashSet2;
        Map map4;
        Map map5;
        Map map6;
        m mVar2;
        Map map7;
        C2560d.a("LoadImageRunnable must be executed on the main thread");
        map = this.f61351c.f61335e;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.get(this.f61350b);
        if (imageReceiver != null) {
            ImageManager imageManager = this.f61351c;
            i iVar = this.f61350b;
            map7 = imageManager.f61335e;
            map7.remove(iVar);
            imageReceiver.d(this.f61350b);
        }
        i iVar2 = this.f61350b;
        f fVar = iVar2.f61359a;
        Uri uri = fVar.f61356a;
        if (uri == null) {
            ImageManager imageManager2 = this.f61351c;
            Context context = imageManager2.f61331a;
            mVar = imageManager2.f61334d;
            iVar2.b(context, mVar, true);
            return;
        }
        map2 = this.f61351c.f61337g;
        Long l10 = (Long) map2.get(uri);
        if (l10 != null) {
            if (SystemClock.elapsedRealtime() - l10.longValue() < 3600000) {
                i iVar3 = this.f61350b;
                ImageManager imageManager3 = this.f61351c;
                Context context2 = imageManager3.f61331a;
                mVar2 = imageManager3.f61334d;
                iVar3.b(context2, mVar2, true);
                return;
            }
            ImageManager imageManager4 = this.f61351c;
            Uri uri2 = fVar.f61356a;
            map6 = imageManager4.f61337g;
            map6.remove(uri2);
        }
        this.f61350b.a(null, false, true, false);
        ImageManager imageManager5 = this.f61351c;
        Uri uri3 = fVar.f61356a;
        map3 = imageManager5.f61336f;
        ImageManager.ImageReceiver imageReceiver2 = (ImageManager.ImageReceiver) map3.get(uri3);
        if (imageReceiver2 == null) {
            ImageManager.ImageReceiver imageReceiver3 = new ImageManager.ImageReceiver(fVar.f61356a);
            ImageManager imageManager6 = this.f61351c;
            Uri uri4 = fVar.f61356a;
            map5 = imageManager6.f61336f;
            map5.put(uri4, imageReceiver3);
            imageReceiver2 = imageReceiver3;
        }
        imageReceiver2.c(this.f61350b);
        i iVar4 = this.f61350b;
        if (!(iVar4 instanceof h)) {
            map4 = this.f61351c.f61335e;
            map4.put(iVar4, imageReceiver2);
        }
        obj = ImageManager.f61328h;
        synchronized (obj) {
            try {
                hashSet = ImageManager.f61329i;
                if (!hashSet.contains(fVar.f61356a)) {
                    hashSet2 = ImageManager.f61329i;
                    hashSet2.add(fVar.f61356a);
                    imageReceiver2.e();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
