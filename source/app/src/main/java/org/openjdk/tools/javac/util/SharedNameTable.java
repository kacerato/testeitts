package org.openjdk.tools.javac.util;

import java.lang.ref.SoftReference;
import org.openjdk.tools.javac.util.Name;

public class SharedNameTable extends Name.Table {
    private static List<SoftReference<SharedNameTable>> freelist = List.nil();
    public byte[] bytes;
    private int hashMask;
    private NameImpl[] hashes;

    private int f103305nc;

    public static class NameImpl extends Name {
        int index;
        int length;
        NameImpl next;

        public NameImpl(SharedNameTable sharedNameTable) {
            super(sharedNameTable);
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof Name)) {
                return false;
            }
            Name name = (Name) obj;
            return this.table == name.table && this.index == name.getIndex();
        }

        @Override
        public byte[] getByteArray() {
            return ((SharedNameTable) this.table).bytes;
        }

        @Override
        public byte getByteAt(int i10) {
            return getByteArray()[this.index + i10];
        }

        @Override
        public int getByteLength() {
            return this.length;
        }

        @Override
        public int getByteOffset() {
            return this.index;
        }

        @Override
        public int getIndex() {
            return this.index;
        }

        @Override
        public int hashCode() {
            return this.index;
        }
    }

    public SharedNameTable(Names names, int i10, int i11) {
        super(names);
        this.f103305nc = 0;
        this.hashMask = i10 - 1;
        this.hashes = new NameImpl[i10];
        this.bytes = new byte[i11];
    }

    public static synchronized SharedNameTable create(Names names) {
        synchronized (SharedNameTable.class) {
            while (freelist.nonEmpty()) {
                SharedNameTable sharedNameTable = freelist.head.get();
                freelist = freelist.tail;
                if (sharedNameTable != null) {
                    return sharedNameTable;
                }
            }
            return new SharedNameTable(names);
        }
    }

    private static synchronized void dispose(SharedNameTable sharedNameTable) {
        synchronized (SharedNameTable.class) {
            freelist = freelist.prepend(new SoftReference<>(sharedNameTable));
        }
    }

    @Override
    public Name fromChars(char[] cArr, int i10, int i11) {
        int i12 = this.f103305nc;
        byte[] ensureCapacity = ArrayUtils.ensureCapacity(this.bytes, (i11 * 3) + i12);
        this.bytes = ensureCapacity;
        int chars2utf = Convert.chars2utf(cArr, i10, ensureCapacity, i12, i11) - i12;
        int hashValue = Name.Table.hashValue(ensureCapacity, i12, chars2utf) & this.hashMask;
        NameImpl nameImpl = this.hashes[hashValue];
        while (nameImpl != null && (nameImpl.getByteLength() != chars2utf || !Name.Table.equals(ensureCapacity, nameImpl.index, ensureCapacity, i12, chars2utf))) {
            nameImpl = nameImpl.next;
        }
        if (nameImpl == null) {
            nameImpl = new NameImpl(this);
            nameImpl.index = i12;
            nameImpl.length = chars2utf;
            NameImpl[] nameImplArr = this.hashes;
            nameImpl.next = nameImplArr[hashValue];
            nameImplArr[hashValue] = nameImpl;
            int i13 = i12 + chars2utf;
            this.f103305nc = i13;
            if (chars2utf == 0) {
                this.f103305nc = i13 + 1;
            }
        }
        return nameImpl;
    }

    @Override
    public Name fromUtf(byte[] bArr, int i10, int i11) {
        int hashValue = Name.Table.hashValue(bArr, i10, i11) & this.hashMask;
        NameImpl nameImpl = this.hashes[hashValue];
        byte[] bArr2 = this.bytes;
        while (nameImpl != null && (nameImpl.getByteLength() != i11 || !Name.Table.equals(bArr2, nameImpl.index, bArr, i10, i11))) {
            nameImpl = nameImpl.next;
        }
        if (nameImpl != null) {
            return nameImpl;
        }
        int i12 = this.f103305nc;
        int i13 = i12 + i11;
        byte[] ensureCapacity = ArrayUtils.ensureCapacity(bArr2, i13);
        this.bytes = ensureCapacity;
        System.arraycopy(bArr, i10, ensureCapacity, i12, i11);
        NameImpl nameImpl2 = new NameImpl(this);
        nameImpl2.index = i12;
        nameImpl2.length = i11;
        NameImpl[] nameImplArr = this.hashes;
        nameImpl2.next = nameImplArr[hashValue];
        nameImplArr[hashValue] = nameImpl2;
        this.f103305nc = i13;
        if (i11 == 0) {
            this.f103305nc = i13 + 1;
        }
        return nameImpl2;
    }

    @Override
    public void dispose() {
        dispose(this);
    }

    public SharedNameTable(Names names) {
        this(names, 32768, 131072);
    }
}
