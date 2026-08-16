package Z6;

import C5.b;
import E5.f;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import org.jetbrains.annotations.Nullable;
import org.mohammedalaa.seekbar.RangeSeekBarView;
import r4.C15147a;
import rc.C15169a;

public class e extends EditorPanel {

    public static final String f30923f0 = "FloatingFloatSliderPopup";

    public final String f30924X;

    public final i f30925Y;

    public FloatingPanelArea f30926Z;

    public final float f30927a0;

    public final float f30928b0;

    public final float f30929c0;

    public float f30930d0;

    public E f30931e0;

    public class a implements E.e {

        public final String f30932a;

        public final float f30933b;

        public final float f30934c;

        public final float f30935d;

        public final i f30936e;

        public final View f30937f;

        public final C15147a.e f30938g;

        public final float f30939h;

        public final float f30940i;

        public final j f30941j;

        public a(final String val$tittle, final float val$defaultValue, final float val$min, final float val$max, final i val$listener, final View val$anchor, final C15147a.e val$anchorSide, final float val$w, final float val$h, final j val$showListener) {
            this.f30932a = val$tittle;
            this.f30933b = val$defaultValue;
            this.f30934c = val$min;
            this.f30935d = val$max;
            this.f30936e = val$listener;
            this.f30937f = val$anchor;
            this.f30938g = val$anchorSide;
            this.f30939h = val$w;
            this.f30940i = val$h;
            this.f30941j = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            e eVar = new e(this.f30932a, this.f30933b, this.f30934c, this.f30935d, this.f30936e);
            eVar.f30931e0 = blockPanel;
            FloatingPanelArea g10 = C15147a.g(this.f30937f, eVar, this.f30938g, this.f30939h, this.f30940i);
            eVar.f30926Z = g10;
            g10.T();
            g10.F1(false);
            g10.E1(true);
            g10.I1(220, 130, FloatingPanelArea.i.Fixed);
            j jVar = this.f30941j;
            if (jVar != null) {
                jVar.a(eVar, g10);
            }
        }
    }

    public class b implements E.e {

        public final String f30942a;

        public final float f30943b;

        public final float f30944c;

        public final float f30945d;

        public final i f30946e;

        public final float f30947f;

        public final float f30948g;

        public final j f30949h;

        public b(final String val$tittle, final float val$defaultValue, final float val$min, final float val$max, final i val$listener, final float val$w, final float val$h, final j val$showListener) {
            this.f30942a = val$tittle;
            this.f30943b = val$defaultValue;
            this.f30944c = val$min;
            this.f30945d = val$max;
            this.f30946e = val$listener;
            this.f30947f = val$w;
            this.f30948g = val$h;
            this.f30949h = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            e eVar = new e(this.f30942a, this.f30943b, this.f30944c, this.f30945d, this.f30946e);
            eVar.f30931e0 = blockPanel;
            FloatingPanelArea m10 = C15147a.m(eVar, this.f30947f, this.f30948g);
            eVar.f30926Z = m10;
            m10.T();
            m10.F1(false);
            m10.E1(true);
            m10.I1(220, 130, FloatingPanelArea.i.Fixed);
            j jVar = this.f30949h;
            if (jVar != null) {
                jVar.a(eVar, m10);
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

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Nc.b.E(e.this.f30928b0, e.this.f30930d0, e.this.f30929c0) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                e.this.f30930d0 = variable.float_value;
            }
        }
    }

    public class C0814e extends dn.a {

        public final E5.f f30952a;

        public C0814e(final E5.f val$textFloat) {
            this.f30952a = val$textFloat;
        }

