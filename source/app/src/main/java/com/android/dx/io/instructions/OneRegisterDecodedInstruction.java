package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

public final class OneRegisterDecodedInstruction extends DecodedInstruction {

    private final int f35095a;

    public OneRegisterDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, long j10, int i13) {
        super(instructionCodec, i10, i11, indexType, i12, j10);
        this.f35095a = i13;
    }

    @Override
    public int getA() {
        return this.f35095a;
    }

    @Override
    public int getRegisterCount() {
        return 1;
    }

    @Override
    public DecodedInstruction withIndex(int i10) {
        return new OneRegisterDecodedInstruction(getFormat(), getOpcode(), i10, getIndexType(), getTarget(), getLiteral(), this.f35095a);
    }
}
