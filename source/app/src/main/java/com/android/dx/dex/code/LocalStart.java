package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.RegisterMapper;
import w2.C15883c;

public final class LocalStart extends ZeroSizeInsn {
    private final RegisterSpec local;

    public LocalStart(SourcePosition sourcePosition, RegisterSpec registerSpec) {
        super(sourcePosition);
        if (registerSpec == null) {
            throw new NullPointerException("local == null");
        }
        this.local = registerSpec;
    }

    public static String localString(RegisterSpec registerSpec) {
        return registerSpec.regString() + C15883c.f126249O + registerSpec.getLocalItem().toString() + ": " + registerSpec.getTypeBearer().toHuman();
    }

    @Override
    public String argString() {
        return this.local.toString();
    }

    public RegisterSpec getLocal() {
        return this.local;
    }

    @Override
    public String listingString0(boolean z10) {
        return "local-start " + localString(this.local);
    }

    @Override
    public DalvInsn withMapper(RegisterMapper registerMapper) {
        return new LocalStart(getPosition(), registerMapper.map(this.local));
    }

    @Override
    public DalvInsn withRegisterOffset(int i10) {
        return new LocalStart(getPosition(), this.local.withOffset(i10));
    }

    @Override
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new LocalStart(getPosition(), this.local);
    }
}
