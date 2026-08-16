package androidx.core.graphics;

import android.graphics.Paint;
import kotlin.jvm.internal.M;

public final class PaintKt {
    public static final boolean setBlendMode(Paint paint, BlendModeCompat blendModeCompat) {
        M.p(paint, "<this>");
        return PaintCompat.setBlendMode(paint, blendModeCompat);
    }
}
