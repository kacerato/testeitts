package n6;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Profiler.CPUProfiler.CPUCoreGraphView;
import com.itsmagic.engine2.R;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import n6.C14355b;
import r4.C15147a;

public class C14354a extends EditorPanel {

    public static final String f97772r0 = "CPUProfiler";

    public static final Class f97773s0 = C14354a.class;

    public final Object f97774X;

    public final C14355b f97775Y;

    public final Map<Integer, d> f97776Z;

    public volatile boolean f97777a0;

    public volatile boolean f97778b0;

    public Thread f97779c0;

    public volatile C14355b.d f97780d0;

    public volatile boolean f97781e0;

    public TextView f97782f0;

    public GridLayout f97783g0;

    public TextView f97784h0;

    public GridLayout f97785i0;

    public TextView f97786j0;

    public TextView f97787k0;

    public TextView f97788l0;

    public TextView f97789m0;

    public TextView f97790n0;

    public TextView f97791o0;

    public TextView f97792p0;

    public TextView f97793q0;

    public class C1881a extends EditorPanel.j {
        @Override
        public Class b() {
            return C14354a.f97773s0;
        }

        @Override
        public String c() {
            return C14354a.f97772r0;
        }
    }

    public class b implements View.OnLayoutChangeListener {
        public b() {
        }

