package com.android.tools.r8.internal;

import java.util.Map;

public final class C5780Qc0 implements InterfaceC5259Hc0, Map.Entry {

    public int f43641b;

    public final C6012Uc0 f43642c;

    public C5780Qc0(C6012Uc0 c6012Uc0, int i10) {
        this.f43642c = c6012Uc0;
        this.f43641b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f43642c.f44800b[this.f43641b] == entry.getKey() && this.f43642c.f44801c[this.f43641b] == ((Boolean) entry.getValue()).booleanValue();
    }

    @Override
    public final boolean getBooleanValue() {
        return this.f43642c.f44801c[this.f43641b];
    }

    @Override
    public final Object getKey() {
        return this.f43642c.f44800b[this.f43641b];
    }

    @Override
    public final Object getValue() {
        return Boolean.valueOf(this.f43642c.f44801c[this.f43641b]);
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this.f43642c.f44800b[this.f43641b]) ^ (this.f43642c.f44801c[this.f43641b] ? 1231 : 1237);
    }

    @Override
    public final Object setValue(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean[] zArr = this.f43642c.f44801c;
        int i10 = this.f43641b;
        boolean z10 = zArr[i10];
        zArr[i10] = booleanValue;
        return Boolean.valueOf(z10);
    }

    public final String toString() {
        return this.f43642c.f44800b[this.f43641b] + "=>" + this.f43642c.f44801c[this.f43641b];
    }
}
