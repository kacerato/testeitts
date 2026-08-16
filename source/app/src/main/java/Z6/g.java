package Z6;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class g extends EditorPanel {

    public static final String f30986c0 = "FloatingProgressPopup";

    public String f30987X;

    public String f30988Y;

    public TextView f30989Z;

    public FloatingPanelArea f30990a0;

    public E f30991b0;

    public class a implements E.e {

        public final String f30992a;

        public final boolean f30993b;

        public final float f30994c;

        public final float f30995d;

        public final int f30996e;

        public final int f30997f;

        public final c f30998g;

        public a(final String val$tittle, final boolean val$opaque, final float val$w, final float val$h, final int val$totalW, final int val$totalH, final c val$showListener) {
            this.f30992a = val$tittle;
            this.f30993b = val$opaque;
            this.f30994c = val$w;
            this.f30995d = val$h;
            this.f30996e = val$totalW;
            this.f30997f = val$totalH;
            this.f30998g = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            g gVar = new g(this.f30992a);
            gVar.f30991b0 = blockPanel;
            FloatingPanelArea m10 = this.f30993b ? C15147a.m(gVar, this.f30994c, this.f30995d) : C15147a.o(gVar, this.f30994c, this.f30995d);
            gVar.f30990a0 = m10;
            m10.T();
            m10.F1(false);
            m10.E1(false);
            m10.I1(this.f30996e, this.f30997f, FloatingPanelArea.i.Fixed);
            c cVar = this.f30998g;
            if (cVar != null) {
                cVar.a(gVar, m10);
            }
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public interface c {
        void a(g popup, FloatingPanelArea area);
    }

    public g(String tittle) {
        super(null, tittle);
        this.f30987X = tittle;
    }

    public static void r1(String tittle) {
        s1(tittle, null);
    }

    public static void s1(String tittle, c showListener) {
        int F10 = Nc.b.F(96, 220, 250);
        E.s1(new a(tittle, true, N7.c.g(F10), N7.c.f(80), F10, 80, showListener));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.progress_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        this.f30989Z = textView;
        textView.setText(this.f30987X);
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f30991b0;
        if (e10 != null) {
            e10.R0();
            this.f30991b0 = null;
        }
    }

    @Override
    public void f1(String tittle) {
        if (tittle == null) {
            tittle = "";
        }
        this.f30987X = tittle;
        if (this.f30989Z == null || !N7.c.N()) {
            return;
        }
        this.f30988Y = tittle;
        this.f30989Z.setText(tittle);
    }

    @Override
    public void n1() {
        String str;
        String str2;
        super.n1();
        if (((this.f30989Z == null || this.f30988Y != null) && ((str = this.f30988Y) == null || str.equals(this.f30987X))) || (str2 = this.f30987X) == null) {
            return;
        }
        this.f30988Y = str2;
        this.f30989Z.setText(str2);
    }

    public void q1() {
        R0();
    }
}
