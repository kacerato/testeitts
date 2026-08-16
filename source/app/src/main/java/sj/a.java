package Sj;

import Xh.B;
import Xh.t;
import Xh.x;
import bk.C3898d;
import hi.C13486b;
import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import oh.A0;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14520i;

public abstract class a extends AlgorithmParametersSpi {

    public static class C0561a extends a {

        public OAEPParameterSpec f23533a;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == OAEPParameterSpec.class || cls == AlgorithmParameterSpec.class) {
                return this.f23533a;
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to OAEP parameters object.");
        }

        @Override
        public byte[] engineGetEncoded() {
            C14549x b10 = C3898d.b(this.f23533a.getDigestAlgorithm());
            A0 a02 = A0.f98776c;
            try {
                return new x(new C13486b(b10, a02), new C13486b(t.f29037O0, new C13486b(C3898d.b(((MGF1ParameterSpec) this.f23533a.getMGFParameters()).getDigestAlgorithm()), a02)), new C13486b(t.f29041P0, new C0(((PSource.PSpecified) this.f23533a.getPSource()).getValue()))).s(InterfaceC14520i.f98892a);
            } catch (IOException unused) {
                throw new RuntimeException("Error encoding OAEPParameters");
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof OAEPParameterSpec)) {
                throw new InvalidParameterSpecException("OAEPParameterSpec required to initialise an OAEP algorithm parameters object");
            }
            this.f23533a = (OAEPParameterSpec) algorithmParameterSpec;
        }

        @Override
        public String engineToString() {
            return "OAEP Parameters";
        }

        @Override
        public byte[] engineGetEncoded(String str) {
            if (a(str) || str.equalsIgnoreCase("X.509")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override
        public void engineInit(byte[] bArr) throws IOException {
            try {
                x v10 = x.v(bArr);
                if (v10.x().u().A(t.f29037O0)) {
                    this.f23533a = new OAEPParameterSpec(dk.h.b(v10.u().u()), OAEPParameterSpec.DEFAULT.getMGFAlgorithm(), new MGF1ParameterSpec(dk.h.b(C13486b.v(v10.x().x()).u())), new PSource.PSpecified(AbstractC14551y.F(v10.y().x()).H()));
                    return;
                }
                throw new IOException("unknown mask generation function: " + ((Object) v10.x().u()));
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IOException("Not a valid OAEP Parameter encoding.");
            } catch (ClassCastException unused2) {
                throw new IOException("Not a valid OAEP Parameter encoding.");
            }
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (str.equalsIgnoreCase("X.509") || str.equalsIgnoreCase("ASN.1")) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }
    }

    public static class b extends a {

        public PSSParameterSpec f23534a;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == PSSParameterSpec.class || cls == AlgorithmParameterSpec.class) {
                return this.f23534a;
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to PSS parameters object.");
        }

        @Override
        public byte[] engineGetEncoded() throws IOException {
            PSSParameterSpec pSSParameterSpec = this.f23534a;
            C14549x b10 = C3898d.b(pSSParameterSpec.getDigestAlgorithm());
            C14549x c14549x = Sh.d.f23357m;
            C13486b c13486b = (c14549x.A(b10) || Sh.d.f23359n.A(b10)) ? new C13486b(b10) : new C13486b(b10, A0.f98776c);
            MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) pSSParameterSpec.getMGFParameters();
            if (mGF1ParameterSpec != null) {
                return new B(c13486b, new C13486b(t.f29037O0, new C13486b(C3898d.b(mGF1ParameterSpec.getDigestAlgorithm()), A0.f98776c)), new C14539s(pSSParameterSpec.getSaltLength()), new C14539s(pSSParameterSpec.getTrailerField())).s(InterfaceC14520i.f98892a);
            }
            if (!pSSParameterSpec.getMGFAlgorithm().equals("SHAKE128")) {
                c14549x = Sh.d.f23359n;
            }
            return new B(c13486b, new C13486b(c14549x), new C14539s(pSSParameterSpec.getSaltLength()), new C14539s(pSSParameterSpec.getTrailerField())).s(InterfaceC14520i.f98892a);
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof PSSParameterSpec)) {
                throw new InvalidParameterSpecException("PSSParameterSpec required to initialise an PSS algorithm parameters object");
            }
            this.f23534a = (PSSParameterSpec) algorithmParameterSpec;
        }

        @Override
        public String engineToString() {
            return "PSS Parameters";
        }

        @Override
        public byte[] engineGetEncoded(String str) throws IOException {
            if (str.equalsIgnoreCase("X.509") || str.equalsIgnoreCase("ASN.1")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override
        public void engineInit(byte[] bArr) throws IOException {
            try {
                B v10 = B.v(bArr);
                C14549x u10 = v10.x().u();
                if (u10.A(t.f29037O0)) {
                    this.f23534a = new PSSParameterSpec(dk.h.b(v10.u().u()), PSSParameterSpec.DEFAULT.getMGFAlgorithm(), new MGF1ParameterSpec(dk.h.b(C13486b.v(v10.x().x()).u())), v10.y().intValue(), v10.z().intValue());
                    return;
                }
                C14549x c14549x = Sh.d.f23357m;
                if (!u10.A(c14549x) && !u10.A(Sh.d.f23359n)) {
                    throw new IOException("unknown mask generation function: " + ((Object) v10.x().u()));
                }
                this.f23534a = new PSSParameterSpec(dk.h.b(v10.u().u()), u10.A(c14549x) ? "SHAKE128" : "SHAKE256", null, v10.y().intValue(), v10.z().intValue());
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IOException("Not a valid PSS Parameter encoding.");
            } catch (ClassCastException unused2) {
                throw new IOException("Not a valid PSS Parameter encoding.");
            }
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (a(str) || str.equalsIgnoreCase("X.509")) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }
    }

    public boolean a(String str) {
        return str == null || str.equals("ASN.1");
    }

    public abstract AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException;

    @Override
    public AlgorithmParameterSpec engineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        if (cls != null) {
            return b(cls);
        }
        throw new NullPointerException("argument to getParameterSpec must not be null");
    }
}
