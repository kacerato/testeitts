package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;

public abstract class AbstractC11708h implements C.l<Bitmap> {
    public abstract Bitmap a(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11);

    @Override
    @NonNull
    public final com.bumptech.glide.load.engine.t<Bitmap> transform(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.t<Bitmap> tVar, int i10, int i11) {
        if (!Y.m.v(i10, i11)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i10 + " or height: " + i11 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        F.e g10 = com.bumptech.glide.b.d(context).g();
        Bitmap bitmap = tVar.get();
        if (i10 == Integer.MIN_VALUE) {
            i10 = bitmap.getWidth();
        }
        if (i11 == Integer.MIN_VALUE) {
            i11 = bitmap.getHeight();
        }
        Bitmap a10 = a(g10, bitmap, i10, i11);
        return bitmap.equals(a10) ? tVar : C11707g.c(a10, g10);
    }
}
