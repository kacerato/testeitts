package org.eclipse.jdt.internal.core.nd.field;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.core.nd.ITypeFactory;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;
import org.eclipse.jdt.internal.core.nd.util.MathUtils;

public class FieldList<T> extends BaseField implements IDestructableField {
    static final boolean $assertionsDisabled = false;
    public static final FieldPointer FIRST_BLOCK;
    public static final FieldPointer LAST_BLOCK_WITH_ELEMENTS;
    private static final int LIST_HEADER_BYTES;
    private static final long MAX_BYTES_IN_A_CHUNK = Database.getBytesThatFitInChunks(1);
    private static final StructDef<FieldList> type;
    private final ModificationLog.Tag allocateTag;
    private final ModificationLog.Tag appendTag;
    private final ModificationLog.Tag destructTag;
    private final StructDef<T> elementType;
    private final int elementsPerBlock;
    private final StructDef<?> ownerType;

    public static class BlockHeader {
        public static final int BLOCK_HEADER_BYTES;
        public static final FieldShort BLOCK_SIZE;
        public static final FieldShort ELEMENTS_IN_USE;
        public static final FieldPointer NEXT_BLOCK;
        private static final StructDef<BlockHeader> type;

        static {
            StructDef<BlockHeader> createAbstract = StructDef.createAbstract(BlockHeader.class);
            type = createAbstract;
            NEXT_BLOCK = createAbstract.addPointer();
            BLOCK_SIZE = createAbstract.addShort();
            ELEMENTS_IN_USE = createAbstract.addShort();
            createAbstract.done();
            BLOCK_HEADER_BYTES = MathUtils.roundUpToNearestMultipleOfPowerOfTwo(createAbstract.size(), 8);
        }

        private BlockHeader() {
        }
    }

    static {
        StructDef<FieldList> createAbstract = StructDef.createAbstract(FieldList.class);
        type = createAbstract;
        FIRST_BLOCK = createAbstract.addPointer();
        LAST_BLOCK_WITH_ELEMENTS = createAbstract.addPointer();
        createAbstract.done();
        LIST_HEADER_BYTES = MathUtils.roundUpToNearestMultipleOfPowerOfTwo(createAbstract.size(), 8);
    }

    private FieldList(StructDef<?> structDef, StructDef<T> structDef2, int i10) {
        this.elementType = structDef2;
        this.elementsPerBlock = i10;
        this.ownerType = structDef;
        setFieldName("field " + structDef.getNumFields() + ", a " + getClass().getSimpleName() + " in struct " + structDef.getStructName());
        StringBuilder sb2 = new StringBuilder("Allocating elements for ");
        sb2.append(getFieldName());
        this.allocateTag = ModificationLog.createTag(sb2.toString());
        StringBuilder sb3 = new StringBuilder("Appending to ");
        sb3.append(getFieldName());
        this.appendTag = ModificationLog.createTag(sb3.toString());
        this.destructTag = ModificationLog.createTag("Deallocating " + getFieldName());
    }

    private long allocateNewBlock(Nd nd2, int i10) {
        short memoryPoolId = getMemoryPoolId(nd2);
        int elementSize = getElementSize();
        long j10 = BlockHeader.BLOCK_HEADER_BYTES + (i10 * elementSize);
        long j11 = MAX_BYTES_IN_A_CHUNK;
        if (j11 - j10 < elementSize) {
            j10 = j11;
        }
        long malloc = nd2.getDB().malloc(j10, memoryPoolId);
        BlockHeader.BLOCK_SIZE.put(nd2, malloc, (short) i10);
        return malloc;
    }

    public static <T> FieldList<T> create(StructDef<?> structDef, StructDef<T> structDef2) {
        return create(structDef, structDef2, 1);
    }

    private void destructElements(Nd nd2, long j10, int i10) {
        ITypeFactory<T> factory = this.elementType.getFactory();
        int elementSize = getElementSize();
        while (true) {
            i10--;
            if (i10 < 0) {
                return;
            }
            factory.destruct(nd2, j10);
            j10 += elementSize;
        }
    }

    private int getElementSize() {
        return MathUtils.roundUpToNearestMultipleOfPowerOfTwo(this.elementType.getFactory().getRecordSize(), 8);
    }

    private short getMemoryPoolId(Nd nd2) {
        StructDef<?> structDef = this.ownerType;
        if (structDef != null) {
            Class<?> structClass = structDef.getStructClass();
            if (nd2.getTypeRegistry().isRegisteredClass(structClass)) {
                return (short) (nd2.getNodeType(structClass) + Database.POOL_FIRST_NODE_TYPE);
            }
        }
        return (short) 5;
    }

    private void readElements(List<T> list, Nd nd2, long j10, int i10) {
        ITypeFactory<T> factory = this.elementType.getFactory();
        int elementSize = getElementSize();
        while (i10 > 0) {
            list.add(factory.create(nd2, j10));
            j10 += elementSize;
            i10--;
        }
    }

