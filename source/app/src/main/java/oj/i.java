package Oj;

import Bi.C2371c;
import Bi.InterfaceC2372d;
import Bi.r;
import Oi.C2941q;
import Oi.P;
import Xi.M0;
import Xi.N;
import Xi.P0;
import Xi.Q;
import ck.C4207E;
import ck.C4215h;
import hk.C13522b;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGeneratorSpi;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import qj.InterfaceC15115a;

public class i extends KeyPairGeneratorSpi {

    public static final int f20301e = -1;

    public static final int f20302f = -2;

    public static final int f20303g = 1;

    public static final int f20304h = 2;

    public static final int f20305i = 3;

    public static final int f20306j = 4;

    public final int f20307a;

    public int f20308b;

    public SecureRandom f20309c;

    public InterfaceC2372d f20310d;

    public static final class a extends i {
        public a() {
            super(1);
        }
    }

    public static final class b extends i {
        public b() {
            super(2);
        }
    }

    public static final class c extends i {
        public c() {
            super(-1);
        }
    }

    public static final class d extends i {
        public d() {
            super(3);
        }
    }

    public static final class e extends i {
        public e() {
            super(4);
        }
    }

    public static final class f extends i {
        public f() {
            super(-2);
        }
    }

    public i(int i10) {
        this.f20307a = i10;
        if (a(i10) != i10) {
            this.f20308b = i10;
        }
    }

    public static int a(int i10) {
        if (i10 == 1 || i10 == 2) {
            return -1;
        }
        if (i10 == 3 || i10 == 4) {
            return -2;
        }
        return i10;
    }

    public static int b(String str) throws InvalidAlgorithmParameterException {
        if (str.equalsIgnoreCase(C4207E.f34888c) || str.equals(InterfaceC15115a.f108207b.J())) {
            return 3;
        }
        if (str.equalsIgnoreCase(C4215h.f34909c) || str.equals(InterfaceC15115a.f108209d.J())) {
            return 1;
        }
        if (str.equalsIgnoreCase(C4207E.f34889d) || str.equals(InterfaceC15115a.f108208c.J())) {
            return 4;
        }
        if (str.equalsIgnoreCase(C4215h.f34910d) || str.equals(InterfaceC15115a.f108210e.J())) {
            return 2;
        }
        throw new InvalidAlgorithmParameterException("invalid parameterSpec name: " + str);
    }

    public static String d(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        return algorithmParameterSpec instanceof ECGenParameterSpec ? ((ECGenParameterSpec) algorithmParameterSpec).getName() : algorithmParameterSpec instanceof C13522b ? ((C13522b) algorithmParameterSpec).a() : algorithmParameterSpec instanceof C4215h ? ((C4215h) algorithmParameterSpec).a() : algorithmParameterSpec instanceof C4207E ? ((C4207E) algorithmParameterSpec).a() : org.bouncycastle.jcajce.provider.asymmetric.util.i.h(algorithmParameterSpec);
    }

    public final int c(int i10) {
        if (i10 == 255 || i10 == 256) {
            int i11 = this.f20307a;
            if (i11 != -2) {
                if (i11 == -1 || i11 == 1) {
                    return 1;
                }
                if (i11 != 3) {
                    throw new InvalidParameterException("key size not configurable");
                }
            }
            return 3;
        }
        if (i10 != 448) {
            throw new InvalidParameterException("unknown key size");
        }
        int i12 = this.f20307a;
        if (i12 != -2) {
            if (i12 == -1 || i12 == 2) {
                return 2;
            }
            if (i12 != 4) {
                throw new InvalidParameterException("key size not configurable");
            }
        }
        return 4;
    }

    public final InterfaceC2372d e() {
        if (this.f20309c == null) {
            this.f20309c = r.h();
        }
        int i10 = this.f20308b;
        if (i10 == 1) {
            C2941q c2941q = new C2941q();
            c2941q.b(new N(this.f20309c));
            return c2941q;
        }
        if (i10 == 2) {
            Oi.r rVar = new Oi.r();
            rVar.b(new Q(this.f20309c));
            return rVar;
        }
        if (i10 == 3) {
            P p10 = new P();
            p10.b(new M0(this.f20309c));
            return p10;
        }
        if (i10 != 4) {
            throw new IllegalStateException("generator not correctly initialized");
        }
        Oi.Q q10 = new Oi.Q();
        q10.b(new P0(this.f20309c));
        return q10;
    }

    @Override
    public KeyPair generateKeyPair() {
        if (this.f20308b == 0) {
            throw new IllegalStateException("generator not correctly initialized");
        }
        if (this.f20310d == null) {
            this.f20310d = e();
        }
        C2371c a10 = this.f20310d.a();
        int i10 = this.f20308b;
        if (i10 == 1 || i10 == 2) {
            return new KeyPair(new Oj.b(a10.b()), new Oj.a(a10.a()));
        }
        if (i10 == 3 || i10 == 4) {
            return new KeyPair(new Oj.d(a10.b()), new Oj.c(a10.a()));
        }
        throw new IllegalStateException("generator not correctly initialized");
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        this.f20308b = c(i10);
        this.f20309c = secureRandom;
        this.f20310d = null;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        String d10 = d(algorithmParameterSpec);
        if (d10 == null) {
            throw new InvalidAlgorithmParameterException("invalid parameterSpec: " + ((Object) algorithmParameterSpec));
        }
        int b10 = b(d10);
        int i10 = this.f20307a;
        if (i10 != b10 && i10 != a(b10)) {
            throw new InvalidAlgorithmParameterException("parameterSpec for wrong curve type");
        }
        this.f20308b = b10;
        this.f20309c = secureRandom;
        this.f20310d = null;
    }
}
