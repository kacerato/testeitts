package com.android.dx.rop.code;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;

public final class PlainCstInsn extends CstInsn {
    public PlainCstInsn(Rop rop, SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpecList registerSpecList, Constant constant) {
        super(rop, sourcePosition, registerSpec, registerSpecList, constant);
        if (rop.getBranchingness() == 1) {
            return;
        }
        throw new IllegalArgumentException("opcode with invalid branchingness: " + rop.getBranchingness());
    }

    @Override
    public void accept(Insn.Visitor visitor) {
        visitor.visitPlainCstInsn(this);
    }

    @Override
    public TypeList getCatches() {
        return StdTypeList.EMPTY;
    }

    @Override
    public Insn withAddedCatch(Type type) {
        throw new UnsupportedOperationException("unsupported");
    }

    @Override
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new PlainCstInsn(getOpcode(), getPosition(), registerSpec, registerSpecList, getConstant());
    }

    @Override
    public Insn withRegisterOffset(int i10) {
        return new PlainCstInsn(getOpcode(), getPosition(), getResult().withOffset(i10), getSources().withOffset(i10), getConstant());
    }
}
