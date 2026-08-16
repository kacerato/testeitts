package org.bouncycastle.pkix.jcajce;

import hi.C13489c0;

public class i {

    public static final i f102043b = new i(33023);

    public int f102044a;

    public i() {
        this(0);
    }

    public void a(i iVar) {
        this.f102044a = iVar.b() | this.f102044a;
    }

    public int b() {
        return this.f102044a;
    }

    public boolean c(i iVar) {
        return ((iVar.b() ^ this.f102044a) | this.f102044a) != 0;
    }

    public i d(i iVar) {
        i iVar2 = new i();
        iVar2.a(new i(iVar.b() & this.f102044a));
        return iVar2;
    }

    public boolean e() {
        return this.f102044a == f102043b.f102044a;
    }

    public i(int i10) {
        this.f102044a = i10;
    }

    public i(C13489c0 c13489c0) {
        this.f102044a = c13489c0.L();
    }
}
