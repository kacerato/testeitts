package org.eclipse.jdt.internal.core.nd.db;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedByInterruptException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.core.nd.IndexExceptionBuilder;
import org.eclipse.jdt.internal.core.nd.db.ChunkWriter;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;
import org.eclipse.osgi.util.NLS;

public class Database {
    static final boolean $assertionsDisabled = false;
    public static final int BLOCK_HEADER_SIZE = 2;
    private static final int BLOCK_NEXT_OFFSET = 6;
    private static final int BLOCK_PREV_OFFSET = 2;
    public static final int BLOCK_SIZE_DELTA = 8;
    public static final int BLOCK_SIZE_DELTA_BITS = 3;
    public static final int BYTE_SIZE = 1;
    public static final int CHAR_SIZE = 2;
    public static final int CHUNK_SIZE = 4096;
    public static final int DATA_AREA_OFFSET;
    public static boolean DEBUG_FREE_SPACE = false;
    public static boolean DEBUG_PAGE_CACHE = false;
    public static final int DOUBLE_SIZE = 8;
    public static final int FLOAT_SIZE = 4;
    private static final int FREE_BLOCK_HEADER_SIZE = 10;
    public static final int FREE_BLOCK_OFFSET = 2048;
    public static final int INT_SIZE = 4;
    public static final int LONG_SIZE = 8;
    public static final int MALLOC_STATS_OFFSET = 2060;
    public static final int MALLOC_TABLE_OFFSET = 4;
    public static final int MAX_BLOCK_DELTAS;
    public static final long MAX_DB_SIZE = 34359738368L;
    private static final int MAX_ITERATIONS_PER_LOCK = 256;
    public static final long MAX_MALLOC_SIZE;
    public static final int MAX_SINGLE_BLOCK_MALLOC_SIZE;
    public static final int MIN_BLOCK_DELTAS = 2;
    public static final double MIN_BYTES_PER_MILLISECOND = 20480.0d;
    public static final int NUM_HEADER_CHUNKS = 1;
    public static final int OFFSET_IN_CHUNK_MASK = 4095;
    public static final short POOL_BTREE = 1;
    public static final short POOL_DB_PROPERTIES = 2;
    public static final short POOL_FIRST_NODE_TYPE = 256;
    public static final short POOL_GROWABLE_ARRAY = 7;
    public static final short POOL_LINKED_LIST = 5;
    public static final short POOL_MISC = 0;
    public static final short POOL_STRING_LONG = 3;
    public static final short POOL_STRING_SET = 6;
    public static final short POOL_STRING_SHORT = 4;
    public static final int PTR_SIZE = 4;
    public static final int SHORT_SIZE = 2;
    public static final int STRING_SIZE = 4;
    public static final int VERSION_OFFSET = 0;
    private static final int WRITE_BUFFER_SIZE = 131072;
    public static final int WRITE_NUMBER_OFFSET = 2052;
    private long bytesWritten;
    private long cacheHits;
    private long cacheMisses;
    private ChunkCache fCache;
    Chunk[] fChunks;
    private int fChunksUsed;
    private boolean fExclusiveLock;
    private RandomAccessFile fFile;
    private final Chunk fHeaderChunk;
    private boolean fIsMarkedIncomplete;
    private final File fLocation;
    private boolean fLocked;
    public Chunk fMostRecentlyFetchedChunk;
    private final boolean fReadOnly;
    private int fVersion;
    private long freed;
    private long malloced;
    private MemoryStats memoryUsage;
    private long nextValidation;
    private long pageWritesBytes;
    private long totalFlushTime;
    private long totalReadTimeMs;
    private long totalWriteTimeMs;
    private long validateCounter;
    private HashSet<Chunk> dirtyChunkSet = new HashSet<>();
    private final ModificationLog log = new ModificationLog(0);
    private final ModificationLog.Tag mallocTag = ModificationLog.createTag("Calling Database.malloc");
    private final ModificationLog.Tag freeTag = ModificationLog.createTag("Calling Database.free");

    public static class ChunkStats {
        public final int chunksInMemory;
        public final int dirtyChunks;
        public final int nonDirtyChunksNotInCache;
        public final int totalChunks;

        public ChunkStats(int i10, int i11, int i12, int i13) {
            this.totalChunks = i10;
            this.chunksInMemory = i11;
            this.dirtyChunks = i12;
            this.nonDirtyChunksNotInCache = i13;
        }

        public String toString() {
            return "Chunks: total = " + this.totalChunks + ", in memory = " + this.chunksInMemory + ", dirty = " + this.dirtyChunks + ", not in cache = " + this.nonDirtyChunksNotInCache;
        }
    }

    public interface IORunnable {
        void run() throws IOException;
    }

    static {
        int i10 = LargeBlock.HEADER_SIZE;
        int i11 = LargeBlock.FOOTER_SIZE;
        MAX_BLOCK_DELTAS = ((4096 - i10) - i11) / 8;
        MAX_SINGLE_BLOCK_MALLOC_SIZE = (r1 * 8) - 2;
        MAX_MALLOC_SIZE = ((34359738368L - i10) - i11) - 4098;
        DATA_AREA_OFFSET = MemoryStats.SIZE + 2060;
    }

    public Database(File file, ChunkCache chunkCache, int i10, boolean z10) throws IndexException {
        try {
            this.fLocation = file;
            this.fReadOnly = z10;
            this.fCache = chunkCache;
            openFile();
            int length = (int) (this.fFile.length() / 4096);
            Chunk chunk = new Chunk(this, 0);
            this.fHeaderChunk = chunk;
            if (length <= 0) {
                this.fVersion = i10;
                Chunk[] chunkArr = new Chunk[1];
                this.fChunks = chunkArr;
                this.fChunksUsed = chunkArr.length;
            } else {
                chunk.read();
                this.fVersion = chunk.getInt(0L);
                this.fChunks = new Chunk[length];
                this.fChunksUsed = length;
            }
            this.memoryUsage = new MemoryStats(chunk, TagBits.MemberTypeMask);
        } catch (IOException e10) {
            throw new IndexException((IStatus) new DBStatus(e10));
        }
    }

    private void addBlock(Chunk chunk, int i10, long j10) throws IndexException {
        chunk.putShort(j10, (short) i10);
        long firstBlock = getFirstBlock(i10);
        chunk.putFreeRecPtr(j10 + 2, 0L);
        chunk.putFreeRecPtr(6 + j10, firstBlock);
        if (firstBlock != 0) {
            putFreeRecPtr(firstBlock + 2, j10);
        }
        setFirstBlock(i10, j10);
    }

