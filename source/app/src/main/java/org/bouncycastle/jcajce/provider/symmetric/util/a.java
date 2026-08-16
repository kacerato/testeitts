package org.bouncycastle.jcajce.provider.symmetric.util;

import Bi.C2376h;
import Bi.C2388u;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Hj.m;
import Li.C2798x;
import Ti.B;
import Ti.C;
import Ti.C3092c;
import Ti.C3094e;
import Ti.C3096g;
import Ti.E;
import Ti.F;
import Ti.H;
import Ti.InterfaceC3090a;
import Ti.InterfaceC3091b;
import Ti.j;
import Ti.l;
import Ti.q;
import Ti.r;
import Ti.u;
import Ti.x;
import Ti.y;
import Wi.f;
import Wi.g;
import Wi.h;
import Xh.t;
import Xi.B0;
import Xi.C3331a;
import Xi.C3360o0;
import Xi.Z;
import Xi.w0;
import Xi.x0;
import Xi.y0;
import ak.C3661a;
import ak.C3667g;
import ak.C3668h;
import ak.C3670j;
import ak.InterfaceC3666f;
import android.security.keystore.KeyProperties;
import ck.C4208a;
import ck.C4216i;
import ck.C4217j;
import java.lang.reflect.Constructor;
import java.nio.ByteBuffer;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import nj.C14454c;
import oh.C0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.d;
import org.bouncycastle.util.w;

public class a extends BaseWrapCipher implements org.bouncycastle.jcajce.provider.symmetric.util.d {

    public static final int f101453B = 512;

    public static final Class[] f101454C = {RC2ParameterSpec.class, RC5ParameterSpec.class, C3668h.f32329a, C4217j.class, IvParameterSpec.class, PBEParameterSpec.class};

    public String f101455A;

    public InterfaceC2374f f101456n;

    public InterfaceC3666f f101457o;

    public d f101458p;

    public w0 f101459q;

    public C3331a f101460r;

    public int f101461s;

    public int f101462t;

    public int f101463u;

    public int f101464v;

    public boolean f101465w;

    public boolean f101466x;

    public PBEParameterSpec f101467y;

    public String f101468z;

    public static class C1921a implements d {

        public static final Constructor f101469b;

        public InterfaceC3091b f101470a;

        static {
            Class a10 = C3667g.a(a.class, "javax.crypto.AEADBadTagException");
            f101469b = a10 != null ? l(a10) : null;
        }

        public C1921a(InterfaceC3091b interfaceC3091b) {
            this.f101470a = interfaceC3091b;
        }

        public static Constructor l(Class cls) {
            try {
                return cls.getConstructor(String.class);
            } catch (Exception unused) {
                return null;
            }
        }

        @Override
        public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
            this.f101470a.a(z10, interfaceC2379k);
        }

        @Override
        public String b() {
            InterfaceC3091b interfaceC3091b = this.f101470a;
            return interfaceC3091b instanceof InterfaceC3090a ? ((InterfaceC3090a) interfaceC3091b).d().b() : interfaceC3091b.b();
        }

        @Override
        public int c(byte[] bArr, int i10) throws IllegalStateException, BadPaddingException {
            BadPaddingException badPaddingException;
            try {
                return this.f101470a.c(bArr, i10);
            } catch (InvalidCipherTextException e10) {
                Constructor constructor = f101469b;
                if (constructor != null) {
                    try {
                        badPaddingException = (BadPaddingException) constructor.newInstance(e10.getMessage());
                    } catch (Exception unused) {
                        badPaddingException = null;
                    }
                    if (badPaddingException != null) {
                        throw badPaddingException;
                    }
                }
                throw new BadPaddingException(e10.getMessage());
            }
        }

        @Override
        public InterfaceC2374f d() {
            InterfaceC3091b interfaceC3091b = this.f101470a;
            if (interfaceC3091b instanceof InterfaceC3090a) {
                return ((InterfaceC3090a) interfaceC3091b).d();
            }
            return null;
        }

        @Override
        public void e(byte[] bArr, int i10, int i11) {
            this.f101470a.j(bArr, i10, i11);
        }

