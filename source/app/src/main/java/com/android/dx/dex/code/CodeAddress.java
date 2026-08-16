package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;

public final class CodeAddress extends ZeroSizeInsn {
    private final boolean bindsClosely;

    public CodeAddress(SourcePosition sourcePosition) {
        this(sourcePosition, false);
    }

    @Override
    public String argString() {
        return null;
    }

    public boolean getBindsClosely() {
        return this.bindsClosely;
    }

    @Override
    public String listingString0(boolean z10) {
        return "code-address";
    }

    @Override
    public final DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new CodeAddress(getPosition());
    }

    public CodeAddress(SourcePosition sourcePosition, boolean z10) {
        super(sourcePosition);
        this.bindsClosely = z10;
    }
}
