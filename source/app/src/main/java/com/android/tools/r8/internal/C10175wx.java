package com.android.tools.r8.internal;

public final class C10175wx extends AbstractC10342xx {

    public final PI[] f53643c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C10175wx(int i10, PI[] piArr) {
        super(i10, r1);
        int i11 = 1;
        int length = piArr.length - 1;
        if (length != 0) {
            for (int i12 = 31; i12 >= 0; i12--) {
                if (((1 << i12) & length) != 0) {
                    i11 = 1 + i12;
                }
            }
            throw new IllegalStateException("Empty enum: " + ((Object) piArr.getClass()));
        }
        this.f53643c = piArr;
    }

    public final Object a(int i10) {
        int i11 = (1 << this.f53899b) - 1;
        int i12 = this.f53898a;
        int i13 = (i10 & (i11 << i12)) >> i12;
        for (PI pi2 : this.f53643c) {
            if (pi2.getNumber() == i13) {
                return pi2;
            }
        }
        return null;
    }
}