        @Override
        public void b(@Nullable RangeSeekBarView rangeSeekBarView, int progress, boolean fromUser) {
            if (fromUser) {
                try {
                    e.this.f30930d0 = progress / 10000.0f;
                    this.f30952a.i();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public class f implements f.i {

        public final C5.b f30954a;

        public final RangeSeekBarView f30955b;

        public f(final C5.b val$entry, final RangeSeekBarView val$rangeSeekBarView) {
            this.f30954a = val$entry;
            this.f30955b = val$rangeSeekBarView;
        }

        @Override
        public float a(float newValue) {
            C5.b bVar = this.f30954a;
            if (bVar.f2090y) {
                float f10 = bVar.f2088w;
                if (newValue > f10) {
                    return f10;
                }
                float f11 = bVar.f2087v;
                if (newValue < f11) {
                    return f11;
                }
            }
            return newValue;
        }

        @Override
        public void b(float newValue) {
            this.f30955b.setCurrentValue((int) (newValue * 10000.0f));
        }
    }

    public class g extends AbstractViewOnClickListenerC12733a {
        public g() {
        }

        @Override
        public void click(View v10) {
            e.this.f30925Y.a(e.this.f30927a0, true);
            N7.c.D().s0(this);
            e.this.R0();
        }
    }

    public class h extends AbstractViewOnClickListenerC12733a {
        public h() {
        }

        @Override
        public void click(View v10) {
            e.this.y1();
        }
    }

    public interface i {
        void a(float value, boolean canceled);
    }

    public interface j {
        void a(e popup, FloatingPanelArea area);
    }

    public e(String tittle, float defaultValue, float min, float max, i listener) {
        super(null, tittle);
        this.f30924X = tittle;
        this.f30927a0 = defaultValue;
        this.f30930d0 = defaultValue;
        this.f30928b0 = min;
        this.f30929c0 = max;
        this.f30925Y = listener;
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
    }

    public static void A1(View anchor, C15147a.e anchorSide, String tittle, float defaultValue, float min, float max, i listener, j showListener) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        E.s1(new a(tittle, defaultValue, min, max, listener, anchor, anchorSide, N7.c.g(220), N7.c.f(130), showListener));
    }

    public static void B1(String tittle, float defaultValue, float min, float max, i listener) {
        C1(tittle, defaultValue, min, max, listener, null);
    }

    public static void C1(String tittle, float defaultValue, float min, float max, i listener, j showListener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        E.s1(new b(tittle, defaultValue, min, max, listener, N7.c.g(220), N7.c.f(130), showListener));
    }

    public static void z1(View anchor, C15147a.e anchorSide, String tittle, float defaultValue, float min, float max, i listener) {
        A1(anchor, anchorSide, tittle, defaultValue, min, max, listener, null);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.float_slider_popup_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new c());
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        Button button = (Button) inflate.findViewById(R.id.cancel);
        Button button2 = (Button) inflate.findViewById(R.id.confirm);
        textView.setText(this.f30924X);
        C5.b bVar = new C5.b(new d(), "", b.a.SLFloatSliderFPanel, this.f30928b0, this.f30929c0, 0.0f);
        E5.f fVar = new E5.f();
        RangeSeekBarView rangeSeekBarView = (RangeSeekBarView) inflate.findViewById(R.id.rangeseekbar);
        rangeSeekBarView.setStep((int) 1.0f);
        rangeSeekBarView.setMinValue((int) (this.f30928b0 * 10000.0f));
        rangeSeekBarView.setMaxValue((int) (this.f30929c0 * 10000.0f));
        rangeSeekBarView.setCurrentValue((int) (this.f30930d0 * 10000.0f));
        rangeSeekBarView.setFillColor(Theme.i(Theme.T.PRIMARY_DARK));
        rangeSeekBarView.setBaseColor(Theme.i(Theme.T.PANEL));
        rangeSeekBarView.setCircleFillColor(Theme.i(Theme.T.PRIMARY));
        rangeSeekBarView.setCircleTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        rangeSeekBarView.setBarHeight(Nc.b.l0(6.0f, M()));
        rangeSeekBarView.setCircleRadius(Nc.b.l0(8.0f, M()));
        rangeSeekBarView.setCircleTextSize(Nc.b.p1(8, M()));
        rangeSeekBarView.setOnRangeSeekBarViewChangeListener(new C0814e(fVar));
        fVar.e(bVar, inflate, textView, M(), new f(bVar, rangeSeekBarView));
        button.setOnClickListener(new g());
        button2.setOnClickListener(new h());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f30931e0;
        if (e10 != null) {
            e10.R0();
            this.f30931e0 = null;
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

    public final void y1() {
        this.f30925Y.a(this.f30930d0, false);
        N7.c.D().s0(this);
        R0();
    }
}
