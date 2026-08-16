package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

public final class FiveRegisterDecodedInstruction extends DecodedInstruction {

    private final int f35086a;

    private final int f35087b;

    private final int f35088c;

    private final int f35089d;

    private final int f35090e;

    public FiveRegisterDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, long j10, int i13, int i14, int i15, int i16, int i17) {
        super(instructionCodec, i10, i11, indexType, i12, j10);
        this.f35086a = i13;
        this.f35087b = i14;
        this.f35088c = i15;
        this.f35089d = i16;
        this.f35090e = i17;
    }

    @Override
    public int getA() {
        return this.f35086a;
    }

    @Override
    public int getB() {
        return this.f35087b;
    }

    @Override
    public int getC() {
        return this.f35088c;
    }

    @Override
    public int getD() {
        return this.f35089d;
    }

    @Override
    public int getE() {
        return this.f35090e;
    }

    @Override
    public int getRegisterCount() {
        return 5;
    }

    @Override
    public DecodedInstruction withIndex(int i10) {
        return new FiveRegisterDecodedInstruction(getFormat(), getOpcode(), i10, getIndexType(), getTarget(), getLiteral(), this.f35086a, this.f35087b, this.f35088c, this.f35089d, this.f35090e);
    }
}
