package com.tonyodev.fetch2core;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class DownloadBlockInfo implements DownloadBlock {
    public static final CREATOR CREATOR = new CREATOR(null);
    private int downloadId = -1;
    private int blockPosition = -1;
    private long startByte = -1;
    private long endByte = -1;
    private long downloadedBytes = -1;

    public static final class CREATOR implements Parcelable.Creator<DownloadBlockInfo> {
        private CREATOR() {
        }

        public CREATOR(C14026x c14026x) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public DownloadBlockInfo createFromParcel(@NotNull Parcel source) {
            M.q(source, "source");
            DownloadBlockInfo downloadBlockInfo = new DownloadBlockInfo();
            downloadBlockInfo.setDownloadId(source.readInt());
            downloadBlockInfo.setBlockPosition(source.readInt());
            downloadBlockInfo.setStartByte(source.readLong());
            downloadBlockInfo.setEndByte(source.readLong());
            downloadBlockInfo.setDownloadedBytes(source.readLong());
            return downloadBlockInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public DownloadBlockInfo[] newArray(int i10) {
            return new DownloadBlockInfo[i10];
        }
    }

    @Override
    @NotNull
    public DownloadBlock copy() {
        DownloadBlockInfo downloadBlockInfo = new DownloadBlockInfo();
        downloadBlockInfo.setDownloadId(getDownloadId());
        downloadBlockInfo.setBlockPosition(getBlockPosition());
        downloadBlockInfo.setStartByte(getStartByte());
        downloadBlockInfo.setEndByte(getEndByte());
        downloadBlockInfo.setDownloadedBytes(getDownloadedBytes());
        return downloadBlockInfo;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!M.g(DownloadBlockInfo.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.tonyodev.fetch2core.DownloadBlockInfo");
        }
        DownloadBlockInfo downloadBlockInfo = (DownloadBlockInfo) obj;
        return getDownloadId() == downloadBlockInfo.getDownloadId() && getBlockPosition() == downloadBlockInfo.getBlockPosition() && getStartByte() == downloadBlockInfo.getStartByte() && getEndByte() == downloadBlockInfo.getEndByte() && getDownloadedBytes() == downloadBlockInfo.getDownloadedBytes();
    }

    @Override
    public int getBlockPosition() {
        return this.blockPosition;
    }

    @Override
    public int getDownloadId() {
        return this.downloadId;
    }

    @Override
    public long getDownloadedBytes() {
        return this.downloadedBytes;
    }

    @Override
    public long getEndByte() {
        return this.endByte;
    }

    @Override
    public int getProgress() {
        return FetchCoreUtils.calculateProgress(getDownloadedBytes(), getEndByte() - getStartByte());
    }

    @Override
    public long getStartByte() {
        return this.startByte;
    }

    public int hashCode() {
        return (((((((getDownloadId() * 31) + getBlockPosition()) * 31) + Long.valueOf(getStartByte()).hashCode()) * 31) + Long.valueOf(getEndByte()).hashCode()) * 31) + Long.valueOf(getDownloadedBytes()).hashCode();
    }

    public void setBlockPosition(int i10) {
        this.blockPosition = i10;
    }

    public void setDownloadId(int i10) {
        this.downloadId = i10;
    }

    public void setDownloadedBytes(long j10) {
        this.downloadedBytes = j10;
    }

    public void setEndByte(long j10) {
        this.endByte = j10;
    }

    public void setStartByte(long j10) {
        this.startByte = j10;
    }

    @NotNull
    public String toString() {
        return "DownloadBlock(downloadId=" + getDownloadId() + ", blockPosition=" + getBlockPosition() + ", startByte=" + getStartByte() + ", endByte=" + getEndByte() + ", downloadedBytes=" + getDownloadedBytes() + ')';
    }

    @Override
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        M.q(dest, "dest");
        dest.writeInt(getDownloadId());
        dest.writeInt(getBlockPosition());
        dest.writeLong(getStartByte());
        dest.writeLong(getEndByte());
        dest.writeLong(getDownloadedBytes());
    }
}
