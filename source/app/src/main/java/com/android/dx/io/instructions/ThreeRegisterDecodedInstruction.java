package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

public final class ThreeRegisterDecodedInstruction extends DecodedInstruction {

    private final int f35097a;

    private final int f35098b;

    private final int f35099c;

    public ThreeRegisterDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, long j10, int i13, int i14, int i15) {
        super(instructionCodec, i10, i11, indexType, i12, j10);
        this.f35097a = i13;
        this.f35098b = i14;
        this.f35099c = i15;
    }

    @Override
    public int getA() {
        return this.f35097a;
    }

    @Override
    public int getB() {
        return this.f35098b;
    }

    @Override
    public int getC() {
        return this.f35099c;
    }

    @Override
    public int getRegisterCount() {
        return 3;
    }

    @Override
    public DecodedInstruction withIndex(int i10) {
        return new ThreeRegisterDecodedInstruction(getFormat(), getOpcode(), i10, getIndexType(), getTarget(), getLiteral(), this.f35097a, this.f35098b, this.f35099c);
    }
}
