package H5;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.bozapro.circularsliderrange.CircularSliderRange;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.annotations.Nullable;
import org.mohammedalaa.seekbar.RangeSeekBarView;
import r4.C15147a;
import x.EnumC16038b;

public class a extends EditorPanel {

    public static final String f8124d0 = "FloatEntryEditor";

    public View f8125X;

    public i f8126Y;

    public CircularSliderRange f8127Z;

    public float f8128a0;

    public TextView f8129b0;

    public final AtomicBoolean f8130c0;

    public class C0171a implements C15147a.f {
        @Override
        public void a(FloatingPanelArea floatingPanel) {
            floatingPanel.N1(false);
        }
    }

    public class b implements CircularSliderRange.a {

        public float f8132b;

        public float f8131a = -9.98899E8f;

        public float f8133c = -1.0f;

        public b() {
        }

        @Override
        public void a(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                a.this.f8129b0.setText("");
            } else {
                EnumC16038b enumC16038b = EnumC16038b.THUMB_PRESSED;
            }
        }

        @Override
        public void b(double pos) {
            float f10 = (float) pos;
            EditorSettings.a().entryEditorRotE = f10;
            a.this.f8130c0.set(true);
            float f11 = this.f8133c;
            if (f11 == -1.0f) {
                this.f8133c = f10;
            } else {
                this.f8133c = a.this.y1(f11, f10);
            }
            if (this.f8131a == -9.98899E8f) {
                this.f8131a = a.this.f8126Y.get();
            }
            this.f8132b += ((f10 - this.f8133c) / 360.0f) * a.this.f8128a0;
            a.this.f8126Y.a(this.f8131a + this.f8132b);
            this.f8133c = f10;
            a.this.f8129b0.setText(Nc.b.v0(this.f8132b, 2));
        }

        @Override
        public void c(double pos) {
            float f10 = (float) pos;
            EditorSettings.a().entryEditorRotS = f10;
            a.this.f8130c0.set(true);
            a.this.f8128a0 = f10 / 360.0f;
            a.s1(a.this, 10.0f);
            a.this.f8128a0 *= a.this.f8128a0;
            a.this.f8129b0.setText(Nc.b.v0(a.this.f8128a0, 2));
            this.f8133c = -1.0f;
            this.f8131a = -9.98899E8f;
        }

