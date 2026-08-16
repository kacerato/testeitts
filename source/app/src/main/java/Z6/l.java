package Z6;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class l extends EditorPanel {

    public static final String f31051b0 = "SmallFloatingConfirmPopup";

    public final i f31052X;

    public FloatingPanelArea f31053Y;

    public boolean f31054Z;

    public E f31055a0;

    public class a implements E.e {

        public final i f31056a;

        public final View f31057b;

        public final C15147a.e f31058c;

        public final float f31059d;

        public final float f31060e;

        public final j f31061f;

        public a(final i val$listener, final View val$anchor, final C15147a.e val$anchorSide, final float val$w, final float val$h, final j val$showListener) {
            this.f31056a = val$listener;
            this.f31057b = val$anchor;
            this.f31058c = val$anchorSide;
            this.f31059d = val$w;
            this.f31060e = val$h;
            this.f31061f = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            l lVar = new l(this.f31056a, null);
            lVar.f31055a0 = blockPanel;
            FloatingPanelArea k10 = C15147a.k(this.f31057b, lVar, this.f31058c, this.f31059d, this.f31060e);
            lVar.f31053Y = k10;
            k10.T();
            k10.F1(true);
            k10.E1(true);
            k10.I1(68, 32, FloatingPanelArea.i.Fixed);
            j jVar = this.f31061f;
            if (jVar != null) {
                jVar.a(lVar, k10);
            }
        }
    }

    public class b implements E.e {

        public final i f31062a;

        public final float f31063b;

        public final float f31064c;

        public final j f31065d;

        public b(final i val$listener, final float val$w, final float val$h, final j val$showListener) {
            this.f31062a = val$listener;
            this.f31063b = val$w;
            this.f31064c = val$h;
            this.f31065d = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            l lVar = new l(this.f31062a, null);
            lVar.f31055a0 = blockPanel;
            FloatingPanelArea o10 = C15147a.o(lVar, this.f31063b, this.f31064c);
            lVar.f31053Y = o10;
            o10.T();
            o10.F1(true);
            o10.E1(true);
            o10.I1(68, 32, FloatingPanelArea.i.Fixed);
            j jVar = this.f31065d;
            if (jVar != null) {
                jVar.a(lVar, o10);
            }
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            l.this.f31052X.a(l.this.u1());
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View v10) {
            l.this.f31052X.b(l.this.u1());
        }
    }

    public class f implements g {

        public final boolean f31069a;

        public f(final boolean val$isDettached) {
            this.f31069a = val$isDettached;
        }

        @Override
        public void dismiss() {
            if (this.f31069a) {
                return;
            }
            l.this.R0();
            l.this.f31054Z = true;
        }
    }

    public interface g {
        void dismiss();
    }

    public static class h implements i {
        @Override
        public void a(g dialog) {
            dialog.dismiss();
        }

        @Override
        public void b(g dialog) {
            dialog.dismiss();
        }
    }

    public interface i {
        void a(g dialog);

        void b(g dialog);
    }

    public interface j {
        void a(l popup, FloatingPanelArea area);
    }

    public l(i iVar, a aVar) {
        this(iVar);
    }

    public static void w1(i listener) {
        x1(listener, null);
    }

    public static void x1(i listener, j showListener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        E.s1(new b(listener, Nc.b.I(N7.c.g(68)), Nc.b.I(N7.c.f(32)), showListener));
    }

    public static void y1(View anchor, C15147a.e anchorSide, i listener) {
        z1(anchor, anchorSide, listener, null);
    }

    public static void z1(View anchor, C15147a.e anchorSide, i listener, j showListener) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        E.s1(new a(listener, anchor, anchorSide, Nc.b.I(N7.c.g(68)), Nc.b.I(N7.c.f(32)), showListener));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.small_confirm_popup_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new c());
        View findViewById = inflate.findViewById(R.id.cancel);
        View findViewById2 = inflate.findViewById(R.id.confirm);
        findViewById.setOnClickListener(new d());
        findViewById2.setOnClickListener(new e());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f31055a0;
        if (e10 != null) {
            e10.R0();
            this.f31055a0 = null;
        }
        if (this.f31054Z) {
            return;
        }
        this.f31052X.a(v1(true));
    }

    public final g u1() {
        return v1(false);
    }

    public final g v1(boolean isDettached) {
        return new f(isDettached);
    }

    public l(i listener) {
        super(null, "Confirm");
        this.f31052X = listener;
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
    }
}
