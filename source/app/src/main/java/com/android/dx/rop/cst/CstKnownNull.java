package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;

public final class CstKnownNull extends CstLiteralBits {
    public static final CstKnownNull THE_ONE = new CstKnownNull();

    private CstKnownNull() {
    }

    @Override
    public int compareTo0(Constant constant) {
        return 0;
    }

    public boolean equals(Object obj) {
        return obj instanceof CstKnownNull;
    }

    @Override
    public boolean fitsInInt() {
        return true;
    }

    @Override
    public int getIntBits() {
        return 0;
    }

    @Override
    public long getLongBits() {
        return 0L;
    }

    @Override
    public Type getType() {
        return Type.KNOWN_NULL;
    }

    public int hashCode() {
        return 1147565434;
    }

    @Override
    public boolean isCategory2() {
        return false;
    }

    @Override
    public String toHuman() {
        return "null";
    }

    public String toString() {
        return "known-null";
    }

    @Override
    public String typeName() {
        return "known-null";
    }
}
