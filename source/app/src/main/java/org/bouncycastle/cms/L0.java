package org.bouncycastle.cms;

import Qk.InterfaceC3013f;
import fm.C13262f;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import li.C14146h;
import oh.C14549x;
import oh.InterfaceC14520i;
import uh.C15611b;

public class L0 {

    public final uh.X f100545a;

    public final InterfaceC14626d f100546b;

    public final InterfaceC14626d f100547c;

    public final InterfaceC3013f f100548d;

    public final Qk.p f100549e;

    public final C13486b f100550f;

    public final N f100551g;

    public byte[] f100552h;

    public C14146h f100553i;

    public L0(L0 l02, InterfaceC14626d interfaceC14626d, InterfaceC14626d interfaceC14626d2) {
        this.f100552h = null;
        this.f100545a = l02.f100545a;
        this.f100548d = l02.f100548d;
        this.f100550f = l02.f100550f;
        this.f100549e = l02.f100549e;
        this.f100551g = l02.f100551g;
        this.f100546b = interfaceC14626d;
        this.f100547c = interfaceC14626d2;
    }

    public uh.Y a(C14549x c14549x) throws CMSException {
        C13486b c13486b;
        oh.G g10;
        oh.G g11;
        try {
            C13486b a10 = this.f100551g.a(this.f100548d.a());
            if (this.f100546b != null) {
                c13486b = this.f100549e.a();
                this.f100552h = this.f100549e.b();
                oh.G c10 = c(this.f100546b.a(Collections.unmodifiableMap(d(c14549x, this.f100549e.a(), a10, this.f100552h))));
                OutputStream outputStream = this.f100548d.getOutputStream();
                outputStream.write(c10.s(InterfaceC14520i.f98892a));
                outputStream.close();
                g10 = c10;
            } else {
                c13486b = this.f100550f;
                Qk.p pVar = this.f100549e;
                if (pVar != null) {
                    this.f100552h = pVar.b();
                } else {
                    this.f100552h = null;
                }
                g10 = null;
            }
            byte[] signature = this.f100548d.getSignature();
            if (this.f100547c != null) {
                Map d10 = d(c14549x, c13486b, a10, this.f100552h);
                d10.put(InterfaceC14626d.f100734c, org.bouncycastle.util.a.p(signature));
                g11 = c(this.f100547c.a(Collections.unmodifiableMap(d10)));
            } else {
                g11 = null;
            }
            return new uh.Y(this.f100545a, (this.f100546b == null && Bh.a.f1843e.A(a10.u())) ? new C13486b(Sh.d.f23359n) : c13486b, g10, a10, new oh.C0(signature), g11);
        } catch (IOException e10) {
            throw new CMSException("encoding error.", e10);
        }
    }

    public C14146h b() {
        return this.f100553i;
    }

    public final oh.G c(C15611b c15611b) {
        if (c15611b != null) {
            return new oh.I0(c15611b.h());
        }
        return null;
    }

    public final Map d(C14549x c14549x, C13486b c13486b, C13486b c13486b2, byte[] bArr) {
        HashMap hashMap = new HashMap();
        if (c14549x != null) {
            hashMap.put(InterfaceC14626d.f100732a, c14549x);
        }
        hashMap.put(InterfaceC14626d.f100735d, c13486b);
        hashMap.put(InterfaceC14626d.f100737f, c13486b2);
        hashMap.put(InterfaceC14626d.f100733b, org.bouncycastle.util.a.p(bArr));
        return hashMap;
    }

    public byte[] e() {
        byte[] bArr = this.f100552h;
        if (bArr != null) {
            return org.bouncycastle.util.a.p(bArr);
        }
        return null;
    }

    public OutputStream f() {
        Qk.p pVar = this.f100549e;
        return pVar != null ? this.f100546b == null ? new C13262f(this.f100549e.getOutputStream(), this.f100548d.getOutputStream()) : pVar.getOutputStream() : this.f100548d.getOutputStream();
    }

    public C13486b g() {
        return this.f100550f;
    }

    public int h() {
        return this.f100545a.x() ? 3 : 1;
    }

    public uh.X i() {
        return this.f100545a;
    }

    public InterfaceC14626d j() {
        return this.f100546b;
    }

    public InterfaceC14626d k() {
        return this.f100547c;
    }

    public boolean l() {
        return this.f100553i != null;
    }

    public void m(C14146h c14146h) {
        this.f100553i = c14146h;
    }

    public L0(uh.X x10, InterfaceC3013f interfaceC3013f, Qk.p pVar, N n10, InterfaceC14626d interfaceC14626d, InterfaceC14626d interfaceC14626d2) {
        this.f100552h = null;
        this.f100545a = x10;
        this.f100548d = interfaceC3013f;
        this.f100550f = pVar.a();
        this.f100549e = pVar;
        this.f100546b = interfaceC14626d;
        this.f100547c = interfaceC14626d2;
        this.f100551g = n10;
    }

    public L0(uh.X x10, InterfaceC3013f interfaceC3013f, C13486b c13486b, N n10) {
        this.f100552h = null;
        this.f100545a = x10;
        this.f100548d = interfaceC3013f;
        this.f100550f = c13486b;
        this.f100549e = null;
        this.f100546b = null;
        this.f100547c = null;
        this.f100551g = n10;
    }
}
