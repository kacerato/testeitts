package com.android.dx.dex.code.form;

import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.util.AnnotatedOutput;

public final class SpecialFormat extends InsnFormat {
    public static final InsnFormat THE_ONE = new SpecialFormat();

    private SpecialFormat() {
    }

    @Override
    public int codeSize() {
        throw new RuntimeException("unsupported");
    }

    @Override
    public String insnArgString(DalvInsn dalvInsn) {
        throw new RuntimeException("unsupported");
    }

    @Override
    public String insnCommentString(DalvInsn dalvInsn, boolean z10) {
        throw new RuntimeException("unsupported");
    }

    @Override
    public boolean isCompatible(DalvInsn dalvInsn) {
        return true;
    }

    @Override
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        throw new RuntimeException("unsupported");
    }
}
