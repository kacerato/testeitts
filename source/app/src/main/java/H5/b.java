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

public class b extends EditorPanel {

    public static final String f8143e0 = "IntEntryEditor";

    public View f8144X;

    public g f8145Y;

    public float f8146Z;

    public CircularSliderRange f8147a0;

    public int f8148b0;

    public TextView f8149c0;

    public final AtomicBoolean f8150d0;

    public class a implements C15147a.f {
        @Override
        public void a(FloatingPanelArea floatingPanel) {
            floatingPanel.N1(false);
        }
    }

    public class C0172b implements CircularSliderRange.a {

        public float f8152b;

        public float f8151a = -9.98899E8f;

        public float f8153c = -1.0f;

        public C0172b() {
        }

        @Override
        public void a(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                b.this.f8149c0.setText("");
            } else {
                EnumC16038b enumC16038b = EnumC16038b.THUMB_PRESSED;
            }
        }

        @Override
        public void b(double pos) {
            float f10 = (float) pos;
            EditorSettings.a().entryEditorRotE = f10;
            b.this.f8150d0.set(true);
            float f11 = this.f8153c;
            if (f11 == -1.0f) {
                this.f8153c = f10;
            } else {
                this.f8153c = b.this.B1(f11, f10);
            }
            if (this.f8151a == -9.98899E8f) {
                this.f8151a = b.this.f8146Z;
            }
            this.f8152b = this.f8152b + (((f10 - this.f8153c) / 360.0f) * b.this.f8148b0);
            b.this.f8146Z = (int) (this.f8151a + r0);
            b.this.f8145Y.b((int) (this.f8151a + this.f8152b));
            this.f8153c = f10;
            b.this.f8149c0.setText(((int) this.f8152b) + "");
        }

        @Override
        public void c(double pos) {
            b.this.f8146Z = r0.f8145Y.get();
            float f10 = (float) pos;
            EditorSettings.a().entryEditorRotS = f10;
            b.this.f8150d0.set(true);
            int unused = b.this.f8148b0;
            float f11 = (f10 / 360.0f) * 25.0f;
            b.this.f8148b0 = (int) (f11 * f11);
            b.this.f8149c0.setText(b.this.f8148b0 + "");
            this.f8153c = -1.0f;
            this.f8151a = -9.98899E8f;
        }

