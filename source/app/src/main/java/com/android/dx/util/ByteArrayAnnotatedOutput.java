package com.android.dx.util;

import com.android.dex.Leb128;
import com.android.dex.util.ByteOutput;
import com.android.dex.util.ExceptionWithContext;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import org.apache.commons.math3.geometry.VectorFormat;

public final class ByteArrayAnnotatedOutput implements AnnotatedOutput, ByteOutput {
    private static final int DEFAULT_SIZE = 1000;
    private int annotationWidth;
    private ArrayList<Annotation> annotations;
    private int cursor;
    private byte[] data;
    private int hexCols;
    private final boolean stretchy;
    private boolean verbose;

    public ByteArrayAnnotatedOutput(byte[] bArr) {
        this(bArr, false);
    }

    private void ensureCapacity(int i10) {
        byte[] bArr = this.data;
        if (bArr.length < i10) {
            byte[] bArr2 = new byte[(i10 * 2) + 1000];
            System.arraycopy(bArr, 0, bArr2, 0, this.cursor);
            this.data = bArr2;
        }
    }

    private static void throwBounds() {
        throw new IndexOutOfBoundsException("attempt to write past the end");
    }

    @Override
    public void alignTo(int i10) {
        int i11 = i10 - 1;
        if (i10 < 0 || (i10 & i11) != 0) {
            throw new IllegalArgumentException("bogus alignment");
        }
        int i12 = (this.cursor + i11) & (~i11);
        if (this.stretchy) {
            ensureCapacity(i12);
        } else if (i12 > this.data.length) {
            throwBounds();
            return;
        }
        this.cursor = i12;
    }

    @Override
    public void annotate(String str) {
        if (this.annotations == null) {
            return;
        }
        endAnnotation();
        this.annotations.add(new Annotation(this.cursor, str));
    }

    @Override
    public boolean annotates() {
        return this.annotations != null;
    }

    @Override
    public void assertCursor(int i10) {
        if (this.cursor == i10) {
            return;
        }
        throw new ExceptionWithContext("expected cursor " + i10 + "; actual value: " + this.cursor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001b, code lost:
    
        if (r0 > 10) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void enableAnnotations(int i10, boolean z10) {
        if (this.annotations != null || this.cursor != 0) {
            throw new RuntimeException("cannot enable annotations");
        }
        if (i10 < 40) {
            throw new IllegalArgumentException("annotationWidth < 40");
        }
        int i11 = (((i10 - 7) / 15) + 1) & (-2);
        int i12 = i11 >= 6 ? 10 : 6;
        i11 = i12;
        this.annotations = new ArrayList<>(1000);
        this.annotationWidth = i10;
        this.hexCols = i11;
        this.verbose = z10;
    }

    @Override
    public void endAnnotation() {
        int size;
        ArrayList<Annotation> arrayList = this.annotations;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return;
        }
        this.annotations.get(size - 1).setEndIfUnset(this.cursor);
    }

    public void finishAnnotating() {
        endAnnotation();
        ArrayList<Annotation> arrayList = this.annotations;
        if (arrayList != null) {
            for (int size = arrayList.size(); size > 0; size--) {
                int i10 = size - 1;
                Annotation annotation = this.annotations.get(i10);
                if (annotation.getStart() <= this.cursor) {
                    int end = annotation.getEnd();
                    int i11 = this.cursor;
                    if (end > i11) {
                        annotation.setEnd(i11);
                        return;
                    }
                    return;
                }
                this.annotations.remove(i10);
            }
        }
    }

    @Override
    public int getAnnotationWidth() {
        int i10 = this.hexCols;
        return this.annotationWidth - (((i10 * 2) + 8) + (i10 / 2));
    }

    public byte[] getArray() {
        return this.data;
    }

    @Override
    public int getCursor() {
        return this.cursor;
    }

    @Override
    public boolean isVerbose() {
        return this.verbose;
    }

    public byte[] toByteArray() {
        int i10 = this.cursor;
        byte[] bArr = new byte[i10];
        System.arraycopy(this.data, 0, bArr, 0, i10);
        return bArr;
    }

    @Override
    public void write(ByteArray byteArray) {
        int size = byteArray.size();
        int i10 = this.cursor;
        int i11 = size + i10;
        if (this.stretchy) {
            ensureCapacity(i11);
        } else if (i11 > this.data.length) {
            throwBounds();
            return;
        }
        byteArray.getBytes(this.data, i10);
        this.cursor = i11;
    }

    public void writeAnnotationsTo(Writer writer) throws IOException {
        int i10;
        String text;
        int i11;
        int i12;
        TwoColumnOutput twoColumnOutput = new TwoColumnOutput(writer, (this.annotationWidth - r0) - 1, getAnnotationWidth(), "|");
        Writer left = twoColumnOutput.getLeft();
        Writer right = twoColumnOutput.getRight();
        int size = this.annotations.size();
        int i13 = 0;
        int i14 = 0;
        while (true) {
            i10 = this.cursor;
            if (i14 >= i10 || i13 >= size) {
                break;
            }
            Annotation annotation = this.annotations.get(i13);
            int start = annotation.getStart();
            if (i14 < start) {
                text = "";
                i12 = start;
                i11 = i14;
            } else {
                int end = annotation.getEnd();
                text = annotation.getText();
                i13++;
                i11 = start;
                i12 = end;
            }
            left.write(Hex.dump(this.data, i11, i12 - i11, i11, this.hexCols, 6));
            right.write(text);
            twoColumnOutput.flush();
            i14 = i12;
        }
        if (i14 < i10) {
            left.write(Hex.dump(this.data, i14, i10 - i14, i14, this.hexCols, 6));
        }
        while (i13 < size) {
            right.write(this.annotations.get(i13).getText());
            i13++;
        }
        twoColumnOutput.flush();
    }

    @Override
    public void writeByte(int i10) {
        int i11 = this.cursor;
        int i12 = i11 + 1;
        if (this.stretchy) {
            ensureCapacity(i12);
        } else if (i12 > this.data.length) {
            throwBounds();
            return;
        }
        this.data[i11] = (byte) i10;
        this.cursor = i12;
    }

    @Override
    public void writeInt(int i10) {
        int i11 = this.cursor;
        int i12 = i11 + 4;
        if (this.stretchy) {
            ensureCapacity(i12);
        } else if (i12 > this.data.length) {
            throwBounds();
            return;
        }
        byte[] bArr = this.data;
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >> 8);
        bArr[i11 + 2] = (byte) (i10 >> 16);
        bArr[i11 + 3] = (byte) (i10 >> 24);
        this.cursor = i12;
    }

