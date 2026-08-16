package com.android.dx.io.instructions;

public final class PackedSwitchPayloadDecodedInstruction extends DecodedInstruction {
    private final int firstKey;
    private final int[] targets;

    public PackedSwitchPayloadDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, int[] iArr) {
        super(instructionCodec, i10, 0, null, 0, 0L);
        this.firstKey = i11;
        this.targets = iArr;
    }

    public int getFirstKey() {
        return this.firstKey;
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
