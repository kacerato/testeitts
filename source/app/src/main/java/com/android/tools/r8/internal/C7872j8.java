package com.android.tools.r8.internal;

import java.io.OutputStream;
import java.util.ArrayList;

public final class C7872j8 extends OutputStream {

    public static final byte[] f49164f = new byte[0];

    public int f49167c;

    public int f49169e;

    public final int f49165a = 128;

    public final ArrayList f49166b = new ArrayList();

    public byte[] f49168d = new byte[128];

    public final synchronized AbstractC8206l8 c() {
        try {
            int i10 = this.f49169e;
            byte[] bArr = this.f49168d;
            int i11 = 0;
            if (i10 >= bArr.length) {
                this.f49166b.add(new ET(bArr));
                this.f49168d = f49164f;
            } else if (i10 > 0) {
                byte[] bArr2 = new byte[i10];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i10));
                this.f49166b.add(new ET(bArr2));
            }
            this.f49167c += this.f49169e;
            this.f49169e = 0;
            ArrayList arrayList = this.f49166b;
            if (arrayList == null) {
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    arrayList2.add((AbstractC8206l8) obj);
                }
                arrayList = arrayList2;
            }
            if (arrayList.isEmpty()) {
                return AbstractC8206l8.f49897b;
            }
            return AbstractC8206l8.a(arrayList.iterator(), arrayList.size());
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final String toString() {
        int i10;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        synchronized (this) {
            i10 = this.f49167c + this.f49169e;
        }
        return String.format("<ByteString.Output@%s size=%d>", hexString, Integer.valueOf(i10));
    }

    @Override
    public final synchronized void write(int i10) {
        try {
            int i11 = this.f49169e;
            byte[] bArr = this.f49168d;
            if (i11 == bArr.length) {
                this.f49166b.add(new ET(bArr));
                int length = this.f49167c + this.f49168d.length;
                this.f49167c = length;
                this.f49168d = new byte[Math.max(this.f49165a, Math.max(1, length >>> 1))];
                this.f49169e = 0;
            }
            byte[] bArr2 = this.f49168d;
            int i12 = this.f49169e;
            this.f49169e = i12 + 1;
            bArr2[i12] = (byte) i10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public final synchronized void write(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = this.f49168d;
        int length = bArr2.length;
        int i12 = this.f49169e;
        if (i11 <= length - i12) {
            System.arraycopy(bArr, i10, bArr2, i12, i11);
            this.f49169e += i11;
            return;
        }
        int length2 = bArr2.length - i12;
        System.arraycopy(bArr, i10, bArr2, i12, length2);
        int i13 = i11 - length2;
        this.f49166b.add(new ET(this.f49168d));
        int length3 = this.f49167c + this.f49168d.length;
        this.f49167c = length3;
        byte[] bArr3 = new byte[Math.max(this.f49165a, Math.max(i13, length3 >>> 1))];
        this.f49168d = bArr3;
        this.f49169e = 0;
        System.arraycopy(bArr, i10 + length2, bArr3, 0, i13);
        this.f49169e = i13;
    }
}
