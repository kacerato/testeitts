package java.lang;

import android.os.Environment;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.stream.IntStream;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import oc.c;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/StringBuffer.class
 */
public final class StringBuffer extends AbstractStringBuilder implements Appendable, Serializable, Comparable<StringBuffer>, CharSequence {
    private transient String toStringCache;
    static final long serialVersionUID = 3388685877147921107L;
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("value", char[].class), new ObjectStreamField(c.f98682m, Integer.TYPE), new ObjectStreamField(Environment.MEDIA_SHARED, Boolean.TYPE)};

    @Override
    public IntStream codePoints() {
        return super.codePoints();
    }

    @Override
    public IntStream chars() {
        return super.chars();
    }

    @IntrinsicCandidate
    public StringBuffer() {
        super(16);
    }

    @IntrinsicCandidate
    public StringBuffer(int capacity) {
        super(capacity);
    }

    @IntrinsicCandidate
    public StringBuffer(String str) {
        super(str);
    }

    public StringBuffer(CharSequence seq) {
        super(seq);
    }

    @Override
    public synchronized int compareTo(StringBuffer another) {
        return super.compareTo((AbstractStringBuilder) another);
    }

    @Override
    public synchronized int length() {
        return this.count;
    }

    @Override
    public synchronized int capacity() {
        return super.capacity();
    }

    @Override
    public synchronized void ensureCapacity(int minimumCapacity) {
        super.ensureCapacity(minimumCapacity);
    }

    @Override
    public synchronized void trimToSize() {
        super.trimToSize();
    }

    @Override
    public synchronized void setLength(int newLength) {
        this.toStringCache = null;
        super.setLength(newLength);
    }

    @Override
    public synchronized char charAt(int index) {
        return super.charAt(index);
    }

    @Override
    public synchronized int codePointAt(int index) {
        return super.codePointAt(index);
    }

    @Override
    public synchronized int codePointBefore(int index) {
        return super.codePointBefore(index);
    }

    @Override
    public synchronized int codePointCount(int beginIndex, int endIndex) {
        return super.codePointCount(beginIndex, endIndex);
    }

    @Override
    public synchronized int offsetByCodePoints(int index, int codePointOffset) {
        return super.offsetByCodePoints(index, codePointOffset);
    }

    @Override
    public synchronized void getChars(int srcBegin, int srcEnd, char[] dst, int dstBegin) {
        super.getChars(srcBegin, srcEnd, dst, dstBegin);
    }

    @Override
    public synchronized void setCharAt(int index, char ch2) {
        this.toStringCache = null;
        super.setCharAt(index, ch2);
    }

    @Override
    public synchronized StringBuffer append(Object obj) {
        this.toStringCache = null;
        super.append(String.valueOf(obj));
        return this;
    }

    @Override
    @IntrinsicCandidate
    public synchronized StringBuffer append(String str) {
        this.toStringCache = null;
        super.append(str);
        return this;
    }

    @Override
    public synchronized StringBuffer append(StringBuffer sb2) {
        this.toStringCache = null;
        super.append(sb2);
        return this;
    }

    @Override
    public synchronized StringBuffer append(AbstractStringBuilder asb) {
        this.toStringCache = null;
        super.append(asb);
        return this;
    }

    @Override
    public synchronized StringBuffer append(CharSequence s10) {
        this.toStringCache = null;
        super.append(s10);
        return this;
    }

    @Override
    public synchronized StringBuffer append(CharSequence s10, int start, int end) {
        this.toStringCache = null;
        super.append(s10, start, end);
        return this;
    }

    @Override
    public synchronized StringBuffer append(char[] str) {
        this.toStringCache = null;
        super.append(str);
        return this;
    }

    @Override
    public synchronized StringBuffer append(char[] str, int offset, int len) {
        this.toStringCache = null;
        super.append(str, offset, len);
        return this;
    }

    @Override
    public synchronized StringBuffer append(boolean b10) {
        this.toStringCache = null;
        super.append(b10);
        return this;
    }

    @Override
    @IntrinsicCandidate
    public synchronized StringBuffer append(char c10) {
        this.toStringCache = null;
        super.append(c10);
        return this;
    }

    @Override
    @IntrinsicCandidate
    public synchronized StringBuffer append(int i10) {
        this.toStringCache = null;
        super.append(i10);
        return this;
    }

    @Override
    public synchronized StringBuffer appendCodePoint(int codePoint) {
        this.toStringCache = null;
        super.appendCodePoint(codePoint);
        return this;
    }

    @Override
    public synchronized StringBuffer append(long lng) {
        this.toStringCache = null;
        super.append(lng);
        return this;
    }

    @Override
    public synchronized StringBuffer append(float f10) {
        this.toStringCache = null;
        super.append(f10);
        return this;
    }

    @Override
    public synchronized StringBuffer append(double d10) {
        this.toStringCache = null;
        super.append(d10);
        return this;
    }

    @Override
    public synchronized StringBuffer delete(int start, int end) {
        this.toStringCache = null;
        super.delete(start, end);
        return this;
    }

    @Override
    public synchronized StringBuffer deleteCharAt(int index) {
        this.toStringCache = null;
        super.deleteCharAt(index);
        return this;
    }

    @Override
    public synchronized StringBuffer replace(int start, int end, String str) {
        this.toStringCache = null;
        super.replace(start, end, str);
        return this;
    }

    @Override
    public synchronized String substring(int start) {
        return substring(start, this.count);
    }

    @Override
    public synchronized CharSequence subSequence(int start, int end) {
        return super.substring(start, end);
    }

    @Override
    public synchronized String substring(int start, int end) {
        return super.substring(start, end);
    }

    @Override
    public synchronized StringBuffer insert(int index, char[] str, int offset, int len) {
        this.toStringCache = null;
        super.insert(index, str, offset, len);
        return this;
    }

    @Override
    public synchronized StringBuffer insert(int offset, Object obj) {
        this.toStringCache = null;
        super.insert(offset, String.valueOf(obj));
        return this;
    }

    @Override
    public synchronized StringBuffer insert(int offset, String str) {
        this.toStringCache = null;
        super.insert(offset, str);
        return this;
    }

    @Override
    public synchronized StringBuffer insert(int offset, char[] str) {
        this.toStringCache = null;
        super.insert(offset, str);
        return this;
    }

    @Override
    public StringBuffer insert(int dstOffset, CharSequence s10) {
        super.insert(dstOffset, s10);
        return this;
    }

    @Override
    public synchronized StringBuffer insert(int dstOffset, CharSequence s10, int start, int end) {
        this.toStringCache = null;
        super.insert(dstOffset, s10, start, end);
        return this;
    }

    @Override
    public StringBuffer insert(int offset, boolean b10) {
        super.insert(offset, b10);
        return this;
    }

    @Override
    public synchronized StringBuffer insert(int offset, char c10) {
        this.toStringCache = null;
        super.insert(offset, c10);
        return this;
    }

    @Override
    public StringBuffer insert(int offset, int i10) {
        super.insert(offset, i10);
        return this;
    }

    @Override
    public StringBuffer insert(int offset, long l10) {
        super.insert(offset, l10);
        return this;
    }

    @Override
    public StringBuffer insert(int offset, float f10) {
        super.insert(offset, f10);
        return this;
    }

    @Override
    public StringBuffer insert(int offset, double d10) {
        super.insert(offset, d10);
        return this;
    }

    @Override
    public int indexOf(String str) {
        return super.indexOf(str);
    }

    @Override
    public synchronized int indexOf(String str, int fromIndex) {
        return super.indexOf(str, fromIndex);
    }

    @Override
    public int lastIndexOf(String str) {
        return lastIndexOf(str, this.count);
    }

    @Override
    public synchronized int lastIndexOf(String str, int fromIndex) {
        return super.lastIndexOf(str, fromIndex);
    }

    @Override
    public synchronized StringBuffer reverse() {
        this.toStringCache = null;
        super.reverse();
        return this;
    }

    @Override
    public synchronized StringBuffer repeat(int codePoint, int count) {
        this.toStringCache = null;
        super.repeat(codePoint, count);
        return this;
    }

    @Override
    public synchronized StringBuffer repeat(CharSequence cs, int count) {
        this.toStringCache = null;
        super.repeat(cs, count);
        return this;
    }

    @Override
    @IntrinsicCandidate
    public synchronized String toString() {
        if (length() == 0) {
            return "";
        }
        if (this.toStringCache == null) {
            String str = new String(this, (Void) null);
            this.toStringCache = str;
            return str;
        }
        return new String(this.toStringCache);
    }

    private synchronized void writeObject(ObjectOutputStream s10) throws IOException {
        ObjectOutputStream.PutField fields = s10.putFields();
        char[] val = new char[capacity()];
        if (isLatin1()) {
            StringLatin1.getChars(this.value, 0, this.count, val, 0);
        } else {
            StringUTF16.getChars(this.value, 0, this.count, val, 0);
        }
        fields.put("value", val);
        fields.put(c.f98682m, this.count);
        fields.put(Environment.MEDIA_SHARED, false);
        s10.writeFields();
    }

    private void readObject(ObjectInputStream s10) throws IOException, ClassNotFoundException {
        ObjectInputStream.GetField fields = s10.readFields();
        char[] val = (char[]) fields.get("value", (Object) null);
        int c10 = fields.get(c.f98682m, 0);
        if (c10 < 0 || c10 > val.length) {
            throw new StreamCorruptedException("count value invalid");
        }
        initBytes(val, 0, val.length);
        this.count = c10;
    }

    @Override
    synchronized void getBytes(byte[] dst, int dstBegin, byte coder) {
        super.getBytes(dst, dstBegin, coder);
    }
}
