package org.openjdk.tools.javac.util;

public abstract class Name implements org.openjdk.javax.lang.model.element.Name {
    public final Table table;

    public static abstract class Table {
        public final Names names;

        public Table(Names names) {
            this.names = names;
        }

        public static boolean equals(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
            int i13 = 0;
            while (i13 < i12 && bArr[i10 + i13] == bArr2[i11 + i13]) {
                i13++;
            }
            return i13 == i12;
        }

        public static int hashValue(byte[] bArr, int i10, int i11) {
            int i12 = 0;
            int i13 = 0;
            while (i12 < i11) {
                i12++;
                i13 = bArr[i10] + ((i13 << 5) - i13);
                i10++;
            }
            return i13;
        }

        public abstract void dispose();

        public abstract Name fromChars(char[] cArr, int i10, int i11);

        public Name fromString(String str) {
            char[] charArray = str.toCharArray();
            return fromChars(charArray, 0, charArray.length);
        }

        public Name fromUtf(byte[] bArr) {
            return fromUtf(bArr, 0, bArr.length);
        }

        public abstract Name fromUtf(byte[] bArr, int i10, int i11);
    }

    public Name(Table table) {
        this.table = table;
    }

    public Name append(Name name) {
        int byteLength = getByteLength();
        int byteLength2 = name.getByteLength() + byteLength;
        byte[] bArr = new byte[byteLength2];
        getBytes(bArr, 0);
        name.getBytes(bArr, byteLength);
        return this.table.fromUtf(bArr, 0, byteLength2);
    }

    @Override
    public char charAt(int i10) {
        return toString().charAt(i10);
    }

    public int compareTo(Name name) {
        return name.getIndex() - getIndex();
    }

    @Override
    public boolean contentEquals(CharSequence charSequence) {
        return toString().equals(charSequence.toString());
    }

    public abstract byte[] getByteArray();

    public abstract byte getByteAt(int i10);

    public abstract int getByteLength();

    public abstract int getByteOffset();

    public void getBytes(byte[] bArr, int i10) {
        System.arraycopy(getByteArray(), getByteOffset(), bArr, i10, getByteLength());
    }

    public abstract int getIndex();

    @Override
    public boolean isEmpty() {
        return getByteLength() == 0;
    }

    public int lastIndexOf(byte b10) {
        byte[] byteArray = getByteArray();
        int byteOffset = getByteOffset();
        int byteLength = getByteLength() - 1;
        while (byteLength >= 0 && byteArray[byteOffset + byteLength] != b10) {
            byteLength--;
        }
        return byteLength;
    }

    @Override
    public int length() {
        return toString().length();
    }

    public boolean startsWith(Name name) {
        byte[] byteArray = getByteArray();
        int byteOffset = getByteOffset();
        int byteLength = getByteLength();
        byte[] byteArray2 = name.getByteArray();
        int byteOffset2 = name.getByteOffset();
        int byteLength2 = name.getByteLength();
        if (byteLength < byteLength2) {
            return false;
        }
        int i10 = 0;
        while (i10 < byteLength2 && byteArray[byteOffset + i10] == byteArray2[byteOffset2 + i10]) {
            i10++;
        }
        return i10 == byteLength2;
    }

    public Name subName(int i10, int i11) {
        if (i11 < i10) {
            i11 = i10;
        }
        return this.table.fromUtf(getByteArray(), getByteOffset() + i10, i11 - i10);
    }

    @Override
    public CharSequence subSequence(int i10, int i11) {
        return toString().subSequence(i10, i11);
    }

    @Override
    public String toString() {
        return Convert.utf2string(getByteArray(), getByteOffset(), getByteLength());
    }

    public byte[] toUtf() {
        byte[] bArr = new byte[getByteLength()];
        getBytes(bArr, 0);
        return bArr;
    }

    public Name append(char c10, Name name) {
        int byteLength = getByteLength();
        int i10 = byteLength + 1;
        int byteLength2 = name.getByteLength() + i10;
        byte[] bArr = new byte[byteLength2];
        getBytes(bArr, 0);
        bArr[byteLength] = (byte) c10;
        name.getBytes(bArr, i10);
        return this.table.fromUtf(bArr, 0, byteLength2);
    }
}
