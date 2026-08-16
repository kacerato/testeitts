package org.eclipse.jdt.internal.core.nd;

import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.IndexException;
import org.eclipse.jdt.internal.core.nd.field.FieldInt;
import org.eclipse.jdt.internal.core.nd.field.FieldPointer;
import org.eclipse.jdt.internal.core.nd.field.FieldShort;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.nd.util.MathUtils;

public final class RawGrowableArray {
    static final boolean $assertionsDisabled = false;
    private static final int ARRAY_HEADER_BYTES;
    private static final FieldPointer GROWABLE_BLOCK_ADDRESS;
    private static final StructDef<RawGrowableArray> type;
    private final int inlineSize;

    public static class GrowableBlockHeader {
        public static final FieldInt ALLOCATED_SIZE;
        public static final FieldInt ARRAY_SIZE;
        public static final int GROWABLE_BLOCK_HEADER_BYTES;
        public static final int MAX_GROWABLE_SIZE;
        private static final StructDef<GrowableBlockHeader> type;

        static {
            StructDef<GrowableBlockHeader> createAbstract = StructDef.createAbstract(GrowableBlockHeader.class);
            type = createAbstract;
            ARRAY_SIZE = createAbstract.addInt();
            ALLOCATED_SIZE = createAbstract.addInt();
            createAbstract.done();
            int size = createAbstract.size();
            GROWABLE_BLOCK_HEADER_BYTES = size;
            MAX_GROWABLE_SIZE = (Database.MAX_SINGLE_BLOCK_MALLOC_SIZE - size) / 4;
        }

        private GrowableBlockHeader() {
        }

        public GrowableBlockHeader(GrowableBlockHeader growableBlockHeader) {
            this();
        }
    }

    public static final class MetaBlockHeader extends GrowableBlockHeader {
        public static final FieldShort METABLOCK_NUM_PAGES;
        public static final int META_BLOCK_HEADER_BYTES;
        private static final StructDef<MetaBlockHeader> type;

        static {
            StructDef<MetaBlockHeader> createAbstract = StructDef.createAbstract(MetaBlockHeader.class, GrowableBlockHeader.type);
            type = createAbstract;
            METABLOCK_NUM_PAGES = createAbstract.addShort();
            createAbstract.done();
            META_BLOCK_HEADER_BYTES = createAbstract.size();
        }

        private MetaBlockHeader() {
            super(null);
        }
    }

    static {
        StructDef<RawGrowableArray> createAbstract = StructDef.createAbstract(RawGrowableArray.class);
        type = createAbstract;
        GROWABLE_BLOCK_ADDRESS = createAbstract.addPointer();
        createAbstract.done();
        ARRAY_HEADER_BYTES = createAbstract.size();
    }

    public RawGrowableArray(int i10) {
        this.inlineSize = i10;
    }

    private void addSizeTo(Nd nd2, long j10, IndexExceptionBuilder indexExceptionBuilder) {
        long j11 = GROWABLE_BLOCK_ADDRESS.get(nd2, j10);
        if (j11 != 0) {
            indexExceptionBuilder.addProblemAddress(GrowableBlockHeader.ARRAY_SIZE, j11);
        }
    }

    private int computeBlockBytes(int i10) {
        return (i10 * 4) + GrowableBlockHeader.GROWABLE_BLOCK_HEADER_BYTES;
    }

    private int computeMetablockPagesForBlocks(int i10) {
        return Database.getChunksNeededForBytes((i10 * 4) + GrowableBlockHeader.GROWABLE_BLOCK_HEADER_BYTES);
    }

    private static int divideRoundingUp(int i10, int i11) {
        return ((i10 + i11) - 1) / i11;
    }

