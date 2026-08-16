package q7;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine2.R;
import com.wang.avi.AVLoadingIndicatorView;
import java.util.concurrent.atomic.AtomicBoolean;
import r4.C15147a;

public class C15045a extends EditorPanel {

    public static final String f106009c0 = "SmallInfinityLoadingBar";

    public static final int f106010d0 = 24;

    public final boolean f106011X;

    public float f106012Y;

    public final AtomicBoolean f106013Z;

    public E f106014a0;

    public float f106015b0;

    public class RunnableC1964a implements Runnable {

        public final boolean f106016b;

        public final d f106017c;

        public class C1965a implements E.e {
            public C1965a() {
            }

            @Override
            public void a(E blockPanel) {
                float g10 = N7.c.g(32);
                float f10 = N7.c.f(32);
                C15045a c15045a = new C15045a(RunnableC1964a.this.f106016b, blockPanel);
                FloatingPanelArea o10 = C15147a.o(c15045a, g10, f10);
                o10.T();
                o10.N1(false);
                o10.M0();
                o10.E1(RunnableC1964a.this.f106016b);
                d dVar = RunnableC1964a.this.f106017c;
                if (dVar != null) {
                    dVar.a(c15045a);
                }
            }
        }

        public RunnableC1964a(final boolean val$blockClicks, final d val$listener) {
            this.f106016b = val$blockClicks;
            this.f106017c = val$listener;
        }

        @Override
        public void run() {
            if (this.f106016b) {
                E.s1(new C1965a());
                return;
            }
            float g10 = N7.c.g(32);
            float f10 = N7.c.f(32);
            C15045a c15045a = new C15045a(this.f106016b, null);
            FloatingPanelArea o10 = C15147a.o(c15045a, g10, f10);
            o10.T();
            o10.N1(false);
            o10.M0();
            o10.E1(this.f106016b);
            d dVar = this.f106017c;
            if (dVar != null) {
                dVar.a(c15045a);
            }
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            C15045a.this.R0();
        }
    }

    public interface d {
        void a(C15045a loadingPanel);
    }

    public C15045a(boolean captureClicks, E blockPanel) {
        super(null, f106009c0);
        this.f106012Y = 0.0f;
        this.f106013Z = new AtomicBoolean();
        super.a1(false);
        this.f106011X = captureClicks;
        this.f106014a0 = blockPanel;
    }

    public static C15045a r1() {
        float g10 = N7.c.g(32);
        float f10 = N7.c.f(32);
        C15045a c15045a = new C15045a(false, null);
        FloatingPanelArea o10 = C15147a.o(c15045a, g10, f10);
        o10.T();
        o10.N1(false);
        o10.M0();
        return c15045a;
    }

    public static C15045a s1(float x10, float y10) {
        C15045a c15045a = new C15045a(false, null);
        FloatingPanelArea p10 = C15147a.p(c15045a, x10, y10, N7.c.g(32), N7.c.f(32));
        p10.T();
        p10.N1(false);
        p10.M0();
        return c15045a;
    }

    public static C15045a t1(View anchor, C15147a.e anchorSide) {
        C15045a c15045a = new C15045a(false, null);
        FloatingPanelArea k10 = C15147a.k(anchor, c15045a, anchorSide, N7.c.g(32), N7.c.f(32));
        k10.T();
        k10.N1(false);
        k10.M0();
        return c15045a;
    }

    public static void u1(boolean blockClicks, d listener) {
        N7.c.j0(new RunnableC1964a(blockClicks, listener));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.small_infinity_loading_bar_panel, (ViewGroup) null);
        if (this.f106011X) {
            inflate.setOnTouchListener(new b());
        }
        ((AVLoadingIndicatorView) inflate.findViewById(R.id.avi)).show();
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f106014a0;
        if (e10 != null) {
            e10.R0();
        }
    }

    @Override
    public void m1() {
        super.m1();
        if (this.f106013Z.get()) {
            R0();
        }
        float d10 = this.f106015b0 + K8.d.d();
        this.f106015b0 = d10;
        if (d10 >= 300.0f) {
            R0();
        }
    }

    @Override
    public void n1() {
        super.n1();
    }

    public void p1() {
        this.f106013Z.set(true);
        N7.c.c0(new c());
    }

    public void q1(E blockPanel) {
        this.f106014a0 = blockPanel;
    }
}
