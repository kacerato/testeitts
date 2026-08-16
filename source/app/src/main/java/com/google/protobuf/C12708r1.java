package com.google.protobuf;

import com.google.protobuf.AbstractC12724x;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.InvalidMarkException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;

public final class C12708r1 extends AbstractC12724x.i {

    public final ByteBuffer f69452l;

    public C12708r1(ByteBuffer buffer) {
        D0.e(buffer, "buffer");
        this.f69452l = buffer.slice().order(ByteOrder.nativeOrder());
    }

    private void t0(ObjectInputStream in2) throws IOException {
        throw new InvalidObjectException("NioByteString instances are not to be serialized directly");
    }

    private Object v0() {
        return AbstractC12724x.r(this.f69452l.slice());
    }

    @Override
    public void A(byte[] target, int sourceOffset, int targetOffset, int numberToCopy) {
        ByteBuffer slice = this.f69452l.slice();
        F0.e(slice, sourceOffset);
        slice.get(target, targetOffset, numberToCopy);
    }

    @Override
    public byte H(int index) {
        return j(index);
    }

    @Override
    public boolean J() {
        return Utf8.s(this.f69452l);
    }

    @Override
    public C N() {
        return C.p(this.f69452l, true);
    }

    @Override
    public InputStream O() {
        return new a();
    }

    @Override
    public int R(int h10, int offset, int length) {
        for (int i10 = offset; i10 < offset + length; i10++) {
            h10 = (h10 * 31) + this.f69452l.get(i10);
        }
        return h10;
    }

    @Override
    public int S(int state, int offset, int length) {
        return Utf8.v(state, this.f69452l, offset, length + offset);
    }

    @Override
    public AbstractC12724x a0(int beginIndex, int endIndex) {
        try {
            return new C12708r1(u0(beginIndex, endIndex));
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new ArrayIndexOutOfBoundsException(e11.getMessage());
        }
    }

    @Override
    public ByteBuffer b() {
        return this.f69452l.asReadOnlyBuffer();
    }

    @Override
    public List<ByteBuffer> c() {
        return Collections.singletonList(b());
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
        if (size() != abstractC12724x.size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        return other instanceof C12708r1 ? this.f69452l.equals(((C12708r1) other).f69452l) : other instanceof H1 ? other.equals(this) : this.f69452l.equals(abstractC12724x.b());
    }

    @Override
    public String f0(Charset charset) {
        byte[] b02;
        int length;
        int i10;
        if (this.f69452l.hasArray()) {
            b02 = this.f69452l.array();
            i10 = this.f69452l.arrayOffset() + this.f69452l.position();
            length = this.f69452l.remaining();
        } else {
            b02 = b0();
            length = b02.length;
            i10 = 0;
        }
        return new String(b02, i10, length, charset);
    }

    @Override
    public byte j(int index) {
        try {
            return this.f69452l.get(index);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new ArrayIndexOutOfBoundsException(e11.getMessage());
        }
    }

    @Override
    public void m0(AbstractC12721w output) throws IOException {
        output.W(this.f69452l.slice());
    }

    @Override
    public void n0(OutputStream out) throws IOException {
        out.write(b0());
    }

    @Override
    public void p0(OutputStream out, int sourceOffset, int numberToWrite) throws IOException {
        if (!this.f69452l.hasArray()) {
            C12718v.h(u0(sourceOffset, numberToWrite + sourceOffset), out);
        } else {
            out.write(this.f69452l.array(), this.f69452l.arrayOffset() + this.f69452l.position() + sourceOffset, numberToWrite);
        }
    }

    @Override
    public boolean r0(AbstractC12724x other, int offset, int length) {
        return a0(0, length).equals(other.a0(offset, length + offset));
    }

    @Override
    public int size() {
        return this.f69452l.remaining();
    }

    public final ByteBuffer u0(int beginIndex, int endIndex) {
        if (beginIndex < this.f69452l.position() || endIndex > this.f69452l.limit() || beginIndex > endIndex) {
            throw new IllegalArgumentException(String.format("Invalid indices [%d, %d]", Integer.valueOf(beginIndex), Integer.valueOf(endIndex)));
        }
        ByteBuffer slice = this.f69452l.slice();
        F0.e(slice, beginIndex - this.f69452l.position());
        F0.c(slice, endIndex - this.f69452l.position());
        return slice;
    }

    @Override
    public void x(ByteBuffer target) {
        target.put(this.f69452l.slice());
    }

    public class a extends InputStream {

        public final ByteBuffer f69453b;

        public a() {
            this.f69453b = C12708r1.this.f69452l.slice();
        }

        @Override
        public int available() throws IOException {
            return this.f69453b.remaining();
        }

        @Override
        public void mark(int readlimit) {
            F0.d(this.f69453b);
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public int read() throws IOException {
            if (this.f69453b.hasRemaining()) {
                return this.f69453b.get() & 255;
            }
            return -1;
        }

        @Override
        public void reset() throws IOException {
            try {
                F0.f(this.f69453b);
            } catch (InvalidMarkException e10) {
                throw new IOException(e10);
            }
        }

        @Override
        public int read(byte[] bytes, int off, int len) throws IOException {
            if (!this.f69453b.hasRemaining()) {
                return -1;
            }
            int min = Math.min(len, this.f69453b.remaining());
            this.f69453b.get(bytes, off, min);
            return min;
        }
    }
}
