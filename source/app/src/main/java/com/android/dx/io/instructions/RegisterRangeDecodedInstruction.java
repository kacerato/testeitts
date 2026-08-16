package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

public final class RegisterRangeDecodedInstruction extends DecodedInstruction {

    private final int f35096a;
    private final int registerCount;

    public RegisterRangeDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, long j10, int i13, int i14) {
        super(instructionCodec, i10, i11, indexType, i12, j10);
        this.f35096a = i13;
        this.registerCount = i14;
    }

    @Override
    public int getA() {
        return this.f35096a;
    }

    @Override
    public int getRegisterCount() {
        return this.registerCount;
    }

    @Override
    public DecodedInstruction withIndex(int i10) {
        return new RegisterRangeDecodedInstruction(getFormat(), getOpcode(), i10, getIndexType(), getTarget(), getLiteral(), this.f35096a, this.registerCount);
    }
}
