package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

public class E0 extends InputStream {

    public Iterator<ByteBuffer> f68034b;

    public ByteBuffer f68035c;

    public int f68036d = 0;

    public int f68037e;

    public int f68038f;

    public boolean f68039g;

    public byte[] f68040h;

    public int f68041i;

    public long f68042j;

    public E0(Iterable<ByteBuffer> data) {
        this.f68034b = data.iterator();
        for (ByteBuffer byteBuffer : data) {
            this.f68036d++;
        }
        this.f68037e = -1;
        if (c()) {
            return;
        }
        this.f68035c = D0.f67926f;
        this.f68037e = 0;
        this.f68038f = 0;
        this.f68042j = 0L;
    }

    public final boolean c() {
        this.f68037e++;
        if (!this.f68034b.hasNext()) {
            return false;
        }
        ByteBuffer next = this.f68034b.next();
        this.f68035c = next;
        this.f68038f = next.position();
        if (this.f68035c.hasArray()) {
            this.f68039g = true;
            this.f68040h = this.f68035c.array();
            this.f68041i = this.f68035c.arrayOffset();
        } else {
            this.f68039g = false;
            this.f68042j = x2.k(this.f68035c);
            this.f68040h = null;
        }
        return true;
    }

    public final void d(int numberOfBytesRead) {
        int i10 = this.f68038f + numberOfBytesRead;
        this.f68038f = i10;
        if (i10 == this.f68035c.limit()) {
            c();
        }
    }

    @Override
    public int read() throws IOException {
        if (this.f68037e == this.f68036d) {
            return -1;
        }
        if (this.f68039g) {
            int i10 = this.f68040h[this.f68038f + this.f68041i] & 255;
            d(1);
            return i10;
        }
        int A10 = x2.A(this.f68038f + this.f68042j) & 255;
        d(1);
        return A10;
    }

    @Override
    public int read(byte[] output, int offset, int length) throws IOException {
        if (this.f68037e == this.f68036d) {
            return -1;
        }
        int limit = this.f68035c.limit();
        int i10 = this.f68038f;
        int i11 = limit - i10;
        if (length > i11) {
            length = i11;
        }
        if (this.f68039g) {
            System.arraycopy(this.f68040h, i10 + this.f68041i, output, offset, length);
            d(length);
        } else {
            int position = this.f68035c.position();
            F0.e(this.f68035c, this.f68038f);
            this.f68035c.get(output, offset, length);
            F0.e(this.f68035c, position);
            d(length);
        }
        return length;
    }
}
