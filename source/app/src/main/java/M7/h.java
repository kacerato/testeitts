package M7;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class h {

    public LinearLayout f14702a;

    public Context f14703b;

    public LayoutInflater f14704c;

    public final List<g> f14705d = new SteppedArrayList();

    public final int f14706e = 2;

    public h() {
    }

    public void a() {
        this.f14705d.clear();
        this.f14702a.removeAllViews();
    }

    public void b(g tbElement) {
        if (this.f14705d.contains(tbElement)) {
            this.f14705d.remove(tbElement);
            tbElement.l(this.f14702a);
        }
    }

    public final void c(g element) {
        element.a(this.f14702a, this.f14703b, this.f14704c);
        element.k();
        element.n(j(this.f14702a).e());
    }

    public g d(int i10) {
        return this.f14705d.get(i10);
    }

    public int e() {
        return this.f14705d.size();
    }

    public void f() {
        this.f14702a.setVisibility(8);
    }

    public void g(List<g> elementList) {
        this.f14705d.clear();
        this.f14705d.addAll(elementList);
        this.f14702a.removeAllViews();
        for (int i10 = 0; i10 < elementList.size(); i10++) {
            c(elementList.get(i10));
        }
    }

    public void h(g tbElement) {
        if (this.f14705d.contains(tbElement)) {
            return;
        }
        this.f14705d.add(tbElement);
        c(tbElement);
    }

    public k i(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
        k kVar = new k(Nc.b.l0(2.0f, context));
        kVar.a(parent, context, layoutInflater);
        return kVar;
    }

    public final k j(LinearLayout parent) {
        return i(this.f14703b, parent, this.f14704c);
    }

    public void k(LinearLayout content, Context context) {
        this.f14702a = content;
        this.f14703b = context;
        this.f14704c = LayoutInflater.from(context);
    }

    public boolean l(tc.h touch) {
        for (int i10 = 0; i10 < this.f14705d.size(); i10++) {
            try {
                if (this.f14705d.get(i10).h(touch)) {
                    return true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public boolean m(tc.h touch, Rect rect) {
        for (int i10 = 0; i10 < this.f14705d.size(); i10++) {
            try {
                if (this.f14705d.get(i10).i(touch, rect)) {
                    return true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public void n() {
        for (int i10 = 0; i10 < this.f14705d.size(); i10++) {
            g gVar = this.f14705d.get(i10);
            if (gVar != null) {
                gVar.k();
            }
        }
    }

    public void o(LinearLayout content) {
        this.f14702a = content;
    }

    public void p(Context context) {
        this.f14703b = context;
        this.f14704c = LayoutInflater.from(context);
    }

    public void q() {
        this.f14702a.setVisibility(0);
    }

    public h(LinearLayout content, Context context) {
        this.f14702a = content;
        this.f14703b = context;
        this.f14704c = LayoutInflater.from(context);
    }
}
