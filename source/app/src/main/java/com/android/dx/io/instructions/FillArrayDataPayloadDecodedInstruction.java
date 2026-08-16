package com.android.dx.io.instructions;

public final class FillArrayDataPayloadDecodedInstruction extends DecodedInstruction {
    private final Object data;
    private final int elementWidth;
    private final int size;

    private FillArrayDataPayloadDecodedInstruction(InstructionCodec instructionCodec, int i10, Object obj, int i11, int i12) {
        super(instructionCodec, i10, 0, null, 0, 0L);
        this.data = obj;
        this.size = i11;
        this.elementWidth = i12;
    }

    public Object getData() {
        return this.data;
    }

    public short getElementWidthUnit() {
        return (short) this.elementWidth;
    }

    @Override
    public int getRegisterCount() {
        return 0;
    }

    public int getSize() {
        return this.size;
    }

    @Override
    public DecodedInstruction withIndex(int i10) {
        throw new UnsupportedOperationException("no index in instruction");
    }

    public FillArrayDataPayloadDecodedInstruction(InstructionCodec instructionCodec, int i10, byte[] bArr) {
        this(instructionCodec, i10, bArr, bArr.length, 1);
    }

    public FillArrayDataPayloadDecodedInstruction(InstructionCodec instructionCodec, int i10, short[] sArr) {
        this(instructionCodec, i10, sArr, sArr.length, 2);
    }

    public FillArrayDataPayloadDecodedInstruction(InstructionCodec instructionCodec, int i10, int[] iArr) {
        this(instructionCodec, i10, iArr, iArr.length, 4);
    }

    public FillArrayDataPayloadDecodedInstruction(InstructionCodec instructionCodec, int i10, long[] jArr) {
        this(instructionCodec, i10, jArr, jArr.length, 8);
    }
}
