package M7;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import d7.C12881a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class p extends g {

    public Context f14792i;

    public q f14793j;

    public List<g> f14794k = new LinkedList();

    public List<g> f14795l = new LinkedList();

    public o f14796m = null;

    public boolean f14797n = true;

    public final Set<g> f14798o = new HashSet();

    public class a implements r {

        public final r f14799a;

        public a(final r val$oldListener) {
            this.f14799a = val$oldListener;
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            N7.c.Y();
            if (!value) {
                if (tbToggle == p.this.f14796m) {
                    tbToggle.z0(true, false, isFromUserAction);
                    return;
                }
                return;
            }
            if (p.this.f14796m != null && p.this.f14796m != tbToggle) {
                o oVar = p.this.f14796m;
                p.this.f14796m = null;
                oVar.z0(false, false, isFromUserAction);
            }
            p.this.f14796m = tbToggle;
            p pVar = p.this;
            q qVar = pVar.f14793j;
            if (qVar != null) {
                qVar.a(pVar.f14796m, p.this.f14794k.indexOf(tbToggle), context);
            }
            r rVar = this.f14799a;
            if (rVar != null) {
                rVar.b(value, v10, context, tbToggle, isFromUserAction);
            }
        }
    }

    public p(Context context) {
        this.f14792i = context;
    }

    public void A(int idx, boolean notifyListener, boolean isFromUserAction) {
        g gVar = this.f14794k.get(idx);
        if (gVar instanceof o) {
            o oVar = (o) gVar;
            oVar.z0(true, notifyListener, isFromUserAction);
            o oVar2 = this.f14796m;
            if (oVar2 != null && oVar2 != oVar) {
                oVar2.z0(false, false, isFromUserAction);
            }
            this.f14796m = oVar;
        }
    }

    public void B(o tbToggle) {
        C(tbToggle, false);
    }

    public void C(o tbToggle, boolean isFromUserAction) {
        D(tbToggle, true, isFromUserAction);
    }

    public void D(o tbToggle, boolean notifyListener, boolean isFromUserAction) {
        if (tbToggle == null) {
            o oVar = this.f14796m;
            if (oVar != null) {
                oVar.z0(false, false, isFromUserAction);
                this.f14796m = null;
                return;
            }
            return;
        }
        if (this.f14794k.contains(tbToggle)) {
            tbToggle.z0(true, notifyListener, isFromUserAction);
            o oVar2 = this.f14796m;
            if (oVar2 != null && oVar2 != tbToggle) {
                oVar2.z0(false, false, isFromUserAction);
            }
            this.f14796m = tbToggle;
        }
    }

    public void E(boolean spaceBetweenElements) {
        this.f14797n = spaceBetweenElements;
    }

    public void F() {
        for (int i10 = 0; i10 < t(); i10++) {
            G(i10);
        }
    }

    public void G(int idx) {
        g gVar = this.f14794k.get(idx);
        gVar.p();
        this.f14798o.add(gVar);
        if (this.f14797n) {
            this.f14795l.get(idx).p();
        } else {
            this.f14795l.get(idx).g();
        }
    }

    @Override
    public void a(LinearLayout parent, Context context, LayoutInflater layoutInflater) {
        for (int i10 = 0; i10 < this.f14794k.size(); i10++) {
            this.f14794k.get(i10).a(parent, context, layoutInflater);
            k s10 = C12881a.s(context, parent, layoutInflater);
            this.f14795l.add(s10);
            if (!this.f14797n) {
                s10.g();
            }
        }
        o oVar = this.f14796m;
        if (oVar != null) {
            oVar.z0(true, false, false);
        }
    }

    @Override
    public void g() {
        for (int i10 = 0; i10 < t(); i10++) {
            g u10 = u(i10);
            if (u10.j()) {
                this.f14798o.add(u10);
                u10.g();
            }
        }
        super.g();
    }

    @Override
    public boolean i(tc.h touch, Rect rect) {
        for (int i10 = 0; i10 < this.f14794k.size(); i10++) {
            if (this.f14794k.get(i10).i(touch, rect)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void k() {
        for (int i10 = 0; i10 < this.f14794k.size(); i10++) {
            g gVar = this.f14794k.get(i10);
            if (gVar != null) {
                gVar.k();
            }
        }
        for (int i11 = 0; i11 < this.f14795l.size(); i11++) {
            g gVar2 = this.f14795l.get(i11);
            if (gVar2 != null) {
                gVar2.k();
            }
        }
    }

    @Override
    public void l(LinearLayout parent) {
        super.l(parent);
        for (int i10 = 0; i10 < this.f14794k.size(); i10++) {
            this.f14794k.get(i10).l(parent);
        }
        for (int i11 = 0; i11 < this.f14795l.size(); i11++) {
            this.f14795l.get(i11).l(parent);
        }
    }

    @Override
    public void p() {
        Iterator<g> it = this.f14798o.iterator();
        while (it.hasNext()) {
            it.next().p();
        }
        this.f14798o.clear();
        super.p();
    }

    public p s(g element) {
        this.f14794k.add(element);
        if (element instanceof o) {
            o oVar = (o) element;
            if (this.f14796m == null) {
                this.f14796m = oVar;
            }
            oVar.L0(new a(oVar.s0()));
        }
        return this;
    }

    public int t() {
        return this.f14794k.size();
    }

    public g u(int idx) {
        return this.f14794k.get(idx);
    }

    public void v() {
        for (int i10 = 0; i10 < t(); i10++) {
            w(i10);
        }
    }

    public void w(int idx) {
        g gVar = this.f14794k.get(idx);
        gVar.g();
        this.f14798o.remove(gVar);
        this.f14795l.get(idx).g();
    }

    public boolean x() {
        return this.f14797n;
    }

    public void y(int idx) {
        A(idx, true, false);
    }

    public void z(int idx, boolean isFromUserAction) {
        A(idx, true, isFromUserAction);
    }

    public p(Context context, q listener) {
        this.f14792i = context;
        this.f14793j = listener;
    }
}
