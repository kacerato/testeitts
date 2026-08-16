package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.RegisterSpecSet;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.RegisterMapper;

public final class LocalSnapshot extends ZeroSizeInsn {
    private final RegisterSpecSet locals;

    public LocalSnapshot(SourcePosition sourcePosition, RegisterSpecSet registerSpecSet) {
        super(sourcePosition);
        if (registerSpecSet == null) {
            throw new NullPointerException("locals == null");
        }
        this.locals = registerSpecSet;
    }

    @Override
    public String argString() {
        return this.locals.toString();
    }

    public RegisterSpecSet getLocals() {
        return this.locals;
    }

    @Override
    public String listingString0(boolean z10) {
        int size = this.locals.size();
        int maxSize = this.locals.getMaxSize();
        StringBuffer stringBuffer = new StringBuffer((size * 40) + 100);
        stringBuffer.append("local-snapshot");
        for (int i10 = 0; i10 < maxSize; i10++) {
            RegisterSpec registerSpec = this.locals.get(i10);
            if (registerSpec != null) {
                stringBuffer.append("\n  ");
                stringBuffer.append(LocalStart.localString(registerSpec));
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public DalvInsn withMapper(RegisterMapper registerMapper) {
        return new LocalSnapshot(getPosition(), registerMapper.map(this.locals));
    }

    @Override
    public DalvInsn withRegisterOffset(int i10) {
        return new LocalSnapshot(getPosition(), this.locals.withOffset(i10));
    }

    @Override
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new LocalSnapshot(getPosition(), this.locals);
    }
}
