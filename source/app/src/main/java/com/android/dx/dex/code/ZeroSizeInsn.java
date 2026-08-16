package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.util.AnnotatedOutput;

public abstract class ZeroSizeInsn extends DalvInsn {
    public ZeroSizeInsn(SourcePosition sourcePosition) {
        super(Dops.SPECIAL_FORMAT, sourcePosition, RegisterSpecList.EMPTY);
    }

    @Override
    public final int codeSize() {
        return 0;
    }

    @Override
    public final DalvInsn withOpcode(Dop dop) {
        throw new RuntimeException("unsupported");
    }

    @Override
    public DalvInsn withRegisterOffset(int i10) {
        return withRegisters(getRegisters().withOffset(i10));
    }

    @Override
    public final void writeTo(AnnotatedOutput annotatedOutput) {
    }
}
