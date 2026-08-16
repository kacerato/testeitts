package com.bumptech.glide.load.resource.bitmap;

import W.c;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;

public final class C11709i extends com.bumptech.glide.l<C11709i, Bitmap> {
    @NonNull
    public static C11709i m(@NonNull W.g<Bitmap> gVar) {
        return new C11709i().f(gVar);
    }

    @NonNull
    public static C11709i n() {
        return new C11709i().h();
    }

    @NonNull
    public static C11709i o(int i10) {
        return new C11709i().i(i10);
    }

    @NonNull
    public static C11709i p(@NonNull c.a aVar) {
        return new C11709i().j(aVar);
    }

    @NonNull
    public static C11709i q(@NonNull W.c cVar) {
        return new C11709i().k(cVar);
    }

    @NonNull
    public static C11709i r(@NonNull W.g<Drawable> gVar) {
        return new C11709i().l(gVar);
    }

    @NonNull
    public C11709i h() {
        return j(new c.a());
    }

    @NonNull
    public C11709i i(int i10) {
        return j(new c.a(i10));
    }

    @NonNull
    public C11709i j(@NonNull c.a aVar) {
        return l(aVar.a());
    }

    @NonNull
    public C11709i k(@NonNull W.c cVar) {
        return l(cVar);
    }

    @NonNull
    public C11709i l(@NonNull W.g<Drawable> gVar) {
        return f(new W.b(gVar));
    }
}
