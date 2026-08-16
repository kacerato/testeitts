package com.android.tools.r8.internal;

import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.function.Predicate;

public final class C9542t80 extends AbstractC9709u80 {

    public final FileChannel f52543i;

    public MappedByteBuffer f52544j;

    public final long f52545k;

    public final byte[] f52546l;

    public int f52547m;

    public int f52548n;

    public C9542t80(Path path, Predicate predicate, boolean z10) {
        super(predicate, z10);
        this.f52546l = new byte[8192];
        this.f52547m = 0;
        this.f52548n = 0;
        FileChannel open = FileChannel.open(path, StandardOpenOption.READ);
        this.f52543i = open;
        long size = open.size();
        this.f52545k = size;
        FileChannel.MapMode mapMode = FileChannel.MapMode.READ_ONLY;
        long j10 = this.f52547m;
        this.f52544j = open.map(mapMode, j10, Math.min(size - j10, 2147483647L));
    }

    @Override
    public final boolean b() {
        return this.f52548n == 8192;
    }

    @Override
    public final int c() {
        int i10 = this.f52548n;
        if (i10 > 0) {
            int i11 = i10 - 1;
            if (this.f52546l[i11] == 13) {
                return i11;
            }
        }
        return i10;
    }

    @Override
    public final void close() {
        this.f52543i.close();
    }

    @Override
    public final int d() {
        return 0;
    }

    @Override
    public final byte[] e() {
        if (this.f52547m >= this.f52545k) {
            return null;
        }
        this.f52548n = 0;
        while (this.f52547m < this.f52545k) {
            if (!this.f52544j.hasRemaining()) {
                FileChannel fileChannel = this.f52543i;
                FileChannel.MapMode mapMode = FileChannel.MapMode.READ_ONLY;
                long j10 = this.f52547m;
                this.f52544j = fileChannel.map(mapMode, j10, Math.min(this.f52545k - j10, 2147483647L));
            }
            this.f52547m++;
            byte b10 = this.f52544j.get();
            if (b10 == 10) {
                break;
            }
            byte[] bArr = this.f52546l;
            int i10 = this.f52548n;
            int i11 = i10 + 1;
            this.f52548n = i11;
            bArr[i10] = b10;
            if (i11 == 8192) {
                break;
            }
        }
        return this.f52546l;
    }
}
