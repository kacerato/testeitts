package ij;

import li.C14145g;
import li.C14146h;

public class C13746a {

    public final org.bouncycastle.util.t<C14146h> f92300a;

    public org.bouncycastle.util.t<C14145g> f92301b;

    public final k f92302c;

    public final u f92303d;

    public final boolean f92304e;

    public C13746a(org.bouncycastle.util.t<C14146h> tVar, org.bouncycastle.util.t<C14145g> tVar2, k kVar, u uVar, boolean z10) {
        this.f92300a = tVar;
        this.f92302c = kVar;
        this.f92303d = uVar;
        this.f92304e = z10;
        this.f92301b = tVar2;
    }

    public org.bouncycastle.util.t<C14146h> a() {
        org.bouncycastle.util.t<C14146h> tVar = this.f92300a;
        if (tVar != null) {
            return tVar;
        }
        throw new IllegalStateException("Response has no certificates.");
    }

    public org.bouncycastle.util.t<C14145g> b() {
        org.bouncycastle.util.t<C14145g> tVar = this.f92301b;
        if (tVar != null) {
            return tVar;
        }
        throw new IllegalStateException("Response has no CRLs.");
    }

    public k c() {
        return this.f92302c;
    }

    public Object d() {
        return this.f92303d.a();
    }

    public boolean e() {
        return this.f92301b != null;
    }

    public boolean f() {
        return this.f92300a != null;
    }

    public boolean g() {
        return this.f92304e;
    }
}
