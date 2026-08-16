package java.lang;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.stream.IntStream;
import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/StringBuilder.class
 */
public final class StringBuilder extends AbstractStringBuilder implements Appendable, Serializable, Comparable<StringBuilder>, CharSequence {
    static final long serialVersionUID = 4383685877147921099L;

    @Override
    public IntStream codePoints() {
        return super.codePoints();
    }

    @Override
    public IntStream chars() {
        return super.chars();
    }

    @Override
    public String substring(int i10, int i11) {
        return super.substring(i10, i11);
    }

    @Override
    public CharSequence subSequence(int i10, int i11) {
        return super.subSequence(i10, i11);
    }

    @Override
    public String substring(int i10) {
        return super.substring(i10);
    }

    @Override
    public void setCharAt(int i10, char c10) {
        super.setCharAt(i10, c10);
    }

    @Override
    public void getChars(int i10, int i11, char[] cArr, int i12) {
        super.getChars(i10, i11, cArr, i12);
    }

    @Override
    public int offsetByCodePoints(int i10, int i11) {
        return super.offsetByCodePoints(i10, i11);
    }

    @Override
    public int codePointCount(int i10, int i11) {
        return super.codePointCount(i10, i11);
    }

    @Override
    public int codePointBefore(int i10) {
        return super.codePointBefore(i10);
    }

    @Override
    public int codePointAt(int i10) {
        return super.codePointAt(i10);
    }

    @Override
    public char charAt(int i10) {
        return super.charAt(i10);
    }

    @Override
    public void setLength(int i10) {
        super.setLength(i10);
    }

    @Override
    public void trimToSize() {
        super.trimToSize();
    }

    @Override
    public void ensureCapacity(int i10) {
        super.ensureCapacity(i10);
    }

    @Override
    public int capacity() {
        return super.capacity();
    }

    @Override
    public int length() {
        return super.length();
    }

    @IntrinsicCandidate
    public StringBuilder() {
        super(16);
    }

    @IntrinsicCandidate
    public StringBuilder(int capacity) {
        super(capacity);
    }

    @IntrinsicCandidate
    public StringBuilder(String str) {
        super(str);
    }

    public StringBuilder(CharSequence seq) {
        super(seq);
    }

    @Override
    public int compareTo(StringBuilder another) {
        return super.compareTo((AbstractStringBuilder) another);
    }

    @Override
    public StringBuilder append(Object obj) {
        return append(String.valueOf(obj));
    }

    @Override
    @IntrinsicCandidate
    public StringBuilder append(String str) {
        super.append(str);
        return this;
    }

    @Override
    public StringBuilder append(StringBuffer sb2) {
        super.append(sb2);
        return this;
    }

    @Override
    public StringBuilder append(CharSequence s10) {
        super.append(s10);
        return this;
    }

    @Override
    public StringBuilder append(CharSequence s10, int start, int end) {
        super.append(s10, start, end);
        return this;
    }

    @Override
    public StringBuilder append(char[] str) {
        super.append(str);
        return this;
    }

    @Override
    public StringBuilder append(char[] str, int offset, int len) {
        super.append(str, offset, len);
        return this;
    }

    @Override
    public StringBuilder append(boolean b10) {
        super.append(b10);
        return this;
    }

    @Override
    @IntrinsicCandidate
    public StringBuilder append(char c10) {
        super.append(c10);
        return this;
    }

    @Override
    @IntrinsicCandidate
    public StringBuilder append(int i10) {
        super.append(i10);
        return this;
    }

    @Override
    public StringBuilder append(long lng) {
        super.append(lng);
        return this;
    }

    @Override
    public StringBuilder append(float f10) {
        super.append(f10);
        return this;
    }

    @Override
    public StringBuilder append(double d10) {
        super.append(d10);
        return this;
    }

    @Override
    public StringBuilder appendCodePoint(int codePoint) {
        super.appendCodePoint(codePoint);
        return this;
    }

    @Override
    public StringBuilder delete(int start, int end) {
        super.delete(start, end);
        return this;
    }

    @Override
    public StringBuilder deleteCharAt(int index) {
        super.deleteCharAt(index);
        return this;
    }

    @Override
    public StringBuilder replace(int start, int end, String str) {
        super.replace(start, end, str);
        return this;
    }

    @Override
    public StringBuilder insert(int index, char[] str, int offset, int len) {
        super.insert(index, str, offset, len);
        return this;
    }

    @Override
    public StringBuilder insert(int offset, Object obj) {
        super.insert(offset, obj);
        return this;
    }

    @Override
    public StringBuilder insert(int offset, String str) {
        super.insert(offset, str);
        return this;
    }

    @Override
    public StringBuilder insert(int offset, char[] str) {
        super.insert(offset, str);
        return this;
    }

    @Override
    public StringBuilder insert(int dstOffset, CharSequence s10) {
        super.insert(dstOffset, s10);
        return this;
    }

    @Override
    public StringBuilder insert(int dstOffset, CharSequence s10, int start, int end) {
        super.insert(dstOffset, s10, start, end);
        return this;
    }

    @Override
    public StringBuilder insert(int offset, boolean b10) {
        super.insert(offset, b10);
        return this;
    }

    @Override
    public StringBuilder insert(int offset, char c10) {
        super.insert(offset, c10);
        return this;
    }

    @Override
    public StringBuilder insert(int offset, int i10) {
        super.insert(offset, i10);
        return this;
    }

    @Override
    public StringBuilder insert(int offset, long l10) {
        super.insert(offset, l10);
        return this;
    }

    @Override
    public StringBuilder insert(int offset, float f10) {
        super.insert(offset, f10);
        return this;
    }

    @Override
    public StringBuilder insert(int offset, double d10) {
        super.insert(offset, d10);
        return this;
    }

    @Override
    public int indexOf(String str) {
        return super.indexOf(str);
    }

    @Override
    public int indexOf(String str, int fromIndex) {
        return super.indexOf(str, fromIndex);
    }

    @Override
    public int lastIndexOf(String str) {
        return super.lastIndexOf(str);
    }

    @Override
    public int lastIndexOf(String str, int fromIndex) {
        return super.lastIndexOf(str, fromIndex);
    }

    @Override
    public StringBuilder reverse() {
        super.reverse();
        return this;
    }

    @Override
    public StringBuilder repeat(int codePoint, int count) {
        super.repeat(codePoint, count);
        return this;
    }

    @Override
    public StringBuilder repeat(CharSequence cs, int count) {
        super.repeat(cs, count);
        return this;
    }

    @Override
    @IntrinsicCandidate
    public String toString() {
        if (length() == 0) {
            return "";
        }
        return new String(this, (Void) null);
    }

    private void writeObject(ObjectOutputStream s10) throws IOException {
        s10.defaultWriteObject();
        s10.writeInt(this.count);
        char[] val = new char[capacity()];
        if (isLatin1()) {
            StringLatin1.getChars(this.value, 0, this.count, val, 0);
        } else {
            StringUTF16.getChars(this.value, 0, this.count, val, 0);
        }
        s10.writeObject(val);
    }

    private void readObject(ObjectInputStream s10) throws IOException, ClassNotFoundException {
        s10.defaultReadObject();
        int c10 = s10.readInt();
        char[] val = (char[]) s10.readObject();
        if (c10 < 0 || c10 > val.length) {
            throw new StreamCorruptedException("count value invalid");
        }
        initBytes(val, 0, val.length);
        this.count = c10;
    }
}
