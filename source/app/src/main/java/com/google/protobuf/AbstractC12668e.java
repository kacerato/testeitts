package com.google.protobuf;

import java.nio.ByteBuffer;

@B
public abstract class AbstractC12668e {

    public class a extends AbstractC12668e {

        public final ByteBuffer f69084a;

        public a(final ByteBuffer val$buffer) {
            this.f69084a = val$buffer;
        }

        @Override
        public byte[] a() {
            return this.f69084a.array();
        }

        @Override
        public int b() {
            return this.f69084a.arrayOffset();
        }

        @Override
        public boolean c() {
            return this.f69084a.hasArray();
        }

        @Override
        public boolean d() {
            return true;
        }

        @Override
        public int e() {
            return this.f69084a.limit();
        }

        @Override
        public ByteBuffer f() {
            return this.f69084a;
        }

        @Override
        public int g() {
            return this.f69084a.position();
        }

        @Override
        public AbstractC12668e h(int position) {
            F0.e(this.f69084a, position);
            return this;
        }

        @Override
        public int i() {
            return this.f69084a.remaining();
        }
    }

    public class b extends AbstractC12668e {

        public int f69085a;

        public final byte[] f69086b;

        public final int f69087c;

        public final int f69088d;

        public b(final byte[] val$bytes, final int val$offset, final int val$length) {
            this.f69086b = val$bytes;
            this.f69087c = val$offset;
            this.f69088d = val$length;
        }

        @Override
        public byte[] a() {
            return this.f69086b;
        }

        @Override
        public int b() {
            return this.f69087c;
        }

        @Override
        public boolean c() {
            return true;
        }

        @Override
        public boolean d() {
            return false;
        }

        @Override
        public int e() {
            return this.f69088d;
        }

        @Override
        public ByteBuffer f() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int g() {
            return this.f69085a;
        }

        @Override
        public AbstractC12668e h(int position) {
            if (position >= 0 && position <= this.f69088d) {
                this.f69085a = position;
                return this;
            }
            throw new IllegalArgumentException("Invalid position: " + position);
        }

        @Override
        public int i() {
            return this.f69088d - this.f69085a;
        }
    }

    public static AbstractC12668e j(final ByteBuffer buffer) {
        D0.e(buffer, "buffer");
        return new a(buffer);
    }

    public static AbstractC12668e k(byte[] bytes) {
        return m(bytes, 0, bytes.length);
    }

    public static AbstractC12668e l(final byte[] bytes, final int offset, final int length) {
        if (offset < 0 || length < 0 || offset + length > bytes.length) {
            throw new IndexOutOfBoundsException(String.format("bytes.length=%d, offset=%d, length=%d", Integer.valueOf(bytes.length), Integer.valueOf(offset), Integer.valueOf(length)));
        }
        return m(bytes, offset, length);
    }

    public static AbstractC12668e m(final byte[] bytes, final int offset, final int length) {
        return new b(bytes, offset, length);
    }

    public abstract byte[] a();

    public abstract int b();

    public abstract boolean c();

    public abstract boolean d();

    public abstract int e();

    public abstract ByteBuffer f();

    public abstract int g();

    @A
    public abstract AbstractC12668e h(int position);

    public abstract int i();
}
