package vi;

import java.util.HashSet;
import java.util.Set;
import oh.C14549x;
import org.bouncycastle.util.n;

public class C15852d implements n {

    public Set f121616a;

    public Set f121617b = new HashSet();

    public boolean f121618c;

    public int f121619d;

    public C15852d(Set set) {
        this.f121616a = set;
    }

    public void a(C14549x c14549x) {
        this.f121617b.add(c14549x);
    }

    public Set b() {
        HashSet hashSet = new HashSet(this.f121616a);
        hashSet.removeAll(this.f121617b);
        return hashSet;
    }

    public boolean c() {
        return this.f121618c;
    }

    @Override
    public n copy() {
        C15852d c15852d = new C15852d(new HashSet(this.f121616a));
        c15852d.f121617b = new HashSet(this.f121617b);
        c15852d.f121618c = this.f121618c;
        c15852d.f121619d = this.f121619d;
        return c15852d;
    }

    public void d(boolean z10) {
        this.f121618c = z10;
    }

    @Override
    public void j(n nVar) {
        C15852d c15852d = (C15852d) nVar;
        this.f121616a = new HashSet(c15852d.f121616a);
        this.f121617b = new HashSet(c15852d.f121617b);
        this.f121618c = c15852d.f121618c;
        this.f121619d = c15852d.f121619d;
    }
}
