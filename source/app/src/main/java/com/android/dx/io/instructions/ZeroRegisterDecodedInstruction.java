package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

public final class ZeroRegisterDecodedInstruction extends DecodedInstruction {
    public ZeroRegisterDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, long j10) {
        super(instructionCodec, i10, i11, indexType, i12, j10);
    }

    @Override
    public int getRegisterCount() {
        return 0;
    }

    @Override
    public DecodedInstruction withIndex(int i10) {
        return new ZeroRegisterDecodedInstruction(getFormat(), getOpcode(), i10, getIndexType(), getTarget(), getLiteral());
    }
}
