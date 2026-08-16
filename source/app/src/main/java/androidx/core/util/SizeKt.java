package androidx.core.util;

import android.util.Size;
import android.util.SizeF;
import kotlin.jvm.internal.M;

public final class SizeKt {
    public static final int component1(Size size) {
        M.p(size, "<this>");
        return size.getWidth();
    }

    public static final int component2(Size size) {
        M.p(size, "<this>");
        return size.getHeight();
    }

    public static final float component1(SizeF sizeF) {
        M.p(sizeF, "<this>");
        return sizeF.getWidth();
    }

    public static final float component2(SizeF sizeF) {
        M.p(sizeF, "<this>");
        return sizeF.getHeight();
    }

    public static final float component1(SizeFCompat sizeFCompat) {
        M.p(sizeFCompat, "<this>");
        return sizeFCompat.getWidth();
    }

    public static final float component2(SizeFCompat sizeFCompat) {
        M.p(sizeFCompat, "<this>");
        return sizeFCompat.getHeight();
    }
}
