package com.google.protobuf;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;

@B
public abstract class AbstractC12724x implements Iterable<Byte>, Serializable {

    public static final long f69692c = 1;

    public static final int f69693d = 128;

    public static final int f69694e = 256;

    public static final int f69695f = 8192;

    public static final AbstractC12724x f69696g = new j(D0.f67925e);

    public static final f f69697h;

    public static final int f69698i = 255;

    public static final Comparator<AbstractC12724x> f69699j;

    public int f69700b = 0;

    public class a extends c {

        public int f69701b = 0;

        public final int f69702c;

        public a() {
            this.f69702c = AbstractC12724x.this.size();
        }

        @Override
        public boolean hasNext() {
            return this.f69701b < this.f69702c;
        }

        @Override
        public byte y() {
            int i10 = this.f69701b;
            if (i10 >= this.f69702c) {
                throw new NoSuchElementException();
            }
            this.f69701b = i10 + 1;
            return AbstractC12724x.this.H(i10);
        }
    }

    public class b implements Comparator<AbstractC12724x> {
        @Override
        public int compare(AbstractC12724x former, AbstractC12724x latter) {
            g it = former.iterator();
            g it2 = latter.iterator();
            while (it.hasNext() && it2.hasNext()) {
                int compareTo = Integer.valueOf(AbstractC12724x.c0(it.y())).compareTo(Integer.valueOf(AbstractC12724x.c0(it2.y())));
                if (compareTo != 0) {
                    return compareTo;
                }
            }
            return Integer.valueOf(former.size()).compareTo(Integer.valueOf(latter.size()));
        }
    }

    public static abstract class c implements g {
        @Override
        public final Byte next() {
            return Byte.valueOf(y());
        }

        @Override
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static final class d implements f {
        public d() {
        }

        @Override
        public byte[] a(byte[] bytes, int offset, int size) {
            return Arrays.copyOfRange(bytes, offset, size + offset);
        }

        public d(a aVar) {
            this();
        }
    }

    public static final class e extends j {

        public static final long f69704p = 1;

        public final int f69705n;

        public final int f69706o;

        public e(byte[] bytes, int offset, int length) {
            super(bytes);
            AbstractC12724x.l(offset, offset + length, bytes.length);
            this.f69705n = offset;
            this.f69706o = length;
        }

        @Override
        public void A(byte[] target, int sourceOffset, int targetOffset, int numberToCopy) {
            System.arraycopy(this.f69711l, s0() + sourceOffset, target, targetOffset, numberToCopy);
        }

        @Override
        public byte H(int index) {
            return this.f69711l[this.f69705n + index];
        }

        @Override
        public byte j(int index) {
            AbstractC12724x.k(index, size());
            return this.f69711l[this.f69705n + index];
        }

        @Override
        public int s0() {
            return this.f69705n;
        }

        @Override
        public int size() {
            return this.f69706o;
        }

        public final void t0(ObjectInputStream in2) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        public Object u0() {
            return AbstractC12724x.k0(b0());
        }
    }

    public interface f {
        byte[] a(byte[] bytes, int offset, int size);
    }

    public interface g extends Iterator<Byte> {
        byte y();
    }

    public static final class h {

        public final CodedOutputStream f69707a;

        public final byte[] f69708b;

        public h(int i10, a aVar) {
            this(i10);
        }

        public AbstractC12724x a() {
            this.f69707a.Z();
            return new j(this.f69708b);
        }

        public CodedOutputStream b() {
            return this.f69707a;
        }

        public h(int size) {
            byte[] bArr = new byte[size];
            this.f69708b = bArr;
            this.f69707a = CodedOutputStream.n1(bArr);
        }
    }

    public static abstract class i extends AbstractC12724x {

        public static final long f69709k = 1;

        @Override
        public final int F() {
            return 0;
        }

        @Override
        public final boolean I() {
            return true;
        }

        @Override
        public void q0(AbstractC12721w byteOutput) throws IOException {
            m0(byteOutput);
        }

        public abstract boolean r0(AbstractC12724x other, int offset, int length);
    }

