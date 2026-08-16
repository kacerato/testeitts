package com.android.dx.rop.code;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.IntList;

public final class SwitchInsn extends Insn {
    private final IntList cases;

    public SwitchInsn(Rop rop, SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpecList registerSpecList, IntList intList) {
        super(rop, sourcePosition, registerSpec, registerSpecList);
        if (rop.getBranchingness() != 5) {
            throw new IllegalArgumentException("bogus branchingness");
        }
        if (intList == null) {
            throw new NullPointerException("cases == null");
        }
        this.cases = intList;
    }

    @Override
    public void accept(Insn.Visitor visitor) {
        visitor.visitSwitchInsn(this);
    }

    @Override
    public boolean contentEquals(Insn insn) {
        return false;
    }

    public IntList getCases() {
        return this.cases;
    }

    @Override
    public TypeList getCatches() {
        return StdTypeList.EMPTY;
    }

    @Override
    public String getInlineString() {
        return this.cases.toString();
    }

    @Override
    public Insn withAddedCatch(Type type) {
        throw new UnsupportedOperationException("unsupported");
    }

    @Override
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new SwitchInsn(getOpcode(), getPosition(), registerSpec, registerSpecList, this.cases);
    }

    @Override
    public Insn withRegisterOffset(int i10) {
        return new SwitchInsn(getOpcode(), getPosition(), getResult().withOffset(i10), getSources().withOffset(i10), this.cases);
    }
}
