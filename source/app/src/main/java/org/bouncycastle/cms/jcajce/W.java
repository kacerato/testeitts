package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.InflaterInputStream;
import org.bouncycastle.util.io.StreamOverflowException;

public class W implements Qk.w {

    public final long f100858a;

    public class a implements Qk.v {

        public final C13486b f100859a;

        public a(C13486b c13486b) {
            this.f100859a = c13486b;
        }

        @Override
        public C13486b a() {
            return this.f100859a;
        }

        @Override
        public InputStream d(InputStream inputStream) {
            InflaterInputStream inflaterInputStream = new InflaterInputStream(inputStream);
            return W.this.f100858a >= 0 ? new b(inflaterInputStream, W.this.f100858a) : inflaterInputStream;
        }
    }

    public static class b extends FilterInputStream {

        public long f100861b;

        public b(InputStream inputStream, long j10) {
            super(inputStream);
            this.f100861b = j10;
        }

        /* JADX WARN: Code restructure failed: missing block: B:6:0x0019, code lost:
        
            if (r4 >= 0) goto L8;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int read() throws IOException {
            if (this.f100861b >= 0) {
                int read = this.f92730in.read();
                if (read >= 0) {
                    long j10 = this.f100861b - 1;
                    this.f100861b = j10;
                }
                return read;
            }
            throw new StreamOverflowException("expanded byte limit exceeded");
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            if (i11 < 1) {
                return super.read(bArr, i10, i11);
            }
            long j10 = this.f100861b;
            if (j10 < 1) {
                read();
                return -1;
            }
            if (j10 <= i11) {
                i11 = (int) j10;
            }
            int read = this.f92730in.read(bArr, i10, i11);
            if (read > 0) {
                this.f100861b -= read;
            }
            return read;
        }
    }

    public W() {
        this.f100858a = -1L;
    }

    @Override
    public Qk.v a(C13486b c13486b) {
        return new a(c13486b);
    }

    public W(long j10) {
        this.f100858a = j10;
    }
}
