package com.google.protobuf;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.protobuf.AbstractC12724x;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.eclipse.jdt.core.IJavaModelStatusConstants;

public final class H1 extends AbstractC12724x {

    public static final int[] f68741p = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, IJavaModelStatusConstants.TARGET_EXCEPTION, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};

    public static final long f68742q = 1;

    public final int f68743k;

    public final AbstractC12724x f68744l;

    public final AbstractC12724x f68745m;

    public final int f68746n;

    public final int f68747o;

    public class a extends AbstractC12724x.c {

        public final c f68748b;

        public AbstractC12724x.g f68749c = b();

        public a() {
            this.f68748b = new c(H1.this, null);
        }

        public final AbstractC12724x.g b() {
            if (this.f68748b.hasNext()) {
                return this.f68748b.next().iterator();
            }
            return null;
        }

        @Override
        public boolean hasNext() {
            return this.f68749c != null;
        }

        @Override
        public byte y() {
            AbstractC12724x.g gVar = this.f68749c;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            byte y10 = gVar.y();
            if (!this.f68749c.hasNext()) {
                this.f68749c = b();
            }
            return y10;
        }
    }

    public static final class c implements Iterator<AbstractC12724x.i> {

        public final ArrayDeque<H1> f68752b;

        public AbstractC12724x.i f68753c;

        public c(AbstractC12724x abstractC12724x, a aVar) {
            this(abstractC12724x);
        }

        public final AbstractC12724x.i a(AbstractC12724x root) {
            while (root instanceof H1) {
                H1 h12 = (H1) root;
                this.f68752b.push(h12);
                root = h12.f68744l;
            }
            return (AbstractC12724x.i) root;
        }

        public final AbstractC12724x.i b() {
            AbstractC12724x.i a10;
            do {
                ArrayDeque<H1> arrayDeque = this.f68752b;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                a10 = a(this.f68752b.pop().f68745m);
            } while (a10.isEmpty());
            return a10;
        }

        @Override
        public AbstractC12724x.i next() {
            AbstractC12724x.i iVar = this.f68753c;
            if (iVar == null) {
                throw new NoSuchElementException();
            }
            this.f68753c = b();
            return iVar;
        }

        @Override
        public boolean hasNext() {
            return this.f68753c != null;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public c(AbstractC12724x root) {
            if (root instanceof H1) {
                H1 h12 = (H1) root;
                ArrayDeque<H1> arrayDeque = new ArrayDeque<>(h12.F());
                this.f68752b = arrayDeque;
                arrayDeque.push(h12);
                this.f68753c = a(h12.f68744l);
                return;
            }
            this.f68752b = null;
            this.f68753c = (AbstractC12724x.i) root;
        }
    }

    public H1(AbstractC12724x abstractC12724x, AbstractC12724x abstractC12724x2, a aVar) {
        this(abstractC12724x, abstractC12724x2);
    }

    public static AbstractC12724x t0(AbstractC12724x left, AbstractC12724x right) {
        if (right.size() == 0) {
            return left;
        }
        if (left.size() == 0) {
            return right;
        }
        int size = left.size() + right.size();
        if (size < 128) {
            return u0(left, right);
        }
        if (left instanceof H1) {
            H1 h12 = (H1) left;
            if (h12.f68745m.size() + right.size() < 128) {
                return new H1(h12.f68744l, u0(h12.f68745m, right));
            }
            if (h12.f68744l.F() > h12.f68745m.F() && h12.F() > right.F()) {
                return new H1(h12.f68744l, new H1(h12.f68745m, right));
            }
        }
        return size >= w0(Math.max(left.F(), right.F()) + 1) ? new H1(left, right) : new b(null).b(left, right);
    }

    public static AbstractC12724x u0(AbstractC12724x left, AbstractC12724x right) {
        int size = left.size();
        int size2 = right.size();
        byte[] bArr = new byte[size + size2];
        left.z(bArr, 0, 0, size);
        right.z(bArr, 0, size, size2);
        return AbstractC12724x.k0(bArr);
    }

    public static int w0(int depth) {
        int[] iArr = f68741p;
        if (depth >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[depth];
    }

    public static H1 x0(AbstractC12724x left, AbstractC12724x right) {
        return new H1(left, right);
    }

    private void y0(ObjectInputStream in2) throws IOException {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    @Override
    public void A(byte[] target, int sourceOffset, int targetOffset, int numberToCopy) {
        int i10 = sourceOffset + numberToCopy;
        int i11 = this.f68746n;
        if (i10 <= i11) {
            this.f68744l.A(target, sourceOffset, targetOffset, numberToCopy);
        } else {
            if (sourceOffset >= i11) {
                this.f68745m.A(target, sourceOffset - i11, targetOffset, numberToCopy);
                return;
            }
            int i12 = i11 - sourceOffset;
            this.f68744l.A(target, sourceOffset, targetOffset, i12);
            this.f68745m.A(target, 0, targetOffset + i12, numberToCopy - i12);
        }
    }

    @Override
    public int F() {
        return this.f68747o;
    }

    @Override
    public byte H(int index) {
        int i10 = this.f68746n;
        return index < i10 ? this.f68744l.H(index) : this.f68745m.H(index - i10);
    }

    @Override
    public boolean I() {
        return this.f68743k >= w0(this.f68747o);
    }

    @Override
    public boolean J() {
        int S10 = this.f68744l.S(0, 0, this.f68746n);
        AbstractC12724x abstractC12724x = this.f68745m;
        return abstractC12724x.S(S10, 0, abstractC12724x.size()) == 0;
    }

    @Override
    public AbstractC12724x.g iterator() {
        return new a();
    }

    @Override
    public C N() {
        return C.n(c(), true);
    }

    @Override
    public InputStream O() {
        return new d();
    }

    @Override
    public int R(int h10, int offset, int length) {
        int i10 = offset + length;
        int i11 = this.f68746n;
        if (i10 <= i11) {
            return this.f68744l.R(h10, offset, length);
        }
        if (offset >= i11) {
            return this.f68745m.R(h10, offset - i11, length);
        }
        int i12 = i11 - offset;
        return this.f68745m.R(this.f68744l.R(h10, offset, i12), 0, length - i12);
    }

    @Override
    public int S(int state, int offset, int length) {
        int i10 = offset + length;
        int i11 = this.f68746n;
        if (i10 <= i11) {
            return this.f68744l.S(state, offset, length);
        }
        if (offset >= i11) {
            return this.f68745m.S(state, offset - i11, length);
        }
        int i12 = i11 - offset;
        return this.f68745m.S(this.f68744l.S(state, offset, i12), 0, length - i12);
    }

    @Override
    public AbstractC12724x a0(int beginIndex, int endIndex) {
        int l10 = AbstractC12724x.l(beginIndex, endIndex, this.f68743k);
        if (l10 == 0) {
            return AbstractC12724x.f69696g;
        }
        if (l10 == this.f68743k) {
            return this;
        }
        int i10 = this.f68746n;
        return endIndex <= i10 ? this.f68744l.a0(beginIndex, endIndex) : beginIndex >= i10 ? this.f68745m.a0(beginIndex - i10, endIndex - i10) : new H1(this.f68744l.Z(beginIndex), this.f68745m.a0(0, endIndex - this.f68746n));
    }

    @Override
    public ByteBuffer b() {
        return ByteBuffer.wrap(b0()).asReadOnlyBuffer();
    }

    @Override
    public List<ByteBuffer> c() {
        ArrayList arrayList = new ArrayList();
        c cVar = new c(this, null);
        while (cVar.hasNext()) {
            arrayList.add(cVar.next().b());
        }
        return arrayList;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AbstractC12724x)) {
            return false;
        }
        AbstractC12724x abstractC12724x = (AbstractC12724x) other;
        if (this.f68743k != abstractC12724x.size()) {
            return false;
        }
        if (this.f68743k == 0) {
            return true;
        }
        int T10 = T();
        int T11 = abstractC12724x.T();
        if (T10 == 0 || T11 == 0 || T10 == T11) {
            return v0(abstractC12724x);
        }
        return false;
    }

    @Override
    public String f0(Charset charset) {
        return new String(b0(), charset);
    }

    @Override
    public byte j(int index) {
        AbstractC12724x.k(index, this.f68743k);
        return H(index);
    }

    @Override
    public void m0(AbstractC12721w output) throws IOException {
        this.f68744l.m0(output);
        this.f68745m.m0(output);
    }

    @Override
    public void n0(OutputStream outputStream) throws IOException {
        this.f68744l.n0(outputStream);
        this.f68745m.n0(outputStream);
    }

    @Override
    public void p0(OutputStream out, int sourceOffset, int numberToWrite) throws IOException {
        int i10 = sourceOffset + numberToWrite;
        int i11 = this.f68746n;
        if (i10 <= i11) {
            this.f68744l.p0(out, sourceOffset, numberToWrite);
        } else {
            if (sourceOffset >= i11) {
                this.f68745m.p0(out, sourceOffset - i11, numberToWrite);
                return;
            }
            int i12 = i11 - sourceOffset;
            this.f68744l.p0(out, sourceOffset, i12);
            this.f68745m.p0(out, 0, numberToWrite - i12);
        }
    }

    @Override
    public void q0(AbstractC12721w output) throws IOException {
        this.f68745m.q0(output);
        this.f68744l.q0(output);
    }

    @Override
    public int size() {
        return this.f68743k;
    }

    public final boolean v0(AbstractC12724x abstractC12724x) {
        a aVar = null;
        c cVar = new c(this, aVar);
        AbstractC12724x.i next = cVar.next();
        c cVar2 = new c(abstractC12724x, aVar);
        AbstractC12724x.i next2 = cVar2.next();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int size = next.size() - i10;
            int size2 = next2.size() - i11;
            int min = Math.min(size, size2);
            if (!(i10 == 0 ? next.r0(next2, i11, min) : next2.r0(next, i10, min))) {
                return false;
            }
            i12 += min;
            int i13 = this.f68743k;
            if (i12 >= i13) {
                if (i12 == i13) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == size) {
                i10 = 0;
                next = cVar.next();
            } else {
                i10 += min;
                next = next;
            }
            if (min == size2) {
                next2 = cVar2.next();
                i11 = 0;
            } else {
                i11 += min;
            }
        }
    }

    @Override
    public void x(ByteBuffer target) {
        this.f68744l.x(target);
        this.f68745m.x(target);
    }

    public Object z0() {
        return AbstractC12724x.k0(b0());
    }

    public static class b {

        public final ArrayDeque<AbstractC12724x> f68751a;

        public b() {
            this.f68751a = new ArrayDeque<>();
        }

        public final AbstractC12724x b(AbstractC12724x left, AbstractC12724x right) {
            c(left);
            c(right);
            AbstractC12724x pop = this.f68751a.pop();
            while (!this.f68751a.isEmpty()) {
                pop = new H1(this.f68751a.pop(), pop, null);
            }
            return pop;
        }

        public final void c(AbstractC12724x root) {
            if (root.I()) {
                e(root);
                return;
            }
            if (root instanceof H1) {
                H1 h12 = (H1) root;
                c(h12.f68744l);
                c(h12.f68745m);
            } else {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + ((Object) root.getClass()));
            }
        }

        public final int d(int length) {
            int binarySearch = Arrays.binarySearch(H1.f68741p, length);
            return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
        }

        public final void e(AbstractC12724x byteString) {
            a aVar;
            int d10 = d(byteString.size());
            int w02 = H1.w0(d10 + 1);
            if (this.f68751a.isEmpty() || this.f68751a.peek().size() >= w02) {
                this.f68751a.push(byteString);
                return;
            }
            int w03 = H1.w0(d10);
            AbstractC12724x pop = this.f68751a.pop();
            while (true) {
                aVar = null;
                if (this.f68751a.isEmpty() || this.f68751a.peek().size() >= w03) {
                    break;
                } else {
                    pop = new H1(this.f68751a.pop(), pop, aVar);
                }
            }
            H1 h12 = new H1(pop, byteString, aVar);
            while (!this.f68751a.isEmpty()) {
                if (this.f68751a.peek().size() >= H1.w0(d(h12.size()) + 1)) {
                    break;
                } else {
                    h12 = new H1(this.f68751a.pop(), h12, aVar);
                }
            }
            this.f68751a.push(h12);
        }

        public b(a aVar) {
            this();
        }
    }

    public H1(AbstractC12724x left, AbstractC12724x right) {
        this.f68744l = left;
        this.f68745m = right;
        int size = left.size();
        this.f68746n = size;
        this.f68743k = size + right.size();
        this.f68747o = Math.max(left.F(), right.F()) + 1;
    }

    public class d extends InputStream {

        public c f68754b;

        public AbstractC12724x.i f68755c;

        public int f68756d;

        public int f68757e;

        public int f68758f;

        public int f68759g;

        public d() {
            e();
        }

        @Override
        public int available() throws IOException {
            return d();
        }

        public final void c() {
            if (this.f68755c != null) {
                int i10 = this.f68757e;
                int i11 = this.f68756d;
                if (i10 == i11) {
                    this.f68758f += i11;
                    this.f68757e = 0;
                    if (!this.f68754b.hasNext()) {
                        this.f68755c = null;
                        this.f68756d = 0;
                    } else {
                        AbstractC12724x.i next = this.f68754b.next();
                        this.f68755c = next;
                        this.f68756d = next.size();
                    }
                }
            }
        }

        public final int d() {
            return H1.this.size() - (this.f68758f + this.f68757e);
        }

        public final void e() {
            c cVar = new c(H1.this, null);
            this.f68754b = cVar;
            AbstractC12724x.i next = cVar.next();
            this.f68755c = next;
            this.f68756d = next.size();
            this.f68757e = 0;
            this.f68758f = 0;
        }

        public final int f(byte[] b10, int offset, int length) {
            int i10 = length;
            while (i10 > 0) {
                c();
                if (this.f68755c == null) {
                    break;
                }
                int min = Math.min(this.f68756d - this.f68757e, i10);
                if (b10 != null) {
                    this.f68755c.z(b10, this.f68757e, offset, min);
                    offset += min;
                }
                this.f68757e += min;
                i10 -= min;
            }
            return length - i10;
        }

        @Override
        public void mark(int readAheadLimit) {
            this.f68759g = this.f68758f + this.f68757e;
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public int read(byte[] b10, int offset, int length) {
            b10.getClass();
            if (offset >= 0 && length >= 0 && length <= b10.length - offset) {
                int f10 = f(b10, offset, length);
                if (f10 != 0) {
                    return f10;
                }
                if (length > 0 || d() == 0) {
                    return -1;
                }
                return f10;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override
        public synchronized void reset() {
            e();
            f(null, 0, this.f68759g);
        }

        @Override
        public long skip(long length) {
            if (length < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (length > 2147483647L) {
                length = 2147483647L;
            }
            return f(null, 0, (int) length);
        }

        @Override
        public int read() throws IOException {
            c();
            AbstractC12724x.i iVar = this.f68755c;
            if (iVar == null) {
                return -1;
            }
            int i10 = this.f68757e;
            this.f68757e = i10 + 1;
            return iVar.j(i10) & 255;
        }
    }
}
