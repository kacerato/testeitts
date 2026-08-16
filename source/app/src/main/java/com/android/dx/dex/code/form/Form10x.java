package com.android.dx.dex.code.form;

import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.dex.code.SimpleInsn;
import com.android.dx.util.AnnotatedOutput;

public final class Form10x extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form10x();

    private Form10x() {
    }

    @Override
    public int codeSize() {
        return 1;
    }

    @Override
    public String insnArgString(DalvInsn dalvInsn) {
        return "";
    }

    @Override
    public String insnCommentString(DalvInsn dalvInsn, boolean z10) {
        return "";
    }

    @Override
    public boolean isCompatible(DalvInsn dalvInsn) {
        return (dalvInsn instanceof SimpleInsn) && dalvInsn.getRegisters().size() == 0;
    }

    @Override
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, 0));
    }
}
