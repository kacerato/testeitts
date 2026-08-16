package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.util.AnnotatedOutput;

public final class OddSpacer extends VariableSizeInsn {
    public OddSpacer(SourcePosition sourcePosition) {
        super(sourcePosition, RegisterSpecList.EMPTY);
    }

    @Override
    public String argString() {
        return null;
    }

    @Override
    public int codeSize() {
        return getAddress() & 1;
    }

    @Override
    public String listingString0(boolean z10) {
        if (codeSize() == 0) {
            return null;
        }
        return "nop // spacer";
    }

    @Override
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new OddSpacer(getPosition());
    }

    @Override
    public void writeTo(AnnotatedOutput annotatedOutput) {
        if (codeSize() != 0) {
            annotatedOutput.writeShort(InsnFormat.codeUnit(0, 0));
        }
    }
}
