package com.android.dx.rop.cst;

public abstract class CstLiteral32 extends CstLiteralBits {
    private final int bits;

    public CstLiteral32(int i10) {
        this.bits = i10;
    }

    @Override
    public int compareTo0(Constant constant) {
        int i10 = ((CstLiteral32) constant).bits;
        int i11 = this.bits;
        if (i11 < i10) {
            return -1;
        }
        return i11 > i10 ? 1 : 0;
    }

    public final boolean equals(Object obj) {
        return obj != null && getClass() == obj.getClass() && this.bits == ((CstLiteral32) obj).bits;
    }

    @Override
    public final boolean fitsInInt() {
        return true;
    }

    @Override
    public final int getIntBits() {
        return this.bits;
    }

    @Override
    public final long getLongBits() {
        return this.bits;
    }

    public final int hashCode() {
        return this.bits;
    }

    @Override
    public final boolean isCategory2() {
        return false;
    }
}
