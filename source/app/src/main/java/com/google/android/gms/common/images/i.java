package com.google.android.gms.common.images;

import G0.C2560d;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.Nullable;
import g1.m;

public abstract class i {

    public final f f61359a;

    public int f61360b;

    public i(Uri uri, int i10) {
        this.f61360b = 0;
        this.f61359a = new f(uri);
        this.f61360b = i10;
    }

    public abstract void a(@Nullable Drawable drawable, boolean z10, boolean z11, boolean z12);

    public final void b(Context context, m mVar, boolean z10) {
        int i10 = this.f61360b;
        a(i10 != 0 ? context.getResources().getDrawable(i10) : null, z10, false, false);
    }

    public final void c(Context context, Bitmap bitmap, boolean z10) {
        C2560d.c(bitmap);
        a(new BitmapDrawable(context.getResources(), bitmap), false, false, true);
    }
}
