package Z6;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.D;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class a extends EditorPanel {

    public static final String f30838b0 = "FloatingBigTextPopup";

    public final String f30839X;

    public FloatingPanelArea f30840Y;

    public final String f30841Z;

    public E f30842a0;

    public class C0811a implements E.e {

        public final String f30843a;

        public final String f30844b;

        public final float f30845c;

        public final float f30846d;

        public final d f30847e;

        public C0811a(final String val$tittle, final String val$finalDescription, final float val$w, final float val$h, final d val$showListener) {
            this.f30843a = val$tittle;
            this.f30844b = val$finalDescription;
            this.f30845c = val$w;
            this.f30846d = val$h;
            this.f30847e = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            a aVar = new a(this.f30843a, this.f30844b, null);
            aVar.f30842a0 = blockPanel;
            FloatingPanelArea m10 = C15147a.m(aVar, this.f30845c, this.f30846d);
            aVar.f30840Y = m10;
            m10.F1(false);
            m10.E1(true);
            d dVar = this.f30847e;
            if (dVar != null) {
                dVar.a(aVar, m10);
            }
        }
    }

    public class b implements E.e {

        public final String f30848a;

        public final String f30849b;

        public final View f30850c;

        public final C15147a.e f30851d;

        public final float f30852e;

        public final float f30853f;

        public final d f30854g;

        public b(final String val$tittle, final String val$description, final View val$anchor, final C15147a.e val$anchorSide, final float val$w, final float val$h, final d val$showListener) {
            this.f30848a = val$tittle;
            this.f30849b = val$description;
            this.f30850c = val$anchor;
            this.f30851d = val$anchorSide;
            this.f30852e = val$w;
            this.f30853f = val$h;
            this.f30854g = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            a aVar = new a(this.f30848a, this.f30849b, null);
            aVar.f30842a0 = blockPanel;
            FloatingPanelArea g10 = C15147a.g(this.f30850c, aVar, this.f30851d, this.f30852e, this.f30853f);
            aVar.f30840Y = g10;
            g10.F1(false);
            g10.E1(true);
            d dVar = this.f30854g;
            if (dVar != null) {
                dVar.a(aVar, g10);
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

    public interface d {
        void a(a popup, FloatingPanelArea area);
    }

    public a(String str, String str2, C0811a c0811a) {
        this(str, str2);
    }

    public static void r1(View anchor, C15147a.e anchorSide, String tittle) {
        t1(anchor, anchorSide, tittle, "", null);
    }

    public static void s1(View anchor, C15147a.e anchorSide, String tittle, String description) {
        t1(anchor, anchorSide, tittle, description, null);
    }

    public static void t1(View anchor, C15147a.e anchorSide, String tittle, String description, d showListener) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        Context t10 = N7.c.t();
        int i10 = (int) D.g(t10, tittle, 16.0f, R.font.base_bold)[1];
        float[] g10 = D.g(t10, description, 16.0f, R.font.base_bold);
        E.s1(new b(tittle, description, anchor, anchorSide, N7.c.g(Nc.b.F(96, Nc.b.N(48, (int) g10[0]), 250)), N7.c.f(i10 + 24 + Nc.b.N(32, (int) g10[1]) + 66), showListener));
    }

    public static void u1(String tittle, String description) {
        v1(tittle, description, null);
    }

    public static void v1(String tittle, String description, d showListener) {
        Context t10 = N7.c.t();
        String w12 = w1(description);
        int i10 = (int) D.g(t10, tittle, 16.0f, R.font.base_bold)[1];
        float[] g10 = D.g(t10, w12, 16.0f, R.font.base_bold);
        E.s1(new C0811a(tittle, w12, Nc.b.I(N7.c.g(Nc.b.F(96, Nc.b.N(48, (int) g10[0]), 250))), Nc.b.I(N7.c.f(i10 + 24 + Nc.b.N(32, (int) g10[1]) + 36)), showListener));
    }

    public static String w1(String description) {
        try {
            if (description.contains("\"status\":\"Error\"")) {
                return hd.c.g(hd.c.h(!description.startsWith("{") ? description.substring(description.indexOf("{")) : description), "info");
            }
            return description;
        } catch (Exception unused) {
            return description;
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.big_text_popup_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new c());
        TextView textView = (TextView) inflate.findViewById(R.id.desc);
        String str = this.f30841Z;
        if (str == null || str.isEmpty()) {
            textView.setVisibility(8);
        } else {
            textView.setText(this.f30841Z);
        }
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f30842a0;
        if (e10 != null) {
            e10.R0();
            this.f30842a0 = null;
        }
    }

    public a(String tittle, String description) {
        super(null, tittle);
        super.e1(false);
        this.f30839X = tittle;
        this.f30841Z = description;
    }
}
