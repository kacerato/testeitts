package X;

import androidx.annotation.NonNull;
import java.security.MessageDigest;

public final class c implements C.e {

    public static final c f27877c = new c();

    @NonNull
    public static c a() {
        return f27877c;
    }

    public String toString() {
        return "EmptySignature";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
    }
}
