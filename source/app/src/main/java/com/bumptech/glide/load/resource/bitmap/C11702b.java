package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.File;

public class C11702b implements C.k<BitmapDrawable> {

    public final F.e f59383a;

    public final C.k<Bitmap> f59384b;

    public C11702b(F.e eVar, C.k<Bitmap> kVar) {
        this.f59383a = eVar;
        this.f59384b = kVar;
    }

    @Override
    @NonNull
    public C.c a(@NonNull C.h hVar) {
        return this.f59384b.a(hVar);
    }

    @Override
    public boolean b(@NonNull com.bumptech.glide.load.engine.t<BitmapDrawable> tVar, @NonNull File file, @NonNull C.h hVar) {
        return this.f59384b.b(new C11707g(tVar.get().getBitmap(), this.f59383a), file, hVar);
    }
}
