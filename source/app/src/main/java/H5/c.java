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

public class c extends EditorPanel {

    public static final String f8167g0 = "QuatEntryEditor";

    public static final int f8168h0 = 2131493327;

    public k f8169X;

    public View f8170Y;

    public l f8171Z;

    public float f8172a0;

    public CircularSliderRange f8173b0;

    public float f8174c0;

    public TextView f8175d0;

    public final AtomicBoolean f8176e0;

    public float f8177f0;

    public class a implements dn.e {

        public final TextView f8178a;

        public a(final TextView val$stepTV) {
            this.f8178a = val$stepTV;
        }

        @Override
        public void a(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
        }

        @Override
        public void b(@Nullable RangeSeekBarView rangeSeekBarView, int i10, boolean fromUser) {
            if (fromUser) {
                c.this.f8172a0 = Nc.b.c1(i10 / 99.0f, 3.0f) * 10.0f;
                c cVar = c.this;
                cVar.f8172a0 = Nc.b.M(0.01f, cVar.f8172a0);
                int i11 = 10;
                while (true) {
                    if (i11 >= 2) {
                        float f10 = i11;
                        if (c.this.f8172a0 > f10) {
                            c cVar2 = c.this;
                            cVar2.f8172a0 = Nc.b.J(cVar2.f8172a0, f10);
                            break;
                        }
                        i11--;
                    } else if (c.this.f8172a0 > 1.5f) {
                        c cVar3 = c.this;
                        cVar3.f8172a0 = Nc.b.J(cVar3.f8172a0, 1.5f);
                    } else if (c.this.f8172a0 > 1.0f) {
                        c cVar4 = c.this;
                        cVar4.f8172a0 = Nc.b.J(cVar4.f8172a0, 1.0f);
                    } else if (c.this.f8172a0 > 0.5d) {
                        c cVar5 = c.this;
                        cVar5.f8172a0 = Nc.b.J(cVar5.f8172a0, 0.5f);
                    } else if (c.this.f8172a0 > 0.4d) {
                        c cVar6 = c.this;
                        cVar6.f8172a0 = Nc.b.J(cVar6.f8172a0, 0.4f);
                    } else if (c.this.f8172a0 > 0.3d) {
                        c cVar7 = c.this;
                        cVar7.f8172a0 = Nc.b.J(cVar7.f8172a0, 0.3f);
                    } else if (c.this.f8172a0 > 0.2d) {
                        c cVar8 = c.this;
                        cVar8.f8172a0 = Nc.b.J(cVar8.f8172a0, 0.2f);
                    } else if (c.this.f8172a0 > 0.1d) {
                        c cVar9 = c.this;
                        cVar9.f8172a0 = Nc.b.J(cVar9.f8172a0, 0.1f);
                    }
                }
                this.f8178a.setText("Step:" + Nc.b.v0(c.this.f8172a0, 2));
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

    public class ViewOnTouchListenerC0174c implements View.OnTouchListener {
        public ViewOnTouchListenerC0174c() {
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
                c.this.f8169X = k.X;
                c.this.f8177f0 = -1.0f;
            }
        }
    }

    public class e implements r {
        public e() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                c.this.f8169X = k.Y;
                c.this.f8177f0 = -1.0f;
            }
        }
    }

