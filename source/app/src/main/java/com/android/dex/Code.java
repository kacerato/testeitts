package com.android.dex;

public final class Code {
    private final CatchHandler[] catchHandlers;
    private final int debugInfoOffset;
    private final int insSize;
    private final short[] instructions;
    private final int outsSize;
    private final int registersSize;
    private final Try[] tries;

    public static class CatchHandler {
        final int[] addresses;
        final int catchAllAddress;
        final int offset;
        final int[] typeIndexes;

        public CatchHandler(int[] iArr, int[] iArr2, int i10, int i11) {
            this.typeIndexes = iArr;
            this.addresses = iArr2;
            this.catchAllAddress = i10;
            this.offset = i11;
        }

        public int[] getAddresses() {
            return this.addresses;
        }

        public int getCatchAllAddress() {
            return this.catchAllAddress;
        }

        public int getOffset() {
            return this.offset;
        }

        public int[] getTypeIndexes() {
            return this.typeIndexes;
        }
    }

    public static class Try {
        final int catchHandlerIndex;
        final int instructionCount;
        final int startAddress;

        public Try(int i10, int i11, int i12) {
            this.startAddress = i10;
            this.instructionCount = i11;
            this.catchHandlerIndex = i12;
        }

        public int getCatchHandlerIndex() {
            return this.catchHandlerIndex;
        }

        public int getInstructionCount() {
            return this.instructionCount;
        }

        public int getStartAddress() {
            return this.startAddress;
        }
    }

    public Code(int i10, int i11, int i12, int i13, short[] sArr, Try[] tryArr, CatchHandler[] catchHandlerArr) {
        this.registersSize = i10;
        this.insSize = i11;
        this.outsSize = i12;
        this.debugInfoOffset = i13;
        this.instructions = sArr;
        this.tries = tryArr;
        this.catchHandlers = catchHandlerArr;
    }

    public CatchHandler[] getCatchHandlers() {
        return this.catchHandlers;
    }

    public int getDebugInfoOffset() {
        return this.debugInfoOffset;
    }

    public int getInsSize() {
        return this.insSize;
    }

    public short[] getInstructions() {
        return this.instructions;
    }

    public int getOutsSize() {
        return this.outsSize;
    }

    public int getRegistersSize() {
        return this.registersSize;
    }

    public Try[] getTries() {
        return this.tries;
    }
}
