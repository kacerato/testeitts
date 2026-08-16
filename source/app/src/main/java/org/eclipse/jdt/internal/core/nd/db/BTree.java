package org.eclipse.jdt.internal.core.nd.db;

import java.text.MessageFormat;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.core.nd.AbstractTypeFactory;
import org.eclipse.jdt.internal.core.nd.ITypeFactory;
import org.eclipse.jdt.internal.core.nd.Nd;

public class BTree {
    private static final int DEFAULT_DEGREE = 8;
    private static final int DELMODE_DELETE_MAXIMUM = 2;
    private static final int DELMODE_DELETE_MINIMUM = 1;
    private static final int DELMODE_NORMAL = 0;
    public static final int RECORD_SIZE = 4;
    protected final IBTreeComparator cmp;

    protected final Database f102539db;
    protected final int degree;
    protected final int maxChildren;
    protected final int maxRecords;
    protected final int medianRecord;
    protected final int minRecords;

    private final Nd f102540nd;
    protected final int offsetChildren;
    protected final long rootPointer;

    public class BTNode {
        Chunk chunk;
        final int keyCount;
        final long node;

        public BTNode(long j10) throws IndexException {
            this.node = j10;
            this.chunk = BTree.this.f102539db.getChunk(j10);
            int i10 = 0;
            while (i10 < BTree.this.maxRecords && BTree.this.getRecord(this.chunk, j10, i10) != 0) {
                i10++;
            }
            this.keyCount = i10;
        }

        public BTNode getChild(int i10) throws IndexException {
            if (i10 < 0) {
                return null;
            }
            BTree bTree = BTree.this;
            if (i10 >= bTree.maxChildren) {
                return null;
            }
            long child = bTree.getChild(this.chunk, this.node, i10);
            if (child != 0) {
                return new BTNode(child);
            }
            return null;
        }

        public void makeWritable() {
            this.chunk = this.chunk.getWritableChunk();
        }
    }

    public class BTreeKeyNotFoundException extends Exception {
        private static final long serialVersionUID = 9065438266175091670L;

        public BTreeKeyNotFoundException(String str) {
            super(str);
        }
    }

    public interface IBTreeVisitor2 extends IBTreeVisitor {
        void postNode(long j10) throws IndexException;

        void preNode(long j10) throws IndexException;
    }

    public class InvariantsChecker implements IBTreeVisitor2 {
        int depth;
        Integer leafDepth;
        boolean valid = true;
        String msg = "";

        public InvariantsChecker() {
        }

        @Override
        public int compare(long j10) throws IndexException {
            return 0;
        }

        public String getMsg() {
            return this.msg;
        }

        public boolean isValid() {
            return this.valid;
        }

        @Override
        public void postNode(long j10) throws IndexException {
            this.depth--;
        }

