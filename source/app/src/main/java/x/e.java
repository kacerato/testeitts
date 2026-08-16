package X;

import Y.k;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import org.eclipse.jdt.internal.core.JavaElement;

public final class e implements C.e {

    public final Object f27881c;

    public e(@NonNull Object obj) {
        this.f27881c = k.d(obj);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.f27881c.equals(((e) obj).f27881c);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.f27881c.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f27881c + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(this.f27881c.toString().getBytes(C.e.f1956b));
    }
}
