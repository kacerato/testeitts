package com.android.dx.dex.code.form;

import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.dex.code.TargetInsn;
import com.android.dx.util.AnnotatedOutput;

public final class Form20t extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form20t();

    private Form20t() {
    }

    @Override
    public boolean branchFits(TargetInsn targetInsn) {
        int targetOffset = targetInsn.getTargetOffset();
        return targetOffset != 0 && InsnFormat.signedFitsInShort(targetOffset);
    }

    @Override
    public int codeSize() {
        return 2;
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
        if (!(dalvInsn instanceof TargetInsn) || dalvInsn.getRegisters().size() != 0) {
            return false;
        }
        TargetInsn targetInsn = (TargetInsn) dalvInsn;
        if (targetInsn.hasTargetOffset()) {
            return branchFits(targetInsn);
        }
        return true;
    }

    @Override
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, 0), (short) ((TargetInsn) dalvInsn).getTargetOffset());
    }
}