        @Override
        public void d(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                b.this.f8149c0.setText("");
                this.f8153c = -1.0f;
                this.f8151a = -9.98899E8f;
            } else if (event == EnumC16038b.THUMB_PRESSED) {
                this.f8153c = -1.0f;
                this.f8151a = -9.98899E8f;
                b.this.f8146Z = r4.f8145Y.get();
            }
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View v10) {
            b.r1(b.this, 1.0f);
            b.this.f8145Y.b((int) b.this.f8146Z);
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            b.s1(b.this, 1.0f);
            b.this.f8145Y.b((int) b.this.f8146Z);
        }
    }

    public class e implements dn.e {

        public float f8157a = 5.0f;

        public int f8158b = 0;

        public class a implements Runnable {

            public final float f8160b;

            public final float f8161c;

            public a(final float val$increment, final float val$value) {
                this.f8160b = val$increment;
                this.f8161c = val$value;
            }

            @Override
            public void run() {
                float f10 = this.f8160b;
                if (f10 > 0.0f) {
                    float e10 = this.f8161c + (f10 * f10 * K8.d.e());
                    b.this.f8146Z = e10;
                    b.this.f8145Y.b((int) e10);
                } else {
                    float e11 = this.f8161c - ((f10 * f10) * K8.d.e());
                    b.this.f8146Z = e11;
                    b.this.f8145Y.b((int) e11);
                }
            }
        }

        public class RunnableC0173b implements Runnable {

            public final float f8163b;

            public final float f8164c;

            public RunnableC0173b(final float val$increment, final float val$value) {
                this.f8163b = val$increment;
                this.f8164c = val$value;
            }

            @Override
            public void run() {
                float f10 = this.f8163b;
                if (f10 > 0.0f) {
                    float e10 = this.f8164c + (f10 * f10 * K8.d.e());
                    b.this.f8146Z = e10;
                    b.this.f8145Y.b((int) e10);
                } else {
                    float e11 = this.f8164c - ((f10 * f10) * K8.d.e());
                    b.this.f8146Z = e11;
                    b.this.f8145Y.b((int) e11);
                }
            }
        }

        public e() {
        }

        @Override
        public void a(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
            rangeSeekBarView.setCurrentValue(50);
            b.this.f8146Z = r1.f8145Y.get();
        }

        @Override
        public void b(@Nullable RangeSeekBarView rangeSeekBarView, int i10, boolean fromUser) {
            if (fromUser) {
                this.f8158b = i10;
                N7.c.o().runOnUiThread(new a(((i10 / 100.0f) - 0.5f) * 2.0f * this.f8157a, b.this.f8146Z));
            }
        }

        @Override
        public void c(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
            N7.c.o().runOnUiThread(new RunnableC0173b(((this.f8158b / 100.0f) - 0.5f) * 2.0f * this.f8157a, b.this.f8146Z));
        }
    }

    public class f implements View.OnTouchListener {
        public f() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public interface g {
        void b(int value);

        int get();
    }

    public b(String tittle, g intListener) {
        super(null, "Edit-" + tittle);
        this.f8148b0 = 1;
        this.f8150d0 = new AtomicBoolean();
        super.e1(false);
        this.f8145Y = intListener;
    }

    private void A1(float value) {
        CircularSliderRange circularSliderRange = this.f8147a0;
        if (circularSliderRange != null) {
            circularSliderRange.setEndAngle(value);
        }
    }

    public float B1(float last, float pos) {
        if (last >= 180.0f) {
            if (pos > 180.0f) {
                return last;
            }
        } else if (last > 180.0f || pos < 180.0f) {
            return last;
        }
        return pos;
    }

    private void C1() {
        Button button = (Button) this.f8144X.findViewById(R.id.plusOne);
        Button button2 = (Button) this.f8144X.findViewById(R.id.plusDec);
        Button button3 = (Button) this.f8144X.findViewById(R.id.minusOne);
        Button button4 = (Button) this.f8144X.findViewById(R.id.minusDec);
        button2.setVisibility(8);
        button4.setVisibility(8);
        button.setOnClickListener(new c());
        button3.setOnClickListener(new d());
    }

    private void D1() {
        RangeSeekBarView rangeSeekBarView = (RangeSeekBarView) this.f8144X.findViewById(R.id.rangeseekbar);
        rangeSeekBarView.setStep(1);
        rangeSeekBarView.setMinValue(0);
        rangeSeekBarView.setMaxValue(100);
        Ac.b bVar = Theme.T.PANEL;
        rangeSeekBarView.setFillColor(Theme.i(bVar));
        rangeSeekBarView.setBaseColor(Theme.i(bVar));
        rangeSeekBarView.setCircleFillColor(Theme.i(Theme.T.PRIMARY));
        rangeSeekBarView.setCircleTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        rangeSeekBarView.setBarHeight(Nc.b.l0(6.0f, M()));
        rangeSeekBarView.setCircleRadius(Nc.b.l0(8.0f, M()));
        rangeSeekBarView.setCircleTextSize(Nc.b.p1(8, M()));
        rangeSeekBarView.setCurrentValue(50);
        rangeSeekBarView.setOnRangeSeekBarViewChangeListener(new e());
    }

    private void E1() {
        this.f8147a0 = (CircularSliderRange) this.f8144X.findViewById(R.id.circular);
        TextView textView = (TextView) this.f8144X.findViewById(R.id.xt);
        this.f8149c0 = textView;
        textView.setText("");
        this.f8148b0 = (int) (EditorSettings.a().entryEditorRotS / 360.0f);
        float f10 = EditorSettings.a().entryEditorRotS;
        float f11 = EditorSettings.a().entryEditorRotE;
        this.f8147a0.setStartAngle(f10);
        this.f8147a0.setEndAngle(f11);
        this.f8147a0.setOnSliderRangeMovedListener(new C0172b());
    }

    public static float r1(b bVar, float f10) {
        float f11 = bVar.f8146Z + f10;
        bVar.f8146Z = f11;
        return f11;
    }

    public static float s1(b bVar, float f10) {
        float f11 = bVar.f8146Z - f10;
        bVar.f8146Z = f11;
        return f11;
    }

    public static b z1(View v10, String tittle, Context context, g intListener) {
        Rect Q10 = N7.c.D().Q();
        int width = Q10.width();
        int height = Q10.height();
        int l02 = Nc.b.l0(188.0f, context);
        float l03 = ((int) (Nc.b.l0(104.0f, context) + context.getResources().getDimension(R.dimen.editor3d_v2_panel_tittle_total))) / height;
        b bVar = new b(tittle, intListener);
        C15147a.i(v10, bVar, C15147a.e.Below, l02 / width, l03, new a());
        return bVar;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.entry_value_editor_panel, (ViewGroup) null);
        this.f8144X = inflate;
        this.f8146Z = this.f8145Y.get();
        inflate.setOnTouchListener(new f());
        E1();
        C1();
        D1();
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return new b(X(), this.f8145Y);
    }

    @Override
    public void m1() {
    }

    @Override
    public void n1() {
        if (this.f8150d0.compareAndSet(true, false)) {
            EditorSettings.e();
        }
    }

    @Override
    public void o1() {
        super.o1();
    }
}
