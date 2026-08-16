package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstLiteral32;
import com.android.dx.rop.cst.CstLiteral64;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.ArrayList;

public final class ArrayData extends VariableSizeInsn {
    private final Constant arrayType;
    private final int elemWidth;
    private final int initLength;
    private final CodeAddress user;
    private final ArrayList<Constant> values;

    public ArrayData(SourcePosition sourcePosition, CodeAddress codeAddress, ArrayList<Constant> arrayList, Constant constant) {
        super(sourcePosition, RegisterSpecList.EMPTY);
        if (codeAddress == null) {
            throw new NullPointerException("user == null");
        }
        if (arrayList == null) {
            throw new NullPointerException("values == null");
        }
        if (arrayList.size() <= 0) {
            throw new IllegalArgumentException("Illegal number of init values");
        }
        this.arrayType = constant;
        if (constant == CstType.BYTE_ARRAY || constant == CstType.BOOLEAN_ARRAY) {
            this.elemWidth = 1;
        } else if (constant == CstType.SHORT_ARRAY || constant == CstType.CHAR_ARRAY) {
            this.elemWidth = 2;
        } else if (constant == CstType.INT_ARRAY || constant == CstType.FLOAT_ARRAY) {
            this.elemWidth = 4;
        } else {
            if (constant != CstType.LONG_ARRAY && constant != CstType.DOUBLE_ARRAY) {
                throw new IllegalArgumentException("Unexpected constant type");
            }
            this.elemWidth = 8;
        }
        this.user = codeAddress;
        this.values = arrayList;
        this.initLength = arrayList.size();
    }

    @Override
    public String argString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        int size = this.values.size();
        for (int i10 = 0; i10 < size; i10++) {
            stringBuffer.append("\n    ");
            stringBuffer.append(i10);
            stringBuffer.append(": ");
            stringBuffer.append(this.values.get(i10).toHuman());
        }
        return stringBuffer.toString();
    }

    @Override
    public int codeSize() {
        return (((this.initLength * this.elemWidth) + 1) / 2) + 4;
    }

    @Override
    public String listingString0(boolean z10) {
        int address = this.user.getAddress();
        StringBuffer stringBuffer = new StringBuffer(100);
        int size = this.values.size();
        stringBuffer.append("fill-array-data-payload // for fill-array-data @ ");
        stringBuffer.append(Hex.u2(address));
        for (int i10 = 0; i10 < size; i10++) {
            stringBuffer.append("\n  ");
            stringBuffer.append(i10);
            stringBuffer.append(": ");
            stringBuffer.append(this.values.get(i10).toHuman());
        }
        return stringBuffer.toString();
    }

    @Override
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new ArrayData(getPosition(), this.user, this.values, this.arrayType);
    }

    @Override
    public void writeTo(AnnotatedOutput annotatedOutput) {
        int size = this.values.size();
        annotatedOutput.writeShort(768);
        annotatedOutput.writeShort(this.elemWidth);
        annotatedOutput.writeInt(this.initLength);
        int i10 = this.elemWidth;
        if (i10 == 1) {
            for (int i11 = 0; i11 < size; i11++) {
                annotatedOutput.writeByte((byte) ((CstLiteral32) this.values.get(i11)).getIntBits());
            }
        } else if (i10 == 2) {
            for (int i12 = 0; i12 < size; i12++) {
                annotatedOutput.writeShort((short) ((CstLiteral32) this.values.get(i12)).getIntBits());
            }
        } else if (i10 == 4) {
            for (int i13 = 0; i13 < size; i13++) {
                annotatedOutput.writeInt(((CstLiteral32) this.values.get(i13)).getIntBits());
            }
        } else if (i10 == 8) {
            for (int i14 = 0; i14 < size; i14++) {
                annotatedOutput.writeLong(((CstLiteral64) this.values.get(i14)).getLongBits());
            }
        }
        if (this.elemWidth != 1 || size % 2 == 0) {
            return;
        }
        annotatedOutput.writeByte(0);
    }
}