    public class f implements r {
        public f() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                c.this.f8169X = k.Z;
                c.this.f8177f0 = -1.0f;
            }
        }
    }

    public class g implements CircularSliderRange.a {
        public g() {
        }

        @Override
        public void a(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                c.this.f8175d0.setText("");
            } else {
                EnumC16038b enumC16038b = EnumC16038b.THUMB_PRESSED;
            }
        }

        @Override
        public void b(double pos) {
            float f10 = (float) pos;
            EditorSettings.a().entryEditorRotE = f10;
            c.this.f8176e0.set(true);
            c cVar = c.this;
            float f11 = cVar.f8177f0;
            if (f11 == -1.0f) {
                cVar.f8177f0 = f10;
            } else {
                cVar.f8177f0 = cVar.F1(f11, f10);
            }
            c cVar2 = c.this;
            float f12 = ((f10 - cVar2.f8177f0) / 360.0f) * cVar2.f8174c0;
            c.this.D1(f12);
            c cVar3 = c.this;
            cVar3.f8177f0 = f10;
            cVar3.f8175d0.setText(Nc.b.v0(f12, 2));
        }

        @Override
        public void c(double pos) {
            float f10 = (float) pos;
            EditorSettings.a().entryEditorRotS = f10;
            c.this.f8176e0.set(true);
            c.this.f8174c0 = f10 / 360.0f;
            c.t1(c.this, 10.0f);
            c.this.f8174c0 *= c.this.f8174c0;
            c.this.f8175d0.setText(Nc.b.v0(c.this.f8174c0, 2));
            c.this.f8177f0 = -1.0f;
        }

        @Override
        public void d(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                c.this.f8175d0.setText("");
                c.this.f8177f0 = -1.0f;
            } else if (event == EnumC16038b.THUMB_PRESSED) {
                c.this.f8177f0 = -1.0f;
            }
        }
    }

    public class h implements M7.d {
        public h() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            c cVar = c.this;
            cVar.D1(-cVar.f8172a0);
        }
    }

    public class i implements M7.d {
        public i() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            c cVar = c.this;
            cVar.D1(cVar.f8172a0);
        }
    }

    public class j implements dn.e {

        public float f8187a = 0.0f;

        public Runnable f8188b = null;

        public class a implements Runnable {

            public class RunnableC0175a implements Runnable {

                public final float f8191b;

                public RunnableC0175a(final float val$increment) {
                    this.f8191b = val$increment;
                }

                @Override
                public void run() {
                    c.this.D1(this.f8191b * K8.d.e());
                    Runnable runnable = j.this.f8188b;
                    if (runnable != null) {
                        K8.a.B(runnable);
                    }
                }
            }

            public a() {
            }

            @Override
            public void run() {
                j jVar = j.this;
                float f10 = (((jVar.f8187a / 100.0f) * 2.0f) - 1.0f) * c.this.f8172a0 * 10.0f;
                if (c.this.f8170Y != null) {
                    c.this.f8170Y.post(new RunnableC0175a(f10));
                }
            }
        }

        public j() {
        }

        @Override
        public void a(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
            rangeSeekBarView.setCurrentValue(50);
            this.f8188b = null;
        }

        @Override
        public void b(@Nullable RangeSeekBarView rangeSeekBarView, int i10, boolean fromUser) {
            if (fromUser) {
                this.f8187a = i10;
            }
        }

        @Override
        public void c(@Nullable RangeSeekBarView rangeSeekBarView, int i10) {
            a aVar = new a();
            this.f8188b = aVar;
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
    }

    public c(String tittle, l listener) {
        super(null, "Edit - " + tittle);
        this.f8169X = k.X;
        this.f8172a0 = 1.0f;
        this.f8176e0 = new AtomicBoolean();
        this.f8177f0 = -1.0f;
        super.e1(false);
        this.f8171Z = listener;
    }

    public static c E1(View v10, String tittle, l floatListener) {
        float g10 = N7.c.g(300);
        float f10 = N7.c.f(92);
        c cVar = new c(tittle, floatListener);
        C15147a.i(v10, cVar, C15147a.e.Below, g10, f10, new b());
        return cVar;
    }

    public float F1(float last, float pos) {
        if (last >= 180.0f) {
            if (pos > 180.0f) {
                return last;
            }
        } else if (last > 180.0f || pos < 180.0f) {
            return last;
        }
        return pos;
    }

    private void G1() {
        Activity o10 = N7.c.o();
        LinearLayout linearLayout = (LinearLayout) A1(R.id.stepLeftButtons);
        linearLayout.removeAllViews();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        M7.c cVar = new M7.c(R.drawable.rigth_arrow, new h(), c.b.Left, o10);
        Ac.b bVar = C13189d.f86106b;
        M7.c U10 = cVar.U(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        steppedArrayList.add(U10.M(bVar2).m0(Nc.b.k0(26.0f)).Y(Nc.b.k0(26.0f)));
        new M7.h(linearLayout, N7.c.t()).g(steppedArrayList);
        LinearLayout linearLayout2 = (LinearLayout) A1(R.id.stepRightButtons);
        linearLayout2.removeAllViews();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        steppedArrayList2.add(new M7.c(R.drawable.left_arrow, new i(), c.b.Right, o10).U(bVar).M(bVar2).m0(Nc.b.k0(26.0f)).Y(Nc.b.k0(26.0f)));
        new M7.h(linearLayout2, N7.c.t()).g(steppedArrayList2);
    }

    private void H1() {
        RangeSeekBarView rangeSeekBarView = (RangeSeekBarView) A1(R.id.rangeseekbar);
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

    private void I1() {
        this.f8173b0 = (CircularSliderRange) A1(R.id.circular);
        TextView textView = (TextView) A1(R.id.xt);
        this.f8175d0 = textView;
        textView.setText("");
        this.f8174c0 = EditorSettings.a().entryEditorRotS / 360.0f;
        float f10 = EditorSettings.a().entryEditorRotS;
        float f11 = EditorSettings.a().entryEditorRotE;
        this.f8173b0.setStartAngle(f10);
        this.f8173b0.setEndAngle(f11);
        this.f8173b0.setOnSliderRangeMovedListener(new g());
    }

    public static float t1(c cVar, float f10) {
        float f11 = cVar.f8174c0 * f10;
        cVar.f8174c0 = f11;
        return f11;
    }

    public final <T extends View> T A1(int i10) {
        return (T) this.f8170Y.findViewById(i10);
    }

    public View B1() {
        return this.f8170Y;
    }

    @Override
    public View C0() {
        View inflate = N7.c.B().inflate(R.layout.vec3_entry_value_editor, (ViewGroup) null);
        this.f8170Y = inflate;
        inflate.setOnTouchListener(new ViewOnTouchListenerC0174c());
        C1();
        I1();
        G1();
        H1();
        J1();
        return inflate;
    }

    public final void C1() {
        Activity o10 = N7.c.o();
        LinearLayout linearLayout = (LinearLayout) A1(R.id.axisButtons);
        linearLayout.removeAllViews();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        o oVar = new o(R.drawable.axis_x, new d(), c.b.Top, o10);
        Ac.b bVar = C13189d.f86106b;
        o N02 = oVar.N0(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        N02.B0(bVar2).m0(Nc.b.k0(26.0f)).Y(Nc.b.k0(26.0f));
        o oVar2 = new o(R.drawable.axis_y, new e(), c.b.Middle, o10);
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

    public final void D1(float v10) {
        if (this.f8171Z == null) {
            return;
        }
        try {
            int ordinal = this.f8169X.ordinal();
            if (ordinal == 0) {
                this.f8171Z.a(v10);
            } else if (ordinal == 1) {
                this.f8171Z.c(v10);
            } else {
                if (ordinal != 2) {
                    throw new RuntimeException("Invalid axis");
                }
                this.f8171Z.b(v10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void J1() {
        RangeSeekBarView rangeSeekBarView = (RangeSeekBarView) A1(R.id.stepSeekbar);
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
        TextView textView = (TextView) A1(R.id.stepTV);
        textView.setText("Step:" + this.f8172a0);
        rangeSeekBarView.setOnRangeSeekBarViewChangeListener(new a(textView));
    }

    @Override
    public void n1() {
        super.n1();
        if (this.f8176e0.compareAndSet(true, false)) {
            EditorSettings.e();
        }
    }
}
