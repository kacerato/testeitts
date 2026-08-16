package H5;

import JAVARuntime.Runnable;
import M7.c;
import M7.o;
import M7.p;
import M7.r;
import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bozapro.circularsliderrange.CircularSliderRange;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import f5.C13189d;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.annotations.Nullable;
import org.mohammedalaa.seekbar.RangeSeekBarView;
import r4.C15147a;
import x.EnumC16038b;

public class e extends EditorPanel {

    public static final String f8214i0 = "Vec3EntryEditor";

    public static final int f8215j0 = 2131493327;

    public k f8216X;

    public View f8217Y;

    public l f8218Z;

    public float f8219a0;

    public CircularSliderRange f8220b0;

    public float f8221c0;

    public TextView f8222d0;

    public final AtomicBoolean f8223e0;

    public float f8224f0;

    public float f8225g0;

    public float f8226h0;

    public class a implements dn.e {

        public final TextView f8227a;

        public a(final TextView val$stepTV) {
            this.f8227a = val$stepTV;
        }

        @Override
        public void a(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
        }

        @Override
        public void b(@Nullable RangeSeekBarView rangeSeekBarView, int i10, boolean fromUser) {
            if (fromUser) {
                e.this.f8219a0 = Nc.b.c1(i10 / 99.0f, 3.0f) * 10.0f;
                e eVar = e.this;
                eVar.f8219a0 = Nc.b.M(0.01f, eVar.f8219a0);
                int i11 = 10;
                while (true) {
                    if (i11 >= 2) {
                        float f10 = i11;
                        if (e.this.f8219a0 > f10) {
                            e eVar2 = e.this;
                            eVar2.f8219a0 = Nc.b.J(eVar2.f8219a0, f10);
                            break;
                        }
                        i11--;
                    } else if (e.this.f8219a0 > 1.5f) {
                        e eVar3 = e.this;
                        eVar3.f8219a0 = Nc.b.J(eVar3.f8219a0, 1.5f);
                    } else if (e.this.f8219a0 > 1.0f) {
                        e eVar4 = e.this;
                        eVar4.f8219a0 = Nc.b.J(eVar4.f8219a0, 1.0f);
                    } else if (e.this.f8219a0 > 0.5d) {
                        e eVar5 = e.this;
                        eVar5.f8219a0 = Nc.b.J(eVar5.f8219a0, 0.5f);
                    } else if (e.this.f8219a0 > 0.4d) {
                        e eVar6 = e.this;
                        eVar6.f8219a0 = Nc.b.J(eVar6.f8219a0, 0.4f);
                    } else if (e.this.f8219a0 > 0.3d) {
                        e eVar7 = e.this;
                        eVar7.f8219a0 = Nc.b.J(eVar7.f8219a0, 0.3f);
                    } else if (e.this.f8219a0 > 0.2d) {
                        e eVar8 = e.this;
                        eVar8.f8219a0 = Nc.b.J(eVar8.f8219a0, 0.2f);
                    } else if (e.this.f8219a0 > 0.1d) {
                        e eVar9 = e.this;
                        eVar9.f8219a0 = Nc.b.J(eVar9.f8219a0, 0.1f);
                    }
                }
                this.f8227a.setText("Step:" + Nc.b.v0(e.this.f8219a0, 2));
            }
        }

        @Override
        public void c(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
        }
    }

    public class b implements C15147a.f {
        @Override
        public void a(FloatingPanelArea floatingPanel) {
            floatingPanel.N1(false);
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class d implements r {
        public d() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                e.this.f8216X = k.X;
                e eVar = e.this;
                eVar.f8226h0 = -1.0f;
                eVar.f8224f0 = -9.98899E8f;
            }
        }
    }

