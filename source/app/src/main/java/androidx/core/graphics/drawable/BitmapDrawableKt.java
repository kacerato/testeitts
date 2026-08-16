package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import kotlin.jvm.internal.M;

public final class BitmapDrawableKt {
    public static final BitmapDrawable toDrawable(Bitmap bitmap, Resources resources) {
        M.p(bitmap, "<this>");
        M.p(resources, "resources");
        return new BitmapDrawable(resources, bitmap);
    }
}
