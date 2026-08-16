package com.android.dx.dex.code.form;

import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.dex.code.TargetInsn;
import com.android.dx.util.AnnotatedOutput;

public final class Form30t extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form30t();

    private Form30t() {
    }

    @Override
    public boolean branchFits(TargetInsn targetInsn) {
        return true;
    }

    @Override
    public int codeSize() {
        return 3;
    }

    @Override
    public String insnArgString(DalvInsn dalvInsn) {
        return InsnFormat.branchString(dalvInsn);
    }

    @Override
    public String insnCommentString(DalvInsn dalvInsn, boolean z10) {
        return InsnFormat.branchComment(dalvInsn);
    }

    @Override
    public boolean isCompatible(DalvInsn dalvInsn) {
        return (dalvInsn instanceof TargetInsn) && dalvInsn.getRegisters().size() == 0;
    }

    @Override
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, 0), ((TargetInsn) dalvInsn).getTargetOffset());
    }
}