    public class C0176e implements r {
        public C0176e() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                e.this.f8216X = k.Y;
                e eVar = e.this;
                eVar.f8226h0 = -1.0f;
                eVar.f8224f0 = -9.98899E8f;
            }
        }
    }

    public class f implements r {
        public f() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                e.this.f8216X = k.Z;
                e eVar = e.this;
                eVar.f8226h0 = -1.0f;
                eVar.f8224f0 = -9.98899E8f;
            }
        }
    }

    public class g implements CircularSliderRange.a {
        public g() {
        }

        @Override
        public void a(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                e.this.f8222d0.setText("");
            } else {
                EnumC16038b enumC16038b = EnumC16038b.THUMB_PRESSED;
            }
        }

        @Override
        public void b(double pos) {
            float f10 = (float) pos;
            EditorSettings.a().entryEditorRotE = f10;
            e.this.f8223e0.set(true);
            e eVar = e.this;
            float f11 = eVar.f8226h0;
            if (f11 == -1.0f) {
                eVar.f8226h0 = f10;
            } else {
                eVar.f8226h0 = eVar.H1(f11, f10);
            }
            e eVar2 = e.this;
            if (eVar2.f8224f0 == -9.98899E8f) {
                eVar2.f8224f0 = eVar2.D1();
            }
            e eVar3 = e.this;
            float f12 = ((f10 - eVar3.f8226h0) / 360.0f) * eVar3.f8221c0;
            e eVar4 = e.this;
            float f13 = eVar4.f8225g0 + f12;
            eVar4.f8225g0 = f13;
            eVar4.F1(eVar4.f8224f0 + f13);
            e eVar5 = e.this;
            eVar5.f8226h0 = f10;
            eVar5.f8222d0.setText(Nc.b.v0(e.this.f8225g0, 2));
        }

        @Override
        public void c(double pos) {
            float f10 = (float) pos;
            EditorSettings.a().entryEditorRotS = f10;
            e.this.f8223e0.set(true);
            e.this.f8221c0 = f10 / 360.0f;
            e.t1(e.this, 10.0f);
            e.this.f8221c0 *= e.this.f8221c0;
            e.this.f8222d0.setText(Nc.b.v0(e.this.f8221c0, 2));
            e eVar = e.this;
            eVar.f8226h0 = -1.0f;
            eVar.f8224f0 = -9.98899E8f;
        }

        @Override
        public void d(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                e.this.f8222d0.setText("");
                e eVar = e.this;
                eVar.f8226h0 = -1.0f;
                eVar.f8224f0 = -9.98899E8f;
                return;
            }
            if (event == EnumC16038b.THUMB_PRESSED) {
                e eVar2 = e.this;
                eVar2.f8226h0 = -1.0f;
                eVar2.f8224f0 = -9.98899E8f;
            }
        }
    }

    public class h implements M7.d {
        public h() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            e.this.F1(e.this.D1() - e.this.f8219a0);
        }
    }

    public class i implements M7.d {
        public i() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            e.this.F1(e.this.D1() + e.this.f8219a0);
        }
    }

    public class j implements dn.e {

        public Runnable f8236a = null;

        public int f8237b = 0;

        public class a implements Runnable {

            public class RunnableC0177a implements Runnable {

                public final float f8240b;

                public final float f8241c;

                public RunnableC0177a(final float val$increment, final float val$value) {
                    this.f8240b = val$increment;
                    this.f8241c = val$value;
                }

                @Override
                public void run() {
                    float f10 = this.f8240b;
                    if (f10 > 0.0f) {
                        e.this.F1(this.f8241c + (f10 * f10 * K8.d.e()));
                    } else {
                        e.this.F1(this.f8241c - ((f10 * f10) * K8.d.e()));
                    }
                    Runnable runnable = j.this.f8236a;
                    if (runnable != null) {
                        K8.a.B(runnable);
                    }
                }
            }

            public a() {
            }

            @Override
            public void run() {
                float f10 = ((r0.f8237b / 100.0f) - 0.5f) * 2.0f * e.this.f8219a0;
                float D12 = e.this.D1();
                if (e.this.f8217Y != null) {
                    e.this.f8217Y.post(new RunnableC0177a(f10, D12));
                }
            }
        }

        public j() {
        }

        @Override
        public void a(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
            rangeSeekBarView.setCurrentValue(50);
            this.f8236a = null;
        }

        @Override
        public void b(@Nullable RangeSeekBarView rangeSeekBarView, int i10, boolean fromUser) {
            if (fromUser) {
                this.f8237b = i10;
            }
        }

        @Override
        public void c(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
            a aVar = new a();
            this.f8236a = aVar;
            K8.a.B(aVar);
        }
    }

    public enum k {
        X,
        Y,
        Z
    }

    public interface l {
        void a(float value);

        void b(float value);

        void c(float value);

        float getX();

        float getY();

        float getZ();
    }

    public e(String tittle, l listener) {
        super(null, "Edit - " + tittle);
        this.f8216X = k.X;
        this.f8219a0 = 1.0f;
        this.f8223e0 = new AtomicBoolean();
        this.f8224f0 = -9.98899E8f;
        this.f8226h0 = -1.0f;
        super.e1(false);
        this.f8218Z = listener;
    }

    private <T extends View> T B1(int i10) {
        return (T) this.f8217Y.findViewById(i10);
    }

    private void E1() {
        Activity o10 = N7.c.o();
        LinearLayout linearLayout = (LinearLayout) B1(R.id.axisButtons);
        linearLayout.removeAllViews();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        o oVar = new o(R.drawable.axis_x, new d(), c.b.Top, o10);
        Ac.b bVar = C13189d.f86106b;
        o N02 = oVar.N0(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        N02.B0(bVar2).m0(Nc.b.k0(26.0f)).Y(Nc.b.k0(26.0f));
        o oVar2 = new o(R.drawable.axis_y, new C0176e(), c.b.Middle, o10);
        oVar2.N0(bVar).B0(bVar2).m0(Nc.b.k0(26.0f)).Y(Nc.b.k0(26.0f));
        o oVar3 = new o(R.drawable.axis_z, new f(), c.b.Bottom, o10);
        oVar3.N0(bVar).B0(bVar2).m0(Nc.b.k0(26.0f)).Y(Nc.b.k0(26.0f));
        p pVar = new p(N7.c.t());
        pVar.E(false);
        pVar.s(oVar);
        pVar.s(oVar2);
        pVar.s(oVar3);
        pVar.B(oVar);
        steppedArrayList.add(pVar);
        new M7.h(linearLayout, N7.c.t()).g(steppedArrayList);
    }

    public void F1(float v10) {
        if (this.f8218Z == null) {
            return;
        }
        try {
            int ordinal = this.f8216X.ordinal();
            if (ordinal == 0) {
                this.f8218Z.c(v10);
            } else if (ordinal == 1) {
                this.f8218Z.b(v10);
            } else {
                if (ordinal != 2) {
                    throw new RuntimeException("Invalid axis");
                }
                this.f8218Z.a(v10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static e G1(View v10, String tittle, l floatListener) {
        float g10 = N7.c.g(300);
        float f10 = N7.c.f(92);
        e eVar = new e(tittle, floatListener);
        C15147a.i(v10, eVar, C15147a.e.Below, g10, f10, new b());
        return eVar;
    }

    public float H1(float last, float pos) {
        if (last >= 180.0f) {
            if (pos > 180.0f) {
                return last;
            }
        } else if (last > 180.0f || pos < 180.0f) {
            return last;
        }
        return pos;
    }

    private void I1() {
        Activity o10 = N7.c.o();
        LinearLayout linearLayout = (LinearLayout) B1(R.id.stepLeftButtons);
        linearLayout.removeAllViews();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        M7.c cVar = new M7.c(R.drawable.rigth_arrow, new h(), c.b.Left, o10);
        Ac.b bVar = C13189d.f86106b;
        M7.c U10 = cVar.U(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        steppedArrayList.add(U10.M(bVar2).m0(Nc.b.k0(26.0f)).Y(Nc.b.k0(26.0f)));
        new M7.h(linearLayout, N7.c.t()).g(steppedArrayList);
        LinearLayout linearLayout2 = (LinearLayout) B1(R.id.stepRightButtons);
        linearLayout2.removeAllViews();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        steppedArrayList2.add(new M7.c(R.drawable.left_arrow, new i(), c.b.Right, o10).U(bVar).M(bVar2).m0(Nc.b.k0(26.0f)).Y(Nc.b.k0(26.0f)));
        new M7.h(linearLayout2, N7.c.t()).g(steppedArrayList2);
    }

    private void J1() {
        RangeSeekBarView rangeSeekBarView = (RangeSeekBarView) B1(R.id.rangeseekbar);
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
        rangeSeekBarView.setOnRangeSeekBarViewChangeListener(new j());
    }

    private void K1() {
        this.f8220b0 = (CircularSliderRange) B1(R.id.circular);
        TextView textView = (TextView) B1(R.id.xt);
        this.f8222d0 = textView;
        textView.setText("");
        this.f8221c0 = EditorSettings.a().entryEditorRotS / 360.0f;
        float f10 = EditorSettings.a().entryEditorRotS;
        float f11 = EditorSettings.a().entryEditorRotE;
        this.f8220b0.setStartAngle(f10);
        this.f8220b0.setEndAngle(f11);
        this.f8220b0.setOnSliderRangeMovedListener(new g());
    }

    private void L1() {
        RangeSeekBarView rangeSeekBarView = (RangeSeekBarView) B1(R.id.stepSeekbar);
        rangeSeekBarView.setStep(1);
        rangeSeekBarView.setMinValue(0);
        rangeSeekBarView.setMaxValue(100);
        Ac.b bVar = Theme.T.PANEL;
        rangeSeekBarView.setFillColor(Theme.i(bVar));
        rangeSeekBarView.setBaseColor(Theme.i(bVar));
        rangeSeekBarView.setCircleFillColor(Theme.i(Theme.T.ACCENT_GREEN_DARK));
        rangeSeekBarView.setCircleTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        rangeSeekBarView.setBarHeight(Nc.b.l0(6.0f, M()));
        rangeSeekBarView.setCircleRadius(Nc.b.l0(8.0f, M()));
        rangeSeekBarView.setCircleTextSize(Nc.b.p1(8, M()));
        rangeSeekBarView.setCurrentValue(50);
        rangeSeekBarView.setDefaultPadding(4);
        TextView textView = (TextView) B1(R.id.stepTV);
        textView.setText("Step:" + this.f8219a0);
        rangeSeekBarView.setOnRangeSeekBarViewChangeListener(new a(textView));
    }

    public static float t1(e eVar, float f10) {
        float f11 = eVar.f8221c0 * f10;
        eVar.f8221c0 = f11;
        return f11;
    }

    @Override
    public View C0() {
        View inflate = N7.c.B().inflate(R.layout.vec3_entry_value_editor, (ViewGroup) null);
        this.f8217Y = inflate;
        inflate.setOnTouchListener(new c());
        E1();
        K1();
        I1();
        J1();
        L1();
        return inflate;
    }

    public View C1() {
        return this.f8217Y;
    }

    public final float D1() {
        if (this.f8218Z == null) {
            return 0.0f;
        }
        try {
            int ordinal = this.f8216X.ordinal();
            if (ordinal == 0) {
                return this.f8218Z.getX();
            }
            if (ordinal == 1) {
                return this.f8218Z.getY();
            }
            if (ordinal == 2) {
                return this.f8218Z.getZ();
            }
            throw new RuntimeException("Invalid axis");
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    @Override
    public void n1() {
        super.n1();
        if (this.f8223e0.compareAndSet(true, false)) {
            EditorSettings.e();
        }
    }
}
