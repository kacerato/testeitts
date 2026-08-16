package com.android.dx.rop.code;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;

public final class ThrowingInsn extends Insn {
    private final TypeList catches;

    public ThrowingInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, TypeList typeList) {
        super(rop, sourcePosition, null, registerSpecList);
        if (rop.getBranchingness() == 6) {
            if (typeList == null) {
                throw new NullPointerException("catches == null");
            }
            this.catches = typeList;
        } else {
            throw new IllegalArgumentException("opcode with invalid branchingness: " + rop.getBranchingness());
        }
    }

    public static String toCatchString(TypeList typeList) {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append("catch");
        int size = typeList.size();
        for (int i10 = 0; i10 < size; i10++) {
            stringBuffer.append(" ");
            stringBuffer.append(typeList.getType(i10).toHuman());
        }
        return stringBuffer.toString();
    }

    @Override
    public void accept(Insn.Visitor visitor) {
        visitor.visitThrowingInsn(this);
    }

    @Override
    public TypeList getCatches() {
        return this.catches;
    }

    @Override
    public String getInlineString() {
        return toCatchString(this.catches);
    }

    @Override
    public Insn withAddedCatch(Type type) {
        return new ThrowingInsn(getOpcode(), getPosition(), getSources(), this.catches.withAddedType(type));
    }

    @Override
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new ThrowingInsn(getOpcode(), getPosition(), registerSpecList, this.catches);
    }

    @Override
    public Insn withRegisterOffset(int i10) {
        return new ThrowingInsn(getOpcode(), getPosition(), getSources().withOffset(i10), this.catches);
    }
}
