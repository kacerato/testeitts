package z7;

import C5.b;
import C5.h;
import C5.n;
import P8.f;
import P8.p;
import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine2.R;
import java.util.LinkedList;
import java.util.List;

@Deprecated
public class C16272b {

    public int f130748a;

    public Activity f130749b;

    public InterfaceC16271a f130750c;

    public ColorINT f130751d = new ColorINT(20, 39, 116, 106);

    public float f130752e = 0.7f;

    public int f130753f = 17;

    public boolean f130754g = true;

    public PopupWindow f130755h;

    public class a implements n {

        public final List f130756a;

        public final LinearLayout f130757b;

        public a(final List val$entries, final LinearLayout val$content) {
            this.f130756a = val$entries;
            this.f130757b = val$content;
        }

        @Override
        public void refresh(int position) {
            C16272b.this.q(this.f130756a, this.f130757b);
        }
    }

    public class C2254b implements PopupWindow.OnDismissListener {
        public C2254b() {
        }

        @Override
        public void onDismiss() {
        }
    }

    public C16272b(int layout, Activity activity) {
        this.f130748a = layout;
        this.f130749b = activity;
    }

    public C5.a a(String tittle, Class cls, Object instance, InspectorEditor editor, p listener) {
        C5.a aVar = new C5.a("Extract method", true, editor);
        aVar.f2043p = R.color.inspector_meshrenderer;
        LinkedList linkedList = new LinkedList();
        aVar.f2042o = linkedList;
        linkedList.addAll(f.B(cls, instance, this.f130749b, true, listener));
        return aVar;
    }

    public void b() {
        try {
            this.f130755h.dismiss();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public Activity c() {
        return this.f130749b;
    }

    public ColorINT d() {
        return this.f130751d;
    }

    public final View e() {
        return this.f130755h.getContentView();
    }

    public int f() {
        return this.f130753f;
    }

    public InterfaceC16271a g() {
        return this.f130750c;
    }

    public float h() {
        return this.f130752e;
    }

    public boolean i() {
        return this.f130754g;
    }

    public void j(Activity activity) {
        this.f130749b = activity;
    }

    public void k(ColorINT backgroundTint) {
        this.f130751d = backgroundTint;
    }

    public void l(boolean cancelOnBackButton) {
        this.f130754g = cancelOnBackButton;
    }

    public void m(int gravity) {
        this.f130753f = gravity;
    }

    public void n(InterfaceC16271a listener) {
        this.f130750c = listener;
    }

    public void o(float scaleRatio) {
        this.f130752e = scaleRatio;
    }

    public void p() {
        this.f130755h = new PopupWindow(this.f130749b);
        View inflate = LayoutInflater.from(this.f130749b).inflate(this.f130748a, (ViewGroup) null);
        this.f130755h.setContentView(inflate);
        this.f130755h.setWidth((int) (this.f130749b.getResources().getDisplayMetrics().heightPixels * (this.f130752e + 1.0f)));
        this.f130755h.setHeight(-1);
        this.f130755h.setBackgroundDrawable(new ColorDrawable(0));
        this.f130755h.setFocusable(true);
        if (this.f130753f == 17) {
            this.f130755h.showAtLocation(this.f130749b.findViewById(16908290), this.f130753f, 0, 0);
        } else {
            this.f130755h.showAtLocation(this.f130749b.findViewById(16908290), this.f130753f, 50, 50);
        }
        this.f130755h.setOnDismissListener(new C2254b());
        try {
            this.f130755h.showAsDropDown(this.f130749b.findViewById(16908290));
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f130750c.b("Unknown", e10.getCause());
        }
        this.f130750c.a(inflate, this.f130749b);
    }

    public void q(List<C5.b> entries, LinearLayout content) {
        LayoutInflater from = LayoutInflater.from(this.f130749b);
        content.removeAllViews();
        for (C5.b bVar : entries) {
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                h.y(content, from, bVar, 0, this.f130749b);
            } else if (aVar == b.a.Component) {
                h.w(content, from, bVar, 0, this.f130749b, new a(entries, content));
            } else {
                h.x(content, from, bVar, 0, true, this.f130749b);
            }
        }
    }
}