        @Override
        public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
            return this.f101470a.f(bArr, i10, i11, bArr2, i12);
        }

        @Override
        public int g(int i10) {
            return this.f101470a.g(i10);
        }

        @Override
        public int h(int i10) {
            return this.f101470a.h(i10);
        }

        @Override
        public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
            return this.f101470a.i(b10, bArr, i10);
        }

        @Override
        public boolean j() {
            return false;
        }
    }

    public static class b implements d {

        public Ni.a f101471a;

        public BaseWrapCipher.a f101472b = new BaseWrapCipher.a();

        public b(Ni.a aVar) {
            this.f101471a = aVar;
        }

        @Override
        public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
            this.f101471a.d(z10, interfaceC2379k);
        }

        @Override
        public String b() {
            return this.f101471a.c();
        }

        @Override
        public int c(byte[] bArr, int i10) throws IllegalStateException, BadPaddingException {
            try {
                return this.f101471a.e(this.f101472b.d(), 0, this.f101472b.size(), bArr, i10);
            } finally {
                this.f101472b.c();
            }
        }

        @Override
        public InterfaceC2374f d() {
            throw new IllegalStateException("not applicable for FPE");
        }

        @Override
        public void e(byte[] bArr, int i10, int i11) {
            throw new UnsupportedOperationException("AAD is not supported in the current mode.");
        }

        @Override
        public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
            this.f101472b.write(bArr, i10, i11);
            return 0;
        }

        @Override
        public int g(int i10) {
            return 0;
        }

        @Override
        public int h(int i10) {
            return this.f101472b.size() + i10;
        }

        @Override
        public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
            this.f101472b.write(b10);
            return 0;
        }

        @Override
        public boolean j() {
            return false;
        }
    }

    public static class c implements d {

        public C2376h f101473a;

        public c(InterfaceC2374f interfaceC2374f) {
            this(interfaceC2374f, new Wi.d());
        }

        @Override
        public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
            this.f101473a.f(z10, interfaceC2379k);
        }

        @Override
        public String b() {
            return this.f101473a.d().b();
        }

        @Override
        public int c(byte[] bArr, int i10) throws IllegalStateException, BadPaddingException {
            try {
                return this.f101473a.a(bArr, i10);
            } catch (InvalidCipherTextException e10) {
                throw new BadPaddingException(e10.getMessage());
            }
        }

        @Override
        public InterfaceC2374f d() {
            return this.f101473a.d();
        }

        @Override
        public void e(byte[] bArr, int i10, int i11) {
            throw new UnsupportedOperationException("AAD is not supported in the current mode.");
        }

        @Override
        public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
            return this.f101473a.h(bArr, i10, i11, bArr2, i12);
        }

        @Override
        public int g(int i10) {
            return this.f101473a.e(i10);
        }

        @Override
        public int h(int i10) {
            return this.f101473a.c(i10);
        }

        @Override
        public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
            return this.f101473a.g(b10, bArr, i10);
        }

        @Override
        public boolean j() {
            return !(this.f101473a instanceof j);
        }

        public c(InterfaceC2374f interfaceC2374f, Wi.a aVar) {
            this.f101473a = new Wi.e(interfaceC2374f, aVar);
        }

        public c(C2376h c2376h) {
            this.f101473a = c2376h;
        }
    }

    public interface d {
        void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException;

        String b();

        int c(byte[] bArr, int i10) throws IllegalStateException, BadPaddingException;

        InterfaceC2374f d();

        void e(byte[] bArr, int i10, int i11);

        int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException;

        int g(int i10);

        int h(int i10);

        int i(byte b10, byte[] bArr, int i10) throws DataLengthException;

        boolean j();
    }

    public a(InterfaceC2374f interfaceC2374f) {
        this.f101462t = -1;
        this.f101464v = 0;
        this.f101466x = true;
        this.f101467y = null;
        this.f101468z = null;
        this.f101455A = null;
        this.f101456n = interfaceC2374f;
        this.f101458p = new c(interfaceC2374f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final InterfaceC2379k b(AlgorithmParameterSpec algorithmParameterSpec, InterfaceC2379k interfaceC2379k) {
        y0 y0Var;
        w0 w0Var;
        if (interfaceC2379k instanceof w0) {
            InterfaceC2379k b10 = ((w0) interfaceC2379k).b();
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                w0Var = new w0(b10, ((IvParameterSpec) algorithmParameterSpec).getIV());
            } else {
                if (!(algorithmParameterSpec instanceof C4217j)) {
                    return interfaceC2379k;
                }
                C4217j c4217j = (C4217j) algorithmParameterSpec;
                y0 y0Var2 = new y0(interfaceC2379k, c4217j.c());
                if (c4217j.a() == null || this.f101464v == 0) {
                    return y0Var2;
                }
                w0Var = new w0(b10, c4217j.a());
            }
            this.f101459q = w0Var;
            return w0Var;
        }
        if (algorithmParameterSpec instanceof IvParameterSpec) {
            w0 w0Var2 = new w0(interfaceC2379k, ((IvParameterSpec) algorithmParameterSpec).getIV());
            this.f101459q = w0Var2;
            y0Var = w0Var2;
        } else {
            if (!(algorithmParameterSpec instanceof C4217j)) {
                return interfaceC2379k;
            }
            C4217j c4217j2 = (C4217j) algorithmParameterSpec;
            y0 y0Var3 = new y0(interfaceC2379k, c4217j2.c());
            y0Var = y0Var3;
            if (c4217j2.a() != null) {
                y0Var = y0Var3;
                if (this.f101464v != 0) {
                    return new w0(y0Var3, c4217j2.a());
                }
            }
        }
        return y0Var;
    }

    public final boolean c(String str) {
        return "CCM".equals(str) || "EAX".equals(str) || "GCM".equals(str) || "GCM-SIV".equals(str) || "OCB".equals(str);
    }

    @Override
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IllegalBlockSizeException, BadPaddingException, ShortBufferException {
        int f10;
        if (engineGetOutputSize(i11) + i12 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        if (i11 != 0) {
            try {
                f10 = this.f101458p.f(bArr, i10, i11, bArr2, i12);
            } catch (OutputLengthException e10) {
                throw new IllegalBlockSizeException(e10.getMessage());
            } catch (DataLengthException e11) {
                throw new IllegalBlockSizeException(e11.getMessage());
            }
        } else {
            f10 = 0;
        }
        return f10 + this.f101458p.c(bArr2, i12 + f10);
    }

    @Override
    public int engineGetBlockSize() {
        InterfaceC2374f interfaceC2374f = this.f101456n;
        if (interfaceC2374f == null) {
            return -1;
        }
        return interfaceC2374f.c();
    }

    @Override
    public byte[] engineGetIV() {
        C3331a c3331a = this.f101460r;
        if (c3331a != null) {
            return c3331a.d();
        }
        w0 w0Var = this.f101459q;
        if (w0Var != null) {
            return w0Var.a();
        }
        return null;
    }

    @Override
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    @Override
    public int engineGetOutputSize(int i10) {
        return this.f101458p.h(i10);
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f101446g == null) {
            if (this.f101467y != null) {
                try {
                    AlgorithmParameters a10 = a(this.f101468z);
                    this.f101446g = a10;
                    a10.init(this.f101467y);
                } catch (Exception unused) {
                    return null;
                }
            } else if (this.f101460r != null) {
                if (this.f101456n == null) {
                    try {
                        AlgorithmParameters a11 = a(t.f29053S2.J());
                        this.f101446g = a11;
                        a11.init(new C0(this.f101460r.d()).getEncoded());
                    } catch (Exception e10) {
                        throw new RuntimeException(e10.toString());
                    }
                } else {
                    try {
                        AlgorithmParameters a12 = a("GCM");
                        this.f101446g = a12;
                        a12.init(new C14454c(this.f101460r.d(), this.f101460r.c() / 8).getEncoded());
                    } catch (Exception e11) {
                        throw new RuntimeException(e11.toString());
                    }
                }
            } else if (this.f101459q != null) {
                String b10 = this.f101458p.d().b();
                if (b10.indexOf(47) >= 0) {
                    b10 = b10.substring(0, b10.indexOf(47));
                }
                try {
                    AlgorithmParameters a13 = a(b10);
                    this.f101446g = a13;
                    a13.init(new IvParameterSpec(this.f101459q.a()));
                } catch (Exception e12) {
                    throw new RuntimeException(e12.toString());
                }
            }
        }
        return this.f101446g;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec algorithmParameterSpec;
        if (algorithmParameters != null) {
            algorithmParameterSpec = C3670j.a(algorithmParameters, f101454C);
            if (algorithmParameterSpec == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        } else {
            algorithmParameterSpec = null;
        }
        engineInit(i10, key, algorithmParameterSpec, secureRandom);
        this.f101446g = algorithmParameters;
    }

    @Override
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        d c1921a;
        c cVar;
        if (this.f101456n == null) {
            throw new NoSuchAlgorithmException("no mode supported for this algorithm");
        }
        String p10 = w.p(str);
        this.f101455A = p10;
        if (p10.equals(KeyProperties.BLOCK_MODE_ECB)) {
            this.f101464v = 0;
            c1921a = new c(this.f101456n);
        } else if (this.f101455A.equals(KeyProperties.BLOCK_MODE_CBC)) {
            this.f101464v = this.f101456n.c();
            c1921a = new c(C3092c.m(this.f101456n));
        } else if (this.f101455A.startsWith("OFB")) {
            this.f101464v = this.f101456n.c();
            if (this.f101455A.length() != 3) {
                cVar = new c(new C(this.f101456n, Integer.parseInt(this.f101455A.substring(3))));
                this.f101458p = cVar;
                return;
            } else {
                InterfaceC2374f interfaceC2374f = this.f101456n;
                c1921a = new c(new C(interfaceC2374f, interfaceC2374f.c() * 8));
            }
        } else {
            if (!this.f101455A.startsWith("CFB")) {
                if (this.f101455A.startsWith("PGPCFB")) {
                    boolean equals = this.f101455A.equals("PGPCFBWITHIV");
                    if (!equals && this.f101455A.length() != 6) {
                        throw new NoSuchAlgorithmException("no mode support for " + this.f101455A);
                    }
                    this.f101464v = this.f101456n.c();
                    cVar = new c(new F(this.f101456n, equals));
                } else if (this.f101455A.equals("OPENPGPCFB")) {
                    this.f101464v = 0;
                    c1921a = new c(new E(this.f101456n));
                } else if (this.f101455A.equals("FF1")) {
                    this.f101464v = 0;
                    c1921a = new b(new Ni.b(this.f101456n));
                } else if (this.f101455A.equals("FF3-1")) {
                    this.f101464v = 0;
                    c1921a = new b(new Ni.c(this.f101456n));
                } else if (this.f101455A.equals("SIC")) {
                    int c10 = this.f101456n.c();
                    this.f101464v = c10;
                    if (c10 < 16) {
                        throw new IllegalArgumentException("Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)");
                    }
                    this.f101466x = false;
                    c1921a = new c(new C2388u(H.s(this.f101456n)));
                } else if (this.f101455A.equals(KeyProperties.BLOCK_MODE_CTR)) {
                    this.f101464v = this.f101456n.c();
                    this.f101466x = false;
                    InterfaceC2374f interfaceC2374f2 = this.f101456n;
                    cVar = interfaceC2374f2 instanceof C2798x ? new c(new C2388u(new x(interfaceC2374f2))) : new c(new C2388u(H.s(interfaceC2374f2)));
                } else if (this.f101455A.equals("GOFB")) {
                    this.f101464v = this.f101456n.c();
                    c1921a = new c(new C2388u(new u(this.f101456n)));
                } else if (this.f101455A.equals("GCFB")) {
                    this.f101464v = this.f101456n.c();
                    c1921a = new c(new C2388u(new q(this.f101456n)));
                } else if (this.f101455A.equals("CTS")) {
                    this.f101464v = this.f101456n.c();
                    c1921a = new c(new j(C3092c.m(this.f101456n)));
                } else if (this.f101455A.equals("CCM")) {
                    this.f101464v = 12;
                    c1921a = this.f101456n instanceof C2798x ? new C1921a(new Ti.w(this.f101456n)) : new C1921a(C3094e.p(this.f101456n));
                } else if (this.f101455A.equals("OCB")) {
                    if (this.f101457o == null) {
                        throw new NoSuchAlgorithmException("can't support mode " + str);
                    }
                    this.f101464v = 15;
                    c1921a = new C1921a(new B(this.f101456n, this.f101457o.get()));
                } else if (this.f101455A.equals("EAX")) {
                    this.f101464v = this.f101456n.c();
                    c1921a = new C1921a(new l(this.f101456n));
                } else if (this.f101455A.equals("GCM-SIV")) {
                    this.f101464v = 12;
                    c1921a = new C1921a(new Ti.t(this.f101456n));
                } else {
                    if (!this.f101455A.equals("GCM")) {
                        throw new NoSuchAlgorithmException("can't support mode " + str);
                    }
                    InterfaceC2374f interfaceC2374f3 = this.f101456n;
                    if (interfaceC2374f3 instanceof C2798x) {
                        this.f101464v = interfaceC2374f3.c();
                        c1921a = new C1921a(new y(this.f101456n));
                    } else {
                        this.f101464v = 12;
                        c1921a = new C1921a(r.u(this.f101456n));
                    }
                }
                this.f101458p = cVar;
                return;
            }
            this.f101464v = this.f101456n.c();
            if (this.f101455A.length() != 3) {
                cVar = new c(C3096g.q(this.f101456n, Integer.parseInt(this.f101455A.substring(3))));
                this.f101458p = cVar;
                return;
            } else {
                InterfaceC2374f interfaceC2374f4 = this.f101456n;
                c1921a = new c(C3096g.q(interfaceC2374f4, interfaceC2374f4.c() * 8));
            }
        }
        this.f101458p = c1921a;
    }

    @Override
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        c cVar;
        if (this.f101456n == null) {
            throw new NoSuchPaddingException("no padding supported for this algorithm");
        }
        String p10 = w.p(str);
        if (p10.equals("NOPADDING")) {
            if (!this.f101458p.j()) {
                return;
            } else {
                cVar = new c(new C2388u(this.f101458p.d()));
            }
        } else if (p10.equals("WITHCTS") || p10.equals("CTSPADDING") || p10.equals("CS3PADDING")) {
            cVar = new c(new j(this.f101458p.d()));
        } else {
            this.f101465w = true;
            if (c(this.f101455A)) {
                throw new NoSuchPaddingException("Only NoPadding can be used with AEAD modes.");
            }
            if (p10.equals("PKCS5PADDING") || p10.equals("PKCS7PADDING")) {
                cVar = new c(this.f101458p.d());
            } else if (p10.equals("ZEROBYTEPADDING")) {
                cVar = new c(this.f101458p.d(), new h());
            } else if (p10.equals("ISO10126PADDING") || p10.equals("ISO10126-2PADDING")) {
                cVar = new c(this.f101458p.d(), new Wi.b());
            } else if (p10.equals("X9.23PADDING") || p10.equals("X923PADDING")) {
                cVar = new c(this.f101458p.d(), new g());
            } else if (p10.equals("ISO7816-4PADDING") || p10.equals("ISO9797-1PADDING")) {
                cVar = new c(this.f101458p.d(), new Wi.c());
            } else {
                if (!p10.equals("TBCPADDING")) {
                    throw new NoSuchPaddingException("Padding " + str + " unknown.");
                }
                cVar = new c(this.f101458p.d(), new f());
            }
        }
        this.f101458p = cVar;
    }

    @Override
    public int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException {
        if (this.f101458p.g(i11) + i12 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        try {
            return this.f101458p.f(bArr, i10, i11, bArr2, i12);
        } catch (DataLengthException e10) {
            throw new IllegalStateException(e10.toString());
        }
    }

    @Override
    public void engineUpdateAAD(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining < 1) {
            return;
        }
        if (byteBuffer.hasArray()) {
            engineUpdateAAD(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), remaining);
            return;
        }
        if (remaining <= 512) {
            byte[] bArr = new byte[remaining];
            byteBuffer.get(bArr);
            engineUpdateAAD(bArr, 0, remaining);
            org.bouncycastle.util.a.e0(bArr, (byte) 0);
            return;
        }
        byte[] bArr2 = new byte[512];
        do {
            int min = Math.min(512, remaining);
            byteBuffer.get(bArr2, 0, min);
            engineUpdateAAD(bArr2, 0, min);
            remaining -= min;
        } while (remaining > 0);
        org.bouncycastle.util.a.e0(bArr2, (byte) 0);
    }

    public a(InterfaceC2374f interfaceC2374f, int i10) {
        this(interfaceC2374f, true, i10);
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        int engineGetOutputSize = engineGetOutputSize(i11);
        byte[] bArr2 = new byte[engineGetOutputSize];
        int f10 = i11 != 0 ? this.f101458p.f(bArr, i10, i11, bArr2, 0) : 0;
        try {
            int c10 = f10 + this.f101458p.c(bArr2, f10);
            if (c10 == engineGetOutputSize) {
                return bArr2;
            }
            if (c10 > engineGetOutputSize) {
                throw new IllegalBlockSizeException("internal buffer overflow");
            }
            byte[] bArr3 = new byte[c10];
            System.arraycopy(bArr2, 0, bArr3, 0, c10);
            return bArr3;
        } catch (DataLengthException e10) {
            throw new IllegalBlockSizeException(e10.getMessage());
        }
    }

    @Override
    public void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new InvalidKeyException(e10.getMessage());
        }
    }

    @Override
    public byte[] engineUpdate(byte[] bArr, int i10, int i11) {
        int g10 = this.f101458p.g(i11);
        if (g10 <= 0) {
            this.f101458p.f(bArr, i10, i11, null, 0);
            return null;
        }
        byte[] bArr2 = new byte[g10];
        int f10 = this.f101458p.f(bArr, i10, i11, bArr2, 0);
        if (f10 == 0) {
            return null;
        }
        if (f10 == g10) {
            return bArr2;
        }
        byte[] bArr3 = new byte[f10];
        System.arraycopy(bArr2, 0, bArr3, 0, f10);
        return bArr3;
    }

    @Override
    public void engineUpdateAAD(byte[] bArr, int i10, int i11) {
        this.f101458p.e(bArr, i10, i11);
    }

    public a(InterfaceC2374f interfaceC2374f, int i10, int i11, int i12, int i13) {
        this.f101466x = true;
        this.f101467y = null;
        this.f101468z = null;
        this.f101455A = null;
        this.f101456n = interfaceC2374f;
        this.f101462t = i10;
        this.f101463u = i11;
        this.f101461s = i12;
        this.f101464v = i13;
        this.f101458p = new c(interfaceC2374f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:186:0x00fa, code lost:
    
        if (r7 != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0146, code lost:
    
        if (r7 != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x01fe, code lost:
    
        if (r7 != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ac, code lost:
    
        if (r7 != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ae, code lost:
    
        r20.f101459q = (Xi.w0) r5;
        r5 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x04a3 A[Catch: Exception -> 0x048d, IllegalArgumentException -> 0x048f, TryCatch #3 {IllegalArgumentException -> 0x048f, Exception -> 0x048d, blocks: (B:72:0x0471, B:73:0x048c, B:74:0x0491, B:75:0x049d, B:77:0x04a3, B:79:0x04a7, B:83:0x0498), top: B:67:0x0468 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        InterfaceC2379k interfaceC2379k;
        InterfaceC2379k z10;
        w0 w0Var;
        InterfaceC2379k interfaceC2379k2;
        d dVar;
        C3331a c3331a;
        InterfaceC2379k interfaceC2379k3;
        InterfaceC2379k interfaceC2379k4;
        InterfaceC2374f interfaceC2374f;
        InterfaceC2379k interfaceC2379k5 = null;
        this.f101467y = null;
        this.f101468z = null;
        this.f101446g = null;
        this.f101460r = null;
        if (!(key instanceof SecretKey)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Key for algorithm ");
            sb2.append(key != null ? key.getAlgorithm() : null);
            sb2.append(" not suitable for symmetric enryption.");
            throw new InvalidKeyException(sb2.toString());
        }
        if (algorithmParameterSpec == null && (interfaceC2374f = this.f101456n) != null && interfaceC2374f.b().startsWith("RC5-64")) {
            throw new InvalidAlgorithmParameterException("RC5 requires an RC5ParametersSpec to be passed in.");
        }
        int i11 = this.f101462t;
        if (i11 == 2 || (key instanceof Hj.l)) {
            try {
                SecretKey secretKey = (SecretKey) key;
                if (algorithmParameterSpec instanceof PBEParameterSpec) {
                    this.f101467y = (PBEParameterSpec) algorithmParameterSpec;
                }
                boolean z11 = secretKey instanceof PBEKey;
                if (z11 && this.f101467y == null) {
                    PBEKey pBEKey = (PBEKey) secretKey;
                    if (pBEKey.getSalt() == null) {
                        throw new InvalidAlgorithmParameterException("PBEKey requires parameters to specify salt");
                    }
                    this.f101467y = new PBEParameterSpec(pBEKey.getSalt(), pBEKey.getIterationCount());
                }
                if (this.f101467y == null && !z11) {
                    throw new InvalidKeyException("Algorithm requires a PBE key");
                }
                if (key instanceof C3661a) {
                    InterfaceC2379k h10 = ((C3661a) key).h();
                    if (!(h10 instanceof w0)) {
                        if (h10 != null) {
                            throw new InvalidKeyException("Algorithm requires a PBE key suitable for PKCS12");
                        }
                        h10 = d.a.h(secretKey.getEncoded(), 2, this.f101463u, this.f101461s, this.f101464v * 8, this.f101467y, this.f101458p.b());
                    }
                    interfaceC2379k = h10;
                } else {
                    interfaceC2379k = d.a.h(secretKey.getEncoded(), 2, this.f101463u, this.f101461s, this.f101464v * 8, this.f101467y, this.f101458p.b());
                }
                boolean z12 = interfaceC2379k instanceof w0;
                interfaceC2379k3 = interfaceC2379k;
                interfaceC2379k5 = interfaceC2379k;
            } catch (Exception unused) {
                throw new InvalidKeyException("PKCS12 requires a SecretKey/PBEKey");
            }
        } else if (key instanceof Hj.g) {
            Hj.g gVar = (Hj.g) key;
            if (algorithmParameterSpec instanceof PBEParameterSpec) {
                this.f101467y = (PBEParameterSpec) algorithmParameterSpec;
            }
            if ((gVar instanceof Hj.h) && this.f101467y == null) {
                Hj.h hVar = (Hj.h) gVar;
                this.f101467y = new PBEParameterSpec(hVar.getSalt(), hVar.getIterationCount());
            }
            InterfaceC2379k h11 = d.a.h(gVar.getEncoded(), 0, this.f101463u, this.f101461s, this.f101464v * 8, this.f101467y, this.f101458p.b());
            boolean z13 = h11 instanceof w0;
            interfaceC2379k3 = h11;
            interfaceC2379k5 = h11;
        } else if (key instanceof C3661a) {
            C3661a c3661a = (C3661a) key;
            this.f101468z = c3661a.g() != null ? c3661a.g().J() : c3661a.getAlgorithm();
            if (c3661a.h() != null) {
                interfaceC2379k4 = b(algorithmParameterSpec, c3661a.h());
            } else {
                if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                    throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                }
                this.f101467y = (PBEParameterSpec) algorithmParameterSpec;
                interfaceC2379k4 = d.a.f(c3661a, algorithmParameterSpec, this.f101458p.d().b());
            }
            boolean z14 = interfaceC2379k4 instanceof w0;
            interfaceC2379k3 = interfaceC2379k4;
            interfaceC2379k5 = interfaceC2379k4;
        } else {
            if (key instanceof PBEKey) {
                PBEKey pBEKey2 = (PBEKey) key;
                PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
                this.f101467y = pBEParameterSpec;
                if ((pBEKey2 instanceof m) && pBEParameterSpec == null) {
                    this.f101467y = new PBEParameterSpec(pBEKey2.getSalt(), pBEKey2.getIterationCount());
                }
                InterfaceC2379k h12 = d.a.h(pBEKey2.getEncoded(), this.f101462t, this.f101463u, this.f101461s, this.f101464v * 8, this.f101467y, this.f101458p.b());
                boolean z15 = h12 instanceof w0;
                interfaceC2379k3 = h12;
                interfaceC2379k5 = h12;
            } else if (!(key instanceof ck.x)) {
                if (i11 == 0 || i11 == 4 || i11 == 1 || i11 == 5) {
                    throw new InvalidKeyException("Algorithm requires a PBE key");
                }
                interfaceC2379k5 = new C3360o0(key.getEncoded());
            }
            try {
                if (algorithmParameterSpec instanceof C4208a) {
                    if (!c(this.f101455A) && !(this.f101458p instanceof C1921a)) {
                        throw new InvalidAlgorithmParameterException("AEADParameterSpec can only be used with AEAD modes.");
                    }
                    C4208a c4208a = (C4208a) algorithmParameterSpec;
                    c3331a = new C3331a(interfaceC2379k5 instanceof w0 ? (C3360o0) ((w0) interfaceC2379k5).b() : (C3360o0) interfaceC2379k5, c4208a.b(), c4208a.c(), c4208a.a());
                } else {
                    if (algorithmParameterSpec instanceof IvParameterSpec) {
                        if (this.f101464v != 0) {
                            IvParameterSpec ivParameterSpec = (IvParameterSpec) algorithmParameterSpec;
                            if (ivParameterSpec.getIV().length == this.f101464v || (this.f101458p instanceof C1921a) || !this.f101466x) {
                                w0 w0Var2 = interfaceC2379k5 instanceof w0 ? new w0(((w0) interfaceC2379k5).b(), ivParameterSpec.getIV()) : new w0(interfaceC2379k5, ivParameterSpec.getIV());
                                this.f101459q = w0Var2;
                                z10 = w0Var2;
                            } else {
                                throw new InvalidAlgorithmParameterException("IV must be " + this.f101464v + " bytes long.");
                            }
                        } else {
                            String str = this.f101455A;
                            z10 = interfaceC2379k5;
                            if (str != null) {
                                z10 = interfaceC2379k5;
                                if (str.equals(KeyProperties.BLOCK_MODE_ECB)) {
                                    throw new InvalidAlgorithmParameterException("ECB mode does not use an IV");
                                }
                            }
                        }
                    } else if (algorithmParameterSpec instanceof C4217j) {
                        C4217j c4217j = (C4217j) algorithmParameterSpec;
                        y0 y0Var = new y0(new C3360o0(key.getEncoded()), c4217j.c());
                        z10 = y0Var;
                        if (c4217j.a() != null) {
                            z10 = y0Var;
                            if (this.f101464v != 0) {
                                w0Var = new w0(y0Var, c4217j.a());
                                this.f101459q = w0Var;
                                z10 = w0Var;
                            }
                        }
                    } else if (algorithmParameterSpec instanceof RC2ParameterSpec) {
                        RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
                        B0 b02 = new B0(key.getEncoded(), rC2ParameterSpec.getEffectiveKeyBits());
                        z10 = b02;
                        if (rC2ParameterSpec.getIV() != null) {
                            z10 = b02;
                            if (this.f101464v != 0) {
                                w0Var = new w0(b02, rC2ParameterSpec.getIV());
                                this.f101459q = w0Var;
                                z10 = w0Var;
                            }
                        }
                    } else if (algorithmParameterSpec instanceof RC5ParameterSpec) {
                        RC5ParameterSpec rC5ParameterSpec = (RC5ParameterSpec) algorithmParameterSpec;
                        Xi.C0 c02 = new Xi.C0(key.getEncoded(), rC5ParameterSpec.getRounds());
                        if (!this.f101456n.b().startsWith("RC5")) {
                            throw new InvalidAlgorithmParameterException("RC5 parameters passed to a cipher that is not RC5.");
                        }
                        if (this.f101456n.b().equals("RC5-32")) {
                            if (rC5ParameterSpec.getWordSize() != 32) {
                                throw new InvalidAlgorithmParameterException("RC5 already set up for a word size of 32 not " + rC5ParameterSpec.getWordSize() + ".");
                            }
                        } else if (this.f101456n.b().equals("RC5-64") && rC5ParameterSpec.getWordSize() != 64) {
                            throw new InvalidAlgorithmParameterException("RC5 already set up for a word size of 64 not " + rC5ParameterSpec.getWordSize() + ".");
                        }
                        z10 = c02;
                        if (rC5ParameterSpec.getIV() != null) {
                            z10 = c02;
                            if (this.f101464v != 0) {
                                w0Var = new w0(c02, rC5ParameterSpec.getIV());
                                this.f101459q = w0Var;
                                z10 = w0Var;
                            }
                        }
                    } else if (algorithmParameterSpec instanceof C4216i) {
                        C4216i c4216i = (C4216i) algorithmParameterSpec;
                        z10 = new Z((C3360o0) interfaceC2379k5, c4216i.b(), c4216i.c(), c4216i.d());
                    } else {
                        z10 = interfaceC2379k5;
                        if (C3668h.k(algorithmParameterSpec)) {
                            if (!c(this.f101455A) && !(this.f101458p instanceof C1921a)) {
                                throw new InvalidAlgorithmParameterException("GCMParameterSpec can only be used with AEAD modes.");
                            }
                            c3331a = C3668h.c(interfaceC2379k5 instanceof w0 ? (C3360o0) ((w0) interfaceC2379k5).b() : (C3360o0) interfaceC2379k5, algorithmParameterSpec);
                        } else if (algorithmParameterSpec != null) {
                            z10 = interfaceC2379k5;
                            if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                                throw new InvalidAlgorithmParameterException("unknown parameter type.");
                            }
                        }
                    }
                    interfaceC2379k2 = z10;
                    if (this.f101464v != 0) {
                        boolean z16 = z10 instanceof w0;
                        interfaceC2379k2 = z10;
                        if (!z16) {
                            boolean z17 = z10 instanceof C3331a;
                            interfaceC2379k2 = z10;
                            if (!z17) {
                                SecureRandom h13 = secureRandom == null ? Bi.r.h() : secureRandom;
                                if (i10 == 1 || i10 == 3) {
                                    byte[] bArr = new byte[this.f101464v];
                                    h13.nextBytes(bArr);
                                    w0 w0Var3 = new w0(z10, bArr);
                                    this.f101459q = w0Var3;
                                    interfaceC2379k2 = w0Var3;
                                } else {
                                    interfaceC2379k2 = z10;
                                    if (this.f101458p.d().b().indexOf("PGPCFB") < 0) {
                                        throw new InvalidAlgorithmParameterException("no IV set when one expected");
                                    }
                                }
                            }
                        }
                    }
                    if (secureRandom != null && this.f101465w) {
                        interfaceC2379k2 = new x0(interfaceC2379k2, secureRandom);
                    }
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 != 4) {
                                    throw new InvalidParameterException("unknown opmode " + i10 + " passed");
                                }
                            }
                        }
                        this.f101458p.a(false, interfaceC2379k2);
                        dVar = this.f101458p;
                        if ((dVar instanceof C1921a) && this.f101460r == null) {
                            this.f101460r = new C3331a((C3360o0) this.f101459q.b(), ((C1921a) dVar).f101470a.e().length * 8, this.f101459q.a());
                            return;
                        }
                        return;
                    }
                    this.f101458p.a(true, interfaceC2379k2);
                    dVar = this.f101458p;
                    if (dVar instanceof C1921a) {
                        return;
                    } else {
                        return;
                    }
                }
                if (i10 != 1) {
                }
                this.f101458p.a(true, interfaceC2379k2);
                dVar = this.f101458p;
                if (dVar instanceof C1921a) {
                }
            } catch (IllegalArgumentException e10) {
                throw new InvalidAlgorithmParameterException(e10.getMessage(), e10);
            } catch (Exception e11) {
                throw new BaseWrapCipher.InvalidKeyOrParametersException(e11.getMessage(), e11);
            }
            this.f101460r = c3331a;
            z10 = c3331a;
            interfaceC2379k2 = z10;
            if (this.f101464v != 0) {
            }
            if (secureRandom != null) {
                interfaceC2379k2 = new x0(interfaceC2379k2, secureRandom);
            }
        }
    }

    public a(InterfaceC2374f interfaceC2374f, boolean z10, int i10) {
        this.f101462t = -1;
        this.f101464v = 0;
        this.f101467y = null;
        this.f101468z = null;
        this.f101455A = null;
        this.f101456n = interfaceC2374f;
        this.f101466x = z10;
        this.f101458p = new c(interfaceC2374f);
        this.f101464v = i10 / 8;
    }

    public a(C2376h c2376h, int i10) {
        this(c2376h, true, i10);
    }

    public a(C2376h c2376h, boolean z10, int i10) {
        this.f101462t = -1;
        this.f101464v = 0;
        this.f101466x = true;
        this.f101467y = null;
        this.f101468z = null;
        this.f101455A = null;
        this.f101456n = c2376h.d();
        this.f101458p = new c(c2376h);
        this.f101466x = z10;
        this.f101464v = i10 / 8;
    }

    public a(InterfaceC3090a interfaceC3090a) {
        this.f101462t = -1;
        this.f101464v = 0;
        this.f101466x = true;
        this.f101467y = null;
        this.f101468z = null;
        this.f101455A = null;
        this.f101456n = interfaceC3090a.d();
        this.f101464v = interfaceC3090a.b().indexOf("GCM") >= 0 ? 12 : this.f101456n.c();
        this.f101458p = new C1921a(interfaceC3090a);
    }

    public a(InterfaceC3090a interfaceC3090a, boolean z10, int i10) {
        this.f101462t = -1;
        this.f101464v = 0;
        this.f101466x = true;
        this.f101467y = null;
        this.f101468z = null;
        this.f101455A = null;
        this.f101456n = interfaceC3090a.d();
        this.f101466x = z10;
        this.f101464v = i10;
        this.f101458p = new C1921a(interfaceC3090a);
    }

    public a(InterfaceC3091b interfaceC3091b, boolean z10, int i10) {
        this.f101462t = -1;
        this.f101467y = null;
        this.f101468z = null;
        this.f101455A = null;
        this.f101456n = null;
        this.f101466x = z10;
        this.f101464v = i10;
        this.f101458p = new C1921a(interfaceC3091b);
    }

    public a(InterfaceC3666f interfaceC3666f) {
        this.f101462t = -1;
        this.f101464v = 0;
        this.f101466x = true;
        this.f101467y = null;
        this.f101468z = null;
        this.f101455A = null;
        this.f101456n = interfaceC3666f.get();
        this.f101457o = interfaceC3666f;
        this.f101458p = new c(interfaceC3666f.get());
    }
}
