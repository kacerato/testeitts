package com.tonyodev.fetch2core;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FileSliceInfo {
    private final long bytesPerFileSlice;
    private final int slicingCount;

    public FileSliceInfo(int i10, long j10) {
        this.slicingCount = i10;
        this.bytesPerFileSlice = j10;
    }

    public static FileSliceInfo copy$default(FileSliceInfo fileSliceInfo, int i10, long j10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = fileSliceInfo.slicingCount;
        }
        if ((i11 & 2) != 0) {
            j10 = fileSliceInfo.bytesPerFileSlice;
        }
        return fileSliceInfo.copy(i10, j10);
    }

    public final int component1() {
        return this.slicingCount;
    }

    public final long component2() {
        return this.bytesPerFileSlice;
    }

    @NotNull
    public final FileSliceInfo copy(int i10, long j10) {
        return new FileSliceInfo(i10, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileSliceInfo)) {
            return false;
        }
        FileSliceInfo fileSliceInfo = (FileSliceInfo) obj;
        return this.slicingCount == fileSliceInfo.slicingCount && this.bytesPerFileSlice == fileSliceInfo.bytesPerFileSlice;
    }

    public final long getBytesPerFileSlice() {
        return this.bytesPerFileSlice;
    }

    public final int getSlicingCount() {
        return this.slicingCount;
    }

    public int hashCode() {
        int i10 = this.slicingCount * 31;
        long j10 = this.bytesPerFileSlice;
        return i10 + ((int) (j10 ^ (j10 >>> 32)));
    }

    @NotNull
    public String toString() {
        return "FileSliceInfo(slicingCount=" + this.slicingCount + ", bytesPerFileSlice=" + this.bytesPerFileSlice + ")";
    }
}
