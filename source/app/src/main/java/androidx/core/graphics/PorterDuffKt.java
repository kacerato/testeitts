package androidx.core.graphics;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import kotlin.jvm.internal.M;

public final class PorterDuffKt {
    public static final PorterDuffColorFilter toColorFilter(PorterDuff.Mode mode, int i10) {
        M.p(mode, "<this>");
        return new PorterDuffColorFilter(i10, mode);
    }

    public static final PorterDuffXfermode toXfermode(PorterDuff.Mode mode) {
        M.p(mode, "<this>");
        return new PorterDuffXfermode(mode);
    }
}
