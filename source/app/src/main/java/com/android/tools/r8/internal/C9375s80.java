package com.android.tools.r8.internal;

import java.io.InputStream;
import java.util.function.Predicate;

public final class C9375s80 extends AbstractC9709u80 {

    public final InputStream f52285i;

    public final byte[] f52286j;

    public int f52287k;

    public int f52288l;

    public int f52289m;

    public int f52290n;

    public C9375s80(InputStream inputStream, Predicate predicate, boolean z10) {
        super(predicate, z10);
        this.f52286j = new byte[8192];
        this.f52287k = 8192;
        this.f52288l = 0;
        this.f52289m = 0;
        this.f52290n = 0;
        this.f52285i = inputStream;
    }

    @Override
    public final boolean b() {
        return this.f52290n == this.f52289m;
    }

    @Override
    public final int c() {
        int i10 = this.f52289m;
        if (i10 > 0) {
            int i11 = i10 - 1;
            if (this.f52286j[i11] == 13) {
                return i11;
            }
        }
        return i10;
    }

    @Override
    public final void close() {
        this.f52285i.close();
    }

    @Override
    public final int d() {
        return this.f52288l;
    }

    @Override
    public final byte[] e() {
        int i10;
        boolean z10 = false;
        if (this.f52287k >= this.f52290n) {
            int read = this.f52285i.read(this.f52286j);
            this.f52290n = read;
            if (read == -1) {
                return null;
            }
            this.f52287k = 0;
        }
        int i11 = this.f52287k;
        this.f52288l = i11;
        this.f52289m = i11;
        while (true) {
            i10 = this.f52289m;
            if (i10 >= this.f52290n) {
                break;
            }
            if (this.f52286j[i10] == 10) {
                z10 = true;
                break;
            }
            this.f52289m = i10 + 1;
        }
        this.f52287k = i10;
        if (z10) {
            this.f52287k = i10 + 1;
        }
        return this.f52286j;
    }
}
