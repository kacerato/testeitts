package bb;

import JAVARuntime.NurbsPath2D;
import cb.w;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import java.util.LinkedList;
import java.util.List;

public class C3863c {

    public List<Vector2> f33054a;

    public w[] f33055b;

    public final w f33056c;

    public final w f33057d;

    public final cb.d f33058e;

    public boolean f33059f;

    public int f33060g;

    public NurbsPath2D f33061h;

    public C3863c() {
        this.f33054a = new LinkedList();
        this.f33055b = null;
        this.f33056c = new w();
        this.f33057d = new w();
        this.f33058e = new cb.d();
        this.f33059f = false;
        this.f33060g = 3;
    }

    public void a(List<Vector2> path) {
        this.f33054a.addAll(path);
    }

    public void b(Vector2 vector) {
        this.f33054a.add(vector);
    }

    public void c() {
        this.f33054a.clear();
    }

    public final void d() {
        w[] wVarArr = this.f33055b;
        int i10 = 0;
        if (wVarArr != null && wVarArr.length == this.f33054a.size()) {
            while (i10 < this.f33054a.size()) {
                Vector2 vector2 = this.f33054a.get(i10);
                this.f33055b[i10].U0(vector2.f79838x, vector2.f79839y);
                i10++;
            }
            this.f33058e.v(this.f33055b, this.f33060g, this.f33059f);
            return;
        }
        this.f33055b = new w[this.f33054a.size()];
        while (i10 < this.f33054a.size()) {
            Vector2 vector22 = this.f33054a.get(i10);
            this.f33055b[i10] = new w(vector22.f79838x, vector22.f79839y);
            i10++;
        }
        this.f33058e.v(this.f33055b, this.f33060g, this.f33059f);
    }

    public Vector2 e(float u10) {
        return f(u10, new Vector2());
    }

    public Vector2 f(float u10, Vector2 out) {
        d();
        this.f33058e.d(this.f33056c, u10);
        w wVar = this.f33056c;
        out.w0(wVar.f34710b, wVar.f34711c);
        return out;
    }

    public List<Vector2> g(int resolution) {
        return h(resolution, new LinkedList());
    }

    public List<Vector2> h(int resolution, List<Vector2> list) {
        int i10 = resolution - 1;
        list.clear();
        for (int i11 = 0; i11 <= i10; i11++) {
            Vector2 vector2 = new Vector2();
            f(i11 / i10, vector2);
            list.add(vector2);
        }
        return list;
    }

    public List<JAVARuntime.Vector2> i(int resolution) {
        return j(resolution, new LinkedList());
    }

    public List<JAVARuntime.Vector2> j(int resolution, List<JAVARuntime.Vector2> list) {
        int i10 = resolution - 1;
        Vector2 vector2 = new Vector2();
        list.clear();
        for (int i11 = 0; i11 <= i10; i11++) {
            f(i11 / i10, vector2);
            JAVARuntime.Vector2 vector22 = new JAVARuntime.Vector2();
            vector22.instance.x0(vector2);
            list.add(vector22);
        }
        return list;
    }

    public Vector2 k(int i10) {
        return this.f33054a.get(i10);
    }

    public boolean l() {
        return this.f33059f;
    }

    public int m() {
        return this.f33054a.size();
    }

    public void n(int i10) {
        this.f33054a.remove(i10);
    }

    public void o(Vector2 vector2) {
        this.f33054a.remove(vector2);
    }

    public void p(boolean continuous) {
        this.f33059f = continuous;
        cb.d dVar = this.f33058e;
        if (dVar.f34518d != continuous) {
            dVar.f34518d = continuous;
            w[] wVarArr = this.f33055b;
            if (wVarArr != null) {
                dVar.v(wVarArr, this.f33060g, continuous);
            }
        }
    }

    public NurbsPath2D q() {
        NurbsPath2D nurbsPath2D = this.f33061h;
        if (nurbsPath2D != null) {
            return nurbsPath2D;
        }
        NurbsPath2D nurbsPath2D2 = new NurbsPath2D(this);
        this.f33061h = nurbsPath2D2;
        return nurbsPath2D2;
    }

    public C3863c(List<Vector2> points) {
        this.f33054a = new LinkedList();
        this.f33055b = null;
        this.f33056c = new w();
        this.f33057d = new w();
        this.f33058e = new cb.d();
        this.f33059f = false;
        this.f33060g = 3;
        this.f33054a = points;
    }

    public C3863c(boolean continuous) {
        this.f33054a = new LinkedList();
        this.f33055b = null;
        this.f33056c = new w();
        this.f33057d = new w();
        this.f33058e = new cb.d();
        this.f33060g = 3;
        this.f33059f = continuous;
    }

    public C3863c(List<Vector2> points, boolean continuous) {
        this.f33054a = new LinkedList();
        this.f33055b = null;
        this.f33056c = new w();
        this.f33057d = new w();
        this.f33058e = new cb.d();
        this.f33060g = 3;
        this.f33054a = points;
        this.f33059f = continuous;
    }
}
