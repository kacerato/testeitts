package org.bouncycastle.cms;

import fm.C13260d;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import oh.C14549x;

public class W {

    public static final int f100644c = 32768;

    public final C14549x f100645a;

    public InputStream f100646b;

    public static class a extends FilterInputStream {
        public a(InputStream inputStream) {
            super(inputStream);
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            if (i11 == 0) {
                return 0;
            }
            int h10 = C13260d.h(this.f92730in, bArr, i10, i11);
            if (h10 > 0) {
                return h10;
            }
            return -1;
        }
    }

    public W(InputStream inputStream) {
        this(Xh.t.f29014G1.J(), inputStream, 32768);
    }

    public void a() throws IOException {
        C13260d.a(this.f100646b);
        this.f100646b.close();
    }

    public InputStream b() {
        return this.f100646b;
    }

    public C14549x c() {
        return this.f100645a;
    }

    public W(String str, InputStream inputStream) {
        this(new C14549x(str), inputStream, 32768);
    }

    public W(String str, InputStream inputStream, int i10) {
        this(new C14549x(str), inputStream, i10);
    }

    public W(C14549x c14549x) {
        this.f100645a = c14549x;
    }

    public W(C14549x c14549x, InputStream inputStream) {
        this(c14549x, inputStream, 32768);
    }

    public W(C14549x c14549x, InputStream inputStream, int i10) {
        this.f100645a = c14549x;
        this.f100646b = new a(new BufferedInputStream(inputStream, i10));
    }
}