    public void allocate(Nd nd2, long j10, int i10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.allocateTag);
        if (i10 != 0) {
            try {
                long j11 = j10 + this.offset;
                FieldPointer fieldPointer = LAST_BLOCK_WITH_ELEMENTS;
                long j12 = fieldPointer.get(nd2, j11);
                int elementSize = (int) ((MAX_BYTES_IN_A_CHUNK - BlockHeader.BLOCK_HEADER_BYTES) / getElementSize());
                if (j12 == 0) {
                    long allocateNewBlock = allocateNewBlock(nd2, Math.min(i10, elementSize));
                    fieldPointer.put(nd2, j11, allocateNewBlock);
                    FIRST_BLOCK.put(nd2, j11, allocateNewBlock);
                    j12 = allocateNewBlock;
                }
                long j13 = j12;
                int i11 = i10;
                while (true) {
                    FieldPointer fieldPointer2 = BlockHeader.NEXT_BLOCK;
                    long j14 = fieldPointer2.get(nd2, j13);
                    int i12 = i11 - (BlockHeader.BLOCK_SIZE.get(nd2, j13) - BlockHeader.ELEMENTS_IN_USE.get(nd2, j13));
                    if (i12 <= 0) {
                        break;
                    }
                    if (j14 == 0) {
                        long allocateNewBlock2 = allocateNewBlock(nd2, Math.min(elementSize, i10));
                        fieldPointer2.put(nd2, j13, allocateNewBlock2);
                        i11 = i12;
                        j13 = allocateNewBlock2;
                    } else {
                        j13 = j14;
                        i11 = i12;
                    }
                }
            } finally {
                db2.getLog().end(this.allocateTag);
            }
        }
    }

    public T append(Nd nd2, long j10) {
        long j11;
        long j12;
        Database db2 = nd2.getDB();
        db2.getLog().start(this.appendTag);
        try {
            long j13 = j10 + this.offset;
            FieldPointer fieldPointer = LAST_BLOCK_WITH_ELEMENTS;
            long j14 = fieldPointer.get(nd2, j13);
            if (j14 == 0) {
                long allocateNewBlock = allocateNewBlock(nd2, this.elementsPerBlock);
                fieldPointer.put(nd2, j13, allocateNewBlock);
                FIRST_BLOCK.put(nd2, j13, allocateNewBlock);
                j11 = allocateNewBlock;
            } else {
                j11 = j14;
            }
            FieldShort fieldShort = BlockHeader.ELEMENTS_IN_USE;
            short s10 = fieldShort.get(nd2, j11);
            if (s10 >= BlockHeader.BLOCK_SIZE.get(nd2, j11)) {
                FieldPointer fieldPointer2 = BlockHeader.NEXT_BLOCK;
                long j15 = fieldPointer2.get(nd2, j11);
                if (j15 == 0) {
                    j12 = allocateNewBlock(nd2, this.elementsPerBlock);
                    fieldPointer2.put(nd2, j11, j12);
                } else {
                    j12 = j15;
                }
                fieldPointer.put(nd2, j13, j12);
                s10 = fieldShort.get(nd2, j12);
                j11 = j12;
            }
            fieldShort.put(nd2, j11, (short) (s10 + 1));
            T create = this.elementType.getFactory().create(nd2, j11 + BlockHeader.BLOCK_HEADER_BYTES + (s10 * getElementSize()));
            db2.getLog().end(this.appendTag);
            return create;
        } catch (Throwable th2) {
            db2.getLog().end(this.appendTag);
            throw th2;
        }
    }

    public List<T> asList(Nd nd2, long j10) {
        long j11 = FIRST_BLOCK.get(nd2, j10 + this.offset);
        ArrayList arrayList = new ArrayList();
        while (j11 != 0) {
            long j12 = BlockHeader.NEXT_BLOCK.get(nd2, j11);
            readElements(arrayList, nd2, j11 + BlockHeader.BLOCK_HEADER_BYTES, BlockHeader.ELEMENTS_IN_USE.get(nd2, j11));
            j11 = j12;
        }
        return arrayList;
    }

    @Override
    public void destruct(Nd nd2, long j10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.destructTag);
        try {
            short memoryPoolId = getMemoryPoolId(nd2);
            long j11 = j10 + this.offset;
            long j12 = FIRST_BLOCK.get(nd2, j11);
            while (j12 != 0) {
                long j13 = BlockHeader.NEXT_BLOCK.get(nd2, j12);
                destructElements(nd2, BlockHeader.BLOCK_HEADER_BYTES + j12, BlockHeader.ELEMENTS_IN_USE.get(nd2, j12));
                db2.free(j12, memoryPoolId);
                j12 = j13;
            }
            db2.clearRange(j11, getRecordSize());
        } finally {
            db2.getLog().end(this.destructTag);
        }
    }

    @Override
    public int getRecordSize() {
        return LIST_HEADER_BYTES;
    }

    public static <T> FieldList<T> create(StructDef<?> structDef, StructDef<T> structDef2, int i10) {
        FieldList<T> fieldList = new FieldList<>(structDef, structDef2, i10);
        structDef.add(fieldList);
        structDef.addDestructableField(fieldList);
        return fieldList;
    }
}
