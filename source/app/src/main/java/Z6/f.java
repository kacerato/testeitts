package Z6;

import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine2.R;
import r4.C15147a;
import rc.C15169a;

public class f extends EditorPanel {

    public static final String f30959d0 = "FloatingInputTextPopup";

    public final String f30960X;

    public final g f30961Y;

    public FloatingPanelArea f30962Z;

    public final String f30963a0;

    public TextInputEditText f30964b0;

    public E f30965c0;

    public class a implements E.e {

        public final String f30966a;

        public final String f30967b;

        public final g f30968c;

        public final View f30969d;

        public final C15147a.e f30970e;

        public final float f30971f;

        public final float f30972g;

        public final int f30973h;

        public final h f30974i;

        public a(final String val$tittle, final String val$defaultText, final g val$listener, final View val$anchor, final C15147a.e val$anchorSide, final float val$w, final float val$h, final int val$totalW, final h val$showListener) {
            this.f30966a = val$tittle;
            this.f30967b = val$defaultText;
            this.f30968c = val$listener;
            this.f30969d = val$anchor;
            this.f30970e = val$anchorSide;
            this.f30971f = val$w;
            this.f30972g = val$h;
            this.f30973h = val$totalW;
            this.f30974i = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            f fVar = new f(this.f30966a, this.f30967b, this.f30968c);
            fVar.f30965c0 = blockPanel;
            FloatingPanelArea g10 = C15147a.g(this.f30969d, fVar, this.f30970e, this.f30971f, this.f30972g);
            fVar.f30962Z = g10;
            g10.T();
            g10.F1(false);
            g10.E1(true);
            g10.I1(this.f30973h, 140, FloatingPanelArea.i.Fixed);
            h hVar = this.f30974i;
            if (hVar != null) {
                hVar.a(fVar, g10);
            }
        }
    }

    public class b implements E.e {

        public final String f30975a;

        public final String f30976b;

        public final g f30977c;

        public final float f30978d;

        public final float f30979e;

        public final int f30980f;

        public final h f30981g;

        public b(final String val$tittle, final String val$defaultText, final g val$listener, final float val$w, final float val$h, final int val$totalW, final h val$showListener) {
            this.f30975a = val$tittle;
            this.f30976b = val$defaultText;
            this.f30977c = val$listener;
            this.f30978d = val$w;
            this.f30979e = val$h;
            this.f30980f = val$totalW;
            this.f30981g = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            f fVar = new f(this.f30975a, this.f30976b, this.f30977c);
            fVar.f30965c0 = blockPanel;
            FloatingPanelArea m10 = C15147a.m(fVar, this.f30978d, this.f30979e);
            fVar.f30962Z = m10;
            m10.T();
            m10.F1(false);
            m10.E1(true);
            m10.I1(this.f30980f, 130, FloatingPanelArea.i.Fixed);
            h hVar = this.f30981g;
            if (hVar != null) {
                hVar.a(fVar, m10);
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

    public class d implements TextView.OnEditorActionListener {
        public d() {
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if (actionId != 6) {
                return false;
            }
            f.this.t1();
            return false;
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View v10) {
            N7.c.e();
            f.this.f30961Y.onCancel();
            N7.c.D().s0(this);
            f.this.R0();
        }
    }

    public class C0815f extends AbstractViewOnClickListenerC12733a {
        public C0815f() {
        }

        @Override
        public void click(View v10) {
            f.this.t1();
        }
    }

    public interface g {
        void c(String text);

        void onCancel();
    }

    public interface h {
        void a(f popup, FloatingPanelArea area);
    }

    public f(String tittle, String defaultText, g listener) {
        super(null, tittle);
        this.f30960X = tittle;
        this.f30963a0 = defaultText;
        this.f30961Y = listener;
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
    }

    public void t1() {
        N7.c.e();
        this.f30961Y.c(this.f30964b0.getText() != null ? this.f30964b0.getText().toString() : "");
        N7.c.D().s0(this);
        R0();
    }

    public static void u1(View anchor, C15147a.e anchorSide, String tittle, g listener) {
        w1(anchor, anchorSide, tittle, "", listener, null);
    }

    public static void v1(View anchor, C15147a.e anchorSide, String tittle, String defaultText, g listener) {
        w1(anchor, anchorSide, tittle, defaultText, listener, null);
    }

    public static void w1(View anchor, C15147a.e anchorSide, String tittle, String defaultText, g listener, h showListener) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        int F10 = Nc.b.F(96, 220, 250);
        E.s1(new a(tittle, defaultText, listener, anchor, anchorSide, N7.c.g(F10), N7.c.f(140), F10, showListener));
    }

    public static void x1(String tittle, String defaultText, g listener) {
        y1(tittle, defaultText, listener, null);
    }

    public static void y1(String tittle, String defaultText, g listener, h showListener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        int F10 = Nc.b.F(96, 220, 250);
        E.s1(new b(tittle, defaultText, listener, N7.c.g(F10), N7.c.f(130), F10, showListener));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.text_input_popup_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new c());
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        Button button = (Button) inflate.findViewById(R.id.cancel);
        Button button2 = (Button) inflate.findViewById(R.id.confirm);
        this.f30964b0 = (TextInputEditText) inflate.findViewById(R.id.textInputEditText);
        textView.setText(this.f30960X);
        this.f30964b0.setText(this.f30963a0);
        this.f30964b0.setOnEditorActionListener(new d());
        button.setOnClickListener(new e());
        button2.setOnClickListener(new C0815f());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f30965c0;
        if (e10 != null) {
            e10.R0();
            this.f30965c0 = null;
        }
        N7.c.D().s0(this);
    }

    @Override
    public void n1() {
        super.n1();
        if (C15169a.q()) {
            N7.c.D().u(this);
        } else {
            N7.c.D().s0(this);
        }
    }
}
