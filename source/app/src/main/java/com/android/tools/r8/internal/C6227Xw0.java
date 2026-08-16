package com.android.tools.r8.internal;

public final class C6227Xw0 {

    public static final C6227Xw0 f45870d = new C6227Xw0(256, 256, 256);

    public final int f45871a;

    public final int f45872b;

    public final int f45873c;

    public C6227Xw0(int i10, int i11, int i12) {
        this.f45871a = i10;
        this.f45872b = i11;
        this.f45873c = i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6227Xw0)) {
            return false;
        }
        C6227Xw0 c6227Xw0 = (C6227Xw0) obj;
        return this.f45871a == c6227Xw0.f45871a && this.f45872b == c6227Xw0.f45872b && this.f45873c == c6227Xw0.f45873c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f45873c) + ((Integer.hashCode(this.f45872b) + (Integer.hashCode(this.f45871a) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb2;
        int i10;
        if (this.f45873c == 0) {
            sb2 = new StringBuilder();
            sb2.append(this.f45871a);
            sb2.append('.');
            i10 = this.f45872b;
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f45871a);
            sb2.append('.');
            sb2.append(this.f45872b);
            sb2.append('.');
            i10 = this.f45873c;
        }
        sb2.append(i10);
        return sb2.toString();
    }
}
