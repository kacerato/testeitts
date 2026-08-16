package com.tonyodev.fetch2core;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FileSlice {
    private long downloaded;
    private final long endBytes;

    private final int f83851id;
    private final int position;
    private final long startBytes;

    public FileSlice() {
        this(0, 0, 0L, 0L, 0L, 31, null);
    }

    public final int component1() {
        return this.f83851id;
    }

    public final int component2() {
        return this.position;
    }

    public final long component3() {
        return this.startBytes;
    }

    public final long component4() {
        return this.endBytes;
    }

    public final long component5() {
        return this.downloaded;
    }

    @NotNull
    public final FileSlice copy(int i10, int i11, long j10, long j11, long j12) {
        return new FileSlice(i10, i11, j10, j11, j12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileSlice)) {
            return false;
        }
        FileSlice fileSlice = (FileSlice) obj;
        return this.f83851id == fileSlice.f83851id && this.position == fileSlice.position && this.startBytes == fileSlice.startBytes && this.endBytes == fileSlice.endBytes && this.downloaded == fileSlice.downloaded;
    }

    public final long getDownloaded() {
        return this.downloaded;
    }

    public final long getEndBytes() {
        return this.endBytes;
    }

    public final int getId() {
        return this.f83851id;
    }

    public final int getPosition() {
        return this.position;
    }

    public final long getStartBytes() {
        return this.startBytes;
    }

    public int hashCode() {
        int i10 = ((this.f83851id * 31) + this.position) * 31;
        long j10 = this.startBytes;
        int i11 = (i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.endBytes;
        int i12 = (i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.downloaded;
        return i12 + ((int) (j12 ^ (j12 >>> 32)));
    }

    public final boolean isDownloaded() {
        return this.startBytes + this.downloaded == this.endBytes;
    }

    public final void setDownloaded(long j10) {
        this.downloaded = j10;
    }

    @NotNull
    public String toString() {
        return "FileSlice(id=" + this.f83851id + ", position=" + this.position + ", startBytes=" + this.startBytes + ", endBytes=" + this.endBytes + ", downloaded=" + this.downloaded + ")";
    }

    public FileSlice(int i10, int i11, long j10, long j11, long j12) {
        this.f83851id = i10;
        this.position = i11;
        this.startBytes = j10;
        this.endBytes = j11;
        this.downloaded = j12;
    }

    public FileSlice(int i10, int i11, long j10, long j11, long j12, int i12, C14026x c14026x) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) == 0 ? i11 : 0, (i12 & 4) != 0 ? 0L : j10, (i12 & 8) != 0 ? 0L : j11, (i12 & 16) == 0 ? j12 : 0L);
    }
}
