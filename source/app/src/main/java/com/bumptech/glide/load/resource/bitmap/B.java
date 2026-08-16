package com.bumptech.glide.load.resource.bitmap;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class B implements C.j<Uri, Bitmap> {

    public final N.e f59310a;

    public final F.e f59311b;

    public B(N.e eVar, F.e eVar2) {
        this.f59310a = eVar;
        this.f59311b = eVar2;
    }

    @Override
    @Nullable
    public com.bumptech.glide.load.engine.t<Bitmap> a(@NonNull Uri uri, int i10, int i11, @NonNull C.h hVar) {
        com.bumptech.glide.load.engine.t<Drawable> a10 = this.f59310a.a(uri, i10, i11, hVar);
        if (a10 == null) {
            return null;
        }
        return r.a(this.f59311b, a10.get(), i10, i11);
    }

    @Override
    public boolean b(@NonNull Uri uri, @NonNull C.h hVar) {
        return ContentResolver.SCHEME_ANDROID_RESOURCE.equals(uri.getScheme());
    }
}
