package s7;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import s7.C15235a;

public class c<T extends C15235a> {

    public final LayoutInflater f109288a;

    public String f109289b;

    public a<T> f109290c;

    public final List<c<T>> f109291d;

    public interface a<T extends C15235a> {
        C15236b<T> a();

        void b();

        void c(String tag);

        void d();

        void e(c stage);
    }

    public c(String tag) {
        this.f109291d = new SteppedArrayList();
        this.f109289b = tag;
        this.f109288a = LayoutInflater.from(N7.c.t());
    }

    public void a(c<T> nextStages) {
        this.f109291d.add(nextStages);
    }

    public boolean b() {
        return true;
    }

    public boolean c() {
        return true;
    }

    public c<T> d() {
        return e(null);
    }

    public c<T> e(String tag) {
        if (tag == null && !this.f109291d.isEmpty()) {
            return this.f109291d.get(0);
        }
        for (int i10 = 0; i10 < this.f109291d.size(); i10++) {
            c<T> cVar = this.f109291d.get(i10);
            String str = cVar.f109289b;
            if (str != null && str.equals(tag)) {
                return cVar;
            }
        }
        return null;
    }

    public Activity f() {
        return N7.c.o();
    }

    public String g() {
        return null;
    }

    public Context h() {
        return N7.c.t();
    }

    public T i() {
        C15236b<T> k10 = k();
        if (k10 != null) {
            return k10.v1();
        }
        return null;
    }

    public List<c<T>> j() {
        return new SteppedArrayList(this.f109291d);
    }

    public C15236b<T> k() {
        a<T> aVar = this.f109290c;
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    public String l() {
        return this.f109289b;
    }

    public String m() {
        return null;
    }

    public void n(String tag) {
        a<T> aVar;
        if (!b() || (aVar = this.f109290c) == null) {
            return;
        }
        aVar.c(tag);
    }

    public boolean o() {
        return !this.f109291d.isEmpty();
    }

    public View p() {
        throw new RuntimeException("Override this method at " + getClass().getSimpleName());
    }

    public void q() {
    }

    public void r() {
    }

    public void s(c<T> stage) {
        this.f109290c.e(stage);
    }

    public void t() {
        a<T> aVar = this.f109290c;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void u(a<T> callbacks) {
        this.f109290c = callbacks;
    }

    public void v(c<T> nextStages) {
        this.f109291d.clear();
        this.f109291d.add(nextStages);
    }

    public void w(List<c<T>> nextStages) {
        this.f109291d.clear();
        this.f109291d.addAll(nextStages);
    }

    public void x(String tag) {
        this.f109289b = tag;
    }

    public void y() {
    }

    public c(String tag, List<c<T>> nextStages) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f109291d = steppedArrayList;
        this.f109289b = tag;
        this.f109288a = LayoutInflater.from(N7.c.t());
        steppedArrayList.addAll(nextStages);
    }

    public c(List<c<T>> nextStages) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f109291d = steppedArrayList;
        this.f109289b = null;
        this.f109288a = LayoutInflater.from(N7.c.t());
        steppedArrayList.addAll(nextStages);
    }

    public c() {
        this.f109291d = new SteppedArrayList();
        this.f109289b = null;
        this.f109288a = LayoutInflater.from(N7.c.t());
    }
}
