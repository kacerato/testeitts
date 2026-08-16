package com.android.apksig.internal.util;

import com.android.apksig.internal.zip.ZipUtils;
import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import com.android.apksig.util.DataSources;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Phaser;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public class VerityTreeBuilder implements AutoCloseable {
    private static final int CHUNK_SIZE = 4096;
    private static final int DIGEST_PARALLELISM = Math.min(32, Runtime.getRuntime().availableProcessors());
    private static final String JCA_ALGORITHM = "SHA-256";
    private static final int MAX_OUTSTANDING_CHUNKS = 4;
    private static final int MAX_PREFETCH_CHUNKS = 1024;
    private static final int MIN_CHUNKS_PER_WORKER = 8;
    private final ExecutorService mExecutor;
    private final MessageDigest mMd;
    private final byte[] mSalt;

    public VerityTreeBuilder(byte[] bArr) throws NoSuchAlgorithmException {
        int i10 = DIGEST_PARALLELISM;
        this.mExecutor = new ThreadPoolExecutor(i10, i10, 0L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(4), new ThreadPoolExecutor.CallerRunsPolicy());
        this.mSalt = bArr;
        this.mMd = getNewMessageDigest();
    }

    private static int[] calculateLevelOffset(long j10, int i10) {
        ArrayList arrayList = new ArrayList();
        do {
            j10 = divideRoundup(j10, 4096L) * i10;
            arrayList.add(Long.valueOf(divideRoundup(j10, 4096L) * 4096));
        } while (j10 > 4096);
        int[] iArr = new int[arrayList.size() + 1];
        int i11 = 0;
        iArr[0] = 0;
        while (i11 < arrayList.size()) {
            int i12 = i11 + 1;
            iArr[i12] = iArr[i11] + Math.toIntExact(((Long) arrayList.get((arrayList.size() - i11) - 1)).longValue());
            i11 = i12;
        }
        return iArr;
    }

    private MessageDigest cloneMessageDigest() {
        try {
            try {
                return (MessageDigest) this.mMd.clone();
            } catch (CloneNotSupportedException unused) {
                return getNewMessageDigest();
            }
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("Failed to obtain an instance of a previously available message digest", e10);
        }
    }

    private void digestDataByChunks(DataSource dataSource, DataSink dataSink) throws IOException {
        long size = dataSource.size();
        int divideRoundup = (int) divideRoundup(size, 4096L);
        final byte[][] bArr = new byte[divideRoundup];
        final Phaser phaser = new Phaser(1);
        long j10 = 0;
        int i10 = 0;
        while (j10 < size) {
            int min = (int) (Math.min(TagBits.PassedBoundCheck + j10, size) - j10);
            long j11 = min;
            int divideRoundup2 = (int) divideRoundup(j11, 4096L);
            final ByteBuffer allocate = ByteBuffer.allocate(divideRoundup2 * 4096);
            dataSource.copyTo(j10, min, allocate);
            allocate.rewind();
            final int i11 = i10;
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    VerityTreeBuilder.this.lambda$digestDataByChunks$0(allocate, i11, bArr, phaser);
                }
            };
            phaser.register();
            this.mExecutor.execute(runnable);
            i10 += divideRoundup2;
            j10 += j11;
        }
        phaser.arriveAndAwaitAdvance();
        for (int i12 = 0; i12 < divideRoundup; i12++) {
            byte[] bArr2 = bArr[i12];
            dataSink.consume(bArr2, 0, bArr2.length);
        }
    }

    private static long divideRoundup(long j10, long j11) {
        return ((j10 + j11) - 1) / j11;
    }

    private static MessageDigest getNewMessageDigest() throws NoSuchAlgorithmException {
        return MessageDigest.getInstance("SHA-256");
    }

    public void lambda$digestDataByChunks$0(ByteBuffer byteBuffer, int i10, byte[][] bArr, Phaser phaser) {
        MessageDigest cloneMessageDigest = cloneMessageDigest();
        int capacity = byteBuffer.capacity();
        int i11 = 0;
        while (i11 < capacity) {
            int i12 = i11 + 4096;
            bArr[i10] = saltedDigest(cloneMessageDigest, slice(byteBuffer, i11, i12));
            i10++;
            i11 = i12;
        }
        phaser.arriveAndDeregister();
    }

    private byte[] saltedDigest(ByteBuffer byteBuffer) {
        return saltedDigest(this.mMd, byteBuffer);
    }

    private static ByteBuffer slice(ByteBuffer byteBuffer, int i10, int i11) {
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position(0);
        duplicate.limit(i11);
        duplicate.position(i10);
        return duplicate.slice();
    }

    @Override
    public void close() {
        this.mExecutor.shutdownNow();
    }

    public ByteBuffer generateVerityTree(DataSource dataSource) throws IOException {
        DataSource asDataSource;
        int digestLength = this.mMd.getDigestLength();
        int[] calculateLevelOffset = calculateLevelOffset(dataSource.size(), digestLength);
        ByteBuffer allocate = ByteBuffer.allocate(calculateLevelOffset[calculateLevelOffset.length - 1]);
        for (int length = calculateLevelOffset.length - 2; length >= 0; length--) {
            int i10 = length + 1;
            ByteBufferSink byteBufferSink = new ByteBufferSink(slice(allocate, calculateLevelOffset[length], calculateLevelOffset[i10]));
            if (length == calculateLevelOffset.length - 2) {
                digestDataByChunks(dataSource, byteBufferSink);
                asDataSource = dataSource;
            } else {
                asDataSource = DataSources.asDataSource(slice(allocate.asReadOnlyBuffer(), calculateLevelOffset[i10], calculateLevelOffset[length + 2]));
                digestDataByChunks(asDataSource, byteBufferSink);
            }
            int divideRoundup = (int) ((divideRoundup(asDataSource.size(), 4096L) * digestLength) % 4096);
            if (divideRoundup > 0) {
                int i11 = 4096 - divideRoundup;
                byteBufferSink.consume(new byte[i11], 0, i11);
            }
        }
        return allocate;
    }

    public byte[] generateVerityTreeRootHash(DataSource dataSource, DataSource dataSource2, DataSource dataSource3) throws IOException {
        if (dataSource.size() % 4096 == 0) {
            long size = dataSource.size();
            ByteBuffer allocate = ByteBuffer.allocate((int) dataSource3.size());
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            dataSource3.copyTo(0L, (int) dataSource3.size(), allocate);
            allocate.flip();
            ZipUtils.setZipEocdCentralDirectoryOffset(allocate, size);
            return generateVerityTreeRootHash(new ChainedDataSource(dataSource, dataSource2, DataSources.asDataSource(allocate)));
        }
        throw new IllegalStateException("APK Signing Block size not a multiple of 4096: " + dataSource.size());
    }

    public byte[] getRootHashFromTree(ByteBuffer byteBuffer) throws IOException {
        return saltedDigest(slice(byteBuffer.asReadOnlyBuffer(), 0, 4096));
    }

    private byte[] saltedDigest(MessageDigest messageDigest, ByteBuffer byteBuffer) {
        messageDigest.reset();
        byte[] bArr = this.mSalt;
        if (bArr != null) {
            messageDigest.update(bArr);
        }
        messageDigest.update(byteBuffer);
        return messageDigest.digest();
    }

    public byte[] generateVerityTreeRootHash(DataSource dataSource) throws IOException {
        return getRootHashFromTree(generateVerityTree(dataSource));
    }
}
