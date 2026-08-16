package com.android.dx.cf.code;

import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;

public final class ReturnAddress implements TypeBearer {
    private final int subroutineAddress;

    public ReturnAddress(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("subroutineAddress < 0");
        }
        this.subroutineAddress = i10;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ReturnAddress) && this.subroutineAddress == ((ReturnAddress) obj).subroutineAddress;
    }

    @Override
    public int getBasicFrameType() {
        return Type.RETURN_ADDRESS.getBasicFrameType();
    }

    @Override
    public int getBasicType() {
        return Type.RETURN_ADDRESS.getBasicType();
    }

    @Override
    public TypeBearer getFrameType() {
        return this;
    }

    public int getSubroutineAddress() {
        return this.subroutineAddress;
    }

    @Override
    public Type getType() {
        return Type.RETURN_ADDRESS;
    }

    public int hashCode() {
        return this.subroutineAddress;
    }

    @Override
    public boolean isConstant() {
        return false;
    }

    @Override
    public String toHuman() {
        return toString();
    }

    public String toString() {
        return "<addr:" + Hex.u2(this.subroutineAddress) + ">";
    }
}