    public static class j extends i {

        public static final long f69710m = 1;

        public final byte[] f69711l;

        public j(byte[] bytes) {
            bytes.getClass();
            this.f69711l = bytes;
        }

        @Override
        public void A(byte[] target, int sourceOffset, int targetOffset, int numberToCopy) {
            System.arraycopy(this.f69711l, sourceOffset, target, targetOffset, numberToCopy);
        }

        @Override
        public byte H(int index) {
            return this.f69711l[index];
        }

        @Override
        public final boolean J() {
            int s02 = s0();
            return Utf8.u(this.f69711l, s02, size() + s02);
        }

        @Override
        public final C N() {
            return C.s(this.f69711l, s0(), size(), true);
        }

        @Override
        public final InputStream O() {
            return new ByteArrayInputStream(this.f69711l, s0(), size());
        }

        @Override
        public final int R(int h10, int offset, int length) {
            return D0.w(h10, this.f69711l, s0() + offset, length);
        }

        @Override
        public final int S(int state, int offset, int length) {
            int s02 = s0() + offset;
            return Utf8.w(state, this.f69711l, s02, length + s02);
        }

        @Override
        public final AbstractC12724x a0(int beginIndex, int endIndex) {
            int l10 = AbstractC12724x.l(beginIndex, endIndex, size());
            return l10 == 0 ? AbstractC12724x.f69696g : new e(this.f69711l, s0() + beginIndex, l10);
        }

        @Override
        public final ByteBuffer b() {
            return ByteBuffer.wrap(this.f69711l, s0(), size()).asReadOnlyBuffer();
        }

        @Override
        public final List<ByteBuffer> c() {
            return Collections.singletonList(b());
        }

