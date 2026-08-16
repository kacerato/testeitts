package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.cst.Constant;
import com.android.dx.util.Hex;

public final class MultiCstInsn extends FixedSizeInsn {
    private static final int NOT_SET = -1;
    private int classIndex;
    private final Constant[] constants;
    private final int[] index;

    public MultiCstInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, Constant[] constantArr) {
        super(dop, sourcePosition, registerSpecList);
        if (constantArr != null) {
            this.constants = constantArr;
            this.index = new int[constantArr.length];
            int i10 = 0;
            while (true) {
                int[] iArr = this.index;
                if (i10 < iArr.length) {
                    if (constantArr[i10] != null) {
                        iArr[i10] = -1;
                        i10++;
                    } else {
                        throw new NullPointerException("constants[i] == null");
                    }
                } else {
                    this.classIndex = -1;
                    return;
                }
            }
        } else {
            throw new NullPointerException("constants == null");
        }
    }

    @Override
    public String argString() {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < this.constants.length; i10++) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(this.constants[i10].toHuman());
        }
        return sb2.toString();
    }

    @Override
    public String cstComment() {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < this.constants.length; i10++) {
            if (!hasIndex(i10)) {
                return "";
            }
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(getConstant(i10).typeName());
            sb2.append('@');
            int index = getIndex(i10);
            if (index < 65536) {
                sb2.append(Hex.u2(index));
            } else {
                sb2.append(Hex.u4(index));
            }
        }
        return sb2.toString();
    }

    @Override
    public String cstString() {
        return argString();
    }

    public int getClassIndex() {
        if (hasClassIndex()) {
            return this.classIndex;
        }
        throw new IllegalStateException("class index not yet set");
    }

    public Constant getConstant(int i10) {
        return this.constants[i10];
    }

    public int getIndex(int i10) {
        if (hasIndex(i10)) {
            return this.index[i10];
        }
        throw new IllegalStateException("index not yet set for constant " + i10 + " value = " + ((Object) this.constants[i10]));
    }

    public int getNumberOfConstants() {
        return this.constants.length;
    }

    public boolean hasClassIndex() {
        return this.classIndex != -1;
    }

    public boolean hasIndex(int i10) {
        return this.index[i10] != -1;
    }

    public void setClassIndex(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("index < 0");
        }
        if (hasClassIndex()) {
            throw new IllegalStateException("class index already set");
        }
        this.classIndex = i10;
    }

    public void setIndex(int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("index < 0");
        }
        if (hasIndex(i10)) {
            throw new IllegalStateException("index already set");
        }
        this.index[i10] = i11;
    }

    @Override
    public DalvInsn withOpcode(Dop dop) {
        return new MultiCstInsn(dop, getPosition(), getRegisters(), this.constants, this.index, this.classIndex);
    }

    @Override
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new MultiCstInsn(getOpcode(), getPosition(), registerSpecList, this.constants, this.index, this.classIndex);
    }

    private MultiCstInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, Constant[] constantArr, int[] iArr, int i10) {
        super(dop, sourcePosition, registerSpecList);
        this.constants = constantArr;
        this.index = iArr;
        this.classIndex = i10;
    }
}
