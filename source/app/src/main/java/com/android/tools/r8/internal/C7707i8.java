package com.android.tools.r8.internal;

import java.nio.charset.Charset;

public class C7707i8 extends AbstractC7540h8 {

    public final byte[] f48850e;

    public C7707i8(byte[] bArr) {
        bArr.getClass();
        this.f48850e = bArr;
    }

    @Override
    public final void a(AbstractC5322Ie abstractC5322Ie) {
        abstractC5322Ie.a(this.f48850e, d(), size());
    }

    @Override
    public final AbstractC4916Be b() {
        return AbstractC4916Be.a(this.f48850e, d(), size(), true);
    }

    public int d() {
        return 0;
    }

    @Override
    public final int e(int i10, int i11) {
        byte[] bArr = this.f48850e;
        int d10 = d();
        Charset charset = YI.f45964a;
        for (int i12 = d10; i12 < d10 + i11; i12++) {
            i10 = (i10 * 31) + bArr[i12];
        }
        return i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8373m8) || size() != ((AbstractC8373m8) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof C7707i8)) {
            return obj.equals(this);
        }
        C7707i8 c7707i8 = (C7707i8) obj;
        int i10 = this.f50206b;
        int i11 = c7707i8.f50206b;
        if (i10 != 0 && i11 != 0 && i10 != i11) {
            return false;
        }
        int size = size();
        if (size > c7707i8.size()) {
            throw new IllegalArgumentException("Length too large: " + size + size());
        }
        if (size > c7707i8.size()) {
            StringBuilder a10 = AbstractC5413Jt0.a(size, "Ran off end of other: 0, ", ", ");
            a10.append(c7707i8.size());
            throw new IllegalArgumentException(a10.toString());
        }
        byte[] bArr = this.f48850e;
        byte[] bArr2 = c7707i8.f48850e;
        int d10 = d() + size;
        int d11 = d();
        int d12 = c7707i8.d();
        while (d11 < d10) {
            if (bArr[d11] != bArr2[d12]) {
                return false;
            }
            d11++;
            d12++;
        }
        return true;
    }

    @Override
    public final AbstractC8373m8 f(int i10, int i11) {
        int a10 = AbstractC8373m8.a(i10, i11, size());
        return a10 == 0 ? AbstractC8373m8.f50204c : new C7206f8(this.f48850e, d() + i10, a10);
    }

    @Override
    public byte j(int i10) {
        return this.f48850e[i10];
    }

    @Override
    public byte k(int i10) {
        return this.f48850e[i10];
    }

    @Override
    public int size() {
        return this.f48850e.length;
    }

    @Override
    public final String a(Charset charset) {
        return new String(this.f48850e, d(), size(), charset);
    }

    @Override
    public final boolean a() {
        int d10 = d();
        return AbstractC9672tw0.f52738a.b(this.f48850e, d10, size() + d10) == 0;
    }
}
