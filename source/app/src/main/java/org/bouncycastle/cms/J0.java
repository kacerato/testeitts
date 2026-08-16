package org.bouncycastle.cms;

import fm.C13261e;
import java.io.InputStream;
import java.io.OutputStream;

public class J0 {

    public final Object f100543a;

    public J0(Qk.t tVar) {
        this.f100543a = tVar;
    }

    public OutputStream a() {
        return ((Qk.s) this.f100543a).c();
    }

    public InputStream b(InputStream inputStream) {
        Object obj = this.f100543a;
        return obj instanceof Qk.t ? ((Qk.t) obj).d(inputStream) : new C13261e(inputStream, ((Qk.A) this.f100543a).getOutputStream());
    }

    public byte[] c() {
        Object obj = this.f100543a;
        if (obj instanceof Qk.A) {
            return ((Qk.A) obj).e();
        }
        if (obj instanceof Qk.s) {
            return ((Qk.s) obj).b();
        }
        return null;
    }

    public boolean d() {
        return this.f100543a instanceof Qk.s;
    }

    public boolean e() {
        return this.f100543a instanceof Qk.A;
    }

    public J0(Qk.A a10) {
        this.f100543a = a10;
    }
}
