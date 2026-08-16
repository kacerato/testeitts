package ql;

import java.util.ArrayList;
import java.util.List;
import ql.C15132j;

public final class C15133k {

    public final C15135m f108367a;

    public final C15130h f108368b;

    public byte[] f108369c;

    public byte[] f108370d;

    public C15133k(C15135m c15135m) {
        if (c15135m == null) {
            throw new NullPointerException("params == null");
        }
        this.f108367a = c15135m;
        int f10 = c15135m.f();
        this.f108368b = new C15130h(c15135m.e(), f10);
        this.f108369c = new byte[f10];
        this.f108370d = new byte[f10];
    }

    public final byte[] a(byte[] bArr, int i10, int i11, C15132j c15132j) {
        int f10 = this.f108367a.f();
        if (bArr == null) {
            throw new NullPointerException("startHash == null");
        }
        if (bArr.length != f10) {
            throw new IllegalArgumentException("startHash needs to be " + f10 + "bytes");
        }
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        if (c15132j.e() == null) {
            throw new NullPointerException("otsHashAddress byte array == null");
        }
        int i12 = i10 + i11;
        if (i12 > this.f108367a.g() - 1) {
            throw new IllegalArgumentException("max chain length must not be greater than w");
        }
        if (i11 == 0) {
            return bArr;
        }
        byte[] a10 = a(bArr, i10, i11 - 1, c15132j);
        C15132j c15132j2 = (C15132j) new C15132j.b().h(c15132j.b()).i(c15132j.c()).p(c15132j.h()).n(c15132j.f()).o(i12 - 1).g(0).e();
        byte[] d10 = this.f108368b.d(this.f108370d, c15132j2.e());
        byte[] d11 = this.f108368b.d(this.f108370d, ((C15132j) new C15132j.b().h(c15132j2.b()).i(c15132j2.c()).p(c15132j2.h()).n(c15132j2.f()).o(c15132j2.g()).g(1).e()).e());
        byte[] bArr2 = new byte[f10];
        for (int i13 = 0; i13 < f10; i13++) {
            bArr2[i13] = (byte) (a10[i13] ^ d11[i13]);
        }
        return this.f108368b.a(d10, bArr2);
    }

    public final List<Integer> b(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new NullPointerException("msg == null");
        }
        if (i10 != 4 && i10 != 16) {
            throw new IllegalArgumentException("w needs to be 4 or 16");
        }
        int q10 = O.q(i10);
        if (i11 > (bArr.length * 8) / q10) {
            throw new IllegalArgumentException("outLength too big");
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 : bArr) {
            for (int i13 = 8 - q10; i13 >= 0; i13 -= q10) {
                arrayList.add(Integer.valueOf((i12 >> i13) & (i10 - 1)));
                if (arrayList.size() == i11) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    public final byte[] c(int i10) {
        if (i10 < 0 || i10 >= this.f108367a.a()) {
            throw new IllegalArgumentException("index out of bounds");
        }
        return this.f108368b.d(this.f108369c, O.t(i10, 32));
    }

    public C15130h d() {
        return this.f108368b;
    }

    public C15135m e() {
        return this.f108367a;
    }

    public C15136n f() {
        int a10 = this.f108367a.a();
        byte[][] bArr = new byte[a10];
        for (int i10 = 0; i10 < a10; i10++) {
            bArr[i10] = c(i10);
        }
        return new C15136n(this.f108367a, bArr);
    }

    public C15137o g(C15132j c15132j) {
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        byte[][] bArr = new byte[this.f108367a.a()];
        for (int i10 = 0; i10 < this.f108367a.a(); i10++) {
            c15132j = (C15132j) new C15132j.b().h(c15132j.b()).i(c15132j.c()).p(c15132j.h()).n(i10).o(c15132j.g()).g(c15132j.a()).e();
            bArr[i10] = a(c(i10), 0, this.f108367a.g() - 1, c15132j);
        }
        return new C15137o(this.f108367a, bArr);
    }

    public C15137o h(byte[] bArr, C15138p c15138p, C15132j c15132j) {
        if (bArr == null) {
            throw new NullPointerException("messageDigest == null");
        }
        if (bArr.length != this.f108367a.f()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        if (c15138p == null) {
            throw new NullPointerException("signature == null");
        }
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        List<Integer> b10 = b(bArr, this.f108367a.g(), this.f108367a.b());
        int i10 = 0;
        for (int i11 = 0; i11 < this.f108367a.b(); i11++) {
            i10 += (this.f108367a.g() - 1) - b10.get(i11).intValue();
        }
        b10.addAll(b(O.t(i10 << (8 - ((this.f108367a.c() * O.q(this.f108367a.g())) % 8)), (int) Math.ceil((this.f108367a.c() * O.q(this.f108367a.g())) / 8.0d)), this.f108367a.g(), this.f108367a.c()));
        byte[][] bArr2 = new byte[this.f108367a.a()];
        for (int i12 = 0; i12 < this.f108367a.a(); i12++) {
            c15132j = (C15132j) new C15132j.b().h(c15132j.b()).i(c15132j.c()).p(c15132j.h()).n(i12).o(c15132j.g()).g(c15132j.a()).e();
            bArr2[i12] = a(c15138p.a()[i12], b10.get(i12).intValue(), (this.f108367a.g() - 1) - b10.get(i12).intValue(), c15132j);
        }
        return new C15137o(this.f108367a, bArr2);
    }

    public byte[] i() {
        return org.bouncycastle.util.a.p(this.f108370d);
    }

    public byte[] j() {
        return org.bouncycastle.util.a.p(this.f108369c);
    }

    public byte[] k(byte[] bArr, C15132j c15132j) {
        return this.f108368b.d(bArr, ((C15132j) new C15132j.b().h(c15132j.b()).i(c15132j.c()).p(c15132j.h()).e()).e());
    }

    public void l(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("secretKeySeed == null");
        }
        if (bArr.length != this.f108367a.f()) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal to size of digest");
        }
        if (bArr2 == null) {
            throw new NullPointerException("publicSeed == null");
        }
        if (bArr2.length != this.f108367a.f()) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal to size of digest");
        }
        this.f108369c = bArr;
        this.f108370d = bArr2;
    }

    public C15138p m(byte[] bArr, C15132j c15132j) {
        if (bArr == null) {
            throw new NullPointerException("messageDigest == null");
        }
        if (bArr.length != this.f108367a.f()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        List<Integer> b10 = b(bArr, this.f108367a.g(), this.f108367a.b());
        int i10 = 0;
        for (int i11 = 0; i11 < this.f108367a.b(); i11++) {
            i10 += (this.f108367a.g() - 1) - b10.get(i11).intValue();
        }
        b10.addAll(b(O.t(i10 << (8 - ((this.f108367a.c() * O.q(this.f108367a.g())) % 8)), (int) Math.ceil((this.f108367a.c() * O.q(this.f108367a.g())) / 8.0d)), this.f108367a.g(), this.f108367a.c()));
        byte[][] bArr2 = new byte[this.f108367a.a()];
        for (int i12 = 0; i12 < this.f108367a.a(); i12++) {
            c15132j = (C15132j) new C15132j.b().h(c15132j.b()).i(c15132j.c()).p(c15132j.h()).n(i12).o(c15132j.g()).g(c15132j.a()).e();
            bArr2[i12] = a(c(i12), 0, b10.get(i12).intValue(), c15132j);
        }
        return new C15138p(this.f108367a, bArr2);
    }
}
