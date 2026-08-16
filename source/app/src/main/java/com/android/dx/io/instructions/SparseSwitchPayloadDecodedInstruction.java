package com.android.dx.io.instructions;

public final class SparseSwitchPayloadDecodedInstruction extends DecodedInstruction {
    private final int[] keys;
    private final int[] targets;

    public SparseSwitchPayloadDecodedInstruction(InstructionCodec instructionCodec, int i10, int[] iArr, int[] iArr2) {
        super(instructionCodec, i10, 0, null, 0, 0L);
        if (iArr.length != iArr2.length) {
            throw new IllegalArgumentException("keys/targets length mismatch");
        }
        this.keys = iArr;
        this.targets = iArr2;
    }

    public int[] getKeys() {
        return this.keys;
    }

    @Override
    public int getRegisterCount() {
        return 0;
    }

    public int[] getTargets() {
        return this.targets;
    }

    @Override
    public DecodedInstruction withIndex(int i10) {
        throw new UnsupportedOperationException("no index in instruction");
    }
}
