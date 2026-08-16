package Bg;

import java.util.Objects;
import yg.EnumC16187c;

public class j extends b {

    public int f1771t;

    public int f1772u = 0;

    public int f1773v;

    public byte[] f1774w;

    public byte[] f1775x;

    public long f1776y;

    public String f1777z;

    public j() {
        b(EnumC16187c.CENTRAL_DIRECTORY);
    }

    public final long N(j jVar) {
        return jVar.q() != null ? jVar.q().e() : jVar.T();
    }

    public int O() {
        return this.f1773v;
    }

    public byte[] P() {
        return this.f1775x;
    }

    public String Q() {
        return this.f1777z;
    }

    public int R() {
        return this.f1772u;
    }

    public byte[] S() {
        return this.f1774w;
    }

    public long T() {
        return this.f1776y;
    }

    public int U() {
        return this.f1771t;
    }

    public void V(int i10) {
        this.f1773v = i10;
    }

    public void W(byte[] bArr) {
        this.f1775x = bArr;
    }

    public void X(String str) {
        this.f1777z = str;
    }

    public void Y(int i10) {
        this.f1772u = i10;
    }

    public void Z(byte[] bArr) {
        this.f1774w = bArr;
    }

    public void a0(long j10) {
        this.f1776y = j10;
    }

    public void b0(int i10) {
        this.f1771t = i10;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && super.equals(obj) && N(this) == N((j) obj);
    }

    public int hashCode() {
        return Objects.hash(j(), Long.valueOf(N(this)));
    }

    public String toString() {
        return j();
    }
}