    private void attachBlockHeaderForChunkNum(IndexExceptionBuilder indexExceptionBuilder, int i10) {
        if (i10 >= this.fChunksUsed) {
            return;
        }
        indexExceptionBuilder.addProblemAddress("block header for chunk " + i10, i10 * 4096, 4);
    }

    private int createLargeBlock(long j10) {
        int blockHeaderForChunkNum;
        int chunksNeededForBytes = getChunksNeededForBytes(j10);
        int freeBlockFromTrie = getFreeBlockFromTrie(chunksNeededForBytes);
        if (freeBlockFromTrie == 0) {
            int i10 = this.fChunksUsed;
            int blockFooterForChunkBefore = getBlockFooterForChunkBefore(i10);
            if (blockFooterForChunkBefore > 0) {
                freeBlockFromTrie = getFirstChunkOfBlockBefore(i10);
                unlinkFreeBlock(freeBlockFromTrie);
                createNewChunks(chunksNeededForBytes - blockFooterForChunkBefore);
            } else {
                freeBlockFromTrie = createNewChunks(chunksNeededForBytes);
            }
            blockHeaderForChunkNum = chunksNeededForBytes;
        } else {
            blockHeaderForChunkNum = getBlockHeaderForChunkNum(freeBlockFromTrie);
            if (blockHeaderForChunkNum < chunksNeededForBytes) {
                throw describeProblem().addProblemAddress("chunk header", freeBlockFromTrie * 4096, 4).build("A block in the free space trie was too small or wasn't actually free. Reported size = " + blockHeaderForChunkNum + " chunks, requested size = " + chunksNeededForBytes + " chunks");
            }
            int i11 = freeBlockFromTrie + blockHeaderForChunkNum;
            int blockFooterForChunkBefore2 = getBlockFooterForChunkBefore(i11);
            if (blockFooterForChunkBefore2 != blockHeaderForChunkNum) {
                throw describeProblem().addProblemAddress("chunk header", freeBlockFromTrie * 4096, 4).addProblemAddress("chunk footer", (i11 * 4096) - 4, 4).build("The header and footer didn't match for a block in the free space trie. Expected " + blockHeaderForChunkNum + " but found " + blockFooterForChunkBefore2);
            }
            unlinkFreeBlock(freeBlockFromTrie);
        }
        if (blockHeaderForChunkNum > chunksNeededForBytes) {
            int abs = Math.abs(getBlockHeaderForChunkNum(freeBlockFromTrie + blockHeaderForChunkNum));
            int i12 = blockHeaderForChunkNum - chunksNeededForBytes;
            if (abs >= Math.abs(getBlockFooterForChunkBefore(freeBlockFromTrie))) {
                linkFreeBlockToTrie(freeBlockFromTrie + chunksNeededForBytes, i12);
            } else {
                linkFreeBlockToTrie(freeBlockFromTrie, i12);
                freeBlockFromTrie += i12;
            }
        }
        setBlockHeader(freeBlockFromTrie, -chunksNeededForBytes);
        return freeBlockFromTrie;
    }

