package com.android.tools.r8.internal;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.Objects;

public final class C6180Xb extends Reader {

    public String f45761a;

    public int f45762b;

    public int f45763c;

    public C6180Xb(String str) {
        str.getClass();
        this.f45761a = str;
    }

    public final void c() {
        if (this.f45761a == null) {
            throw new IOException("reader closed");
        }
    }

    @Override
    public final synchronized void close() {
        this.f45761a = null;
    }

    @Override
    public final synchronized void mark(int i10) {
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(AbstractC4885Aq0.a("readAheadLimit (%s) may not be negative", Integer.valueOf(i10)));
        }
        c();
        this.f45763c = this.f45762b;
    }

    @Override
    public final boolean markSupported() {
        return true;
    }

    @Override
    public final synchronized int read() {
        c();
        Objects.requireNonNull(this.f45761a);
        Objects.requireNonNull(this.f45761a);
        int length = this.f45761a.length();
        int i10 = this.f45762b;
        if (length - i10 <= 0) {
            return -1;
        }
        String str = this.f45761a;
        this.f45762b = i10 + 1;
        return str.charAt(i10);
    }

    @Override
    public final synchronized boolean ready() {
        c();
        return true;
    }

    @Override
    public final synchronized void reset() {
        c();
        this.f45762b = this.f45763c;
    }

    @Override
    public final synchronized long skip(long j10) {
        int min;
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(AbstractC4885Aq0.a("n (%s) may not be negative", Long.valueOf(j10)));
        }
        c();
        Objects.requireNonNull(this.f45761a);
        min = (int) Math.min(this.f45761a.length() - this.f45762b, j10);
        this.f45762b += min;
        return min;
    }

    @Override
    public final synchronized int read(char[] cArr, int i10, int i11) {
        U60.a(i10, i10 + i11, cArr.length);
        c();
        Objects.requireNonNull(this.f45761a);
        Objects.requireNonNull(this.f45761a);
        if (this.f45761a.length() - this.f45762b <= 0) {
            return -1;
        }
        Objects.requireNonNull(this.f45761a);
        int min = Math.min(i11, this.f45761a.length() - this.f45762b);
        for (int i12 = 0; i12 < min; i12++) {
            String str = this.f45761a;
            int i13 = this.f45762b;
            this.f45762b = i13 + 1;
            cArr[i10 + i12] = str.charAt(i13);
        }
        return min;
    }

    @Override
    public final synchronized int read(CharBuffer charBuffer) {
        charBuffer.getClass();
        c();
        Objects.requireNonNull(this.f45761a);
        Objects.requireNonNull(this.f45761a);
        if (this.f45761a.length() - this.f45762b <= 0) {
            return -1;
        }
        int remaining = charBuffer.remaining();
        Objects.requireNonNull(this.f45761a);
        int min = Math.min(remaining, this.f45761a.length() - this.f45762b);
        for (int i10 = 0; i10 < min; i10++) {
            String str = this.f45761a;
            int i11 = this.f45762b;
            this.f45762b = i11 + 1;
            charBuffer.put(str.charAt(i11));
        }
        return min;
    }
}
