package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

public final class TwoRegisterDecodedInstruction extends DecodedInstruction {

    private final int f35100a;

    private final int f35101b;

    public TwoRegisterDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, long j10, int i13, int i14) {
        super(instructionCodec, i10, i11, indexType, i12, j10);
        this.f35100a = i13;
        this.f35101b = i14;
    }

    @Override
    public int getA() {
        return this.f35100a;
    }

    @Override
    public int getB() {
        return this.f35101b;
    }

    @Override
    public int getRegisterCount() {
        return 2;
    }

    @Override
    public DecodedInstruction withIndex(int i10) {
        return new TwoRegisterDecodedInstruction(getFormat(), getOpcode(), i10, getIndexType(), getTarget(), getLiteral(), this.f35100a, this.f35101b);
    }
}
