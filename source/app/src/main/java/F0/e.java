package F0;

import F0.d;
import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.Iterator;

public final class e implements d, d.a {

    public final HashSet f6125a = new HashSet();

    @Override
    public void a(int i10, int i11) {
        Iterator it = this.f6125a.iterator();
        while (it.hasNext()) {
            ((d) it.next()).a(i10, i11);
        }
    }

    @Override
    public void b(@NonNull d dVar) {
        this.f6125a.add(dVar);
    }

    @Override
    public void c(@NonNull d dVar) {
        this.f6125a.remove(dVar);
    }

    @Override
    public void d(int i10, int i11) {
        Iterator it = this.f6125a.iterator();
        while (it.hasNext()) {
            ((d) it.next()).d(i10, i11);
        }
    }

    @Override
    public void e(int i10, int i11) {
        Iterator it = this.f6125a.iterator();
        while (it.hasNext()) {
            ((d) it.next()).e(i10, i11);
        }
    }

    @Override
    public void f(int i10, int i11, int i12) {
        Iterator it = this.f6125a.iterator();
        while (it.hasNext()) {
            ((d) it.next()).f(i10, i11, i12);
        }
    }

    @Override
    public void g() {
        Iterator it = this.f6125a.iterator();
        while (it.hasNext()) {
            ((d) it.next()).g();
        }
    }

    public void h() {
        this.f6125a.clear();
    }

    public boolean i() {
        return !this.f6125a.isEmpty();
    }
}