    @Override
    public void writeLong(long j10) {
        int i10 = this.cursor;
        int i11 = i10 + 8;
        if (this.stretchy) {
            ensureCapacity(i11);
        } else if (i11 > this.data.length) {
            throwBounds();
            return;
        }
        int i12 = (int) j10;
        byte[] bArr = this.data;
        bArr[i10] = (byte) i12;
        bArr[i10 + 1] = (byte) (i12 >> 8);
        bArr[i10 + 2] = (byte) (i12 >> 16);
        bArr[i10 + 3] = (byte) (i12 >> 24);
        int i13 = (int) (j10 >> 32);
        bArr[i10 + 4] = (byte) i13;
        bArr[i10 + 5] = (byte) (i13 >> 8);
        bArr[i10 + 6] = (byte) (i13 >> 16);
        bArr[i10 + 7] = (byte) (i13 >> 24);
        this.cursor = i11;
    }

    @Override
    public void writeShort(int i10) {
        int i11 = this.cursor;
        int i12 = i11 + 2;
        if (this.stretchy) {
            ensureCapacity(i12);
        } else if (i12 > this.data.length) {
            throwBounds();
            return;
        }
        byte[] bArr = this.data;
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >> 8);
        this.cursor = i12;
    }

    @Override
    public int writeSleb128(int i10) {
        if (this.stretchy) {
            ensureCapacity(this.cursor + 5);
        }
        int i11 = this.cursor;
        Leb128.writeSignedLeb128(this, i10);
        return this.cursor - i11;
    }

    @Override
    public int writeUleb128(int i10) {
        if (this.stretchy) {
            ensureCapacity(this.cursor + 5);
        }
        int i11 = this.cursor;
        Leb128.writeUnsignedLeb128(this, i10);
        return this.cursor - i11;
    }

    @Override
    public void writeZeroes(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("count < 0");
        }
        int i11 = this.cursor + i10;
        if (this.stretchy) {
            ensureCapacity(i11);
        } else if (i11 > this.data.length) {
            throwBounds();
            return;
        }
        this.cursor = i11;
    }

    public ByteArrayAnnotatedOutput() {
        this(1000);
    }

    public ByteArrayAnnotatedOutput(int i10) {
        this(new byte[i10], true);
    }

    public static class Annotation {
        private int end;
        private final int start;
        private final String text;

        public Annotation(int i10, int i11, String str) {
            this.start = i10;
            this.end = i11;
            this.text = str;
        }

        public int getEnd() {
            return this.end;
        }

        public int getStart() {
            return this.start;
        }

        public String getText() {
            return this.text;
        }

        public void setEnd(int i10) {
            this.end = i10;
        }

        public void setEndIfUnset(int i10) {
            if (this.end == Integer.MAX_VALUE) {
                this.end = i10;
            }
        }

        public Annotation(int i10, String str) {
            this(i10, Integer.MAX_VALUE, str);
        }
    }

    private ByteArrayAnnotatedOutput(byte[] bArr, boolean z10) {
        if (bArr != null) {
            this.stretchy = z10;
            this.data = bArr;
            this.cursor = 0;
            this.verbose = false;
            this.annotations = null;
            this.annotationWidth = 0;
            this.hexCols = 0;
            return;
        }
        throw new NullPointerException("data == null");
    }

    @Override
    public void annotate(int i10, String str) {
        if (this.annotations == null) {
            return;
        }
        endAnnotation();
        int size = this.annotations.size();
        int end = size == 0 ? 0 : this.annotations.get(size - 1).getEnd();
        int i11 = this.cursor;
        if (end <= i11) {
            end = i11;
        }
        this.annotations.add(new Annotation(end, i10 + end, str));
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) {
        int i12 = this.cursor;
        int i13 = i12 + i11;
        int i14 = i10 + i11;
        if ((i10 | i11 | i13) >= 0 && i14 <= bArr.length) {
            if (this.stretchy) {
                ensureCapacity(i13);
            } else if (i13 > this.data.length) {
                throwBounds();
                return;
            }
            System.arraycopy(bArr, i10, this.data, i12, i11);
            this.cursor = i13;
            return;
        }
        throw new IndexOutOfBoundsException("bytes.length " + bArr.length + VectorFormat.DEFAULT_SEPARATOR + i10 + "..!" + i13);
    }

    @Override
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }
}
