package com.android.dx.rop.code;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import java.util.ArrayList;

public final class FillArrayDataInsn extends Insn {
    private final Constant arrayType;
    private final ArrayList<Constant> initValues;

    public FillArrayDataInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, ArrayList<Constant> arrayList, Constant constant) {
        super(rop, sourcePosition, null, registerSpecList);
        if (rop.getBranchingness() == 1) {
            this.initValues = arrayList;
            this.arrayType = constant;
        } else {
            throw new IllegalArgumentException("opcode with invalid branchingness: " + rop.getBranchingness());
        }
    }

    @Override
    public void accept(Insn.Visitor visitor) {
        visitor.visitFillArrayDataInsn(this);
    }

    @Override
    public TypeList getCatches() {
        return StdTypeList.EMPTY;
    }

    public Constant getConstant() {
        return this.arrayType;
    }

    public ArrayList<Constant> getInitValues() {
        return this.initValues;
    }

    @Override
    public Insn withAddedCatch(Type type) {
        throw new UnsupportedOperationException("unsupported");
    }

    @Override
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new FillArrayDataInsn(getOpcode(), getPosition(), registerSpecList, this.initValues, this.arrayType);
    }

    @Override
    public Insn withRegisterOffset(int i10) {
        return new FillArrayDataInsn(getOpcode(), getPosition(), getSources().withOffset(i10), this.initValues, this.arrayType);
    }
}
