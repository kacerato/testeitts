package dk;

import hi.h0;
import java.io.IOException;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import jk.AbstractC13875e;
import ki.l;
import ki.m;
import ki.n;
import oh.AbstractC14551y;
import oh.C14549x;

public class C12949e {

    public static class a implements ECPublicKey {

        public final ECPublicKey f84744b;

        public a(ECPublicKey eCPublicKey) {
            this.f84744b = eCPublicKey;
        }

        @Override
        public String getAlgorithm() {
            return this.f84744b.getAlgorithm();
        }

        @Override
        public byte[] getEncoded() {
            AbstractC13875e v10;
            h0 w10 = h0.w(this.f84744b.getEncoded());
            ki.j u10 = ki.j.u(w10.u().x());
            if (u10.z()) {
                C14549x c14549x = (C14549x) u10.x();
                m m10 = Ji.a.m(c14549x);
                if (m10 == null) {
                    m10 = ki.e.e(c14549x);
                }
                v10 = m10.c();
            } else {
                if (u10.y()) {
                    throw new IllegalStateException("unable to identify implictlyCA");
                }
                v10 = l.B(u10.x()).v();
            }
            try {
                return new h0(w10.u(), AbstractC14551y.F(new n(v10.l(w10.z().J()), true).r()).H()).getEncoded();
            } catch (IOException e10) {
                throw new IllegalStateException("unable to encode EC public key: " + e10.getMessage());
            }
        }

        @Override
        public String getFormat() {
            return this.f84744b.getFormat();
        }

        @Override
        public ECParameterSpec getParams() {
            return this.f84744b.getParams();
        }

        @Override
        public ECPoint getW() {
            return this.f84744b.getW();
        }
    }

    public static ECPublicKey a(ECPublicKey eCPublicKey) {
        return new a(eCPublicKey);
    }
}
