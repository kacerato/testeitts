package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

public final class FourRegisterDecodedInstruction extends DecodedInstruction {

    private final int f35091a;

    private final int f35092b;

    private final int f35093c;

    private final int f35094d;

    public FourRegisterDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, long j10, int i13, int i14, int i15, int i16) {
        super(instructionCodec, i10, i11, indexType, i12, j10);
        this.f35091a = i13;
        this.f35092b = i14;
        this.f35093c = i15;
        this.f35094d = i16;
    }

    @Override
    public int getA() {
        return this.f35091a;
    }

    @Override
    public int getB() {
        return this.f35092b;
    }

    @Override
    public int getC() {
        return this.f35093c;
    }

    @Override
    public int getD() {
        return this.f35094d;
    }

    @Override
    public int getRegisterCount() {
        return 4;
    }

    @Override
    public DecodedInstruction withIndex(int i10) {
        return new FourRegisterDecodedInstruction(getFormat(), getOpcode(), i10, getIndexType(), getTarget(), getLiteral(), this.f35091a, this.f35092b, this.f35093c, this.f35094d);
    }
}
