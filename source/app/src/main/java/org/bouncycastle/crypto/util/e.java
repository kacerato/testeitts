package org.bouncycastle.crypto.util;

import oh.AbstractC14551y;
import oh.InterfaceC14516g;
import oh.K0;

public final class e {

    public final byte[] f101049a;

    public static class a {

        public static final int[] f101050a;

        static {
            int[] iArr = new int[c.values().length];
            f101050a = iArr;
            try {
                iArr[c.UNILATERALU.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f101050a[c.BILATERALU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f101050a[c.UNILATERALV.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f101050a[c.BILATERALV.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static final class b {

        public final c f101051a;

        public AbstractC14551y f101052b;

        public AbstractC14551y f101053c;

        public AbstractC14551y f101054d;

        public AbstractC14551y f101055e;

        public byte[] f101056f;

        public b(c cVar, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
            this.f101051a = cVar;
            this.f101052b = DerUtil.a(bArr);
            this.f101053c = DerUtil.a(bArr2);
            this.f101054d = DerUtil.a(bArr3);
            this.f101055e = DerUtil.a(bArr4);
        }

        public e a() {
            int i10 = a.f101050a[this.f101051a.ordinal()];
            a aVar = null;
            if (i10 == 1 || i10 == 2) {
                return new e(b(this.f101051a.b(), DerUtil.b(this.f101052b), DerUtil.b(this.f101053c), DerUtil.b(this.f101054d), DerUtil.b(this.f101055e), this.f101056f), aVar);
            }
            if (i10 == 3 || i10 == 4) {
                return new e(b(this.f101051a.b(), DerUtil.b(this.f101053c), DerUtil.b(this.f101052b), DerUtil.b(this.f101055e), DerUtil.b(this.f101054d), this.f101056f), aVar);
            }
            throw new IllegalStateException("Unknown type encountered in build");
        }

        public final byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
            return org.bouncycastle.util.a.B(org.bouncycastle.util.a.C(bArr, bArr2, bArr3), org.bouncycastle.util.a.C(bArr4, bArr5, bArr6));
        }

        public b c(byte[] bArr) {
            this.f101056f = DerUtil.b(new K0(false, 0, (InterfaceC14516g) DerUtil.a(bArr)));
            return this;
        }
    }

    public enum c {
        UNILATERALU("KC_1_U"),
        UNILATERALV("KC_1_V"),
        BILATERALU("KC_2_U"),
        BILATERALV("KC_2_V");

        private final String enc;

        c(String str) {
            this.enc = str;
        }

        public byte[] b() {
            return org.bouncycastle.util.w.j(this.enc);
        }
    }

    public e(byte[] bArr) {
        this.f101049a = bArr;
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f101049a);
    }

    public e(byte[] bArr, a aVar) {
        this(bArr);
    }
}
