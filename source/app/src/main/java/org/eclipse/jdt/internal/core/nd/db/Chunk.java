package org.eclipse.jdt.internal.core.nd.db;

import java.io.IOException;
import java.nio.ByteBuffer;
import org.eclipse.core.runtime.IStatus;

public final class Chunk {
    static final boolean $assertionsDisabled = false;
    boolean fCacheHitFlag;
    final Database fDatabase;
    boolean fDirty;
    final int fSequenceNumber;
    private final byte[] fBuffer = new byte[4096];
    int fCacheIndex = -1;

    public Chunk(Database database, int i10) {
        this.fDatabase = database;
        this.fSequenceNumber = i10;
    }

    public static int compressFreeRecPtr(long j10) {
        return (int) (j10 >> 3);
    }

    public static long expandToFreeRecPtr(int i10) {
        return (i10 & 4294967295L) << 3;
    }

    public static int recPtrToIndex(long j10) {
        return (int) (j10 & 4095);
    }

    private void recordWrite(long j10, int i10) {
        this.fDatabase.getLog().recordWrite(j10, i10);
    }

    public void clear(long j10, int i10) {
        makeDirty();
        int recPtrToIndex = recPtrToIndex(j10);
        int i11 = recPtrToIndex + i10;
        if (i11 <= this.fBuffer.length) {
            while (recPtrToIndex < i11) {
                this.fBuffer[recPtrToIndex] = 0;
                recPtrToIndex++;
            }
            recordWrite(j10, i10);
            return;
        }
        throw new IndexException("Attempting to clear beyond end of chunk. Chunk = " + this.fSequenceNumber + ", offset = " + j10 + ", length = " + i10);
    }

    public boolean flush() throws IndexException {
        if (Database.DEBUG_PAGE_CACHE) {
            System.out.println("CHUNK " + this.fSequenceNumber + ": flushing - instance " + System.identityHashCode(this));
        }
        try {
            boolean write = this.fDatabase.write(ByteBuffer.wrap(this.fBuffer), this.fSequenceNumber * 4096);
            this.fDirty = false;
            this.fDatabase.chunkCleaned(this);
            return write;
        } catch (IOException e10) {
            throw new IndexException((IStatus) new DBStatus(e10));
        }
    }

    public void get(long j10, byte[] bArr) {
        get(j10, bArr, 0, bArr.length);
    }

    public int get3ByteUnsignedInt(long j10) {
        int recPtrToIndex = recPtrToIndex(j10);
        byte[] bArr = this.fBuffer;
        return (bArr[recPtrToIndex + 2] & 255) | ((bArr[recPtrToIndex] & 255) << 16) | ((bArr[recPtrToIndex + 1] & 255) << 8);
    }

    public byte getByte(long j10) {
        return this.fBuffer[recPtrToIndex(j10)];
    }

