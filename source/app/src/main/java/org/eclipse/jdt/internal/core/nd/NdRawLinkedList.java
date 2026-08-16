package org.eclipse.jdt.internal.core.nd;

import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.IndexException;

public class NdRawLinkedList {
    static final boolean $assertionsDisabled = false;
    private static final int ELEMENT_START_POSITION = 4;
    private static final int NEXT_MEMBER_BLOCK = 0;
    private final long address;
    private final int elementRecordSize;
    private final int firstBlockRecordCount;
    private long lastKnownBlock;
    private final int metadataBitsPerRecord;

    private final Nd f102533nd;
    private final int recordCount;

    public interface ILinkedListVisitor {
        void visit(long j10, short s10, int i10) throws IndexException;
    }

    public NdRawLinkedList(Nd nd2, long j10, int i10, int i11, int i12, int i13) {
        this.f102533nd = nd2;
        this.address = j10;
        this.firstBlockRecordCount = i11;
        this.recordCount = i12;
        this.elementRecordSize = i10;
        this.lastKnownBlock = j10;
        this.metadataBitsPerRecord = i13;
    }

    private long getAddressOfElement(long j10, int i10) {
        return j10 + 4 + (i10 * this.elementRecordSize);
    }

    private long getAddressOfMetadata(long j10, int i10) {
        return getAddressOfElement(j10, i10);
    }

    private Database getDB() {
        return this.f102533nd.getDB();
    }

    private int getElementsInBlock(long j10, long j11, int i10) throws IndexException {
        return (j11 != 0 || i10 <= 0) ? i10 : getDB().getInt(getAddressOfElement(j10, i10 - 1));
    }

    private boolean isLastBlock(long j10, long j11) {
        return j11 == 0 || j11 == j10;
    }

    public static int recordSize(int i10, int i11, int i12) {
        int i13;
        if (i12 > 0) {
            i13 = (((i11 + r0) - 1) / (16 / i12)) * 2;
        } else {
            i13 = 0;
        }
        return (i10 * i11) + 4 + i13;
    }

    public void accept(ILinkedListVisitor iLinkedListVisitor) throws IndexException {
        Database database;
        short s10;
        NdRawLinkedList ndRawLinkedList = this;
        Database db2 = getDB();
        int i10 = ndRawLinkedList.firstBlockRecordCount;
        int i11 = ndRawLinkedList.metadataBitsPerRecord;
        int i12 = (1 << i11) - 1;
        int i13 = i11 == 0 ? 0 : 16 / i11;
        int i14 = i10;
        long j10 = ndRawLinkedList.address;
        int i15 = 0;
        while (true) {
            long recPtr = db2.getRecPtr(j10);
            int elementsInBlock = getElementsInBlock(j10, recPtr, i14);
            long addressOfMetadata = ndRawLinkedList.getAddressOfMetadata(j10, i14);
            int i16 = 0;
            while (i16 < elementsInBlock) {
                long addressOfElement = ndRawLinkedList.getAddressOfElement(j10, i16);
                if (i13 > 0) {
                    database = db2;
                    short s11 = getDB().getShort(((i16 / i13) * 2) + addressOfMetadata);
                    s10 = (short) (((short) (s11 >>> ((i16 % i13) * s11))) & i12);
                } else {
                    database = db2;
                    s10 = 0;
                }
                iLinkedListVisitor.visit(addressOfElement, s10, i15);
                i16++;
                ndRawLinkedList = this;
                i15++;
                db2 = database;
            }
            i14 = ndRawLinkedList.recordCount;
            if (ndRawLinkedList.isLastBlock(j10, recPtr)) {
                return;
            } else {
                j10 = recPtr;
            }
        }
    }

    public long addMember(short s10) throws IndexException {
        int elementsInBlock;
        Database db2 = getDB();
        long j10 = this.lastKnownBlock;
        int i10 = this.firstBlockRecordCount;
        while (true) {
            long recPtr = db2.getRecPtr(j10);
            elementsInBlock = getElementsInBlock(j10, recPtr, i10);
            if (elementsInBlock < i10) {
                break;
            }
            if (isLastBlock(j10, recPtr)) {
                j10 = db2.malloc(recordSize(this.elementRecordSize, this.recordCount, this.metadataBitsPerRecord), (short) 5);
                db2.putRecPtr(j10, j10);
            } else {
                i10 = this.recordCount;
                j10 = recPtr;
            }
        }
        int i11 = i10 - 1;
        long addressOfElement = getAddressOfElement(j10, i11);
        if (elementsInBlock == i11) {
            db2.putRecPtr(j10, j10);
            db2.putInt(addressOfElement, 0);
        } else {
            db2.putInt(addressOfElement, elementsInBlock + 1);
        }
        int i12 = this.metadataBitsPerRecord;
        if (i12 > 0) {
            int i13 = (1 << i12) - 1;
            int i14 = elementsInBlock % (i12 != 0 ? 16 / i12 : 0);
            long addressOfMetadata = getAddressOfMetadata(j10, i10) + ((elementsInBlock / r8) * 2);
            short s11 = db2.getShort(addressOfMetadata);
            int i15 = this.metadataBitsPerRecord;
            getDB().putShort(addressOfMetadata, (short) ((((short) (s10 & i13)) << (i14 * i15)) | ((short) (s11 & (~(i13 << (i14 * i15)))))));
        }
        this.lastKnownBlock = j10;
        return getAddressOfElement(j10, elementsInBlock);
    }

    public void destruct() throws IndexException {
        Database db2 = getDB();
        long j10 = this.address;
        while (true) {
            long recPtr = db2.getRecPtr(j10);
            db2.free(j10, (short) 5);
            if (isLastBlock(j10, recPtr)) {
                return;
            } else {
                j10 = recPtr;
            }
        }
    }

    public long getAddress() {
        return this.address;
    }

    public Nd getNd() {
        return this.f102533nd;
    }

    public int size() throws IndexException {
        Database db2 = getDB();
        int i10 = this.firstBlockRecordCount;
        long j10 = this.address;
        int i11 = 0;
        int i12 = i10;
        while (true) {
            long recPtr = db2.getRecPtr(j10);
            i11 += getElementsInBlock(j10, recPtr, i12);
            if (isLastBlock(j10, recPtr)) {
                return i11;
            }
            i12 = this.recordCount;
            j10 = recPtr;
        }
    }
}
