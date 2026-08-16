package ql;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class K implements N {

    public final H f108291b;

    public final C15138p f108292c;

    public final List<E> f108293d;

    public static class a {

        public final H f108294a;

        public C15138p f108295b = null;

        public List<E> f108296c = null;

        public byte[] f108297d = null;

        public a(H h10) {
            this.f108294a = h10;
        }

        public K e() {
            return new K(this);
        }

        public a f(List<E> list) {
            this.f108296c = list;
            return this;
        }

        public a g(byte[] bArr) {
            this.f108297d = O.d(bArr);
            return this;
        }

        public a h(C15138p c15138p) {
            this.f108295b = c15138p;
            return this;
        }
    }

    public K(a aVar) {
        List<E> list;
        H h10 = aVar.f108294a;
        this.f108291b = h10;
        if (h10 == null) {
            throw new NullPointerException("params == null");
        }
        int h11 = h10.h();
        int a10 = h10.i().e().a();
        int b10 = h10.b();
        byte[] bArr = aVar.f108297d;
        if (bArr == null) {
            C15138p c15138p = aVar.f108295b;
            this.f108292c = c15138p == null ? new C15138p(h10.i().e(), (byte[][]) Array.newInstance(Byte.TYPE, a10, h11)) : c15138p;
            list = aVar.f108296c;
            if (list == null) {
                list = new ArrayList<>();
            } else if (list.size() != b10) {
                throw new IllegalArgumentException("size of authPath needs to be equal to height of tree");
            }
        } else {
            if (bArr.length != (a10 * h11) + (b10 * h11)) {
                throw new IllegalArgumentException("signature has wrong size");
            }
            byte[][] bArr2 = new byte[a10];
            int i10 = 0;
            for (int i11 = 0; i11 < a10; i11++) {
                bArr2[i11] = O.i(bArr, i10, h11);
                i10 += h11;
            }
            this.f108292c = new C15138p(this.f108291b.i().e(), bArr2);
            list = new ArrayList<>();
            for (int i12 = 0; i12 < b10; i12++) {
                list.add(new E(i12, O.i(bArr, i10, h11)));
                i10 += h11;
            }
        }
        this.f108293d = list;
    }

    public List<E> a() {
        return this.f108293d;
    }

    public H b() {
        return this.f108291b;
    }

    public C15138p c() {
        return this.f108292c;
    }

    @Override
    public byte[] toByteArray() {
        int h10 = this.f108291b.h();
        byte[] bArr = new byte[(this.f108291b.i().e().a() * h10) + (this.f108291b.b() * h10)];
        int i10 = 0;
        for (byte[] bArr2 : this.f108292c.a()) {
            O.f(bArr, bArr2, i10);
            i10 += h10;
        }
        for (int i11 = 0; i11 < this.f108293d.size(); i11++) {
            O.f(bArr, this.f108293d.get(i11).b(), i10);
            i10 += h10;
        }
        return bArr;
    }
}