    private long getAddressOfRecord(Nd nd2, long j10, int i10) {
        int i11 = i10 - this.inlineSize;
        if (i11 < 0) {
            return j10 + ARRAY_HEADER_BYTES + (i10 * 4);
        }
        Database db2 = nd2.getDB();
        FieldPointer fieldPointer = GROWABLE_BLOCK_ADDRESS;
        long j11 = fieldPointer.get(nd2, j10);
        int size = size(nd2, j10);
        if (i10 > size) {
            IndexExceptionBuilder describeProblem = nd2.describeProblem();
            addSizeTo(nd2, j10, describeProblem);
            describeProblem.addProblemAddress(fieldPointer, j10);
            throw describeProblem.build("Record index " + i10 + " out of range. Array contains " + size + " elements");
        }
        int i12 = GrowableBlockHeader.ALLOCATED_SIZE.get(nd2, j11);
        int i13 = GrowableBlockHeader.MAX_GROWABLE_SIZE;
        if (i12 > i13) {
            int i14 = i11 % i13;
            int i15 = i11 / i13;
            long j12 = j11 + MetaBlockHeader.META_BLOCK_HEADER_BYTES + (i15 * 4);
            long recPtr = db2.getRecPtr(j12);
            if (recPtr == 0) {
                throw nd2.describeProblem().addProblemAddress("backpointer number " + i15, j12, 4).addProblemAddress(fieldPointer, j10).build("Null data block found in metablock");
            }
            i11 = i14;
            j11 = recPtr;
        }
        return j11 + GrowableBlockHeader.GROWABLE_BLOCK_HEADER_BYTES + (i11 * 4);
    }

    private int getGrowableRegionSizeFor(int i10) {
        int i11 = this.inlineSize;
        int i12 = i10 - i11;
        if (i12 <= 0) {
            return 0;
        }
        int nextPowerOfTwo = getNextPowerOfTwo(Math.max(i12, i11));
        int i13 = GrowableBlockHeader.MAX_GROWABLE_SIZE;
        return nextPowerOfTwo > i13 ? i12 <= i13 ? i13 : MathUtils.roundUpToNearestMultiple(i12, i13) : nextPowerOfTwo;
    }

    public static int getMaxGrowableBlockSize() {
        return GrowableBlockHeader.MAX_GROWABLE_SIZE;
    }

    private static int getNextPowerOfTwo(int i10) {
        int prevPowerOfTwo = getPrevPowerOfTwo(i10);
        return prevPowerOfTwo != i10 ? prevPowerOfTwo << 1 : prevPowerOfTwo;
    }

