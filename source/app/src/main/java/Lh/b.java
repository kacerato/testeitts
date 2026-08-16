package Lh;

import hi.C13505q;
import java.io.IOException;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.E;
import oh.InterfaceC14514f;
import oh.K0;
import oh.M;

public class b extends AbstractC14545v implements InterfaceC14514f {

    public static final int f13456e = -1;

    public static final int f13457f = 0;

    public static final int f13458g = 1;

    public C13505q f13459b;

    public byte[] f13460c;

    public byte[] f13461d;

    public b(int i10, byte[] bArr) {
        this(new K0(i10, new C0(bArr)));
    }

    public static b v(Object obj) {
        if (obj == null || (obj instanceof b)) {
            return (b) obj;
        }
        if (obj instanceof E) {
            return new b(C13505q.v(obj));
        }
        if (obj instanceof M) {
            return new b((M) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static b w(M m10, boolean z10) {
        if (z10) {
            return v(m10.O());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    @Override
    public B r() {
        return this.f13460c != null ? new K0(0, new C0(this.f13460c)) : this.f13461d != null ? new K0(1, new C0(this.f13461d)) : this.f13459b.r();
    }

    public byte[] u() {
        C13505q c13505q = this.f13459b;
        if (c13505q == null) {
            byte[] bArr = this.f13460c;
            return bArr != null ? org.bouncycastle.util.a.p(bArr) : org.bouncycastle.util.a.p(this.f13461d);
        }
        try {
            return c13505q.getEncoded();
        } catch (IOException e10) {
            throw new IllegalStateException("can't decode certificate: " + ((Object) e10));
        }
    }

    public int x() {
        if (this.f13459b != null) {
            return -1;
        }
        return this.f13460c != null ? 0 : 1;
    }

    public b(C13505q c13505q) {
        this.f13459b = c13505q;
    }

    public b(M m10) {
        if (m10.g() == 0) {
            this.f13460c = AbstractC14551y.G(m10, true).H();
        } else {
            if (m10.g() == 1) {
                this.f13461d = AbstractC14551y.G(m10, true).H();
                return;
            }
            throw new IllegalArgumentException("unknown tag number: " + m10.g());
        }
    }
}