        @Override
        public void d(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                a.this.f8129b0.setText("");
                this.f8133c = -1.0f;
                this.f8131a = -9.98899E8f;
            } else if (event == EnumC16038b.THUMB_PRESSED) {
                this.f8133c = -1.0f;
                this.f8131a = -9.98899E8f;
            }
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View v10) {
            a.this.f8126Y.a(a.this.f8126Y.get() + 1.0f);
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            a.this.f8126Y.a(a.this.f8126Y.get() + 0.1f);
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View v10) {
            a.this.f8126Y.a(a.this.f8126Y.get() - 1.0f);
        }
    }

    public class f extends AbstractViewOnClickListenerC12733a {
        public f() {
        }

        @Override
        public void click(View v10) {
            a.this.f8126Y.a(a.this.f8126Y.get() - 0.1f);
        }
    }

    public class g implements dn.e {

        public float f8139a = 5.0f;

        public int f8140b = 0;

        public g() {
        }

        @Override
        public void a(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
            rangeSeekBarView.setCurrentValue(50);
        }

        @Override
        public void b(@Nullable RangeSeekBarView rangeSeekBarView, int i10, boolean fromUser) {
            if (fromUser) {
                this.f8140b = i10;
                float f10 = ((i10 / 100.0f) - 0.5f) * 2.0f * this.f8139a;
                float f11 = a.this.f8126Y.get();
                if (f10 > 0.0f) {
                    a.this.f8126Y.a(f11 + (f10 * f10 * K8.d.e()));
                } else {
                    a.this.f8126Y.a(f11 - ((f10 * f10) * K8.d.e()));
                }
            }
        }

        @Override
        public void c(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
            float f10 = ((this.f8140b / 100.0f) - 0.5f) * 2.0f * this.f8139a;
            float f11 = a.this.f8126Y.get();
            if (f10 > 0.0f) {
                a.this.f8126Y.a(f11 + (f10 * f10 * K8.d.e()));
            } else {
                a.this.f8126Y.a(f11 - ((f10 * f10) * K8.d.e()));
            }
        }
    }

    public class h implements View.OnTouchListener {
        public h() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public interface i {
        void a(float value);

        float get();
    }

    public a(String tittle, i floatListener) {
        super(null, "Edit-" + tittle);
        this.f8128a0 = 0.05f;
        this.f8130c0 = new AtomicBoolean();
        super.e1(false);
        this.f8126Y = floatListener;
    }

    public static float s1(a aVar, float f10) {
        float f11 = aVar.f8128a0 * f10;
        aVar.f8128a0 = f11;
        return f11;
    }

    public static a w1(View v10, String tittle, Context context, i floatListener) {
        Rect Q10 = N7.c.D().Q();
        int width = Q10.width();
        int height = Q10.height();
        int l02 = Nc.b.l0(188.0f, context);
        float l03 = ((int) (Nc.b.l0(112.0f, context) + context.getResources().getDimension(R.dimen.editor3d_v2_panel_tittle_total))) / height;
        a aVar = new a(tittle, floatListener);
        C15147a.i(v10, aVar, C15147a.e.Below, l02 / width, l03, new C0171a());
        return aVar;
    }

    public final void A1() {
        RangeSeekBarView rangeSeekBarView = (RangeSeekBarView) this.f8125X.findViewById(R.id.rangeseekbar);
        rangeSeekBarView.setStep(1);
        rangeSeekBarView.setMinValue(0);
        rangeSeekBarView.setMaxValue(100);
        Ac.b bVar = Theme.T.PANEL;
        rangeSeekBarView.setFillColor(Theme.i(bVar));
        rangeSeekBarView.setBaseColor(Theme.i(bVar));
        rangeSeekBarView.setCircleFillColor(Theme.i(Theme.T.ACCENT));
        rangeSeekBarView.setCircleTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        rangeSeekBarView.setBarHeight(Nc.b.l0(6.0f, M()));
        rangeSeekBarView.setCircleRadius(Nc.b.l0(8.0f, M()));
        rangeSeekBarView.setCircleTextSize(Nc.b.p1(8, M()));
        rangeSeekBarView.setCurrentValue(50);
        rangeSeekBarView.setOnRangeSeekBarViewChangeListener(new g());
    }

    public final void B1() {
        this.f8127Z = (CircularSliderRange) this.f8125X.findViewById(R.id.circular);
        TextView textView = (TextView) this.f8125X.findViewById(R.id.xt);
        this.f8129b0 = textView;
        textView.setText("");
        this.f8128a0 = EditorSettings.a().entryEditorRotS / 360.0f;
        float f10 = EditorSettings.a().entryEditorRotS;
        float f11 = EditorSettings.a().entryEditorRotE;
        this.f8127Z.setStartAngle(f10);
        this.f8127Z.setEndAngle(f11);
        this.f8127Z.setOnSliderRangeMovedListener(new b());
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.entry_value_editor_panel, (ViewGroup) null);
        this.f8125X = inflate;
        inflate.setOnTouchListener(new h());
        B1();
        z1();
        A1();
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return new a(X(), this.f8126Y);
    }

    @Override
    public void m1() {
    }

    @Override
    public void n1() {
        if (this.f8130c0.compareAndSet(true, false)) {
            EditorSettings.e();
        }
    }

    public final void x1(float value) {
        CircularSliderRange circularSliderRange = this.f8127Z;
        if (circularSliderRange != null) {
            circularSliderRange.setEndAngle(value);
        }
    }

    public final float y1(float last, float pos) {
        if (last >= 180.0f) {
            if (pos > 180.0f) {
                return last;
            }
        } else if (last > 180.0f || pos < 180.0f) {
            return last;
        }
        return pos;
    }

    public final void z1() {
        Button button = (Button) this.f8125X.findViewById(R.id.plusOne);
        Button button2 = (Button) this.f8125X.findViewById(R.id.plusDec);
        Button button3 = (Button) this.f8125X.findViewById(R.id.minusOne);
        Button button4 = (Button) this.f8125X.findViewById(R.id.minusDec);
        button.setOnClickListener(new c());
        button2.setOnClickListener(new d());
        button3.setOnClickListener(new e());
        button4.setOnClickListener(new f());
    }
}
