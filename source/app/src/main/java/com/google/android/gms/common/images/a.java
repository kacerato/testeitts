package com.google.android.gms.common.images;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class a {

    public final int f61341a;

    public final int f61342b;

    public a(int i10, int i11) {
        this.f61341a = i10;
        this.f61342b = i11;
    }

    @NonNull
    public static a c(@NonNull String str) throws NumberFormatException {
        if (str == null) {
            throw new IllegalArgumentException("string must not be null");
        }
        int indexOf = str.indexOf(42);
        if (indexOf < 0) {
            indexOf = str.indexOf(120);
        }
        if (indexOf < 0) {
            throw d(str);
        }
        try {
            return new a(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1)));
        } catch (NumberFormatException unused) {
            throw d(str);
        }
    }

    public static NumberFormatException d(String str) {
        throw new NumberFormatException("Invalid Size: \"" + str + JavadocConstants.ANCHOR_PREFIX_END);
    }

    public int a() {
        return this.f61342b;
    }

    public int b() {
        return this.f61341a;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f61341a == aVar.f61341a && this.f61342b == aVar.f61342b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10 = this.f61341a;
        return ((i10 >>> 16) | (i10 << 16)) ^ this.f61342b;
    }

    @NonNull
    public String toString() {
        return this.f61341a + "x" + this.f61342b;
    }
}