    public byte[] getBytes() {
        byte[] bArr = this.fBuffer;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public char getChar(long j10) {
        int recPtrToIndex = recPtrToIndex(j10);
        byte[] bArr = this.fBuffer;
        return (char) ((bArr[recPtrToIndex + 1] & 255) | (bArr[recPtrToIndex] << 8));
    }

    public void getChars(long j10, char[] cArr, int i10, int i11) {
        ByteBuffer wrap = ByteBuffer.wrap(this.fBuffer);
        wrap.position(recPtrToIndex(j10));
        wrap.asCharBuffer().get(cArr, i10, i11);
    }

    public void getCharsFromBytes(long j10, char[] cArr, int i10, int i11) {
        int recPtrToIndex = recPtrToIndex(j10);
        for (int i12 = 0; i12 < i11; i12++) {
            cArr[i10 + i12] = (char) (this.fBuffer[recPtrToIndex + i12] & 255);
        }
    }

    public double getDouble(long j10) {
        return Double.longBitsToDouble(getLong(j10));
    }

    public float getFloat(long j10) {
        return Float.intBitsToFloat(getInt(j10));
    }

    public long getFreeRecPtr(long j10) {
        return expandToFreeRecPtr(getInt(this.fBuffer, recPtrToIndex(j10)));
    }

    public int getInt(long j10) {
        return getInt(this.fBuffer, recPtrToIndex(j10));
    }

    public long getLong(long j10) {
        int recPtrToIndex = recPtrToIndex(j10);
        byte[] bArr = this.fBuffer;
        return (bArr[recPtrToIndex + 7] & 255) | ((bArr[recPtrToIndex] & 255) << 56) | ((bArr[recPtrToIndex + 1] & 255) << 48) | ((bArr[recPtrToIndex + 2] & 255) << 40) | ((bArr[recPtrToIndex + 3] & 255) << 32) | ((bArr[recPtrToIndex + 4] & 255) << 24) | ((bArr[recPtrToIndex + 5] & 255) << 16) | ((bArr[recPtrToIndex + 6] & 255) << 8);
    }

    public long getRecPtr(long j10) {
        return Database.getRecPtr(this.fBuffer, recPtrToIndex(j10));
    }

    public short getShort(long j10) {
        int recPtrToIndex = recPtrToIndex(j10);
        byte[] bArr = this.fBuffer;
        return (short) ((bArr[recPtrToIndex + 1] & 255) | (bArr[recPtrToIndex] << 8));
    }

    public Chunk getWritableChunk() {
        Chunk chunk = this.fDatabase.getChunk(this.fSequenceNumber * 4096);
        chunk.makeDirty();
        return chunk;
    }

    public void makeDirty() {
        Chunk chunk;
        int i10 = this.fSequenceNumber;
        if (i10 >= 1 && (chunk = this.fDatabase.fChunks[i10]) != this) {
            throw new IllegalStateException("CHUNK " + this.fSequenceNumber + ": found two copies. Copy 1: " + System.identityHashCode(this) + ", Copy 2: " + System.identityHashCode(chunk));
        }
        if (this.fDirty) {
            return;
        }
        if (Database.DEBUG_PAGE_CACHE) {
            System.out.println("CHUNK " + this.fSequenceNumber + ": dirtied - instance " + System.identityHashCode(this));
        }
        if (this.fSequenceNumber < 1 || this.fDatabase.fMostRecentlyFetchedChunk == this) {
            this.fDirty = true;
            this.fDatabase.chunkDirtied(this);
        } else {
            throw new IllegalStateException("CHUNK " + this.fSequenceNumber + " dirtied out of order: Only the most-recently-fetched chunk is allowed to be dirtied");
        }
    }

    public void put(long j10, byte[] bArr, int i10) {
        put(j10, bArr, 0, i10);
    }

    public void put3ByteUnsignedInt(long j10, int i10) {
        makeDirty();
        int recPtrToIndex = recPtrToIndex(j10);
        byte[] bArr = this.fBuffer;
        bArr[recPtrToIndex] = (byte) (i10 >> 16);
        bArr[recPtrToIndex + 1] = (byte) (i10 >> 8);
        bArr[recPtrToIndex + 2] = (byte) i10;
        recordWrite(j10, 3);
    }

    public void putByte(long j10, byte b10) {
        makeDirty();
        this.fBuffer[recPtrToIndex(j10)] = b10;
        recordWrite(j10, 1);
    }

    public void putBytes(long j10, byte[] bArr) {
        makeDirty();
        System.arraycopy(bArr, 0, this.fBuffer, recPtrToIndex(j10), bArr.length);
        recordWrite(j10, bArr.length);
    }

    public void putChar(long j10, char c10) {
        makeDirty();
        int recPtrToIndex = recPtrToIndex(j10);
        byte[] bArr = this.fBuffer;
        bArr[recPtrToIndex] = (byte) (c10 >> '\b');
        bArr[recPtrToIndex + 1] = (byte) c10;
        recordWrite(j10, 2);
    }

    public void putChars(long j10, char[] cArr, int i10, int i11) {
        makeDirty();
        int recPtrToIndex = recPtrToIndex(j10) - 1;
        int i12 = i10 + i11;
        while (i10 < i12) {
            char c10 = cArr[i10];
            byte[] bArr = this.fBuffer;
            bArr[recPtrToIndex + 1] = (byte) (c10 >> '\b');
            recPtrToIndex += 2;
            bArr[recPtrToIndex] = (byte) c10;
            i10++;
        }
        recordWrite(j10, i11 * 2);
    }

    public void putCharsAsBytes(long j10, char[] cArr, int i10, int i11) {
        makeDirty();
        int recPtrToIndex = recPtrToIndex(j10) - 1;
        int i12 = i10 + i11;
        while (i10 < i12) {
            recPtrToIndex++;
            this.fBuffer[recPtrToIndex] = (byte) cArr[i10];
            i10++;
        }
        recordWrite(j10, i11);
    }

    public void putDouble(long j10, double d10) {
        putLong(j10, Double.doubleToLongBits(d10));
    }

    public void putFloat(long j10, float f10) {
        putInt(j10, Float.floatToIntBits(f10));
    }

    public void putFreeRecPtr(long j10, long j11) {
        makeDirty();
        putInt(compressFreeRecPtr(j11), this.fBuffer, recPtrToIndex(j10));
        recordWrite(j10, 4);
    }

    public void putInt(long j10, int i10) {
        makeDirty();
        putInt(i10, this.fBuffer, recPtrToIndex(j10));
        recordWrite(j10, 4);
    }

    public void putLong(long j10, long j11) {
        makeDirty();
        int recPtrToIndex = recPtrToIndex(j10);
        byte[] bArr = this.fBuffer;
        bArr[recPtrToIndex] = (byte) (j11 >> 56);
        bArr[recPtrToIndex + 1] = (byte) (j11 >> 48);
        bArr[recPtrToIndex + 2] = (byte) (j11 >> 40);
        bArr[recPtrToIndex + 3] = (byte) (j11 >> 32);
        bArr[recPtrToIndex + 4] = (byte) (j11 >> 24);
        bArr[recPtrToIndex + 5] = (byte) (j11 >> 16);
        bArr[recPtrToIndex + 6] = (byte) (j11 >> 8);
        bArr[recPtrToIndex + 7] = (byte) j11;
        recordWrite(j10, 8);
    }

    public void putRecPtr(long j10, long j11) {
        makeDirty();
        Database.putRecPtr(j11, this.fBuffer, recPtrToIndex(j10));
        recordWrite(j10, 4);
    }

    public void putShort(long j10, short s10) {
        makeDirty();
        int recPtrToIndex = recPtrToIndex(j10);
        byte[] bArr = this.fBuffer;
        bArr[recPtrToIndex] = (byte) (s10 >> 8);
        bArr[recPtrToIndex + 1] = (byte) s10;
        recordWrite(j10, 2);
    }

    public void read() throws IndexException {
        try {
            this.fDatabase.read(ByteBuffer.wrap(this.fBuffer), this.fSequenceNumber * 4096);
        } catch (IOException e10) {
            throw new IndexException((IStatus) new DBStatus(e10));
        }
    }

    public static final int getInt(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public void get(long j10, byte[] bArr, int i10, int i11) {
        System.arraycopy(this.fBuffer, recPtrToIndex(j10), bArr, i10, i11);
    }

    public void put(long j10, byte[] bArr, int i10, int i11) {
        makeDirty();
        System.arraycopy(bArr, i10, this.fBuffer, recPtrToIndex(j10), i11);
        recordWrite(j10, i11);
    }

    public byte[] getBytes(long j10, int i10) {
        byte[] bArr = new byte[i10];
        System.arraycopy(this.fBuffer, recPtrToIndex(j10), bArr, 0, i10);
        return bArr;
    }

    public static final void putInt(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) (i10 >> 24);
        bArr[i11 + 1] = (byte) (i10 >> 16);
        bArr[i11 + 2] = (byte) (i10 >> 8);
        bArr[i11 + 3] = (byte) i10;
    }
}