        @Override
        public final boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AbstractC12724x) || size() != ((AbstractC12724x) other).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(other instanceof j)) {
                return other.equals(this);
            }
            j jVar = (j) other;
            int T10 = T();
            int T11 = jVar.T();
            if (T10 == 0 || T11 == 0 || T10 == T11) {
                return r0(jVar, 0, size());
            }
            return false;
        }

        @Override
        public final String f0(Charset charset) {
            return new String(this.f69711l, s0(), size(), charset);
        }

        @Override
        public byte j(int index) {
            return this.f69711l[index];
        }

        @Override
        public final void m0(AbstractC12721w output) throws IOException {
            output.X(this.f69711l, s0(), size());
        }

        @Override
        public final void n0(OutputStream outputStream) throws IOException {
            outputStream.write(b0());
        }

        @Override
        public final void p0(OutputStream outputStream, int sourceOffset, int numberToWrite) throws IOException {
            outputStream.write(this.f69711l, s0() + sourceOffset, numberToWrite);
        }

        @Override
        public final boolean r0(AbstractC12724x other, int offset, int length) {
            if (length > other.size()) {
                throw new IllegalArgumentException("Length too large: " + length + size());
            }
            int i10 = offset + length;
            if (i10 > other.size()) {
                throw new IllegalArgumentException("Ran off end of other: " + offset + ", " + length + ", " + other.size());
            }
            if (!(other instanceof j)) {
                return other.a0(offset, i10).equals(a0(0, length));
            }
            j jVar = (j) other;
            byte[] bArr = this.f69711l;
            byte[] bArr2 = jVar.f69711l;
            int s02 = s0() + length;
            int s03 = s0();
            int s04 = jVar.s0() + offset;
            while (s03 < s02) {
                if (bArr[s03] != bArr2[s04]) {
                    return false;
                }
                s03++;
                s04++;
            }
            return true;
        }

        public int s0() {
            return 0;
        }

        @Override
        public int size() {
            return this.f69711l.length;
        }

        @Override
        public final void x(ByteBuffer target) {
            target.put(this.f69711l, s0(), size());
        }
    }

    public static final class l implements f {
        public l() {
        }

        @Override
        public byte[] a(byte[] bytes, int offset, int size) {
            byte[] bArr = new byte[size];
            System.arraycopy(bytes, offset, bArr, 0, size);
            return bArr;
        }

        public l(a aVar) {
            this();
        }
    }

    static {
        a aVar = null;
        f69697h = C12671f.c() ? new l(aVar) : new d(aVar);
        f69699j = new b();
    }

    public static final AbstractC12724x B() {
        return f69696g;
    }

    public static int D(String hexString, int index) {
        int G10 = G(hexString.charAt(index));
        if (G10 != -1) {
            return G10;
        }
        throw new NumberFormatException("Invalid hexString " + hexString + " must only contain [0-9a-fA-F] but contained " + hexString.charAt(index) + " at index " + index);
    }

    public static AbstractC12724x E(@F String hexString) {
        if (hexString.length() % 2 != 0) {
            throw new NumberFormatException("Invalid hexString " + hexString + " of length " + hexString.length() + " must be even.");
        }
        int length = hexString.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) (D(hexString, i11 + 1) | (D(hexString, i11) << 4));
        }
        return new j(bArr);
    }

    public static int G(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        if (c10 >= 'A' && c10 <= 'F') {
            return c10 - '7';
        }
        if (c10 < 'a' || c10 > 'f') {
            return -1;
        }
        return c10 - 'W';
    }

    public static h M(int size) {
        return new h(size, null);
    }

    public static k P() {
        return new k(128);
    }

    public static k Q(int initialCapacity) {
        return new k(initialCapacity);
    }

    public static AbstractC12724x U(InputStream in2, final int chunkSize) throws IOException {
        byte[] bArr = new byte[chunkSize];
        int i10 = 0;
        while (i10 < chunkSize) {
            int read = in2.read(bArr, i10, chunkSize - i10);
            if (read == -1) {
                break;
            }
            i10 += read;
        }
        if (i10 == 0) {
            return null;
        }
        return v(bArr, 0, i10);
    }

    public static AbstractC12724x V(InputStream streamToDrain) throws IOException {
        return X(streamToDrain, 256, 8192);
    }

    public static AbstractC12724x W(InputStream streamToDrain, int chunkSize) throws IOException {
        return X(streamToDrain, chunkSize, chunkSize);
    }

    public static AbstractC12724x X(InputStream streamToDrain, int minChunkSize, int maxChunkSize) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            AbstractC12724x U10 = U(streamToDrain, minChunkSize);
            if (U10 == null) {
                return n(arrayList);
            }
            arrayList.add(U10);
            minChunkSize = Math.min(minChunkSize * 2, maxChunkSize);
        }
    }

    public static int c0(byte value) {
        return value & 255;
    }

    public static AbstractC12724x d(Iterator<AbstractC12724x> iterator, int length) {
        if (length < 1) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(length)));
        }
        if (length == 1) {
            return iterator.next();
        }
        int i10 = length >>> 1;
        return d(iterator, i10).m(d(iterator, length - i10));
    }

    public static Comparator<AbstractC12724x> i0() {
        return f69699j;
    }

    public static AbstractC12724x j0(ByteBuffer buffer) {
        if (!buffer.hasArray()) {
            return new C12708r1(buffer);
        }
        return l0(buffer.array(), buffer.arrayOffset() + buffer.position(), buffer.remaining());
    }

    public static void k(int index, int size) {
        if (((size - (index + 1)) | index) < 0) {
            if (index < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + index);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + index + ", " + size);
        }
    }

    public static AbstractC12724x k0(byte[] bytes) {
        return new j(bytes);
    }

    @A
    public static int l(int startIndex, int endIndex, int size) {
        int i10 = endIndex - startIndex;
        if ((startIndex | endIndex | i10 | (size - endIndex)) >= 0) {
            return i10;
        }
        if (startIndex < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + startIndex + " < 0");
        }
        if (endIndex < startIndex) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + startIndex + ", " + endIndex);
        }
        throw new IndexOutOfBoundsException("End index: " + endIndex + " >= " + size);
    }

    public static AbstractC12724x l0(byte[] bytes, int offset, int length) {
        return new e(bytes, offset, length);
    }

    public static AbstractC12724x n(Iterable<AbstractC12724x> byteStrings) {
        int size;
        if (byteStrings instanceof Collection) {
            size = ((Collection) byteStrings).size();
        } else {
            Iterator<AbstractC12724x> it = byteStrings.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        }
        return size == 0 ? f69696g : d(byteStrings.iterator(), size);
    }

    public static AbstractC12724x o(String text, String charsetName) throws UnsupportedEncodingException {
        return new j(text.getBytes(charsetName));
    }

    public static AbstractC12724x p(String text, Charset charset) {
        return new j(text.getBytes(charset));
    }

    public static AbstractC12724x r(ByteBuffer bytes) {
        return s(bytes, bytes.remaining());
    }

    public static AbstractC12724x s(ByteBuffer bytes, int size) {
        l(0, size, bytes.remaining());
        byte[] bArr = new byte[size];
        bytes.get(bArr);
        return new j(bArr);
    }

    public static AbstractC12724x u(byte[] bytes) {
        return v(bytes, 0, bytes.length);
    }

    public static AbstractC12724x v(byte[] bytes, int offset, int size) {
        l(offset, offset + size, bytes.length);
        return new j(f69697h.a(bytes, offset, size));
    }

    public static AbstractC12724x w(String text) {
        return new j(text.getBytes(D0.f67922b));
    }

    public abstract void A(byte[] target, int sourceOffset, int targetOffset, int numberToCopy);

    public final boolean C(AbstractC12724x suffix) {
        return size() >= suffix.size() && Z(size() - suffix.size()).equals(suffix);
    }

    public abstract int F();

    public abstract byte H(int index);

    public abstract boolean I();

    public abstract boolean J();

    @Override
    public g iterator() {
        return new a();
    }

    public abstract C N();

    public abstract InputStream O();

    public abstract int R(int h10, int offset, int length);

    public abstract int S(int state, int offset, int length);

    public final int T() {
        return this.f69700b;
    }

    public final boolean Y(AbstractC12724x prefix) {
        return size() >= prefix.size() && a0(0, prefix.size()).equals(prefix);
    }

    public final AbstractC12724x Z(int beginIndex) {
        return a0(beginIndex, size());
    }

    public abstract AbstractC12724x a0(int beginIndex, int endIndex);

    public abstract ByteBuffer b();

    public final byte[] b0() {
        int size = size();
        if (size == 0) {
            return D0.f67925e;
        }
        byte[] bArr = new byte[size];
        A(bArr, 0, 0, size);
        return bArr;
    }

    public abstract List<ByteBuffer> c();

    public final String d0(String charsetName) throws UnsupportedEncodingException {
        try {
            return e0(Charset.forName(charsetName));
        } catch (UnsupportedCharsetException e10) {
            UnsupportedEncodingException unsupportedEncodingException = new UnsupportedEncodingException(charsetName);
            unsupportedEncodingException.initCause(e10);
            throw unsupportedEncodingException;
        }
    }

    public final String e0(Charset charset) {
        return size() == 0 ? "" : f0(charset);
    }

    public abstract boolean equals(Object o10);

    public abstract String f0(Charset charset);

    public final String g0() {
        return e0(D0.f67922b);
    }

    public final String h0() {
        if (size() <= 50) {
            return C12664c2.a(this);
        }
        return C12664c2.a(a0(0, 47)) + "...";
    }

    public final int hashCode() {
        int i10 = this.f69700b;
        if (i10 == 0) {
            int size = size();
            i10 = R(size, 0, size);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f69700b = i10;
        }
        return i10;
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract byte j(int index);

    public final AbstractC12724x m(AbstractC12724x other) {
        if (Integer.MAX_VALUE - size() >= other.size()) {
            return H1.t0(this, other);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + size() + "+" + other.size());
    }

    public abstract void m0(AbstractC12721w byteOutput) throws IOException;

    public abstract void n0(OutputStream out) throws IOException;

    public final void o0(OutputStream out, int sourceOffset, int numberToWrite) throws IOException {
        l(sourceOffset, sourceOffset + numberToWrite, size());
        if (numberToWrite > 0) {
            p0(out, sourceOffset, numberToWrite);
        }
    }

    public abstract void p0(OutputStream out, int sourceOffset, int numberToWrite) throws IOException;

    public abstract void q0(AbstractC12721w byteOutput) throws IOException;

    public abstract int size();

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), h0());
    }

    public abstract void x(ByteBuffer target);

    public void y(byte[] target, int offset) {
        z(target, 0, offset, size());
    }

    @Deprecated
    public final void z(byte[] target, int sourceOffset, int targetOffset, int numberToCopy) {
        l(sourceOffset, sourceOffset + numberToCopy, size());
        l(targetOffset, targetOffset + numberToCopy, target.length);
        if (numberToCopy > 0) {
            A(target, sourceOffset, targetOffset, numberToCopy);
        }
    }

    public static final class k extends OutputStream {

        public static final byte[] f69712g = new byte[0];

        public final int f69713b;

        public final ArrayList<AbstractC12724x> f69714c;

        public int f69715d;

        public byte[] f69716e;

        public int f69717f;

        public k(int initialCapacity) {
            if (initialCapacity < 0) {
                throw new IllegalArgumentException("Buffer size < 0");
            }
            this.f69713b = initialCapacity;
            this.f69714c = new ArrayList<>();
            this.f69716e = new byte[initialCapacity];
        }

        public final void a(int minSize) {
            this.f69714c.add(new j(this.f69716e));
            int length = this.f69715d + this.f69716e.length;
            this.f69715d = length;
            this.f69716e = new byte[Math.max(this.f69713b, Math.max(minSize, length >>> 1))];
            this.f69717f = 0;
        }

        public final void c() {
            int i10 = this.f69717f;
            byte[] bArr = this.f69716e;
            if (i10 >= bArr.length) {
                this.f69714c.add(new j(this.f69716e));
                this.f69716e = f69712g;
            } else if (i10 > 0) {
                this.f69714c.add(new j(Arrays.copyOf(bArr, i10)));
            }
            this.f69715d += this.f69717f;
            this.f69717f = 0;
        }

        public synchronized void d() {
            this.f69714c.clear();
            this.f69715d = 0;
            this.f69717f = 0;
        }

        public synchronized int e() {
            return this.f69715d + this.f69717f;
        }

        public synchronized AbstractC12724x f() {
            c();
            return AbstractC12724x.n(this.f69714c);
        }

        public void g(OutputStream out) throws IOException {
            int i10;
            AbstractC12724x[] abstractC12724xArr;
            byte[] bArr;
            int i11;
            synchronized (this) {
                abstractC12724xArr = (AbstractC12724x[]) this.f69714c.toArray(new AbstractC12724x[0]);
                bArr = this.f69716e;
                i11 = this.f69717f;
            }
            for (AbstractC12724x abstractC12724x : abstractC12724xArr) {
                abstractC12724x.n0(out);
            }
            out.write(Arrays.copyOf(bArr, i11));
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(e()));
        }

        @Override
        public synchronized void write(int b10) {
            try {
                if (this.f69717f == this.f69716e.length) {
                    a(1);
                }
                byte[] bArr = this.f69716e;
                int i10 = this.f69717f;
                this.f69717f = i10 + 1;
                bArr[i10] = (byte) b10;
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override
        public synchronized void write(byte[] b10, int offset, int length) {
            try {
                byte[] bArr = this.f69716e;
                int length2 = bArr.length;
                int i10 = this.f69717f;
                if (length <= length2 - i10) {
                    System.arraycopy(b10, offset, bArr, i10, length);
                    this.f69717f += length;
                } else {
                    int length3 = bArr.length - i10;
                    System.arraycopy(b10, offset, bArr, i10, length3);
                    int i11 = length - length3;
                    a(i11);
                    System.arraycopy(b10, offset + length3, this.f69716e, 0, i11);
                    this.f69717f = i11;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