        @Override
        public void preNode(long j10) throws IndexException {
            BTree bTree;
            this.depth++;
            int i10 = BTree.this.maxRecords;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                BTree bTree2 = BTree.this;
                if (i11 >= bTree2.maxRecords) {
                    break;
                }
                if (bTree2.getRecord(bTree2.f102539db.getChunk(j10), j10, i11) != 0) {
                    i12++;
                    i13 = i11;
                } else if (i10 == BTree.this.maxRecords) {
                    i10 = i11;
                }
                i11++;
            }
            int i14 = 0;
            int i15 = 0;
            while (true) {
                bTree = BTree.this;
                if (i14 >= bTree.maxChildren) {
                    break;
                }
                if (bTree.getChild(bTree.f102539db.getChunk(j10), j10, i14) != 0) {
                    i15++;
                }
                i14++;
            }
            if (i10 != i13 + 1) {
                int i16 = bTree.maxRecords;
                boolean z10 = i10 == i16 && i13 == i16 - 1;
                boolean z11 = i10 == 0 && i13 == 0;
                if (!z10 && !z11) {
                    this.valid = false;
                    this.msg = String.valueOf(this.msg) + MessageFormat.format("[{0} blanks inconsistent b={1} nb={2}]", new Long(j10), new Integer(i10), new Integer(i13));
                }
            }
            if (i15 != 0 && i15 != i12 + 1) {
                this.valid = false;
                this.msg = String.valueOf(this.msg) + MessageFormat.format("[{0} wrong number of children with respect to key count]", new Long(j10));
            }
            BTree bTree3 = BTree.this;
            if (j10 == bTree3.f102539db.getRecPtr(bTree3.rootPointer)) {
                return;
            }
            BTree bTree4 = BTree.this;
            if (i12 < bTree4.minRecords || i12 > bTree4.maxRecords) {
                this.valid = false;
                this.msg = String.valueOf(this.msg) + MessageFormat.format("[{0} key count out of range]", new Long(j10));
            }
            if (i15 == 0) {
                if (this.leafDepth == null) {
                    this.leafDepth = new Integer(this.depth);
                }
                if (this.depth != this.leafDepth.intValue()) {
                    this.valid = false;
                    this.msg = String.valueOf(this.msg) + "Leaf nodes at differing depths";
                }
            }
        }

