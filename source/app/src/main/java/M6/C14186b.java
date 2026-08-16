package m6;

import android.annotation.SuppressLint;
import android.provider.ContactsContract;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.StrokeTextView;
import com.itsmagic.engine.Engines.Engine.Renders.OGLSurfaceView;
import com.itsmagic.engine2.R;
import m4.C14182a;
import r4.C15147a;
import rc.C15169a;
import tc.C15393b;

public class C14186b extends EditorPanel {

    public static final long f96694i0 = 250;

    public static final float f96695j0 = 40.0f;

    public FloatingPanelArea f96696X;

    public StrokeTextView f96697Y;

    public TextView f96698Z;

    public int f96699a0;

    public C14182a f96700b0;

    public long f96701c0;

    public float f96702d0;

    public float f96703e0;

    public long f96704f0;

    public int f96705g0;

    public int f96706h0;

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            C15393b c15393b;
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                long eventTime = motionEvent.getEventTime();
                if (eventTime - C14186b.this.f96701c0 <= 250) {
                    float f10 = rawX - C14186b.this.f96702d0;
                    float f11 = rawY - C14186b.this.f96703e0;
                    if ((f10 * f10) + (f11 * f11) <= 1600.0f) {
                        C14186b.this.f96700b0 = null;
                        C14186b.this.f96701c0 = 0L;
                        C14186b.this.z1();
                        return true;
                    }
                }
                C14186b.this.f96701c0 = eventTime;
                C14186b.this.f96702d0 = rawX;
                C14186b.this.f96703e0 = rawY;
                if (C14186b.this.f96700b0 == null && (c15393b = C15169a.f108803l.get(0)) != null) {
                    C14186b.this.f96700b0 = new C14182a();
                    int i10 = (int) c15393b.a().f79838x;
                    int i11 = (int) c15393b.a().f79839y;
                    C14186b.this.f96700b0.f96683a = i10;
                    C14186b.this.f96700b0.f96684b = i11;
                    C14186b.this.f96700b0.f96685c = C14186b.this.f96696X.n1();
                    C14186b.this.f96700b0.f96686d = C14186b.this.f96696X.o1();
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                C14186b.this.f96700b0 = null;
            }
            return false;
        }
    }

    public C14186b(K8.a engine) {
        super(engine);
        this.f96701c0 = 0L;
        this.f96702d0 = 0.0f;
        this.f96703e0 = 0.0f;
        this.f96704f0 = System.nanoTime();
        this.f96705g0 = 0;
        this.f96706h0 = 0;
        super.e1(false);
        super.a1(false);
    }

    public static void A1() {
        float g10 = N7.c.g(38);
        float f10 = N7.c.f(32);
        C14186b c14186b = new C14186b();
        FloatingPanelArea o10 = C15147a.o(c14186b, g10, f10);
        o10.T();
        c14186b.f96696X = o10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.fps_panel, (ViewGroup) null);
        this.f96697Y = (StrokeTextView) inflate.findViewById(R.id.fpsView);
        this.f96698Z = (TextView) inflate.findViewById(R.id.limitedtv);
        this.f96697Y.setStrokeColor(-16777216);
        this.f96697Y.setStrokeWidth(6.0f);
        inflate.setOnTouchListener(new a());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
    }

    @Override
    public EditorPanel k() {
        return new C14186b();
    }

    @Override
    public void n1() {
        super.n1();
        this.f96705g0++;
        long nanoTime = System.nanoTime();
        long j10 = this.f96704f0;
        if (nanoTime - j10 >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
            this.f96706h0 = this.f96705g0 + 1;
            this.f96705g0 = 0;
            long j11 = j10 + ContactsContract.Directory.ENTERPRISE_DEFAULT;
            this.f96704f0 = j11;
            if (nanoTime - j11 >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
                this.f96704f0 = nanoTime;
            }
        }
        if (this.f96700b0 != null) {
            C15393b c15393b = C15169a.f108803l.get(0);
            if (c15393b == null || !c15393b.c()) {
                this.f96700b0 = null;
                return;
            }
            int i10 = (int) c15393b.a().f79838x;
            int i11 = (int) c15393b.a().f79839y;
            C14182a c14182a = this.f96700b0;
            int i12 = i10 - c14182a.f96683a;
            int i13 = i11 - c14182a.f96684b;
            this.f96696X.L1(Nc.b.I(c14182a.f96685c + (i12 / this.f70909k.f91407a)));
            this.f96696X.M1(Nc.b.I(this.f96700b0.f96686d + (i13 / this.f70909k.f91408b)));
        }
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public void o1() {
        this.f96697Y.setText("" + this.f96706h0);
        int i10 = this.f96699a0;
        int i11 = this.f96706h0;
        if (i10 != i11) {
            this.f96699a0 = i11;
            if (K8.a.l() == null) {
                this.f96698Z.setVisibility(8);
            } else if (OGLSurfaceView.f79473t) {
                this.f96698Z.setVisibility(0);
            } else {
                this.f96698Z.setVisibility(8);
            }
        }
    }

    public final void z1() {
        super.R0();
    }

    public C14186b() {
        super(null, "FPS");
        this.f96701c0 = 0L;
        this.f96702d0 = 0.0f;
        this.f96703e0 = 0.0f;
        this.f96704f0 = System.nanoTime();
        this.f96705g0 = 0;
        this.f96706h0 = 0;
        super.e1(false);
        super.a1(false);
    }
}
