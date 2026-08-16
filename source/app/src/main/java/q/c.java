package Q;

import C.h;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.C11707g;

public final class c implements e<Drawable, byte[]> {

    public final F.e f21864a;

    public final e<Bitmap, byte[]> f21865b;

    public final e<P.c, byte[]> f21866c;

    public c(@NonNull F.e eVar, @NonNull e<Bitmap, byte[]> eVar2, @NonNull e<P.c, byte[]> eVar3) {
        this.f21864a = eVar;
        this.f21865b = eVar2;
        this.f21866c = eVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static t<P.c> b(@NonNull t<Drawable> tVar) {
        return tVar;
    }

    @Override
    @Nullable
    public t<byte[]> a(@NonNull t<Drawable> tVar, @NonNull h hVar) {
        Drawable drawable = tVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f21865b.a(C11707g.c(((BitmapDrawable) drawable).getBitmap(), this.f21864a), hVar);
        }
        if (drawable instanceof P.c) {
            return this.f21866c.a(b(tVar), hVar);
        }
        return null;
    }
}
