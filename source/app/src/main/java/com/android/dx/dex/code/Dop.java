package com.android.dx.dex.code;

import com.android.dx.io.OpcodeInfo;
import com.android.dx.io.Opcodes;

public final class Dop {
    private final int family;
    private final InsnFormat format;
    private final boolean hasResult;
    private final int nextOpcode;
    private final int opcode;

    public Dop(int i10, int i11, int i12, InsnFormat insnFormat, boolean z10) {
        if (!Opcodes.isValidShape(i10)) {
            throw new IllegalArgumentException("bogus opcode");
        }
        if (!Opcodes.isValidShape(i11)) {
            throw new IllegalArgumentException("bogus family");
        }
        if (!Opcodes.isValidShape(i12)) {
            throw new IllegalArgumentException("bogus nextOpcode");
        }
        if (insnFormat == null) {
            throw new NullPointerException("format == null");
        }
        this.opcode = i10;
        this.family = i11;
        this.nextOpcode = i12;
        this.format = insnFormat;
        this.hasResult = z10;
    }

    public int getFamily() {
        return this.family;
    }

    public InsnFormat getFormat() {
        return this.format;
    }

    public String getName() {
        return OpcodeInfo.getName(this.opcode);
    }

    public int getNextOpcode() {
        return this.nextOpcode;
    }

    public int getOpcode() {
        return this.opcode;
    }

    public Dop getOppositeTest() {
        switch (this.opcode) {
            case 50:
                return Dops.IF_NE;
            case 51:
                return Dops.IF_EQ;
            case 52:
                return Dops.IF_GE;
            case 53:
                return Dops.IF_LT;
            case 54:
                return Dops.IF_LE;
            case 55:
                return Dops.IF_GT;
            case 56:
                return Dops.IF_NEZ;
            case 57:
                return Dops.IF_EQZ;
            case 58:
                return Dops.IF_GEZ;
            case 59:
                return Dops.IF_LTZ;
            case 60:
                return Dops.IF_LEZ;
            case 61:
                return Dops.IF_GTZ;
            default:
                throw new IllegalArgumentException("bogus opcode: " + ((Object) this));
        }
    }

    public boolean hasResult() {
        return this.hasResult;
    }

    public String toString() {
        return getName();
    }
}