    private int createNewChunks(int i10) throws IndexException {
        int i11;
        synchronized (this.fCache) {
            try {
                i11 = this.fChunksUsed;
                int i12 = i11 + i10;
                int i13 = i12 - 1;
                Chunk chunk = new Chunk(this, i13);
                Chunk[] chunkArr = this.fChunks;
                if (i13 >= chunkArr.length) {
                    Chunk[] chunkArr2 = new Chunk[Math.max(i12, this.fChunks.length + Math.max(1024, chunkArr.length / 20))];
                    Chunk[] chunkArr3 = this.fChunks;
                    System.arraycopy(chunkArr3, 0, chunkArr2, 0, chunkArr3.length);
                    this.fChunks = chunkArr2;
                }
                this.fChunksUsed = i12;
                if (DEBUG_PAGE_CACHE) {
                    System.out.println("CHUNK " + chunk.fSequenceNumber + ": inserted into vector - instance " + System.identityHashCode(chunk));
                }
                this.fChunks[i13] = chunk;
                this.fMostRecentlyFetchedChunk = chunk;
                chunk.makeDirty();
                this.fCache.add(chunk);
                long j10 = (i11 * 4096) + (i10 * 4096);
                if (j10 > 34359738368L) {
                    Object[] objArr = {getLocation().getAbsolutePath(), 34359738368L};
                    throw new IndexException((IStatus) new Status(4, Package.PLUGIN_ID, 4, NLS.bind("Database too large! Address = " + j10 + ", max size = 34359738368", objArr), (Throwable) null));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i11;
    }

    private void databaseCorruptionDetected() throws IndexException {
        throw new IndexException((IStatus) new DBStatus("Corrupted database: " + this.fLocation.getName()));
    }

    private static int divideRoundingUp(long j10, long j11) {
        return (int) (((j10 + j11) - 1) / j11);
    }

    private boolean flushAndUnlockChunks(ArrayList<Chunk> arrayList, boolean z10) throws IndexException {
        double d10;
        byte[] bytes;
        boolean isEmpty = arrayList.isEmpty();
        boolean markFileIncomplete = (!isEmpty || this.fHeaderChunk.fDirty) ? markFileIncomplete() : false;
        boolean z11 = true;
        if (!isEmpty) {
            synchronized (this.fCache) {
                try {
                    if (this.cacheMisses > 100) {
                        double averageReadBytesPerMs = getAverageReadBytesPerMs();
                        if (averageReadBytesPerMs > 0.0d) {
                            d10 = averageReadBytesPerMs / 2.0d;
                        }
                    }
                    d10 = 20480.0d;
                } finally {
                }
            }
            ChunkWriter chunkWriter = new ChunkWriter(131072, Math.max(d10, 20480.0d), new ChunkWriter.WriteCallback() {
                @Override
                public final boolean write(ByteBuffer byteBuffer, long j10) {
                    return Database.this.write(byteBuffer, j10);
                }
            });
            try {
                Iterator<Chunk> it = arrayList.iterator();
                while (it.hasNext()) {
                    Chunk next = it.next();
                    if (next.fDirty) {
                        if (DEBUG_PAGE_CACHE) {
                            System.out.println("CHUNK " + next.fSequenceNumber + ": flushing - instance " + System.identityHashCode(next));
                        }
                        synchronized (this.fCache) {
                            bytes = next.getBytes();
                            next.fDirty = false;
                            chunkCleaned(next);
                        }
                        markFileIncomplete = chunkWriter.write(((long) next.fSequenceNumber) * 4096, bytes) || markFileIncomplete;
                    }
                }
                chunkWriter.flush();
                synchronized (this.fCache) {
                    this.pageWritesBytes += chunkWriter.getBytesWritten();
                    this.totalWriteTimeMs += chunkWriter.getTotalWriteTimeMs();
                }
            } catch (IOException e10) {
                throw new IndexException((IStatus) new DBStatus(e10));
            }
        }
        if (!z10) {
            return markFileIncomplete;
        }
        Chunk chunk = this.fHeaderChunk;
        if (!chunk.fDirty && !this.fIsMarkedIncomplete) {
            return markFileIncomplete;
        }
        chunk.putInt(0L, this.fVersion);
        if (!this.fHeaderChunk.flush() && !markFileIncomplete) {
            z11 = false;
        }
        this.fIsMarkedIncomplete = false;
        return z11;
    }

    public static String formatByteString(long j10) {
        String str;
        double d10 = j10;
        if (d10 > 1024.0d) {
            d10 /= 1048576.0d;
            str = "MiB";
        } else {
            str = Signature.SIG_BYTE;
        }
        return String.valueOf(new DecimalFormat("#0.###").format(d10)) + str;
    }

    private void freeLargeChunk(int i10, int i11) {
        int blockFooterForChunkBefore = getBlockFooterForChunkBefore(i10);
        int i12 = i10 + i11;
        int blockHeaderForChunkNum = getBlockHeaderForChunkNum(i12);
        if (blockFooterForChunkBefore > 0) {
            i10 = getFirstChunkOfBlockBefore(i10);
            unlinkFreeBlock(i10);
            i11 += blockFooterForChunkBefore;
        }
        if (blockHeaderForChunkNum > 0) {
            unlinkFreeBlock(i12);
            i11 += blockHeaderForChunkNum;
        }
        linkFreeBlockToTrie(i10, i11);
    }

    private long getAddressOfFirstBlockPointer(int i10) {
        return (((i10 / 8) - 2) * 4) + 4;
    }

    private int getBlockFooterForChunkBefore(int i10) {
        if (i10 < 2) {
            return 0;
        }
        return getInt((i10 * 4096) - LargeBlock.FOOTER_SIZE);
    }

    private int getBlockHeaderForChunkNum(int i10) {
        if (i10 >= this.fChunksUsed) {
            return 0;
        }
        return getInt(i10 * 4096);
    }

    public static long getBytesThatFitInChunks(int i10) {
        return (((i10 * 4096) - LargeBlock.HEADER_SIZE) - LargeBlock.FOOTER_SIZE) - 2;
    }

    public static int getChunksNeededForBytes(long j10) {
        return divideRoundingUp(j10 + 2 + LargeBlock.HEADER_SIZE + LargeBlock.FOOTER_SIZE, 4096L);
    }

    private long getFirstBlock(int i10) throws IndexException {
        return this.fHeaderChunk.getFreeRecPtr(getAddressOfFirstBlockPointer(i10));
    }

    private int getFirstChunkOfBlockBefore(int i10) {
        return i10 - Math.abs(getBlockFooterForChunkBefore(i10));
    }

    private int getFreeBlockFromTrie(int i10) {
        int smallestChildNoSmallerThan = getSmallestChildNoSmallerThan(getInt(2048L), i10);
        if (smallestChildNoSmallerThan == 0) {
            return 0;
        }
        int i11 = getInt((smallestChildNoSmallerThan * 4096) + LargeBlock.NEXT_BLOCK_OFFSET);
        return i11 != 0 ? i11 : smallestChildNoSmallerThan;
    }

    private long getFreeRecPtr(long j10) throws IndexException {
        return getChunk(j10).getFreeRecPtr(j10);
    }

    private int getSmallestChildNoSmallerThan(int i10, int i11) {
        int smallestChildNoSmallerThan;
        if (i10 == 0) {
            return 0;
        }
        int blockHeaderForChunkNum = getBlockHeaderForChunkNum(i10);
        int i12 = blockHeaderForChunkNum ^ i11;
        if (i12 == 0) {
            return i10;
        }
        int highestOneBit = Integer.highestOneBit(i12);
        boolean z10 = blockHeaderForChunkNum > i11;
        for (int numberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(highestOneBit); numberOfLeadingZeros < 32; numberOfLeadingZeros++) {
            if (((blockHeaderForChunkNum & highestOneBit) != 0) == z10 && (smallestChildNoSmallerThan = getSmallestChildNoSmallerThan(getInt((i10 * 4096) + LargeBlock.CHILD_TABLE_OFFSET + (numberOfLeadingZeros * 4)), i11)) != 0) {
                return smallestChildNoSmallerThan;
            }
            highestOneBit <<= 1;
        }
        if (z10) {
            return i10;
        }
        return 0;
    }

    private void insertChild(int i10, int i11) {
        if (i10 == 0) {
            putInt((i11 * 4096) + LargeBlock.PARENT_OFFSET, i10);
            putInt(2048L, i11);
            return;
        }
        int blockHeaderForChunkNum = getBlockHeaderForChunkNum(i11);
        while (true) {
            if ((getBlockHeaderForChunkNum(i10) ^ blockHeaderForChunkNum) == 0) {
                insertFreeBlockAfter(i10, i11);
                return;
            }
            long numberOfLeadingZeros = (i10 * 4096) + LargeBlock.CHILD_TABLE_OFFSET + ((31 - Integer.numberOfLeadingZeros(r3)) * 4);
            int i12 = getInt(numberOfLeadingZeros);
            if (i12 == 0) {
                putInt(numberOfLeadingZeros, i11);
                putInt((i11 * 4096) + LargeBlock.PARENT_OFFSET, i10);
                return;
            }
            i10 = i12;
        }
    }

    private void insertFreeBlockAfter(int i10, int i11) {
        long j10 = i10 * 4096;
        int i12 = LargeBlock.NEXT_BLOCK_OFFSET;
        int i13 = getInt(i12 + j10);
        long j11 = i13 * 4096;
        long j12 = i11 * 4096;
        putInt(j10 + i12, i11);
        if (i13 != 0) {
            putInt(j11 + LargeBlock.PREV_BLOCK_OFFSET, i11);
        }
        putInt(LargeBlock.PREV_BLOCK_OFFSET + j12, i10);
        putInt(j12 + i12, i13);
    }

    public void lambda$0(ByteBuffer byteBuffer, long j10) throws IOException {
        this.fFile.getChannel().write(byteBuffer, j10);
    }

    public void lambda$1() throws IOException {
        this.fFile.getChannel().truncate(4096L);
    }

    public static int lambda$2(Chunk chunk, Chunk chunk2) {
        return chunk.fSequenceNumber - chunk2.fSequenceNumber;
    }

    public void lambda$4(ByteBuffer byteBuffer) throws IOException {
        this.fFile.getChannel().write(byteBuffer, 0L);
    }

    private void linkFreeBlockToTrie(int i10, int i11) {
        setBlockHeader(i10, i11);
        long j10 = i10 * 4096;
        Chunk chunk = getChunk(j10);
        int i12 = LargeBlock.HEADER_SIZE;
        chunk.clear(j10 + i12, LargeBlock.UNALLOCATED_HEADER_SIZE - i12);
        insertChild(getInt(2048L), i10);
    }

    private boolean markFileIncomplete() throws IndexException {
        if (this.fIsMarkedIncomplete) {
            return false;
        }
        this.fIsMarkedIncomplete = true;
        try {
            final ByteBuffer wrap = ByteBuffer.wrap(new byte[4]);
            boolean performUninterruptableWrite = performUninterruptableWrite(new IORunnable() {
                @Override
                public final void run() {
                    Database.this.lambda$4(wrap);
                }
            });
            this.bytesWritten += 4;
            return performUninterruptableWrite;
        } catch (IOException e10) {
            throw new IndexException((IStatus) new DBStatus(e10));
        }
    }

    private void openFile() throws FileNotFoundException {
        this.fFile = new RandomAccessFile(this.fLocation, this.fReadOnly ? com.itsmagic.engine.Engines.Engine.Animation.a.f72595c : "rw");
    }

    private boolean performUninterruptableWrite(IORunnable iORunnable) throws IOException {
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            try {
                iORunnable.run();
                return z10;
            } catch (ClosedChannelException e10) {
                openFile();
                if (e10 instanceof ClosedByInterruptException) {
                    z10 = true;
                } else {
                    i10++;
                    if (i10 > 20) {
                        throw e10;
                    }
                }
            }
        }
    }

    private boolean periodicValidateFreeSpace() {
        long j10 = this.validateCounter + 1;
        this.validateCounter = j10;
        if (j10 <= this.nextValidation) {
            return false;
        }
        validateFreeSpace();
        this.nextValidation = this.validateCounter * 2;
        return true;
    }

    private void putFreeRecPtr(long j10, long j11) throws IndexException {
        getChunk(j10).putFreeRecPtr(j10, j11);
    }

    private void removeBlock(Chunk chunk, int i10, long j10) throws IndexException {
        long freeRecPtr = chunk.getFreeRecPtr(j10 + 2);
        long freeRecPtr2 = chunk.getFreeRecPtr(j10 + 6);
        if (freeRecPtr != 0) {
            putFreeRecPtr(6 + freeRecPtr, freeRecPtr2);
        } else {
            setFirstBlock(i10, freeRecPtr2);
        }
        if (freeRecPtr2 != 0) {
            putFreeRecPtr(freeRecPtr2 + 2, freeRecPtr);
        }
    }

    private void removeChunksFromCache() {
        int i10 = 1;
        while (i10 < this.fChunksUsed) {
            synchronized (this.fCache) {
                try {
                    int min = Math.min(256, this.fChunksUsed - i10);
                    int i11 = 0;
                    while (i11 < min) {
                        int i12 = i10 + 1;
                        Chunk chunk = this.fChunks[i10];
                        if (chunk != null) {
                            this.fCache.remove(chunk);
                            if (DEBUG_PAGE_CACHE) {
                                System.out.println("CHUNK " + chunk.fSequenceNumber + ": removing from vector in removeChunksFromCache - instance " + System.identityHashCode(chunk));
                            }
                            this.fChunks[chunk.fSequenceNumber] = null;
                        }
                        i11++;
                        i10 = i12;
                    }
                } finally {
                }
            }
        }
    }

    private void setBlockHeader(int i10, int i11) {
        int abs = Math.abs(i11);
        long j10 = i10 * 4096;
        putInt(j10, i11);
        putInt((j10 + (abs * 4096)) - LargeBlock.FOOTER_SIZE, i11);
    }

    private void setFirstBlock(int i10, long j10) throws IndexException {
        this.fHeaderChunk.putFreeRecPtr(getAddressOfFirstBlockPointer(i10), j10);
    }

    private void sortBySequenceNumber(ArrayList<Chunk> arrayList) {
        arrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int lambda$2;
                lambda$2 = Database.lambda$2((Chunk) obj, (Chunk) obj2);
                return lambda$2;
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void unlinkFreeBlock(int i10) {
        int i11;
        boolean z10;
        int blockHeaderForChunkNum;
        long j10 = i10;
        long j11 = j10 * 4096;
        int i12 = LargeBlock.NEXT_BLOCK_OFFSET;
        int i13 = getInt(i12 + j11);
        int i14 = LargeBlock.PREV_BLOCK_OFFSET;
        int i15 = getInt(i14 + j11);
        if (i13 != 0) {
            putInt((i13 * 4096) + i14, i15);
            i11 = i13;
        } else {
            i11 = 0;
        }
        if (i15 != 0) {
            putInt((i15 * 4096) + i12, i13);
        } else {
            i15 = i11;
        }
        boolean z11 = true;
        if (getInt(2048L) == j10) {
            putInt(2048L, 0);
            z10 = true;
        } else {
            z10 = false;
        }
        int blockHeaderForChunkNum2 = getBlockHeaderForChunkNum(i10);
        int i16 = getInt(LargeBlock.PARENT_OFFSET + j11);
        if (i16 != 0 && (blockHeaderForChunkNum = blockHeaderForChunkNum2 ^ getBlockHeaderForChunkNum(i16)) != 0) {
            long numberOfLeadingZeros = (i16 * 4096) + LargeBlock.CHILD_TABLE_OFFSET + ((31 - Integer.numberOfLeadingZeros(blockHeaderForChunkNum)) * 4);
            if (getInt(numberOfLeadingZeros) == i10) {
                putInt(numberOfLeadingZeros, 0);
                if (z11 && i15 != 0) {
                    insertChild(i16, i15);
                }
                int i17 = i16;
                for (int i18 = 0; i18 < 32; i18++) {
                    long j12 = LargeBlock.CHILD_TABLE_OFFSET + j11 + (i18 * 4);
                    int i19 = getInt(j12);
                    if (i19 != 0) {
                        if (!z11) {
                            throw describeProblem().addProblemAddress("non-null child pointer", j12, 4).build("All child pointers should be null for a free chunk that is in the sibling list but not part of the trie. Problematic chunk number: " + i10);
                        }
                        insertChild(i17, i19);
                        if (i17 == i16) {
                            i17 = i19;
                        }
                    }
                }
            }
        }
        z11 = z10;
        if (z11) {
            insertChild(i16, i15);
        }
        int i172 = i16;
        while (i18 < 32) {
        }
    }

    private boolean useBytes(char[] cArr) {
        for (char c10 : cArr) {
            if ((c10 & '\uff00') != 0) {
                return false;
            }
        }
        return true;
    }

    private void validateFreeBlocksFor(int i10) {
        Database database = this;
        int i11 = i10 * 8;
        long firstBlock = database.getFirstBlock(i11);
        long addressOfFirstBlockPointer = database.getAddressOfFirstBlockPointer(i11);
        long j10 = 0;
        long j11 = 0;
        while (firstBlock != j10) {
            long j12 = 2 + firstBlock;
            long freeRecPtr = database.getFreeRecPtr(j12);
            short s10 = database.getShort(firstBlock);
            long j13 = firstBlock + 6;
            long freeRecPtr2 = database.getFreeRecPtr(j13);
            if (freeRecPtr != j11) {
                throw describeProblem().addProblemAddress("last block", j12, 4).addProblemAddress("incoming pointer", addressOfFirstBlockPointer, 4).build("The free space block (" + firstBlock + ") of size " + i11 + " had an incorrect prev pointer to " + freeRecPtr + ", but it should have been pointing to " + j11);
            }
            if (s10 != i11) {
                throw describeProblem().addProblemAddress("block size", firstBlock, 2).addProblemAddress("incoming pointer", addressOfFirstBlockPointer, 4).build("A block (" + firstBlock + ") of size " + freeRecPtr + " was in the free space list for blocks of size " + i11);
            }
            j10 = 0;
            database = this;
            j11 = firstBlock;
            firstBlock = freeRecPtr2;
            addressOfFirstBlockPointer = j13;
        }
    }

    private void validateFreeSpaceLists() {
        for (int i10 = 2; i10 <= MAX_BLOCK_DELTAS; i10++) {
            validateFreeBlocksFor(i10);
        }
    }

    private void validateFreeSpaceNode(Set<Integer> set, int i10, int i11) {
        if (set.contains(Integer.valueOf(i10))) {
            throw describeProblem().build("Chunk " + i10 + "(parent = " + i11 + " appeared twice in the free space tree");
        }
        long j10 = i10 * 4096;
        int i12 = LargeBlock.PARENT_OFFSET;
        int i13 = getInt(i12 + j10);
        if (i13 != i11) {
            throw describeProblem().addProblemAddress("parent pointer", j10 + i12, 4).build("Chunk " + i10 + " has the wrong parent. Expected " + i11 + " but found  " + i13);
        }
        set.add(Integer.valueOf(i10));
        int blockHeaderForChunkNum = getBlockHeaderForChunkNum(i10);
        for (int i14 = 0; i14 < 32; i14++) {
            long j11 = LargeBlock.CHILD_TABLE_OFFSET + j10 + (i14 * 4);
            int i15 = getInt(j11);
            if (i15 != 0) {
                int blockHeaderForChunkNum2 = getBlockHeaderForChunkNum(i15);
                if (31 - Integer.numberOfLeadingZeros(Integer.highestOneBit(blockHeaderForChunkNum2 ^ blockHeaderForChunkNum)) != i14) {
                    IndexExceptionBuilder describeProblem = describeProblem();
                    attachBlockHeaderForChunkNum(describeProblem, i10);
                    attachBlockHeaderForChunkNum(describeProblem, i15);
                    throw describeProblem.build("Chunk " + i15 + " contained an incorrect size of " + blockHeaderForChunkNum2 + ". It was at position " + i14 + " in parent " + i10 + " which had size " + blockHeaderForChunkNum);
                }
                try {
                    validateFreeSpaceNode(set, i15, i10);
                } catch (IndexException e10) {
                    describeProblem().addProblemAddress("child pointer from parent " + i10, j11, 4).attachTo(e10);
                    throw e10;
                }
            }
        }
    }

    private void validateFreeSpaceTries() {
        int i10 = getInt(2048L);
        if (i10 == 0) {
            return;
        }
        validateFreeSpaceNode(new HashSet(), i10, 0);
    }

    private void verifyNotInFreeSpaceList(long j10) {
        for (int i10 = 2; i10 <= MAX_BLOCK_DELTAS; i10++) {
            int i11 = i10 * 8;
            long firstBlock = getFirstBlock(i11);
            long addressOfFirstBlockPointer = getAddressOfFirstBlockPointer(i11);
            while (firstBlock != 0) {
                if (firstBlock == j10) {
                    throw describeProblem().addProblemAddress("incoming pointer", addressOfFirstBlockPointer, 4).build("Block " + j10 + " was found in the free space list, even though it wasn't free");
                }
                addressOfFirstBlockPointer = 6 + firstBlock;
                firstBlock = getFreeRecPtr(addressOfFirstBlockPointer);
            }
        }
        int i12 = getInt(2048L);
        if (i12 == 0) {
            return;
        }
        int i13 = (int) (j10 / 4096);
        if (i12 != i13) {
            verifyNotInLargeBlockFreeSpaceTrie(i13, i12, 0);
            return;
        }
        throw describeProblem().build("Block " + j10 + " was not supposed to be in the free space list, but was linked as the root of the list");
    }

    private void verifyNotInLargeBlockFreeSpaceTrie(int i10, int i11, int i12) {
        long j10 = i11 * 4096;
        for (int i13 = 0; i13 < 32; i13++) {
            long j11 = LargeBlock.CHILD_TABLE_OFFSET + j10 + (i13 * 4);
            int i14 = getInt(j11);
            if (i14 != 0) {
                if (i14 == i10) {
                    throw describeProblem().addProblemAddress("trie child address", j11, 4).build("Chunk number " + i14 + " was found in the free space trie even though it was in use");
                }
                verifyNotInLargeBlockFreeSpaceTrie(i10, i14, i11);
            }
        }
    }

    public void assertLocked() {
        if (!this.fLocked) {
            throw new IllegalStateException("Database not locked!");
        }
    }

    public void checkIfChunkReleased(Chunk chunk) {
        if (chunk.fDirty || chunk.fCacheIndex >= 0) {
            return;
        }
        if (DEBUG_PAGE_CACHE) {
            System.out.println("CHUNK " + chunk.fSequenceNumber + ": removing from vector in releaseChunk - instance " + System.identityHashCode(chunk));
        }
        this.fChunks[chunk.fSequenceNumber] = null;
    }

    public void chunkCleaned(Chunk chunk) {
        if (chunk.fSequenceNumber < 1) {
            return;
        }
        this.dirtyChunkSet.remove(chunk);
        checkIfChunkReleased(chunk);
    }

    public void chunkDirtied(Chunk chunk) {
        if (chunk.fSequenceNumber < 1) {
            return;
        }
        this.dirtyChunkSet.add(chunk);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean clear(int i10) throws IndexException {
        boolean z10;
        long longValue;
        removeChunksFromCache();
        this.log.clear();
        this.fVersion = i10;
        this.fHeaderChunk.clear(0L, 4096);
        boolean z11 = true;
        this.fChunks = new Chunk[1];
        this.dirtyChunkSet.clear();
        this.fChunksUsed = this.fChunks.length;
        try {
            z10 = this.fHeaderChunk.flush();
        } catch (IOException e10) {
            e = e10;
            z10 = false;
        }
        try {
            z10 = performUninterruptableWrite(new IORunnable() {
                @Override
                public final void run() {
                    Database.this.lambda$1();
                }
            }) || z10;
            this.bytesWritten += 4096;
        } catch (IOException e11) {
            e = e11;
            Package.log(e);
            this.freed = 0L;
            this.malloced = 0L;
            longValue = Long.getLong("org.eclipse.jdt.core.parser.nd.chunks", 0L).longValue();
            if (longValue != 0) {
            }
            this.memoryUsage.refresh();
            this.fHeaderChunk.makeDirty();
            return z10;
        }
        this.freed = 0L;
        this.malloced = 0L;
        longValue = Long.getLong("org.eclipse.jdt.core.parser.nd.chunks", 0L).longValue();
        if (longValue != 0) {
            setVersion(getVersion());
            createNewChunks((int) longValue);
            if (!flush() && !z10) {
                z11 = false;
            }
            z10 = z11;
        }
        this.memoryUsage.refresh();
        this.fHeaderChunk.makeDirty();
        return z10;
    }

    public void clearBytes(long j10, int i10) throws IndexException {
        getChunk(j10).clear(j10, i10);
    }

    public void clearRange(long j10, long j11) {
        if (j11 == 0) {
            return;
        }
        int min = (int) Math.min(((((int) (j10 / 4096)) + 1) * 4096) - j10, j11);
        getChunk(j10).clear(j10, min);
        long j12 = min;
        long j13 = j10 + j12;
        long j14 = j11 - j12;
        while (j14 > 4096) {
            getChunk(j13).clear(j13, 4096);
            j13 += 4096;
            j14 -= 4096;
        }
        if (j14 > 0) {
            getChunk(j13).clear(j13, (int) j14);
        }
    }

    public void close() throws IndexException {
        flush();
        removeChunksFromCache();
        this.log.clear();
        this.fHeaderChunk.clear(0L, 4096);
        this.memoryUsage.refresh();
        this.fHeaderChunk.fDirty = false;
        this.dirtyChunkSet.clear();
        Chunk[] chunkArr = new Chunk[1];
        this.fChunks = chunkArr;
        this.fChunksUsed = chunkArr.length;
        try {
            this.fFile.close();
        } catch (IOException e10) {
            throw new IndexException((IStatus) new DBStatus(e10));
        }
    }

    public IndexExceptionBuilder describeProblem() {
        return new IndexExceptionBuilder(this);
    }

    public boolean flush() throws IndexException {
        ArrayList<Chunk> arrayList = new ArrayList<>();
        synchronized (this.fCache) {
            arrayList.addAll(this.dirtyChunkSet);
        }
        sortBySequenceNumber(arrayList);
        long currentTimeMillis = System.currentTimeMillis();
        boolean flushAndUnlockChunks = flushAndUnlockChunks(arrayList, true);
        this.totalFlushTime += System.currentTimeMillis() - currentTimeMillis;
        return flushAndUnlockChunks;
    }

    public void free(long j10, short s10) throws IndexException {
        getLog().start(this.freeTag);
        if (j10 != 0) {
            long j11 = j10 - 2;
            try {
                Chunk chunk = getChunk(j11);
                long j12 = -chunk.getShort(j11);
                if (j12 == 0) {
                    int i10 = (int) (j10 / 4096);
                    int i11 = -getBlockHeaderForChunkNum(i10);
                    if (i11 < 0) {
                        IndexExceptionBuilder describeProblem = describeProblem();
                        if (i10 < this.fChunksUsed) {
                            describeProblem.addProblemAddress("block header", i10 * 4096, 4);
                        }
                        throw describeProblem.build("Already freed large block " + j10);
                    }
                    j12 = i11 * 4096;
                    this.log.recordFree(j10, (int) (j12 - 2));
                    freeLargeChunk(i10, i11);
                } else {
                    if (j12 < 0) {
                        throw describeProblem().addProblemAddress("block size", j11, 2).build("Already freed record " + j10);
                    }
                    this.log.recordFree(j10, (int) (j12 - 2));
                    int recPtrToIndex = Chunk.recPtrToIndex(j10);
                    if (recPtrToIndex + j12 > 4096) {
                        throw describeProblem().addProblemAddress("block size", j11, 2).build("Attempting to free chunk of impossible size. The block at address " + j10 + " in chunk " + chunk.fSequenceNumber + " offset " + recPtrToIndex + " can't be as large as " + j12 + " bytes since that would make it extend beyond the end of the chunk");
                    }
                    addBlock(chunk, (int) j12, j11);
                }
                if (DEBUG_FREE_SPACE) {
                    periodicValidateFreeSpace();
                }
                this.freed += j12;
                this.memoryUsage.recordFree(s10, j12);
            } catch (Throwable th2) {
                getLog().end(this.freeTag);
                throw th2;
            }
        }
        getLog().end(this.freeTag);
    }

    public int get3ByteUnsignedInt(long j10) throws IndexException {
        return getChunk(j10).get3ByteUnsignedInt(j10);
    }

    public double getAverageReadBytesPerMs() {
        long j10 = this.cacheMisses;
        long j11 = this.totalReadTimeMs;
        if (j11 == 0) {
            return 0.0d;
        }
        return (j10 * 4096) / j11;
    }

    public double getAverageWriteBytesPerMs() {
        return this.pageWritesBytes / this.totalWriteTimeMs;
    }

    public byte getByte(long j10) throws IndexException {
        return getChunk(j10).getByte(j10);
    }

    public void getBytes(long j10, byte[] bArr) throws IndexException {
        getChunk(j10).get(j10, bArr);
    }

    public long getBytesAllocated() {
        return this.malloced;
    }

    public long getBytesFreed() {
        return this.freed;
    }

    public long getBytesRead() {
        return this.cacheMisses * 4096;
    }

    public long getBytesWritten() {
        return this.bytesWritten;
    }

    public ChunkCache getCache() {
        return this.fCache;
    }

    public long getCacheHits() {
        return this.cacheHits;
    }

    public long getCacheMisses() {
        return this.cacheMisses;
    }

    public char getChar(long j10) throws IndexException {
        return getChunk(j10).getChar(j10);
    }

    public Chunk getChunk(long j10) throws IndexException {
        Chunk chunk;
        long j11;
        Chunk chunk2;
        long j12;
        assertLocked();
        if (j10 < 4096) {
            Chunk chunk3 = this.fHeaderChunk;
            this.fMostRecentlyFetchedChunk = chunk3;
            return chunk3;
        }
        int i10 = (int) (j10 / 4096);
        synchronized (this.fCache) {
            if (i10 >= 0) {
                try {
                    if (i10 >= this.fChunks.length) {
                    }
                    chunk = this.fChunks[i10];
                } finally {
                }
            }
            databaseCorruptionDetected();
            chunk = this.fChunks[i10];
        }
        boolean z10 = chunk == null;
        if (z10) {
            j12 = System.currentTimeMillis();
            chunk2 = new Chunk(this, i10);
            chunk2.read();
            j11 = System.currentTimeMillis();
        } else {
            j11 = 0;
            chunk2 = chunk;
            j12 = 0;
        }
        synchronized (this.fCache) {
            try {
                if (z10) {
                    this.cacheMisses++;
                    this.totalReadTimeMs += j11 - j12;
                } else {
                    this.cacheHits++;
                }
                Chunk chunk4 = this.fChunks[i10];
                if (chunk4 != chunk2 && chunk4 != null) {
                    if (DEBUG_PAGE_CACHE) {
                        System.out.println("CHUNK " + chunk2.fSequenceNumber + ": already fetched by another thread - instance " + System.identityHashCode(chunk2));
                    }
                    chunk2 = chunk4;
                } else if (z10) {
                    if (DEBUG_PAGE_CACHE) {
                        System.out.println("CHUNK " + chunk2.fSequenceNumber + ": inserted into vector - instance " + System.identityHashCode(chunk2));
                    }
                    this.fChunks[i10] = chunk2;
                }
                this.fCache.add(chunk2);
                this.fMostRecentlyFetchedChunk = chunk2;
            } finally {
            }
        }
        return chunk2;
    }

    public ChunkCache getChunkCache() {
        return this.fCache;
    }

    public int getChunkCount() {
        return this.fChunksUsed;
    }

    public ChunkStats getChunkStats() {
        ChunkStats chunkStats;
        synchronized (this.fCache) {
            try {
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                for (Chunk chunk : this.fChunks) {
                    if (chunk != null) {
                        i10++;
                        if (chunk.fDirty) {
                            i11++;
                        } else if (chunk.fCacheIndex < 0) {
                            i12++;
                        }
                    }
                }
                chunkStats = new ChunkStats(this.fChunks.length, i10, i11, i12);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return chunkStats;
    }

    public long getCumulativeFlushTimeMs() {
        return this.totalFlushTime;
    }

    public long getDatabaseSize() {
        return this.fChunksUsed * 4096;
    }

    public int getDirtyChunkCount() {
        return this.dirtyChunkSet.size();
    }

    public double getDouble(long j10) throws IndexException {
        return getChunk(j10).getDouble(j10);
    }

    public float getFloat(long j10) throws IndexException {
        return getChunk(j10).getFloat(j10);
    }

    public int getInt(long j10) throws IndexException {
        return getChunk(j10).getInt(j10);
    }

    public File getLocation() {
        return this.fLocation;
    }

    public ModificationLog getLog() {
        return this.log;
    }

    public long getLong(long j10) throws IndexException {
        return getChunk(j10).getLong(j10);
    }

    public MemoryStats getMemoryStats() {
        return this.memoryUsage;
    }

    public long getRecPtr(long j10) throws IndexException {
        return getChunk(j10).getRecPtr(j10);
    }

    public short getShort(long j10) throws IndexException {
        return getChunk(j10).getShort(j10);
    }

    public long getSizeBytes() throws IOException {
        return this.fFile.length();
    }

    public IString getString(long j10) throws IndexException {
        int i10 = getInt(j10);
        return (i10 < 0 ? -i10 : i10 * 2) > ShortString.MAX_BYTE_LENGTH ? new LongString(this, j10) : new ShortString(this, j10);
    }

    public int getVersion() {
        return this.fVersion;
    }

    public void giveUpExclusiveLock() {
        this.fExclusiveLock = false;
    }

    public long malloc(long j10, short s10) throws IndexException {
        int i10;
        Chunk chunk;
        int i11;
        long j11;
        this.log.start(this.mallocTag);
        try {
            if (j10 >= MAX_SINGLE_BLOCK_MALLOC_SIZE) {
                int createLargeBlock = createLargeBlock(j10);
                i11 = Math.abs(getBlockHeaderForChunkNum(createLargeBlock)) * 4096;
                long j12 = (createLargeBlock * 4096) + LargeBlock.HEADER_SIZE;
                clearRange(j12, (i11 - r0) - LargeBlock.FOOTER_SIZE);
                j11 = j12 + 2;
            } else {
                int divideRoundingUp = divideRoundingUp(j10 + 2, 8L);
                if (divideRoundingUp < 2) {
                    divideRoundingUp = 2;
                }
                int i12 = divideRoundingUp;
                long j13 = 0;
                while (true) {
                    i10 = MAX_BLOCK_DELTAS;
                    if (i12 > i10) {
                        break;
                    }
                    j13 = getFirstBlock(i12 * 8);
                    if (j13 != 0) {
                        break;
                    }
                    i12++;
                }
                if (j13 == 0) {
                    j13 = (createLargeBlock(j10) * 4096) + LargeBlock.HEADER_SIZE;
                    chunk = getChunk(j13);
                    i12 = i10;
                } else {
                    chunk = getChunk(j13);
                    chunk.makeDirty();
                    short s11 = chunk.getShort(j13);
                    int i13 = i12 * 8;
                    if (s11 != i13) {
                        throw describeProblem().addProblemAddress("block size", j13, 2).build("Heap corruption detected in free space list. Block " + j13 + " reports a size of " + ((int) s11) + " but was in the list for blocks of size " + i13);
                    }
                    removeBlock(chunk, i13, j13);
                }
                int i14 = i12 - divideRoundingUp;
                if (i14 >= 2) {
                    addBlock(chunk, i14 * 8, (divideRoundingUp * 8) + j13);
                } else {
                    divideRoundingUp = i12;
                }
                i11 = divideRoundingUp * 8;
                chunk.putShort(j13, (short) (-i11));
                j11 = j13 + 2;
                chunk.clear(j11, i11 - 2);
            }
            this.log.end(this.mallocTag);
            this.log.recordMalloc(j11, i11 - 2);
            long j14 = i11;
            this.malloced += j14;
            this.memoryUsage.recordMalloc(s10, j14);
            if (DEBUG_FREE_SPACE && periodicValidateFreeSpace()) {
                verifyNotInFreeSpaceList(j11);
            }
            return j11;
        } catch (Throwable th2) {
            this.log.end(this.mallocTag);
            throw th2;
        }
    }

    public void memcpy(long j10, long j11, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            long j12 = i11;
            putByte(j10 + j12, getByte(j12 + j11));
        }
    }

    public IString newString(String str) throws IndexException {
        return newString(str.toCharArray());
    }

    public void put3ByteUnsignedInt(long j10, int i10) throws IndexException {
        getChunk(j10).put3ByteUnsignedInt(j10, i10);
    }

    public void putByte(long j10, byte b10) throws IndexException {
        getChunk(j10).putByte(j10, b10);
    }

    public void putBytes(long j10, byte[] bArr, int i10) throws IndexException {
        getChunk(j10).put(j10, bArr, i10);
    }

    public void putChar(long j10, char c10) throws IndexException {
        getChunk(j10).putChar(j10, c10);
    }

    public void putDouble(long j10, double d10) throws IndexException {
        getChunk(j10).putDouble(j10, d10);
    }

    public void putFloat(long j10, float f10) throws IndexException {
        getChunk(j10).putFloat(j10, f10);
    }

    public void putInt(long j10, int i10) throws IndexException {
        getChunk(j10).putInt(j10, i10);
    }

    public void putLong(long j10, long j11) throws IndexException {
        getChunk(j10).putLong(j10, j11);
    }

    public void putRecPtr(long j10, long j11) throws IndexException {
        getChunk(j10).putRecPtr(j10, j11);
    }

    public void putShort(long j10, short s10) throws IndexException {
        getChunk(j10).putShort(j10, s10);
    }

    public void read(ByteBuffer byteBuffer, long j10) throws IOException {
        int i10 = 0;
        do {
            try {
                this.fFile.getChannel().read(byteBuffer, j10);
                return;
            } catch (ClosedChannelException e10) {
                openFile();
                if (e10 instanceof ClosedByInterruptException) {
                    throw new OperationCanceledException();
                }
                i10++;
            }
        } while (i10 < 20);
        throw e10;
    }

    public void reportFreeBlocks() throws IndexException {
        PrintStream printStream = System.out;
        printStream.println("Allocated size: " + formatByteString(getDatabaseSize()));
        printStream.println("malloc'ed: " + formatByteString(this.malloced));
        printStream.println("free'd: " + formatByteString(this.freed));
        printStream.println("wasted: " + formatByteString(getDatabaseSize() - (this.malloced - this.freed)));
        printStream.println("Free blocks");
        for (int i10 = 16; i10 <= 4096; i10 += 8) {
            long firstBlock = getFirstBlock(i10);
            int i11 = 0;
            while (firstBlock != 0) {
                i11++;
                firstBlock = getFreeRecPtr(firstBlock + 6);
            }
            if (i11 != 0) {
                System.out.println("Block size: " + i10 + "=" + i11);
            }
        }
    }

    public void resetCacheCounters() {
        this.cacheHits = 0L;
        this.cacheMisses = 0L;
        this.bytesWritten = 0L;
        this.totalFlushTime = 0L;
        this.pageWritesBytes = 0L;
        this.totalWriteTimeMs = 0L;
        this.totalReadTimeMs = 0L;
    }

    public void setExclusiveLock() {
        this.fExclusiveLock = true;
        this.fLocked = true;
    }

    public void setLocked(boolean z10) {
        this.fLocked = z10;
    }

    public void setVersion(int i10) throws IndexException {
        this.fHeaderChunk.putInt(0L, i10);
        this.fVersion = i10;
    }

    public void transferTo(FileChannel fileChannel) throws IOException {
        FileChannel channel = this.fFile.getChannel();
        long size = channel.size();
        long j10 = 0;
        while (j10 < size) {
            long transferTo = channel.transferTo(j10, 65536L, fileChannel);
            if (transferTo == 0) {
                return;
            } else {
                j10 += transferTo;
            }
        }
    }

    public void validateFreeSpace() {
        validateFreeSpaceLists();
        validateFreeSpaceTries();
    }

    public boolean write(final ByteBuffer byteBuffer, final long j10) throws IOException {
        this.bytesWritten += byteBuffer.limit();
        return performUninterruptableWrite(new IORunnable() {
            @Override
            public final void run() {
                Database.this.lambda$0(byteBuffer, j10);
            }
        });
    }

    public static long getRecPtr(byte[] bArr, int i10) {
        long expandToFreeRecPtr = Chunk.expandToFreeRecPtr(Chunk.getInt(bArr, i10));
        return expandToFreeRecPtr != 0 ? expandToFreeRecPtr + 2 : expandToFreeRecPtr;
    }

    public static void putRecPtr(long j10, byte[] bArr, int i10) {
        Chunk.putInt(j10 == 0 ? 0 : Chunk.compressFreeRecPtr(j10 - 2), bArr, i10);
    }

    public void getBytes(long j10, byte[] bArr, int i10, int i11) throws IndexException {
        getChunk(j10).get(j10, bArr, i10, i11);
    }

    public IString newString(char[] cArr) throws IndexException {
        int length = cArr.length;
        boolean useBytes = useBytes(cArr);
        if (!useBytes) {
            length *= 2;
        }
        if (length > ShortString.MAX_BYTE_LENGTH) {
            return new LongString(this, cArr, useBytes);
        }
        return new ShortString(this, cArr, useBytes);
    }

    public void putBytes(long j10, byte[] bArr, int i10, int i11) throws IndexException {
        getChunk(j10).put(j10, bArr, i10, i11);
    }
}
