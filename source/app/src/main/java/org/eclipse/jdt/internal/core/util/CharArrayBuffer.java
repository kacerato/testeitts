package org.eclipse.jdt.internal.core.util;

public class CharArrayBuffer {
    public static final int DEFAULT_BUFFER_SIZE = 10;
    protected char[][] buffer;
    protected int end;
    protected int[][] ranges;
    protected int size;

    public CharArrayBuffer() {
        this(null, 10);
    }

    public CharArrayBuffer append(char[] cArr) {
        if (cArr != null) {
            append(cArr, 0, cArr.length);
        }
        return this;
    }

    public char[] getContents() {
        if (this.end == 0) {
            return null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.end; i11++) {
            i10 += this.ranges[i11][1];
        }
        if (i10 <= 0) {
            return null;
        }
        char[] cArr = new char[i10];
        int i12 = 0;
        for (int i13 = 0; i13 < this.end; i13++) {
            int[] iArr = this.ranges[i13];
            int i14 = iArr[1];
            System.arraycopy(this.buffer[i13], iArr[0], cArr, i12, i14);
            i12 += i14;
        }
        return cArr;
    }

    public String toString() {
        char[] contents = getContents();
        return contents != null ? new String(contents) : org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING;
    }

    public CharArrayBuffer(char[] cArr) {
        this(cArr, 10);
    }

    public CharArrayBuffer append(char[] cArr, int i10, int i11) {
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (i11 < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (cArr != null) {
            int length = cArr.length;
            if (i10 > length) {
                throw new ArrayIndexOutOfBoundsException();
            }
            if (i11 + i10 > length) {
                throw new ArrayIndexOutOfBoundsException();
            }
            if (i11 > 0) {
                int i12 = this.end;
                int i13 = this.size;
                if (i12 == i13) {
                    int i14 = i13 * 2;
                    char[][] cArr2 = this.buffer;
                    char[][] cArr3 = new char[i14];
                    this.buffer = cArr3;
                    System.arraycopy(cArr2, 0, cArr3, 0, i13);
                    int[][] iArr = this.ranges;
                    int[][] iArr2 = new int[i14];
                    this.ranges = iArr2;
                    System.arraycopy(iArr, 0, iArr2, 0, this.size);
                    this.size *= 2;
                }
                char[][] cArr4 = this.buffer;
                int i15 = this.end;
                cArr4[i15] = cArr;
                this.ranges[i15] = new int[]{i10, i11};
                this.end = i15 + 1;
            }
        }
        return this;
    }

    public CharArrayBuffer(char[] cArr, int i10) {
        i10 = i10 <= 0 ? 10 : i10;
        this.size = i10;
        this.buffer = new char[i10];
        this.ranges = new int[i10];
        this.end = 0;
        if (cArr != null) {
            append(cArr, 0, cArr.length);
        }
    }

    public CharArrayBuffer(int i10) {
        this(null, i10);
    }

    public CharArrayBuffer append(char c10) {
        append(new char[]{c10}, 0, 1);
        return this;
    }

    public CharArrayBuffer append(String str) {
        if (str != null) {
            append(str.toCharArray(), 0, str.length());
        }
        return this;
    }
}
