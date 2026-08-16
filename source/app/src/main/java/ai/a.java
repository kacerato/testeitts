package Ai;

import Qk.C;
import Qk.C3019l;
import Qk.D;
import Qk.F;
import Qk.I;
import Qk.r;
import Ti.InterfaceC3090a;
import Xh.t;
import Xi.C3360o0;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.security.SecureRandom;
import oh.C14549x;
import org.bouncycastle.cms.CMSException;

public class a {

    public static final I f785e = C3019l.f22473a;

    public final C14549x f786a;

    public final int f787b;

    public p f788c;

    public SecureRandom f789d;

    public static class C0018a extends OutputStream {

        public InterfaceC3090a f790b;

        public C0018a(InterfaceC3090a interfaceC3090a) {
            this.f790b = interfaceC3090a;
        }

        @Override
        public void write(int i10) throws IOException {
            this.f790b.k((byte) i10);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f790b.j(bArr, i10, i11);
        }
    }

    public class b extends c implements D {

        public InterfaceC3090a f791e;

        public C f792f;

        public b(C14549x c14549x, int i10, SecureRandom secureRandom) throws CMSException {
            super(c14549x, i10, secureRandom);
            this.f791e = e();
        }

        @Override
        public byte[] b() {
            return this.f792f.c();
        }

        @Override
        public OutputStream c() {
            return new C0018a(this.f791e);
        }

        @Override
        public OutputStream d(OutputStream outputStream) {
            C c10 = new C(outputStream, this.f791e.e().length);
            this.f792f = c10;
            return org.bouncycastle.crypto.util.c.d(c10, this.f796c);
        }

        public final InterfaceC3090a e() {
            Object obj = this.f796c;
            if (obj instanceof InterfaceC3090a) {
                return (InterfaceC3090a) obj;
            }
            throw new IllegalArgumentException("Unable to create Authenticated Output Encryptor without Authenticaed Data cipher!");
        }
    }

    public class c implements F {

        public C3360o0 f794a;

        public C13486b f795b;

        public Object f796c;

        public c(C14549x c14549x, int i10, SecureRandom secureRandom) throws CMSException {
            secureRandom = secureRandom == null ? new SecureRandom() : secureRandom;
            this.f794a = new C3360o0(a.this.f788c.b(c14549x, i10, secureRandom).a());
            C13486b e10 = a.this.f788c.e(c14549x, this.f794a, secureRandom);
            this.f795b = e10;
            this.f796c = p.a(true, this.f794a, e10);
        }

        @Override
        public C13486b a() {
            return this.f795b;
        }

        @Override
        public OutputStream d(OutputStream outputStream) {
            return org.bouncycastle.crypto.util.c.d(outputStream, this.f796c);
        }

        @Override
        public r getKey() {
            return new r(this.f795b, this.f794a.b());
        }
    }

    public a(C14549x c14549x) {
        this(c14549x, f785e.b(c14549x));
    }

    public F b() throws CMSException {
        return this.f788c.g(this.f786a) ? new b(this.f786a, this.f787b, this.f789d) : new c(this.f786a, this.f787b, this.f789d);
    }

    public a c(SecureRandom secureRandom) {
        this.f789d = secureRandom;
        return this;
    }

    public a(C14549x c14549x, int i10) {
        int i11;
        this.f788c = new p();
        this.f786a = c14549x;
        int b10 = f785e.b(c14549x);
        if (c14549x.A(t.f29123n1)) {
            i11 = 168;
            if (i10 != 168 && i10 != b10) {
                throw new IllegalArgumentException("incorrect keySize for encryptionOID passed to builder.");
            }
        } else {
            if (!c14549x.A(Wh.b.f27781e)) {
                if (b10 > 0 && b10 != i10) {
                    throw new IllegalArgumentException("incorrect keySize for encryptionOID passed to builder.");
                }
                this.f787b = i10;
                return;
            }
            i11 = 56;
            if (i10 != 56 && i10 != b10) {
                throw new IllegalArgumentException("incorrect keySize for encryptionOID passed to builder.");
            }
        }
        this.f787b = i11;
    }
}
