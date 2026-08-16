package Nl;

import Bi.InterfaceC2392y;
import Ii.L;
import Ii.O;
import Ii.Q;
import oh.C14549x;

public class e {

    public static class a implements InterfaceC2392y {

        public Q f16428a;

        public a(Q q10) {
            this.f16428a = q10;
        }

        @Override
        public String b() {
            return this.f16428a.b() + "/" + (this.f16428a.f() * 16);
        }

        @Override
        public int c(byte[] bArr, int i10) {
            return this.f16428a.e(bArr, i10, f());
        }

        @Override
        public int f() {
            return this.f16428a.f() * 2;
        }

        @Override
        public void reset() {
            this.f16428a.reset();
        }

        @Override
        public void update(byte b10) {
            this.f16428a.update(b10);
        }

        @Override
        public void update(byte[] bArr, int i10, int i11) {
            this.f16428a.update(bArr, i10, i11);
        }
    }

    public static InterfaceC2392y a(C14549x c14549x) {
        if (c14549x.A(Sh.d.f23337c)) {
            return new L();
        }
        if (c14549x.A(Sh.d.f23341e)) {
            return new O();
        }
        if (c14549x.A(Sh.d.f23357m)) {
            return new Q(128);
        }
        if (c14549x.A(Sh.d.f23359n)) {
            return new Q(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + ((Object) c14549x));
    }

    public static C14549x b(String str) {
        if (str.equals("SHA-256")) {
            return Sh.d.f23337c;
        }
        if (str.equals("SHA-512")) {
            return Sh.d.f23341e;
        }
        if (str.equals("SHAKE128")) {
            return Sh.d.f23357m;
        }
        if (str.equals("SHAKE256")) {
            return Sh.d.f23359n;
        }
        throw new IllegalArgumentException("unrecognized digest: " + str);
    }

    public static byte[] c(InterfaceC2392y interfaceC2392y) {
        byte[] bArr = new byte[interfaceC2392y.f()];
        interfaceC2392y.c(bArr, 0);
        return bArr;
    }

    public static String d(C14549x c14549x) {
        if (c14549x.A(Sh.d.f23337c)) {
            return "SHA256";
        }
        if (c14549x.A(Sh.d.f23341e)) {
            return "SHA512";
        }
        if (c14549x.A(Sh.d.f23357m)) {
            return "SHAKE128";
        }
        if (c14549x.A(Sh.d.f23359n)) {
            return "SHAKE256";
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + ((Object) c14549x));
    }
}
