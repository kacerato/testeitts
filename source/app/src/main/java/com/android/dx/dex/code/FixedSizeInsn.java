package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.util.AnnotatedOutput;

public abstract class FixedSizeInsn extends DalvInsn {
    public FixedSizeInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList) {
        super(dop, sourcePosition, registerSpecList);
    }

    @Override
    public final int codeSize() {
        return getOpcode().getFormat().codeSize();
    }

    @Override
    public final String listingString0(boolean z10) {
        return getOpcode().getFormat().listingString(this, z10);
    }

    @Override
    public final DalvInsn withRegisterOffset(int i10) {
        return withRegisters(getRegisters().withOffset(i10));
    }

    @Override
    public final void writeTo(AnnotatedOutput annotatedOutput) {
        getOpcode().getFormat().writeTo(annotatedOutput, this);
    }
}
