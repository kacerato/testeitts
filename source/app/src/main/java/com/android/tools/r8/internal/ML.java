package com.android.tools.r8.internal;

public final class ML implements Comparable {

    public static final ML f42274e;

    public final int f42275b;

    public final int f42276c;

    public final int f42277d;

    static {
        new ML(NL.f42566g.f52525a);
        f42274e = new ML(NL.f42567h.f52525a);
    }

    public ML(int i10, int i11, int i12) {
        this.f42275b = i10;
        this.f42276c = i11;
        this.f42277d = i12;
        if (i10 < 0) {
            throw new IllegalArgumentException("Major version should be not less than 0");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("Minor version should be not less than 0");
        }
        if (i12 < 0) {
            throw new IllegalArgumentException("Patch version should be not less than 0");
        }
    }

    @Override
    public final int compareTo(ML ml2) {
        GJ.c(ml2, "other");
        int a10 = GJ.a(this.f42275b, ml2.f42275b);
        if (a10 != 0) {
            return a10;
        }
        int a11 = GJ.a(this.f42276c, ml2.f42276c);
        return a11 != 0 ? a11 : GJ.a(this.f42277d, ml2.f42277d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!ML.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        GJ.a(obj, "null cannot be cast to non-null type kotlin.metadata.jvm.JvmMetadataVersion");
        ML ml2 = (ML) obj;
        return this.f42275b == ml2.f42275b && this.f42276c == ml2.f42276c && this.f42277d == ml2.f42277d;
    }

    public final int hashCode() {
        return (((this.f42275b * 31) + this.f42276c) * 31) + this.f42277d;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f42275b);
        sb2.append('.');
        sb2.append(this.f42276c);
        sb2.append('.');
        sb2.append(this.f42277d);
        return sb2.toString();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ML(int[] iArr) {
        this(iArr[0], iArr[1], iArr[2]);
        GJ.c(iArr, "intArray");
    }
}
