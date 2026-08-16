package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstString;
import com.android.dx.util.Hex;

public final class CstInsn extends FixedSizeInsn {
    private int classIndex;
    private final Constant constant;
    private int index;

    public CstInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, Constant constant) {
        super(dop, sourcePosition, registerSpecList);
        if (constant == null) {
            throw new NullPointerException("constant == null");
        }
        this.constant = constant;
        this.index = -1;
        this.classIndex = -1;
    }

    @Override
    public String argString() {
        return this.constant.toHuman();
    }

    @Override
    public String cstComment() {
        if (!hasIndex()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append(getConstant().typeName());
        sb2.append('@');
        int i10 = this.index;
        if (i10 < 65536) {
            sb2.append(Hex.u2(i10));
        } else {
            sb2.append(Hex.u4(i10));
        }
        return sb2.toString();
    }

    @Override
    public String cstString() {
        Constant constant = this.constant;
        return constant instanceof CstString ? ((CstString) constant).toQuoted() : constant.toHuman();
    }

    public int getClassIndex() {
        int i10 = this.classIndex;
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalStateException("class index not yet set");
    }

    public Constant getConstant() {
        return this.constant;
    }

    public int getIndex() {
        int i10 = this.index;
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalStateException("index not yet set for " + ((Object) this.constant));
    }

    public boolean hasClassIndex() {
        return this.classIndex >= 0;
    }

    public boolean hasIndex() {
        return this.index >= 0;
    }

    public void setClassIndex(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("index < 0");
        }
        if (this.classIndex >= 0) {
            throw new IllegalStateException("class index already set");
        }
        this.classIndex = i10;
    }

    public void setIndex(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("index < 0");
        }
        if (this.index >= 0) {
            throw new IllegalStateException("index already set");
        }
        this.index = i10;
    }

    @Override
    public DalvInsn withOpcode(Dop dop) {
        CstInsn cstInsn = new CstInsn(dop, getPosition(), getRegisters(), this.constant);
        int i10 = this.index;
        if (i10 >= 0) {
            cstInsn.setIndex(i10);
        }
        int i11 = this.classIndex;
        if (i11 >= 0) {
            cstInsn.setClassIndex(i11);
        }
        return cstInsn;
    }

    @Override
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        CstInsn cstInsn = new CstInsn(getOpcode(), getPosition(), registerSpecList, this.constant);
        int i10 = this.index;
        if (i10 >= 0) {
            cstInsn.setIndex(i10);
        }
        int i11 = this.classIndex;
        if (i11 >= 0) {
            cstInsn.setClassIndex(i11);
        }
        return cstInsn;
    }
}