    private static int getPrevPowerOfTwo(int i10) {
        int i11 = i10 | (i10 >> 1);
        int i12 = i11 | (i11 >> 2);
        int i13 = i12 | (i12 >> 4);
        int i14 = i13 | (i13 >> 8);
        int i15 = i14 | (i14 >> 16);
        return i15 - (i15 >> 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void repackIfNecessary(Nd nd2, long j10, int i10) {
        int i11;
        int i12;
        long j11 = GROWABLE_BLOCK_ADDRESS.get(nd2, j10);
        if (j11 == 0) {
            return;
        }
        int i13 = i10 - this.inlineSize;
        int i14 = GrowableBlockHeader.ALLOCATED_SIZE.get(nd2, j11);
        int growableRegionSizeFor = getGrowableRegionSizeFor(i10);
        if (growableRegionSizeFor >= i14) {
            return;
        }
        Database db2 = nd2.getDB();
        int i15 = GrowableBlockHeader.MAX_GROWABLE_SIZE;
        if (i14 > i15) {
            int i16 = ((growableRegionSizeFor + i15) - 1) / i15;
            int i17 = i14 / i15;
            if (i17 - i16 <= 1 && growableRegionSizeFor > (i15 / 2) + 1) {
                return;
            }
            long j12 = MetaBlockHeader.META_BLOCK_HEADER_BYTES + j11;
            while (true) {
                i17--;
                if (i17 < i16) {
                    break;
                }
                long j13 = (i17 * 4) + j12;
                db2.free(db2.getRecPtr(j13), (short) 7);
                db2.putRecPtr(j13, 0L);
                i16 = i16;
                i14 = i14;
                j11 = j11;
            }
            int i18 = GrowableBlockHeader.MAX_GROWABLE_SIZE;
            if (growableRegionSizeFor > i18) {
                GrowableBlockHeader.ALLOCATED_SIZE.put(nd2, j11, growableRegionSizeFor);
                return;
            }
            long recPtr = db2.getRecPtr(j12);
            FieldInt fieldInt = GrowableBlockHeader.ARRAY_SIZE;
            int i19 = fieldInt.get(nd2, j11);
            db2.free(j11, (short) 7);
            i11 = i14;
            i12 = i18;
            GROWABLE_BLOCK_ADDRESS.put(nd2, j10, recPtr);
            if (recPtr != 0) {
                fieldInt.put(nd2, recPtr, i19);
                GrowableBlockHeader.ALLOCATED_SIZE.put(nd2, recPtr, i12);
                if (i13 > (i12 / 4) + 1) {
                    GROWABLE_BLOCK_ADDRESS.put(nd2, j10, resizeBlock(nd2, j10, growableRegionSizeFor));
                    return;
                }
                return;
            }
        } else {
            i11 = i14;
        }
        i12 = i11;
        if (i13 > (i12 / 4) + 1) {
        }
    }

    private long resizeBlock(Nd nd2, long j10, int i10) {
        Database db2 = nd2.getDB();
        long j11 = GROWABLE_BLOCK_ADDRESS.get(nd2, j10);
        if (j11 != 0) {
            if (i10 == 0) {
                db2.free(j11, (short) 7);
                return 0L;
            }
            if (GrowableBlockHeader.ALLOCATED_SIZE.get(nd2, j11) == i10) {
                return j11;
            }
        }
        int size = size(nd2, j10);
        int min = Math.min(Math.max(0, size - this.inlineSize), i10);
        long malloc = db2.malloc(computeBlockBytes(i10), (short) 7);
        if (j11 != 0) {
            db2.memcpy(malloc, j11, computeBlockBytes(min));
            db2.free(j11, (short) 7);
        }
        GrowableBlockHeader.ARRAY_SIZE.put(nd2, malloc, size);
        GrowableBlockHeader.ALLOCATED_SIZE.put(nd2, malloc, i10);
        return malloc;
    }

    private void setSize(Nd nd2, long j10, int i10) {
        long j11 = GROWABLE_BLOCK_ADDRESS.get(nd2, j10);
        if (j11 == 0) {
            return;
        }
        GrowableBlockHeader.ARRAY_SIZE.put(nd2, j11, i10);
    }

    public int add(Nd nd2, long j10, long j11) {
        if (j11 == 0) {
            throw new IllegalArgumentException("Null pointers cannot be inserted into " + RawGrowableArray.class.getName());
        }
        Database db2 = nd2.getDB();
        int size = size(nd2, j10);
        int i10 = size + 1;
        try {
            ensureCapacity(nd2, j10, i10);
            db2.putRecPtr(getAddressOfRecord(nd2, j10, size), j11);
            setSize(nd2, j10, i10);
            return size;
        } catch (IndexException e10) {
            IndexExceptionBuilder describeProblem = nd2.describeProblem();
            addSizeTo(nd2, j10, describeProblem);
            describeProblem.attachTo(e10);
            throw e10;
        }
    }

    public void destruct(Nd nd2, long j10) {
        repackIfNecessary(nd2, j10, 0);
    }

    public void ensureCapacity(Nd nd2, long j10, int i10) {
        short s10;
        int i11;
        int i12;
        Database database;
        int i13;
        int i14;
        int i15;
        int i16 = i10 - this.inlineSize;
        FieldPointer fieldPointer = GROWABLE_BLOCK_ADDRESS;
        long j11 = fieldPointer.get(nd2, j10);
        int i17 = j11 == 0 ? 0 : GrowableBlockHeader.ALLOCATED_SIZE.get(nd2, j11);
        if (i16 <= i17) {
            return;
        }
        Database db2 = nd2.getDB();
        int growableRegionSizeFor = getGrowableRegionSizeFor(i10);
        int i18 = GrowableBlockHeader.MAX_GROWABLE_SIZE;
        if (growableRegionSizeFor <= i18) {
            fieldPointer.put(nd2, j10, resizeBlock(nd2, j10, growableRegionSizeFor));
            return;
        }
        int divideRoundingUp = divideRoundingUp(growableRegionSizeFor, i18);
        int computeMetablockPagesForBlocks = computeMetablockPagesForBlocks(divideRoundingUp);
        if (computeMetablockPagesForBlocks > 32767) {
            throw new IndexException("A metablock overflowed. Unable to allocate " + computeMetablockPagesForBlocks + " pages.");
        }
        if (i17 <= i18) {
            int size = size(nd2, j10);
            long resizeBlock = resizeBlock(nd2, j10, i18);
            long malloc = db2.malloc(Database.getBytesThatFitInChunks(computeMetablockPagesForBlocks), (short) 7);
            GrowableBlockHeader.ARRAY_SIZE.put(nd2, malloc, size);
            GrowableBlockHeader.ALLOCATED_SIZE.put(nd2, malloc, i18);
            MetaBlockHeader.METABLOCK_NUM_PAGES.put(nd2, malloc, (short) computeMetablockPagesForBlocks);
            i11 = i18;
            i12 = divideRoundingUp;
            db2.putRecPtr(MetaBlockHeader.META_BLOCK_HEADER_BYTES + malloc, resizeBlock);
            s10 = 7;
            fieldPointer.put(nd2, j10, malloc);
            j11 = malloc;
        } else {
            s10 = 7;
            i11 = i18;
            i12 = divideRoundingUp;
        }
        FieldShort fieldShort = MetaBlockHeader.METABLOCK_NUM_PAGES;
        if (fieldShort.get(nd2, j11) < computeMetablockPagesForBlocks) {
            short min = (short) Math.min(32767.0d, computeMetablockPagesForBlocks * 1.5d);
            long malloc2 = db2.malloc(Database.getBytesThatFitInChunks(min), s10);
            i14 = i12;
            i15 = i11;
            database = db2;
            i13 = growableRegionSizeFor;
            db2.memcpy(malloc2, j11, (int) Database.getBytesThatFitInChunks(fieldShort.get(nd2, j11)));
            database.free(j11, s10);
            fieldShort.put(nd2, malloc2, min);
            fieldPointer.put(nd2, j10, malloc2);
            j11 = malloc2;
        } else {
            database = db2;
            i13 = growableRegionSizeFor;
            i14 = i12;
            i15 = i11;
        }
        int i19 = GrowableBlockHeader.ALLOCATED_SIZE.get(nd2, j11) / i15;
        int i20 = i14;
        while (i19 < i20) {
            Database database2 = database;
            database2.putRecPtr(MetaBlockHeader.META_BLOCK_HEADER_BYTES + j11 + (i19 * 4), database2.malloc(computeBlockBytes(GrowableBlockHeader.MAX_GROWABLE_SIZE), s10));
            i19++;
            database = database2;
        }
        GrowableBlockHeader.ALLOCATED_SIZE.put(nd2, j11, i13);
    }

    public long get(Nd nd2, long j10, int i10) {
        return nd2.getDB().getRecPtr(getAddressOfRecord(nd2, j10, i10));
    }

    public int getCapacity(Nd nd2, long j10) {
        long j11 = GROWABLE_BLOCK_ADDRESS.get(nd2, j10);
        return j11 == 0 ? this.inlineSize : GrowableBlockHeader.ALLOCATED_SIZE.get(nd2, j11) + this.inlineSize;
    }

    public int getRecordSize() {
        return ARRAY_HEADER_BYTES + (this.inlineSize * 4);
    }

    public boolean isEmpty(Nd nd2, long j10) {
        Database db2 = nd2.getDB();
        long j11 = GROWABLE_BLOCK_ADDRESS.get(nd2, j10);
        return j11 == 0 ? this.inlineSize == 0 || db2.getRecPtr(j10 + ((long) ARRAY_HEADER_BYTES)) == 0 : GrowableBlockHeader.ARRAY_SIZE.get(nd2, j11) == 0;
    }

    public long remove(Nd nd2, long j10, int i10) {
        int size = size(nd2, j10);
        int i11 = size - 1;
        Database db2 = nd2.getDB();
        if (i10 > i11 || i10 < 0) {
            IndexExceptionBuilder addProblemAddress = nd2.describeProblem().addProblemAddress(GROWABLE_BLOCK_ADDRESS, j10);
            addSizeTo(nd2, j10, addProblemAddress);
            throw addProblemAddress.build("Attempt to remove nonexistent element " + i10 + " from an array of size " + size);
        }
        long addressOfRecord = getAddressOfRecord(nd2, j10, i10);
        long j11 = 0;
        if (i10 == i11) {
            db2.putRecPtr(addressOfRecord, 0L);
        } else {
            long addressOfRecord2 = getAddressOfRecord(nd2, j10, i11);
            long recPtr = db2.getRecPtr(addressOfRecord2);
            db2.putRecPtr(addressOfRecord, recPtr);
            db2.putRecPtr(addressOfRecord2, 0L);
            j11 = recPtr;
        }
        setSize(nd2, j10, i11);
        repackIfNecessary(nd2, j10, size);
        return j11;
    }

    public int size(Nd nd2, long j10) {
        Database db2 = nd2.getDB();
        long j11 = GROWABLE_BLOCK_ADDRESS.get(nd2, j10);
        if (j11 != 0) {
            return GrowableBlockHeader.ARRAY_SIZE.get(nd2, j11);
        }
        long j12 = j10 + ARRAY_HEADER_BYTES;
        int i10 = 0;
        while (true) {
            int i11 = this.inlineSize;
            if (i10 >= i11) {
                return i11;
            }
            if (db2.getRecPtr((i10 * 4) + j12) == 0) {
                return i10;
            }
            i10++;
        }
    }
}
