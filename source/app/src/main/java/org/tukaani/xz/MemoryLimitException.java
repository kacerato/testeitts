package org.tukaani.xz;

public class MemoryLimitException extends XZIOException {
    private static final long serialVersionUID = 3;
    private final int memoryLimit;
    private final int memoryNeeded;

    public MemoryLimitException(int i10, int i11) {
        super("" + i10 + " KiB of memory would be needed; limit was " + i11 + " KiB");
        this.memoryNeeded = i10;
        this.memoryLimit = i11;
    }

    public int getMemoryLimit() {
        return this.memoryLimit;
    }

    public int getMemoryNeeded() {
        return this.memoryNeeded;
    }
}
