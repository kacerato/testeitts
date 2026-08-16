package C;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.t;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public class f<T> implements l<T> {

    public final Collection<? extends l<T>> f1957c;

    @SafeVarargs
    public f(@NonNull l<T>... lVarArr) {
        if (lVarArr.length != 0) {
            this.f1957c = Arrays.asList(lVarArr);
            return;
        }
        throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f1957c.equals(((f) obj).f1957c);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.f1957c.hashCode();
    }

    @Override
    @NonNull
    public t<T> transform(@NonNull Context context, @NonNull t<T> tVar, int i10, int i11) {
        Iterator<? extends l<T>> it = this.f1957c.iterator();
        t<T> tVar2 = tVar;
        while (it.hasNext()) {
            t<T> transform = it.next().transform(context, tVar2, i10, i11);
            if (tVar2 != null && !tVar2.equals(tVar) && !tVar2.equals(transform)) {
                tVar2.recycle();
            }
            tVar2 = transform;
        }
        return tVar2;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        Iterator<? extends l<T>> it = this.f1957c.iterator();
        while (it.hasNext()) {
            it.next().updateDiskCacheKey(messageDigest);
        }
    }

    public f(@NonNull Collection<? extends l<T>> collection) {
        if (!collection.isEmpty()) {
            this.f1957c = collection;
            return;
        }
        throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }
}
