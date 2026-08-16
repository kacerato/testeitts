package org.bouncycastle.cms;

import hi.C13486b;
import oh.C14549x;

public interface A0 extends E0 {

    public static final int f100454a = 0;

    public static final int f100455b = 1;

    public static final class a {

        public static final a f100456c;

        public static final a f100457d;

        public static final a f100458e;

        public static final a f100459f;

        public static final a f100460g;

        public final String f100461a;

        public final C13486b f100462b;

        static {
            C14549x c14549x = Xh.t.f29144w1;
            oh.A0 a02 = oh.A0.f98776c;
            f100456c = new a("HMacSHA1", new C13486b(c14549x, a02));
            f100457d = new a("HMacSHA224", new C13486b(Xh.t.f29147x1, a02));
            f100458e = new a("HMacSHA256", new C13486b(Xh.t.f29152z1, a02));
            f100459f = new a("HMacSHA384", new C13486b(Xh.t.f29000A1, a02));
            f100460g = new a("HMacSHA512", new C13486b(Xh.t.f29003B1, a02));
        }

        public a(String str, C13486b c13486b) {
            this.f100461a = str;
            this.f100462b = c13486b;
        }

        public C13486b a() {
            return this.f100462b;
        }

        public String b() {
            return this.f100461a;
        }
    }

    byte[] c(int i10, C13486b c13486b, int i11) throws CMSException;

    J0 d(C13486b c13486b, C13486b c13486b2, byte[] bArr, byte[] bArr2) throws CMSException;

    int e();

    char[] getPassword();
}
