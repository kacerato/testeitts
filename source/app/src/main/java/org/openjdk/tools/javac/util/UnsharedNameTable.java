package org.openjdk.tools.javac.util;

import java.lang.ref.WeakReference;
import org.openjdk.tools.javac.util.Name;

public class UnsharedNameTable extends Name.Table {
    private int hashMask;
    private HashEntry[] hashes;
    public int index;

    public static class HashEntry extends WeakReference<NameImpl> {
        HashEntry next;

        public HashEntry(NameImpl nameImpl) {
            super(nameImpl);
        }
    }

    public static class NameImpl extends Name {
        final byte[] bytes;
        final int index;

        public NameImpl(UnsharedNameTable unsharedNameTable, byte[] bArr, int i10) {
            super(unsharedNameTable);
            this.bytes = bArr;
            this.index = i10;
        }

        @Override
        public byte[] getByteArray() {
            return this.bytes;
        }

        @Override
        public byte getByteAt(int i10) {
            return this.bytes[i10];
        }

        @Override
        public int getByteLength() {
            return this.bytes.length;
        }

        @Override
        public int getByteOffset() {
            return 0;
        }

        @Override
        public int getIndex() {
            return this.index;
        }
    }

    public UnsharedNameTable(Names names, int i10) {
        super(names);
        this.hashes = null;
        this.hashMask = i10 - 1;
        this.hashes = new HashEntry[i10];
    }

    public static Name.Table create(Names names) {
        return new UnsharedNameTable(names);
    }

    @Override
    public void dispose() {
        this.hashes = null;
    }

    @Override
    public Name fromChars(char[] cArr, int i10, int i11) {
        byte[] bArr = new byte[i11 * 3];
        return fromUtf(bArr, 0, Convert.chars2utf(cArr, i10, bArr, 0, i11));
    }

    @Override
    public Name fromUtf(byte[] bArr, int i10, int i11) {
        int hashValue = Name.Table.hashValue(bArr, i10, i11) & this.hashMask;
        HashEntry hashEntry = this.hashes[hashValue];
        HashEntry hashEntry2 = null;
        HashEntry hashEntry3 = hashEntry;
        while (hashEntry != null) {
            NameImpl nameImpl = hashEntry.get();
            if (nameImpl == null) {
                if (hashEntry3 == hashEntry) {
                    HashEntry[] hashEntryArr = this.hashes;
                    HashEntry hashEntry4 = hashEntry.next;
                    hashEntryArr[hashValue] = hashEntry4;
                    hashEntry3 = hashEntry4;
                } else {
                    Assert.checkNonNull(hashEntry2, "previousNonNullTableEntry cannot be null here.");
                    hashEntry2.next = hashEntry.next;
                }
            } else {
                if (nameImpl.getByteLength() == i11 && Name.Table.equals(nameImpl.bytes, 0, bArr, i10, i11)) {
                    return nameImpl;
                }
                hashEntry2 = hashEntry;
            }
            hashEntry = hashEntry.next;
        }
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        int i12 = this.index;
        this.index = i12 + 1;
        NameImpl nameImpl2 = new NameImpl(this, bArr2, i12);
        HashEntry hashEntry5 = new HashEntry(nameImpl2);
        if (hashEntry2 == null) {
            this.hashes[hashValue] = hashEntry5;
        } else {
            Assert.checkNull((Object) hashEntry2.next, "previousNonNullTableEntry.next must be null.");
            hashEntry2.next = hashEntry5;
        }
        return nameImpl2;
    }

    public UnsharedNameTable(Names names) {
        this(names, 32768);
    }
}
