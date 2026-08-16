package Z6;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.D;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class c extends EditorPanel {

    public static final String f30893d0 = "FloatingConfirmPopup";

    public final String f30894X;

    public final i f30895Y;

    public FloatingPanelArea f30896Z;

    public final String f30897a0;

    public boolean f30898b0;

    public E f30899c0;

    public class a implements E.e {

        public final String f30900a;

        public final String f30901b;

        public final i f30902c;

        public final View f30903d;

        public final C15147a.e f30904e;

        public final float f30905f;

        public final float f30906g;

        public final int f30907h;

        public final int f30908i;

        public final j f30909j;

        public a(final String val$tittle, final String val$finalDescription, final i val$listener, final View val$anchor, final C15147a.e val$anchorSide, final float val$w, final float val$h, final int val$totalW, final int val$totalH, final j val$showListener) {
            this.f30900a = val$tittle;
            this.f30901b = val$finalDescription;
            this.f30902c = val$listener;
            this.f30903d = val$anchor;
            this.f30904e = val$anchorSide;
            this.f30905f = val$w;
            this.f30906g = val$h;
            this.f30907h = val$totalW;
            this.f30908i = val$totalH;
            this.f30909j = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            c cVar = new c(this.f30900a, this.f30901b, this.f30902c, null);
            cVar.f30899c0 = blockPanel;
            FloatingPanelArea g10 = C15147a.g(this.f30903d, cVar, this.f30904e, this.f30905f, this.f30906g);
            cVar.f30896Z = g10;
            g10.T();
            g10.F1(false);
            g10.E1(true);
            g10.I1(this.f30907h, this.f30908i, FloatingPanelArea.i.Fixed);
            j jVar = this.f30909j;
            if (jVar != null) {
                jVar.a(cVar, g10);
            }
        }
    }

    public class b implements E.e {

        public final String f30910a;

        public final String f30911b;

        public final i f30912c;

        public final float f30913d;

        public final float f30914e;

        public final int f30915f;

        public final int f30916g;

        public final j f30917h;

        public b(final String val$tittle, final String val$finalDescription, final i val$listener, final float val$w, final float val$h, final int val$totalW, final int val$totalH, final j val$showListener) {
            this.f30910a = val$tittle;
            this.f30911b = val$finalDescription;
            this.f30912c = val$listener;
            this.f30913d = val$w;
            this.f30914e = val$h;
            this.f30915f = val$totalW;
            this.f30916g = val$totalH;
            this.f30917h = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            c cVar = new c(this.f30910a, this.f30911b, this.f30912c, null);
            cVar.f30899c0 = blockPanel;
            FloatingPanelArea m10 = C15147a.m(cVar, this.f30913d, this.f30914e);
            cVar.f30896Z = m10;
            m10.T();
            m10.F1(false);
            m10.E1(true);
            m10.I1(this.f30915f, this.f30916g, FloatingPanelArea.i.Fixed);
            j jVar = this.f30917h;
            if (jVar != null) {
                jVar.a(cVar, m10);
            }
        }
    }

    public class ViewOnTouchListenerC0813c implements View.OnTouchListener {
        public ViewOnTouchListenerC0813c() {
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
            c.this.f30895Y.b(c.this.u1(false));
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View v10) {
            c.this.f30895Y.a(c.this.u1(false));
        }
    }

    public class f implements g {

        public final boolean f30921a;

        public f(final boolean val$isDettached) {
            this.f30921a = val$isDettached;
        }

        @Override
        public void dismiss() {
            if (this.f30921a) {
                return;
            }
            c.this.R0();
            c.this.f30898b0 = true;
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
        void a(c popup, FloatingPanelArea area);
    }

    public c(String str, String str2, i iVar, a aVar) {
        this(str, str2, iVar);
    }

    public static void A1(String tittle, String description, i listener, j showListener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        Context t10 = N7.c.t();
        String B12 = B1(description);
        int i10 = (int) D.f(t10, tittle, 14.0f)[1];
        float[] f10 = D.f(t10, B12, 14.0f);
        int i11 = (int) f10[0];
        int N10 = Nc.b.N(32, (int) f10[1]);
        int F10 = Nc.b.F(96, Nc.b.N(204, i11), 250);
        int i12 = i10 + 82 + N10;
        E.s1(new b(tittle, B12, listener, Nc.b.I(N7.c.g(F10)), Nc.b.I(N7.c.f(i12)), F10, i12, showListener));
    }

    private static String B1(String description) {
        try {
            if (description.contains("\"status\":\"Error\"")) {
                return hd.c.g(hd.c.h(!description.startsWith("{") ? description.substring(description.indexOf("{")) : description), "info");
            }
            return description;
        } catch (Exception unused) {
            return description;
        }
    }

    public static void v1(View anchor, C15147a.e anchorSide, String tittle, i listener) {
        x1(anchor, anchorSide, tittle, null, listener, null);
    }

    public static void w1(View anchor, C15147a.e anchorSide, String tittle, String description, i listener) {
        x1(anchor, anchorSide, tittle, description, listener, null);
    }

    public static void x1(View anchor, C15147a.e anchorSide, String tittle, String description, i listener, j showListener) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        Context t10 = N7.c.t();
        String B12 = B1(description);
        int i10 = (int) D.f(t10, tittle, 14.0f)[1];
        float[] f10 = D.f(t10, B12, 14.0f);
        int i11 = (int) f10[0];
        int N10 = Nc.b.N(32, (int) f10[1]);
        int F10 = Nc.b.F(96, Nc.b.N(204, i11), 250);
        int i12 = i10 + 82 + N10;
        E.s1(new a(tittle, B12, listener, anchor, anchorSide, Nc.b.I(N7.c.g(F10)), Nc.b.I(N7.c.f(i12)), F10, i12, showListener));
    }

    public static void y1(String tittle, i listener) {
        A1(tittle, null, listener, null);
    }

    public static void z1(String tittle, String description, i listener) {
        A1(tittle, description, listener, null);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.confirm_popup_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new ViewOnTouchListenerC0813c());
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        Button button = (Button) inflate.findViewById(R.id.cancel);
        Button button2 = (Button) inflate.findViewById(R.id.confirm);
        TextView textView2 = (TextView) inflate.findViewById(R.id.desc);
        String str = this.f30894X;
        if (str == null || str.equals("")) {
            textView.setVisibility(8);
        } else {
            textView.setText(this.f30894X);
        }
        String str2 = this.f30897a0;
        if (str2 == null || str2.equals("")) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(this.f30897a0);
        }
        button.setOnClickListener(new d());
        button2.setOnClickListener(new e());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f30899c0;
        if (e10 != null) {
            e10.R0();
            this.f30899c0 = null;
        }
        if (this.f30898b0) {
            return;
        }
        this.f30895Y.b(u1(true));
    }

    public final g u1(boolean isDettached) {
        return new f(isDettached);
    }

    public c(String tittle, String description, i listener) {
        super(null, tittle);
        this.f30894X = tittle;
        this.f30897a0 = description;
        this.f30895Y = listener;
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
    }
}
