package o0;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class g {

    public int f98426e;

    public int f98427f;

    public int f98428g;

    public int f98429h;

    public int f98430i;

    public float f98431j;

    public float f98432k;

    public int f98433l;

    public int f98434m;

    public int f98436o;

    public int f98437p;

    public boolean f98438q;

    public boolean f98439r;

    public int f98422a = Integer.MAX_VALUE;

    public int f98423b = Integer.MAX_VALUE;

    public int f98424c = Integer.MIN_VALUE;

    public int f98425d = Integer.MIN_VALUE;

    public List<Integer> f98435n = new ArrayList();

    public int a() {
        return this.f98428g;
    }

    public int b() {
        return this.f98436o;
    }

    public int c() {
        return this.f98429h;
    }

    public int d() {
        return this.f98429h - this.f98430i;
    }

    public int e() {
        return this.f98426e;
    }

    public float f() {
        return this.f98431j;
    }

    public float g() {
        return this.f98432k;
    }

    public void h(View view, int leftDecoration, int topDecoration, int rightDecoration, int bottomDecoration) {
        f fVar = (f) view.getLayoutParams();
        this.f98422a = Math.min(this.f98422a, (view.getLeft() - fVar.k0()) - leftDecoration);
        this.f98423b = Math.min(this.f98423b, (view.getTop() - fVar.u()) - topDecoration);
        this.f98424c = Math.max(this.f98424c, view.getRight() + fVar.o0() + rightDecoration);
        this.f98425d = Math.max(this.f98425d, view.getBottom() + fVar.z() + bottomDecoration);
    }
}
