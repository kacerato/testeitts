package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.util.AnnotatedOutput;

public final class HighRegisterPrefix extends VariableSizeInsn {
    private SimpleInsn[] insns;

    public HighRegisterPrefix(SourcePosition sourcePosition, RegisterSpecList registerSpecList) {
        super(sourcePosition, registerSpecList);
        if (registerSpecList.size() == 0) {
            throw new IllegalArgumentException("registers.size() == 0");
        }
        this.insns = null;
    }

    private void calculateInsnsIfNecessary() {
        if (this.insns != null) {
            return;
        }
        RegisterSpecList registers = getRegisters();
        int size = registers.size();
        this.insns = new SimpleInsn[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RegisterSpec registerSpec = registers.get(i11);
            this.insns[i11] = moveInsnFor(registerSpec, i10);
            i10 += registerSpec.getCategory();
        }
    }

    private static SimpleInsn moveInsnFor(RegisterSpec registerSpec, int i10) {
        return DalvInsn.makeMove(SourcePosition.NO_INFO, RegisterSpec.make(i10, registerSpec.getType()), registerSpec);
    }

    @Override
    public String argString() {
        return null;
    }

    @Override
    public int codeSize() {
        calculateInsnsIfNecessary();
        int i10 = 0;
        for (SimpleInsn simpleInsn : this.insns) {
            i10 += simpleInsn.codeSize();
        }
        return i10;
    }

    @Override
    public String listingString0(boolean z10) {
        RegisterSpecList registers = getRegisters();
        int size = registers.size();
        StringBuffer stringBuffer = new StringBuffer(100);
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RegisterSpec registerSpec = registers.get(i11);
            SimpleInsn moveInsnFor = moveInsnFor(registerSpec, i10);
            if (i11 != 0) {
                stringBuffer.append('\n');
            }
            stringBuffer.append(moveInsnFor.listingString0(z10));
            i10 += registerSpec.getCategory();
        }
        return stringBuffer.toString();
    }

    @Override
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new HighRegisterPrefix(getPosition(), registerSpecList);
    }

    @Override
    public void writeTo(AnnotatedOutput annotatedOutput) {
        calculateInsnsIfNecessary();
        for (SimpleInsn simpleInsn : this.insns) {
            simpleInsn.writeTo(annotatedOutput);
        }
    }
}
