package Ii;

import Li.u0;
import Xi.K0;
import com.google.common.collect.C12510d2;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.crypto.OutputLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class V implements org.bouncycastle.util.n {

    public static final int f9585j = 256;

    public static final int f9586k = 512;

    public static final int f9587l = 1024;

    public static final int f9588m = 0;

    public static final int f9589n = 4;

    public static final int f9590o = 48;

    public static final int f9591p = 63;

    public static final Hashtable f9592q = new Hashtable();

    public final u0 f9593a;

    public final int f9594b;

    public long[] f9595c;

    public long[] f9596d;

    public byte[] f9597e;

    public b[] f9598f;

    public b[] f9599g;

    public final c f9600h;

    public final byte[] f9601i;

    public static class a {

        public byte[] f9602a;

        public a(long j10) {
            byte[] bArr = new byte[32];
            this.f9602a = bArr;
            bArr[0] = Opcodes.OPC_aastore;
            bArr[1] = 72;
            bArr[2] = Opcodes.OPC_lstore_2;
            bArr[3] = 51;
            bArr[4] = 1;
            bArr[5] = 0;
            org.bouncycastle.util.p.J(j10, bArr, 8);
        }

        public byte[] a() {
            return this.f9602a;
        }
    }

    public static class b {

        public int f9603a;

        public byte[] f9604b;

        public b(int i10, byte[] bArr) {
            this.f9603a = i10;
            this.f9604b = bArr;
        }

        public int a() {
            return this.f9603a;
        }

        public byte[] b() {
            return this.f9604b;
        }
    }

    public class c {

        public final d f9605a = new d();

        public byte[] f9606b;

        public int f9607c;

        public long[] f9608d;

        public c(int i10) {
            byte[] bArr = new byte[i10];
            this.f9606b = bArr;
            this.f9608d = new long[bArr.length / 8];
        }

        public void a(long[] jArr) {
            int i10 = this.f9607c;
            while (true) {
                byte[] bArr = this.f9606b;
                if (i10 >= bArr.length) {
                    this.f9605a.h(true);
                    b(jArr);
                    return;
                } else {
                    bArr[i10] = 0;
                    i10++;
                }
            }
        }

        public final void b(long[] jArr) {
            V v10 = V.this;
            v10.f9593a.m(true, v10.f9595c, this.f9605a.c());
            org.bouncycastle.util.p.y(this.f9606b, 0, this.f9608d);
            V.this.f9593a.n(this.f9608d, jArr);
            for (int i10 = 0; i10 < jArr.length; i10++) {
                jArr[i10] = jArr[i10] ^ this.f9608d[i10];
            }
        }

        public void c(int i10) {
            this.f9605a.f();
            this.f9605a.j(i10);
            this.f9607c = 0;
        }

        public void d(c cVar) {
            this.f9606b = org.bouncycastle.util.a.q(cVar.f9606b, this.f9606b);
            this.f9607c = cVar.f9607c;
            this.f9608d = org.bouncycastle.util.a.u(cVar.f9608d, this.f9608d);
            this.f9605a.g(cVar.f9605a);
        }

        public void e(byte[] bArr, int i10, int i11, long[] jArr) {
            int i12 = 0;
            while (i11 > i12) {
                if (this.f9607c == this.f9606b.length) {
                    b(jArr);
                    this.f9605a.i(false);
                    this.f9607c = 0;
                }
                int min = Math.min(i11 - i12, this.f9606b.length - this.f9607c);
                System.arraycopy(bArr, i10 + i12, this.f9606b, this.f9607c, min);
                i12 += min;
                this.f9607c += min;
                this.f9605a.a(min);
            }
        }
    }

    public static class d {

        public static final long f9610c = 9223372034707292160L;

        public static final long f9611d = Long.MIN_VALUE;

        public static final long f9612e = 4611686018427387904L;

        public long[] f9613a = new long[2];

        public boolean f9614b;

        public d() {
            f();
        }

        public void a(int i10) {
            if (!this.f9614b) {
                long[] jArr = this.f9613a;
                long j10 = jArr[0] + i10;
                jArr[0] = j10;
                if (j10 > 9223372034707292160L) {
                    this.f9614b = true;
                    return;
                }
                return;
            }
            long[] jArr2 = new long[3];
            long[] jArr3 = this.f9613a;
            jArr2[0] = jArr3[0] & 4294967295L;
            jArr2[1] = (jArr3[0] >>> 32) & 4294967295L;
            jArr2[2] = jArr3[1] & 4294967295L;
            long j11 = i10;
            for (int i11 = 0; i11 < 3; i11++) {
                long j12 = j11 + jArr2[i11];
                jArr2[i11] = j12;
                j11 = j12 >>> 32;
            }
            long[] jArr4 = this.f9613a;
            jArr4[0] = ((jArr2[1] & 4294967295L) << 32) | (jArr2[0] & 4294967295L);
            jArr4[1] = (jArr2[2] & 4294967295L) | (jArr4[1] & C12510d2.f66536l);
        }

        public int b() {
            return (int) ((this.f9613a[1] >>> 56) & 63);
        }

        public long[] c() {
            return this.f9613a;
        }

        public boolean d() {
            return (this.f9613a[1] & Long.MIN_VALUE) != 0;
        }

        public boolean e() {
            return (this.f9613a[1] & 4611686018427387904L) != 0;
        }

        public void f() {
            long[] jArr = this.f9613a;
            jArr[0] = 0;
            jArr[1] = 0;
            this.f9614b = false;
            i(true);
        }

        public void g(d dVar) {
            this.f9613a = org.bouncycastle.util.a.u(dVar.f9613a, this.f9613a);
            this.f9614b = dVar.f9614b;
        }

        public void h(boolean z10) {
            if (z10) {
                long[] jArr = this.f9613a;
                jArr[1] = jArr[1] | Long.MIN_VALUE;
            } else {
                long[] jArr2 = this.f9613a;
                jArr2[1] = jArr2[1] & Long.MAX_VALUE;
            }
        }

        public void i(boolean z10) {
            if (z10) {
                long[] jArr = this.f9613a;
                jArr[1] = jArr[1] | 4611686018427387904L;
            } else {
                long[] jArr2 = this.f9613a;
                jArr2[1] = jArr2[1] & (-4611686018427387905L);
            }
        }

        public void j(int i10) {
            long[] jArr = this.f9613a;
            jArr[1] = (jArr[1] & (-274877906944L)) | ((i10 & 63) << 56);
        }

        public String toString() {
            return b() + " first: " + e() + ", final: " + d();
        }
    }

    static {
        l(256, 128, new long[]{-2228972824489528736L, -8629553674646093540L, 1155188648486244218L, -3677226592081559102L});
        l(256, 160, new long[]{1450197650740764312L, 3081844928540042640L, -3136097061834271170L, 3301952811952417661L});
        l(256, 224, new long[]{-4176654842910610933L, -8688192972455077604L, -7364642305011795836L, 4056579644589979102L});
        l(256, 256, new long[]{-243853671043386295L, 3443677322885453875L, -5531612722399640561L, 7662005193972177513L});
        l(512, 128, new long[]{-6288014694233956526L, 2204638249859346602L, 3502419045458743507L, -4829063503441264548L, 983504137758028059L, 1880512238245786339L, -6715892782214108542L, 7602827311880509485L});
        l(512, 160, new long[]{2934123928682216849L, -4399710721982728305L, 1684584802963255058L, 5744138295201861711L, 2444857010922934358L, -2807833639722848072L, -5121587834665610502L, 118355523173251694L});
        l(512, 224, new long[]{-3688341020067007964L, -3772225436291745297L, -8300862168937575580L, 4146387520469897396L, 1106145742801415120L, 7455425944880474941L, -7351063101234211863L, -7048981346965512457L});
        l(512, 384, new long[]{-6631894876634615969L, -5692838220127733084L, -7099962856338682626L, -2911352911530754598L, 2000907093792408677L, 9140007292425499655L, 6093301768906360022L, 2769176472213098488L});
        l(512, 512, new long[]{5261240102383538638L, 978932832955457283L, -8083517948103779378L, -7339365279355032399L, 6752626034097301424L, -1531723821829733388L, -7417126464950782685L, -5901786942805128141L});
    }

    public V(int i10, int i11) {
        this.f9601i = new byte[1];
        if (i11 % 8 != 0) {
            throw new IllegalArgumentException("Output size must be a multiple of 8 bits. :" + i11);
        }
        this.f9594b = i11 / 8;
        u0 u0Var = new u0(i10);
        this.f9593a = u0Var;
        this.f9600h = new c(u0Var.c());
    }

    public static b[] b(b[] bVarArr, b[] bVarArr2) {
        if (bVarArr == null) {
            return null;
        }
        if (bVarArr2 == null || bVarArr2.length != bVarArr.length) {
            bVarArr2 = new b[bVarArr.length];
        }
        System.arraycopy(bVarArr, 0, bVarArr2, 0, bVarArr2.length);
        return bVarArr2;
    }

    public static void l(int i10, int i11, long[] jArr) {
        f9592q.put(u(i10 / 8, i11 / 8), jArr);
    }

    public static void o(b[] bVarArr) {
        if (bVarArr == null) {
            return;
        }
        for (int i10 = 1; i10 < bVarArr.length; i10++) {
            b bVar = bVarArr[i10];
            int i11 = i10;
            while (i11 > 0) {
                int i12 = i11 - 1;
                if (bVar.a() < bVarArr[i12].a()) {
                    bVarArr[i11] = bVarArr[i12];
                    i11 = i12;
                }
            }
            bVarArr[i11] = bVar;
        }
    }

    public static Integer u(int i10, int i11) {
        return org.bouncycastle.util.k.j(i10 | (i11 << 16));
    }

    public final void a() {
        if (this.f9600h == null) {
            throw new IllegalArgumentException("Skein engine is not initialised.");
        }
    }

    public final void c(V v10) {
        this.f9600h.d(v10.f9600h);
        this.f9595c = org.bouncycastle.util.a.u(v10.f9595c, this.f9595c);
        this.f9596d = org.bouncycastle.util.a.u(v10.f9596d, this.f9596d);
        this.f9597e = org.bouncycastle.util.a.q(v10.f9597e, this.f9597e);
        this.f9598f = b(v10.f9598f, this.f9598f);
        this.f9599g = b(v10.f9599g, this.f9599g);
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new V(this);
    }

    public final void d() {
        long[] jArr = (long[]) f9592q.get(u(f(), h()));
        int i10 = 0;
        if (this.f9597e != null || jArr == null) {
            this.f9595c = new long[f() / 8];
            byte[] bArr = this.f9597e;
            if (bArr != null) {
                p(0, bArr);
            }
            p(4, new a(this.f9594b * 8).a());
        } else {
            this.f9595c = org.bouncycastle.util.a.t(jArr);
        }
        if (this.f9598f != null) {
            while (true) {
                b[] bVarArr = this.f9598f;
                if (i10 >= bVarArr.length) {
                    break;
                }
                b bVar = bVarArr[i10];
                p(bVar.a(), bVar.b());
                i10++;
            }
        }
        this.f9596d = org.bouncycastle.util.a.t(this.f9595c);
    }

    public int e(byte[] bArr, int i10) {
        a();
        if (bArr.length < this.f9594b + i10) {
            throw new OutputLengthException("Output buffer is too short to hold output");
        }
        q();
        if (this.f9599g != null) {
            int i11 = 0;
            while (true) {
                b[] bVarArr = this.f9599g;
                if (i11 >= bVarArr.length) {
                    break;
                }
                b bVar = bVarArr[i11];
                p(bVar.a(), bVar.b());
                i11++;
            }
        }
        int f10 = f();
        int i12 = ((this.f9594b + f10) - 1) / f10;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i13 * f10;
            m(i13, bArr, i10 + i14, Math.min(f10, this.f9594b - i14));
        }
        n();
        return this.f9594b;
    }

    public int f() {
        return this.f9593a.c();
    }

    public int h() {
        return this.f9594b;
    }

    public void i(K0 k02) {
        this.f9595c = null;
        this.f9597e = null;
        this.f9598f = null;
        this.f9599g = null;
        if (k02 != null) {
            if (k02.b().length < 16) {
                throw new IllegalArgumentException("Skein key must be at least 128 bits.");
            }
            k(k02.e());
        }
        d();
        r(48);
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        V v10 = (V) nVar;
        if (f() != v10.f() || this.f9594b != v10.f9594b) {
            throw new IllegalArgumentException("Incompatible parameters in provided SkeinEngine.");
        }
        c(v10);
    }

    public final void k(Hashtable hashtable) {
        Enumeration keys = hashtable.keys();
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        while (keys.hasMoreElements()) {
            Integer num = (Integer) keys.nextElement();
            byte[] bArr = (byte[]) hashtable.get(num);
            if (num.intValue() == 0) {
                this.f9597e = bArr;
            } else if (num.intValue() < 48) {
                vector.addElement(new b(num.intValue(), bArr));
            } else {
                vector2.addElement(new b(num.intValue(), bArr));
            }
        }
        b[] bVarArr = new b[vector.size()];
        this.f9598f = bVarArr;
        vector.copyInto(bVarArr);
        o(this.f9598f);
        b[] bVarArr2 = new b[vector2.size()];
        this.f9599g = bVarArr2;
        vector2.copyInto(bVarArr2);
        o(this.f9599g);
    }

    public final void m(long j10, byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[8];
        org.bouncycastle.util.p.J(j10, bArr2, 0);
        long[] jArr = new long[this.f9595c.length];
        r(63);
        this.f9600h.e(bArr2, 0, 8, jArr);
        this.f9600h.a(jArr);
        int i12 = (i11 + 7) / 8;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i13 * 8;
            int min = Math.min(8, i11 - i14);
            if (min == 8) {
                org.bouncycastle.util.p.J(jArr[i13], bArr, i14 + i10);
            } else {
                org.bouncycastle.util.p.J(jArr[i13], bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i14 + i10, min);
            }
        }
    }

    public void n() {
        long[] jArr = this.f9596d;
        long[] jArr2 = this.f9595c;
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        r(48);
    }

    public final void p(int i10, byte[] bArr) {
        r(i10);
        this.f9600h.e(bArr, 0, bArr.length, this.f9595c);
        q();
    }

    public final void q() {
        this.f9600h.a(this.f9595c);
    }

    public final void r(int i10) {
        this.f9600h.c(i10);
    }

    public void s(byte b10) {
        byte[] bArr = this.f9601i;
        bArr[0] = b10;
        t(bArr, 0, 1);
    }

    public void t(byte[] bArr, int i10, int i11) {
        a();
        this.f9600h.e(bArr, i10, i11, this.f9595c);
    }

    public V(V v10) {
        this(v10.f() * 8, v10.h() * 8);
        c(v10);
    }
}
