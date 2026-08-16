package b3;

import v1.C15791l;

public class m implements r {

    public final C15791l<String> f32932a;

    public m(C15791l<String> c15791l) {
        this.f32932a = c15791l;
    }

    @Override
    public boolean a(f3.d dVar) {
        if (!dVar.l() && !dVar.k() && !dVar.i()) {
            return false;
        }
        this.f32932a.e(dVar.d());
        return true;
    }

    @Override
    public boolean onException(Exception exc) {
        return false;
    }
}
