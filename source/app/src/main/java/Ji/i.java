package Ji;

public class i {

    public final jk.i f10623a;

    public final jk.i f10624b;

    public i(jk.i iVar, jk.i iVar2) {
        this.f10623a = iVar;
        this.f10624b = iVar2;
    }

    public boolean a(i iVar) {
        return iVar.b().e(b()) && iVar.c().e(c());
    }

    public jk.i b() {
        return this.f10623a;
    }

    public jk.i c() {
        return this.f10624b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof i) {
            return a((i) obj);
        }
        return false;
    }

    public int hashCode() {
        return this.f10623a.hashCode() + (this.f10624b.hashCode() * 37);
    }
}
