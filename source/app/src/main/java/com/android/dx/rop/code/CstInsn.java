package com.android.dx.rop.code;

import com.android.dx.rop.cst.Constant;

public abstract class CstInsn extends Insn {
    private final Constant cst;

    public CstInsn(Rop rop, SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpecList registerSpecList, Constant constant) {
        super(rop, sourcePosition, registerSpec, registerSpecList);
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        this.cst = constant;
    }

    @Override
    public boolean contentEquals(Insn insn) {
        return super.contentEquals(insn) && this.cst.equals(((CstInsn) insn).getConstant());
    }

    public Constant getConstant() {
        return this.cst;
    }

    @Override
    public String getInlineString() {
        return this.cst.toHuman();
    }
}
