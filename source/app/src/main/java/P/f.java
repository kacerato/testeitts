package P;

import C.l;
import Y.k;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.C11707g;
import java.security.MessageDigest;

public class f implements l<c> {

    public final l<Bitmap> f20585c;

    public f(l<Bitmap> lVar) {
        this.f20585c = (l) k.d(lVar);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f20585c.equals(((f) obj).f20585c);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.f20585c.hashCode();
    }

    @Override
    @NonNull
    public t<c> transform(@NonNull Context context, @NonNull t<c> tVar, int i10, int i11) {
        c cVar = tVar.get();
        t<Bitmap> c11707g = new C11707g(cVar.e(), com.bumptech.glide.b.d(context).g());
        t<Bitmap> transform = this.f20585c.transform(context, c11707g, i10, i11);
        if (!c11707g.equals(transform)) {
            c11707g.recycle();
        }
        cVar.o(this.f20585c, transform.get());
        return tVar;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f20585c.updateDiskCacheKey(messageDigest);
    }
}
