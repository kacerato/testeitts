package L;

import C.l;
import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.t;
import java.security.MessageDigest;

public final class k<T> implements l<T> {

    public static final l<?> f11496c = new k();

    @NonNull
    public static <T> k<T> a() {
        return (k) f11496c;
    }

    @Override
    @NonNull
    public t<T> transform(@NonNull Context context, @NonNull t<T> tVar, int i10, int i11) {
        return tVar;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
    }
}
