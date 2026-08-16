package androidx.core.content;

import android.content.ContentValues;
import kotlin.jvm.internal.M;
import nf.Z;

public final class ContentValuesKt {
    public static final ContentValues contentValuesOf(Z<String, ? extends Object>... pairs) {
        M.p(pairs, "pairs");
        ContentValues contentValues = new ContentValues(pairs.length);
        for (Z<String, ? extends Object> z10 : pairs) {
            String a10 = z10.a();
            Object b10 = z10.b();
            if (b10 == null) {
                contentValues.putNull(a10);
            } else if (b10 instanceof String) {
                contentValues.put(a10, (String) b10);
            } else if (b10 instanceof Integer) {
                contentValues.put(a10, (Integer) b10);
            } else if (b10 instanceof Long) {
                contentValues.put(a10, (Long) b10);
            } else if (b10 instanceof Boolean) {
                contentValues.put(a10, (Boolean) b10);
            } else if (b10 instanceof Float) {
                contentValues.put(a10, (Float) b10);
            } else if (b10 instanceof Double) {
                contentValues.put(a10, (Double) b10);
            } else if (b10 instanceof byte[]) {
                contentValues.put(a10, (byte[]) b10);
            } else if (b10 instanceof Byte) {
                contentValues.put(a10, (Byte) b10);
            } else {
                if (!(b10 instanceof Short)) {
                    throw new IllegalArgumentException("Illegal value type " + b10.getClass().getCanonicalName() + " for key \"" + a10 + '\"');
                }
                contentValues.put(a10, (Short) b10);
            }
        }
        return contentValues;
    }
}
