package androidx.core.content;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.exifinterface.media.ExifInterface;
import kotlin.jvm.internal.M;
import nf.P0;

public final class ContextKt {
    public static final <T> T getSystemService(Context context) {
        M.p(context, "<this>");
        M.y(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) ContextCompat.getSystemService(context, Object.class);
    }

    public static final void withStyledAttributes(Context context, AttributeSet attributeSet, int[] attrs, int i10, int i11, Mf.l<? super TypedArray, P0> block) {
        M.p(context, "<this>");
        M.p(attrs, "attrs");
        M.p(block, "block");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, attrs, i10, i11);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(s\u2026efStyleAttr, defStyleRes)");
        block.invoke(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public static void withStyledAttributes$default(Context context, AttributeSet attributeSet, int[] attrs, int i10, int i11, Mf.l block, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            attributeSet = null;
        }
        if ((i12 & 4) != 0) {
            i10 = 0;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        M.p(context, "<this>");
        M.p(attrs, "attrs");
        M.p(block, "block");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, attrs, i10, i11);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(s\u2026efStyleAttr, defStyleRes)");
        block.invoke(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public static final void withStyledAttributes(Context context, int i10, int[] attrs, Mf.l<? super TypedArray, P0> block) {
        M.p(context, "<this>");
        M.p(attrs, "attrs");
        M.p(block, "block");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i10, attrs);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(resourceId, attrs)");
        block.invoke(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }
}