        @Override
        public boolean visit(long j10) throws IndexException {
            return true;
        }
    }

    public BTree(Nd nd2, long j10, IBTreeComparator iBTreeComparator) {
        this(nd2, j10, 8, iBTreeComparator);
    }

    private long allocateNode() throws IndexException {
        return this.f102539db.malloc(((this.maxRecords * 2) + 1) * 4, (short) 1);
    }

    private void append(BTNode bTNode, long j10, long j11) {
        putRecord(bTNode.chunk, bTNode.node, bTNode.keyCount, j10);
        putChild(bTNode.chunk, bTNode.node, bTNode.keyCount + 1, j11);
    }

    private void deallocateChildren(long j10) {
        Chunk chunk = this.f102539db.getChunk(j10);
        int i10 = this.maxRecords + 1;
        long[] jArr = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            jArr[i11] = getChild(chunk, j10, i11);
        }
        this.f102539db.free(j10, (short) 1);
        for (int i12 = 0; i12 < i10; i12++) {
            long j11 = jArr[i12];
            if (j11 != 0) {
                deallocateChildren(j11);
            }
        }
    }

    private long deleteImp(long j10, long j11, int i10) throws IndexException, BTreeKeyNotFoundException {
        int i11;
        int i12;
        BTNode bTNode = new BTNode(j11);
        if (i10 == 0) {
            for (int i13 = 0; i13 < bTNode.keyCount; i13++) {
                if (getRecord(bTNode.chunk, bTNode.node, i13) == j10) {
                    i11 = i13;
                    break;
                }
            }
        }
        i11 = -1;
        if (getChild(bTNode.chunk, bTNode.node, 0) == 0) {
            if (i11 != -1) {
                nodeContentDelete(bTNode, i11, 1);
                return j10;
            }
            if (i10 == 1) {
                long record = getRecord(bTNode.chunk, bTNode.node, 0);
                nodeContentDelete(bTNode, 0, 1);
                return record;
            }
            if (i10 == 2) {
                long record2 = getRecord(bTNode.chunk, bTNode.node, bTNode.keyCount - 1);
                nodeContentDelete(bTNode, bTNode.keyCount - 1, 1);
                return record2;
            }
            throw new BTreeKeyNotFoundException("Deletion on absent key " + j10 + ", mode = " + i10);
        }
        if (i11 != -1) {
            BTNode child = bTNode.getChild(i11 + 1);
            if (child != null && child.keyCount > this.minRecords) {
                bTNode.makeWritable();
                putRecord(bTNode.chunk, bTNode.node, i11, deleteImp(-1L, child.node, 1));
                return j10;
            }
            BTNode child2 = bTNode.getChild(i11);
            if (child2 != null && child2.keyCount > this.minRecords) {
                bTNode.makeWritable();
                putRecord(bTNode.chunk, bTNode.node, i11, deleteImp(-1L, child2.node, 2));
                return j10;
            }
            if (child2 == null) {
                return j10;
            }
            child.makeWritable();
            bTNode.makeWritable();
            child2.makeWritable();
            mergeNodes(child, bTNode, i11, child2);
            return deleteImp(j10, child2.node, i10);
        }
        if (i10 == 0) {
            i12 = bTNode.keyCount;
            int i14 = 0;
            while (true) {
                if (i14 >= bTNode.keyCount) {
                    break;
                }
                if (this.cmp.compare(this.f102540nd, getRecord(bTNode.chunk, bTNode.node, i14), j10) > 0) {
                    i12 = i14;
                    break;
                }
                i14++;
            }
        } else if (i10 == 1) {
            i12 = 0;
        } else {
            if (i10 != 2) {
                throw new IndexException((IStatus) new Status(4, JavaCore.PLUGIN_ID, 0, "Unknown delete mode " + i10, (Throwable) null));
            }
            i12 = bTNode.keyCount;
        }
        BTNode child3 = bTNode.getChild(i12);
        if (child3 == null) {
            throw new IndexException((IStatus) new Status(4, JavaCore.PLUGIN_ID, 0, "BTree integrity error (null child found)", (Throwable) null));
        }
        if (child3.keyCount > this.minRecords) {
            return deleteImp(j10, child3.node, i10);
        }
        child3.makeWritable();
        bTNode.makeWritable();
        BTNode child4 = bTNode.getChild(i12 + 1);
        if (child4 != null && child4.keyCount > this.minRecords) {
            child4.makeWritable();
            long record3 = getRecord(bTNode.chunk, bTNode.node, i12);
            long record4 = getRecord(child4.chunk, child4.node, 0);
            append(child3, record3, getChild(child4.chunk, child4.node, 0));
            nodeContentDelete(child4, 0, 1);
            putRecord(bTNode.chunk, bTNode.node, i12, record4);
            return deleteImp(j10, child3.node, i10);
        }
        int i15 = i12 - 1;
        BTNode child5 = bTNode.getChild(i15);
        if (child5 == null || child5.keyCount <= this.minRecords) {
            if (child5 != null) {
                mergeNodes(child3, bTNode, i15, child5);
                return deleteImp(j10, child5.node, i10);
            }
            if (child4 == null) {
                throw new BTreeKeyNotFoundException(MessageFormat.format("Deletion of key not in btree: {0} mode={1}", new Long(j10), new Integer(i10)));
            }
            mergeNodes(child4, bTNode, i12, child3);
            return deleteImp(j10, child3.node, i10);
        }
        child5.makeWritable();
        prepend(child3, getRecord(bTNode.chunk, bTNode.node, i15), getChild(child5.chunk, child5.node, child5.keyCount));
        long record5 = getRecord(child5.chunk, child5.node, child5.keyCount - 1);
        putRecord(child5.chunk, child5.node, child5.keyCount - 1, 0L);
        putChild(child5.chunk, child5.node, child5.keyCount, 0L);
        putRecord(bTNode.chunk, bTNode.node, i15, record5);
        return deleteImp(j10, child3.node, i10);
    }

    private void firstInsert(long j10) throws IndexException {
        long allocateNode = allocateNode();
        this.f102539db.putRecPtr(this.rootPointer, allocateNode);
        putRecord(this.f102539db.getChunk(allocateNode), allocateNode, 0, j10);
    }

    public static ITypeFactory<BTree> getFactory(IBTreeComparator iBTreeComparator) {
        return getFactory(8, iBTreeComparator);
    }

    private void nodeContentCopy(BTNode bTNode, int i10, BTNode bTNode2, int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= 0; i13--) {
            int i14 = i10 + i13;
            int i15 = i11 + i13;
            if (i14 < bTNode.keyCount + 1) {
                putChild(bTNode2.chunk, bTNode2.node, i15, getChild(bTNode.chunk, bTNode.node, i14));
                if (i14 < bTNode.keyCount) {
                    putRecord(bTNode2.chunk, bTNode2.node, i15, getRecord(bTNode.chunk, bTNode.node, i14));
                }
            }
        }
    }

    private void nodeContentDelete(BTNode bTNode, int i10, int i11) {
        while (i10 <= this.maxRecords) {
            int i12 = i10 + i11;
            long record = i12 < bTNode.keyCount ? getRecord(bTNode.chunk, bTNode.node, i12) : 0L;
            long child = i12 < bTNode.keyCount + 1 ? getChild(bTNode.chunk, bTNode.node, i12) : 0L;
            if (i10 < this.maxRecords) {
                putRecord(bTNode.chunk, bTNode.node, i10, record);
            }
            if (i10 < this.maxChildren) {
                putChild(bTNode.chunk, bTNode.node, i10, child);
            }
            i10++;
        }
    }

    private void prepend(BTNode bTNode, long j10, long j11) {
        nodeContentCopy(bTNode, 0, bTNode, 1, bTNode.keyCount + 1);
        putRecord(bTNode.chunk, bTNode.node, 0, j10);
        putChild(bTNode.chunk, bTNode.node, 0, j11);
    }

    public boolean accept(IBTreeVisitor iBTreeVisitor) throws IndexException {
        return accept(this.f102539db.getRecPtr(this.rootPointer), iBTreeVisitor);
    }

    public void delete(long j10) throws IndexException {
        try {
            deleteImp(j10, getRoot(), 0);
        } catch (BTreeKeyNotFoundException unused) {
        }
    }

    public void destruct() {
        long root = getRoot();
        if (root == 0) {
            return;
        }
        deallocateChildren(root);
    }

    public final long getChild(Chunk chunk, long j10, int i10) {
        return chunk.getRecPtr(j10 + this.offsetChildren + (i10 * 4));
    }

    public String getInvariantsErrorReport() throws IndexException {
        InvariantsChecker invariantsChecker = new InvariantsChecker();
        accept(invariantsChecker);
        return invariantsChecker.isValid() ? "" : invariantsChecker.getMsg();
    }

    public final long getRecord(Chunk chunk, long j10, int i10) {
        return chunk.getRecPtr(j10 + (i10 * 4));
    }

    public long getRoot() throws IndexException {
        return this.f102539db.getRecPtr(this.rootPointer);
    }

    public long insert(long j10) throws IndexException {
        long root = getRoot();
        if (root == 0) {
            firstInsert(j10);
            return j10;
        }
        return insert(null, 0L, 0, root, j10);
    }

    public void mergeNodes(BTNode bTNode, BTNode bTNode2, int i10, BTNode bTNode3) throws IndexException {
        nodeContentCopy(bTNode, 0, bTNode3, bTNode3.keyCount + 1, bTNode.keyCount + 1);
        putRecord(bTNode3.chunk, bTNode3.node, bTNode3.keyCount, getRecord(bTNode2.chunk, bTNode2.node, i10));
        int i11 = i10 + 1;
        long record = i11 == this.maxRecords ? 0L : getRecord(bTNode2.chunk, bTNode2.node, i11);
        this.f102539db.free(getChild(bTNode2.chunk, bTNode2.node, i11), (short) 1);
        nodeContentDelete(bTNode2, i11, 1);
        putRecord(bTNode2.chunk, bTNode2.node, i10, record);
        if (i10 == 0 && record == 0) {
            long root = getRoot();
            if (root == bTNode2.node) {
                this.f102539db.putRecPtr(this.rootPointer, bTNode3.node);
                this.f102539db.free(root, (short) 1);
            }
        }
    }

    public final void putChild(Chunk chunk, long j10, int i10, long j11) {
        chunk.putRecPtr(j10 + this.offsetChildren + (i10 * 4), j11);
    }

    public final void putRecord(Chunk chunk, long j10, int i10, long j11) {
        chunk.putRecPtr(j10 + (i10 * 4), j11);
    }

    public BTree(Nd nd2, long j10, int i10, IBTreeComparator iBTreeComparator) {
        this.f102540nd = nd2;
        if (i10 >= 2) {
            this.f102539db = nd2.getDB();
            this.rootPointer = j10;
            this.cmp = iBTreeComparator;
            this.degree = i10;
            this.minRecords = i10 - 1;
            int i11 = (i10 * 2) - 1;
            this.maxRecords = i11;
            this.maxChildren = i10 * 2;
            this.offsetChildren = i11 * 4;
            this.medianRecord = i10 - 1;
            return;
        }
        throw new IllegalArgumentException("Illegal degree " + i10 + " in tree");
    }

    private boolean accept(long j10, IBTreeVisitor iBTreeVisitor) throws IndexException {
        if (j10 == 0) {
            return true;
        }
        boolean z10 = iBTreeVisitor instanceof IBTreeVisitor2;
        if (z10) {
            ((IBTreeVisitor2) iBTreeVisitor).preNode(j10);
        }
        try {
            Chunk chunk = this.f102539db.getChunk(j10);
            int i10 = this.maxRecords - 1;
            while (i10 > 0 && getRecord(chunk, j10, i10 - 1) == 0) {
                i10--;
            }
            int i11 = 0;
            while (i11 < i10) {
                int i12 = (i11 + i10) / 2;
                long record = getRecord(chunk, j10, i12);
                if (record != 0 && iBTreeVisitor.compare(record) < 0) {
                    i11 = i12 + 1;
                }
                i10 = i12;
            }
            while (i11 < this.maxRecords) {
                long record2 = getRecord(chunk, j10, i11);
                if (record2 == 0) {
                    break;
                }
                int compare = iBTreeVisitor.compare(record2);
                if (compare > 0) {
                    boolean accept = accept(getChild(chunk, j10, i11), iBTreeVisitor);
                    if (iBTreeVisitor instanceof IBTreeVisitor2) {
                        ((IBTreeVisitor2) iBTreeVisitor).postNode(j10);
                    }
                    return accept;
                }
                if (compare == 0) {
                    if (!accept(getChild(chunk, j10, i11), iBTreeVisitor)) {
                        if (iBTreeVisitor instanceof IBTreeVisitor2) {
                            ((IBTreeVisitor2) iBTreeVisitor).postNode(j10);
                        }
                        return false;
                    }
                    if (!iBTreeVisitor.visit(record2)) {
                        if (iBTreeVisitor instanceof IBTreeVisitor2) {
                            ((IBTreeVisitor2) iBTreeVisitor).postNode(j10);
                        }
                        return false;
                    }
                }
                i11++;
            }
            boolean accept2 = accept(getChild(chunk, j10, i11), iBTreeVisitor);
            if (z10) {
                ((IBTreeVisitor2) iBTreeVisitor).postNode(j10);
            }
            return accept2;
        } catch (Throwable th2) {
            if (z10) {
                ((IBTreeVisitor2) iBTreeVisitor).postNode(j10);
            }
            throw th2;
        }
    }

    public static ITypeFactory<BTree> getFactory(final int i10, final IBTreeComparator iBTreeComparator) {
        return new AbstractTypeFactory<BTree>() {
            @Override
            public void destruct(Nd nd2, long j10) {
                destructFields(nd2, j10);
            }

            @Override
            public void destructFields(Nd nd2, long j10) {
                create(nd2, j10).destruct();
            }

            @Override
            public Class<?> getElementClass() {
                return BTree.class;
            }

            @Override
            public int getRecordSize() {
                return 4;
            }

            @Override
            public BTree create(Nd nd2, long j10) {
                return new BTree(nd2, j10, i10, iBTreeComparator);
            }
        };
    }

    private long insert(Chunk chunk, long j10, int i10, long j11, long j12) throws IndexException {
        int compare;
        int i11;
        Chunk chunk2;
        int i12;
        long j13 = j10;
        long j14 = j11;
        Chunk chunk3 = this.f102539db.getChunk(j14);
        long j15 = 0;
        if (getRecord(chunk3, j14, this.maxRecords - 1) != 0) {
            long record = getRecord(chunk3, j14, this.medianRecord);
            if (record == j12) {
                return record;
            }
            chunk3.makeDirty();
            long allocateNode = allocateNode();
            Chunk chunk4 = this.f102539db.getChunk(allocateNode);
            int i13 = 0;
            while (true) {
                i11 = this.medianRecord;
                if (i13 >= i11) {
                    break;
                }
                long j16 = allocateNode;
                int i14 = i13;
                putRecord(chunk4, j16, i13, getRecord(chunk3, j14, i11 + 1 + i13));
                putRecord(chunk3, j11, this.medianRecord + 1 + i14, 0L);
                putChild(chunk4, j16, i14, getChild(chunk3, j14, this.medianRecord + 1 + i14));
                putChild(chunk3, j11, this.medianRecord + 1 + i14, 0L);
                i13 = i14 + 1;
                allocateNode = j16;
                j15 = 0;
            }
            long j17 = allocateNode;
            putChild(chunk4, allocateNode, i11, getChild(chunk3, j14, this.maxRecords));
            putChild(chunk3, j11, this.maxRecords, 0L);
            if (j13 == j15) {
                j13 = allocateNode();
                chunk2 = this.f102539db.getChunk(j13);
                this.f102539db.putRecPtr(this.rootPointer, j13);
                putChild(chunk2, j13, 0, j11);
            } else {
                int i15 = this.maxRecords - 2;
                Chunk chunk5 = chunk;
                while (i15 >= i10) {
                    long record2 = getRecord(chunk5, j13, i15);
                    if (record2 != j15) {
                        Chunk writableChunk = chunk5.getWritableChunk();
                        int i16 = i15 + 1;
                        i12 = i15;
                        putRecord(writableChunk, j10, i16, record2);
                        putChild(writableChunk, j10, i12 + 2, getChild(writableChunk, j13, i16));
                        chunk5 = writableChunk;
                    } else {
                        i12 = i15;
                    }
                    i15 = i12 - 1;
                    j15 = 0;
                }
                chunk2 = chunk5;
            }
            Chunk writableChunk2 = chunk2.getWritableChunk();
            long j18 = j13;
            putRecord(writableChunk2, j18, i10, record);
            putChild(writableChunk2, j18, i10 + 1, j17);
            putRecord(chunk3, j11, this.medianRecord, 0L);
            if (this.cmp.compare(this.f102540nd, j12, record) > 0) {
                chunk3 = chunk4;
                j14 = j17;
            }
        }
        int i17 = this.maxRecords - 1;
        while (i17 > 0 && getRecord(chunk3, j14, i17 - 1) == 0) {
            i17--;
        }
        int i18 = 0;
        while (i18 < i17) {
            int i19 = (i18 + i17) / 2;
            long record3 = getRecord(chunk3, j14, i19);
            if (record3 == 0 || (compare = this.cmp.compare(this.f102540nd, record3, j12)) > 0) {
                i17 = i19;
            } else {
                if (compare >= 0) {
                    return record3;
                }
                i18 = i19 + 1;
            }
        }
        Chunk chunk6 = this.f102539db.getChunk(j14);
        long child = getChild(chunk6, j14, i18);
        if (child != 0) {
            return insert(chunk6, j14, i18, child, j12);
        }
        for (int i20 = this.maxRecords - 2; i20 >= i18; i20--) {
            long record4 = getRecord(chunk6, j14, i20);
            if (record4 != 0) {
                putRecord(chunk6, j14, i20 + 1, record4);
            }
        }
        putRecord(chunk6, j14, i18, j12);
        return j12;
    }
}