        @Override
        public void onLayoutChange(View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
            if (right - left != oldRight - oldLeft) {
                C14354a.this.G1();
                C14354a.this.H1();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            while (C14354a.this.f97777a0) {
                synchronized (C14354a.this.f97774X) {
                    while (C14354a.this.f97777a0 && !C14354a.this.f97778b0) {
                        try {
                            C14354a.this.f97774X.wait(1000L);
                            C14354a.this.f97778b0 = true;
                        } catch (InterruptedException unused) {
                        }
                    }
                    if (!C14354a.this.f97777a0) {
                        return;
                    } else {
                        C14354a.this.f97778b0 = false;
                    }
                }
                try {
                    C14354a c14354a = C14354a.this;
                    c14354a.f97780d0 = c14354a.f97775Y.I();
                    C14354a.this.f97781e0 = true;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public static final class d {

        public final TextView f97796a;

        public final TextView f97797b;

        public final CPUCoreGraphView f97798c;

        public final TextView f97799d;

        public final TextView f97800e;

        public d(View view, C1881a c1881a) {
            this(view);
        }

        public d(View itemView) {
            this.f97796a = (TextView) itemView.findViewById(R.id.cpuCoreTitle);
            this.f97797b = (TextView) itemView.findViewById(R.id.cpuCoreUsage);
            this.f97798c = (CPUCoreGraphView) itemView.findViewById(R.id.cpuCoreGraph);
            this.f97799d = (TextView) itemView.findViewById(R.id.cpuCoreCurrentFreq);
            this.f97800e = (TextView) itemView.findViewById(R.id.cpuCoreMaxFreq);
        }
    }

    static {
        EditorPanel.a(new C1881a());
    }

    public C14354a(K8.a engine) {
        super(engine);
        this.f97774X = new Object();
        this.f97775Y = new C14355b();
        this.f97776Z = new LinkedHashMap();
        super.e1(false);
    }

    public static void D1() {
        C15147a.m(new C14354a(), N7.c.g(T6.a.f24083g0), N7.c.f(420));
    }

    public final void A1(C14355b.d snapshot) {
        TextView textView = this.f97790n0;
        if (textView != null) {
            textView.setText(C14355b.f(snapshot.f97816a));
        }
        TextView textView2 = this.f97791o0;
        if (textView2 != null) {
            long j10 = snapshot.f97819d;
            textView2.setText(j10 > 0 ? C14355b.e(j10) : "-");
        }
        TextView textView3 = this.f97792p0;
        if (textView3 != null) {
            long j11 = snapshot.f97820e;
            textView3.setText(j11 > 0 ? C14355b.e(j11) : "-");
        }
        TextView textView4 = this.f97793q0;
        if (textView4 != null) {
            textView4.setText(String.valueOf(snapshot.f97818c.f97829b));
        }
    }

    public final void B1(List<C14355b.c> cores) {
        if (this.f97783g0 == null) {
            return;
        }
        for (int i10 = 0; i10 < cores.size(); i10++) {
            C14355b.c cVar = cores.get(i10);
            if (!this.f97776Z.containsKey(Integer.valueOf(cVar.f97811a))) {
                View inflate = LayoutInflater.from(M()).inflate(R.layout.cpu_profiler_core_item, (ViewGroup) this.f97783g0, false);
                this.f97776Z.put(Integer.valueOf(cVar.f97811a), new d(inflate, null));
                this.f97783g0.addView(inflate);
            }
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.cpu_profiler_panel, (ViewGroup) null);
        this.f97782f0 = (TextView) inflate.findViewById(R.id.cpuTotalUsage);
        this.f97783g0 = (GridLayout) inflate.findViewById(R.id.cpuCoresGrid);
        this.f97784h0 = (TextView) inflate.findViewById(R.id.cpuEmptyState);
        this.f97785i0 = (GridLayout) inflate.findViewById(R.id.cpuStatsGrid);
        this.f97786j0 = (TextView) inflate.findViewById(R.id.cpuStatUtilizationLabel);
        this.f97787k0 = (TextView) inflate.findViewById(R.id.cpuStatSpeedLabel);
        this.f97788l0 = (TextView) inflate.findViewById(R.id.cpuStatBaseSpeedLabel);
        this.f97789m0 = (TextView) inflate.findViewById(R.id.cpuStatLogicalLabel);
        this.f97790n0 = (TextView) inflate.findViewById(R.id.cpuStatUtilizationValue);
        this.f97791o0 = (TextView) inflate.findViewById(R.id.cpuStatSpeedValue);
        this.f97792p0 = (TextView) inflate.findViewById(R.id.cpuStatBaseSpeedValue);
        this.f97793q0 = (TextView) inflate.findViewById(R.id.cpuStatLogicalValue);
        z1();
        inflate.addOnLayoutChangeListener(new b());
        E1();
        C1();
        return inflate;
    }

    public final void C1() {
        if (this.f97777a0) {
            synchronized (this.f97774X) {
                this.f97778b0 = true;
                this.f97774X.notifyAll();
            }
        }
    }

    public final void E1() {
        if (this.f97777a0) {
            return;
        }
        this.f97777a0 = true;
        this.f97778b0 = true;
        Thread thread = new Thread(new c(), "CPUProfilerWorker");
        this.f97779c0 = thread;
        thread.setPriority(1);
        this.f97779c0.start();
    }

    public final void F1() {
        this.f97777a0 = false;
        synchronized (this.f97774X) {
            this.f97778b0 = false;
            this.f97774X.notifyAll();
        }
        Thread thread = this.f97779c0;
        if (thread != null) {
            thread.interrupt();
            this.f97779c0 = null;
        }
    }

    @Override
    public void G0() {
        F1();
        super.G0();
    }

    public final void G1() {
        int width;
        GridLayout gridLayout = this.f97783g0;
        if (gridLayout != null && (width = gridLayout.getWidth()) > 0) {
            int k02 = Nc.b.k0(104.0f);
            int max = Math.max(1, width / Math.max(1, k02));
            if (this.f97776Z.size() >= 8) {
                max = Math.max(2, max);
            }
            if (this.f97776Z.size() >= 12) {
                max = Math.max(3, max);
            }
            int min = Math.min(max, Math.max(1, this.f97776Z.size()));
            for (int i10 = 0; i10 < this.f97783g0.getChildCount(); i10++) {
                View childAt = this.f97783g0.getChildAt(i10);
                GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
                layoutParams.rowSpec = GridLayout.spec(Integer.MIN_VALUE, 1);
                layoutParams.columnSpec = GridLayout.spec(Integer.MIN_VALUE, 1);
                layoutParams.width = k02;
                layoutParams.height = -2;
                layoutParams.setMargins(Nc.b.k0(2.0f), Nc.b.k0(2.0f), Nc.b.k0(2.0f), Nc.b.k0(2.0f));
                childAt.setLayoutParams(layoutParams);
            }
            this.f97783g0.setColumnCount(min);
        }
    }

    public final void H1() {
        int width;
        GridLayout gridLayout = this.f97785i0;
        if (gridLayout != null && (width = gridLayout.getWidth()) > 0) {
            int i10 = width >= Nc.b.k0(420.0f) ? 4 : 2;
            int max = Math.max(Nc.b.k0(120.0f), (width - (Nc.b.k0(8.0f) * Math.max(0, i10 - 1))) / Math.max(1, i10));
            for (int i11 = 0; i11 < this.f97785i0.getChildCount(); i11++) {
                View childAt = this.f97785i0.getChildAt(i11);
                GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
                layoutParams.rowSpec = GridLayout.spec(Integer.MIN_VALUE, 1);
                layoutParams.columnSpec = GridLayout.spec(Integer.MIN_VALUE, 1);
                layoutParams.width = max;
                layoutParams.height = -2;
                layoutParams.setMargins(Nc.b.k0(4.0f), Nc.b.k0(4.0f), Nc.b.k0(4.0f), Nc.b.k0(4.0f));
                childAt.setLayoutParams(layoutParams);
            }
            this.f97785i0.setColumnCount(i10);
        }
    }

    @Override
    public EditorPanel k() {
        return new C14354a();
    }

    @Override
    public void n1() {
        super.n1();
        if (this.f97781e0) {
            this.f97781e0 = false;
            C14355b.d dVar = this.f97780d0;
            if (dVar != null) {
                y1(dVar);
            }
        }
    }

    @Override
    public void o1() {
        C1();
    }

    @SuppressLint({"SetTextI18n"})
    public final void y1(C14355b.d snapshot) {
        this.f97782f0.setText(Lang.l(Lang.T.CPU_PANEL_SUBTITLE_60_SECONDS));
        if (snapshot.f97817b.isEmpty()) {
            TextView textView = this.f97784h0;
            if (textView != null) {
                textView.setVisibility(0);
                this.f97784h0.setText(Lang.l(Lang.T.CPU_PANEL_READ_FAILED));
            }
            GridLayout gridLayout = this.f97783g0;
            if (gridLayout != null) {
                gridLayout.setVisibility(8);
            }
            A1(snapshot);
            return;
        }
        TextView textView2 = this.f97784h0;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        GridLayout gridLayout2 = this.f97783g0;
        if (gridLayout2 != null) {
            gridLayout2.setVisibility(0);
        }
        B1(snapshot.f97817b);
        for (int i10 = 0; i10 < snapshot.f97817b.size(); i10++) {
            C14355b.c cVar = snapshot.f97817b.get(i10);
            d dVar = this.f97776Z.get(Integer.valueOf(cVar.f97811a));
            if (dVar != null) {
                dVar.f97796a.setText(Lang.l(Lang.T.CPU_PANEL_CORE) + " " + (cVar.f97811a + 1) + (snapshot.f97821f > 0.0f ? " " + C14355b.h(snapshot.f97821f) : ""));
                dVar.f97797b.setText(C14355b.f(cVar.f97812b));
                dVar.f97798c.setHistory(cVar.f97815e);
                if (cVar.f97813c > 0) {
                    dVar.f97799d.setVisibility(0);
                    dVar.f97799d.setText(C14355b.e(cVar.f97813c));
                } else {
                    dVar.f97799d.setVisibility(8);
                }
                if (cVar.f97814d > 0) {
                    dVar.f97800e.setVisibility(0);
                    dVar.f97800e.setText(Lang.l(Lang.T.CPU_PANEL_MAX) + " " + C14355b.e(cVar.f97814d));
                } else {
                    dVar.f97800e.setVisibility(8);
                }
            }
        }
        A1(snapshot);
        G1();
        H1();
    }

    public final void z1() {
        TextView textView = this.f97786j0;
        if (textView != null) {
            textView.setText(Lang.l(Lang.T.CPU_PANEL_UTILIZATION));
        }
        TextView textView2 = this.f97787k0;
        if (textView2 != null) {
            textView2.setText(Lang.l(Lang.T.CPU_PANEL_SPEED));
        }
        TextView textView3 = this.f97788l0;
        if (textView3 != null) {
            textView3.setText(Lang.l(Lang.T.CPU_PANEL_BASE_SPEED));
        }
        TextView textView4 = this.f97789m0;
        if (textView4 != null) {
            textView4.setText(Lang.l(Lang.T.CPU_PANEL_LOGICAL_PROCESSORS));
        }
        TextView textView5 = this.f97782f0;
        if (textView5 != null) {
            textView5.setText(Lang.l(Lang.T.CPU_PANEL_SUBTITLE_60_SECONDS));
        }
    }

    public C14354a() {
        super(null, Lang.l(Lang.T.CPU_PANEL_TITLE), f97772r0);
        this.f97774X = new Object();
        this.f97775Y = new C14355b();
        this.f97776Z = new LinkedHashMap();
        super.e1(false);
    }
}
