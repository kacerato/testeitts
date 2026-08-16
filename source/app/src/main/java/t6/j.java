package t6;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.icu.text.DateFormat;
import android.provider.ContactsContract;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import b3.s;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Renders.OGLSurfaceView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.PrintStream;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import m6.C14188d;
import r4.C15147a;
import t3.C15377a;
import t6.j;
import t6.k;

public class j extends EditorPanel {

    public static Thread f117126A0 = null;

    public static t6.e f117127B0 = null;

    public static int f117128C0 = 0;

    public static long f117129D0 = 0;

    public static final String f117130p0 = "RunnableProfiler";

    public static final Class f117131q0;

    public static final int f117132r0 = 24;

    public static final boolean f117133s0 = true;

    public static boolean f117134t0;

    public static long f117135u0;

    public static C15382a f117136v0;

    public static C15382a f117137w0;

    public static final List<j> f117138x0;

    public static boolean f117139y0;

    public static boolean f117140z0;

    public TextView f117141X;

    public TextView f117142Y;

    public View f117143Z;

    public View f117144a0;

    public int f117145b0;

    public RecyclerView f117146c0;

    public F7.l f117147d0;

    public t6.b f117148e0;

    public int f117149f0;

    public boolean f117150g0;

    public int f117151h0;

    public ImageView f117152i0;

    public final t6.c f117153j0;

    public Bitmap f117154k0;

    public BitmapDrawable f117155l0;

    public long f117156m0;

    public int f117157n0;

    public int f117158o0;

    public class a implements k.a {
        @Override
        public void a(Object runnable) {
            j.V1(runnable);
        }

        @Override
        public void b(float deltaTime) {
            j.I1(deltaTime);
        }

        @Override
        public void c() {
            j.C1();
        }

        @Override
        public void d(Object runnable) {
            j.U1(runnable);
        }

        @Override
        public void e(Object runnable) {
            j.T1(runnable);
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int actionMasked;
            int b10;
            try {
                actionMasked = motionEvent.getActionMasked();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if ((actionMasked != 0 && actionMasked != 2) || j.this.f117153j0.f() == 0 || (b10 = j.this.f117153j0.b()) <= 0) {
                return false;
            }
            float x10 = motionEvent.getX();
            int width = view.getWidth();
            if (width <= 0) {
                return false;
            }
            int width2 = j.this.f117154k0 != null ? j.this.f117154k0.getWidth() : width;
            float f10 = x10 / width;
            if (f10 < 0.0f) {
                f10 = 0.0f;
            }
            if (f10 > 1.0f) {
                f10 = 1.0f;
            }
            int i10 = (int) (f10 * (width2 - 1));
            int floor = (int) Math.floor(width2 / b10);
            if (floor <= 0) {
                floor = 1;
            }
            int floor2 = (int) Math.floor((width2 - (floor * b10)) / 2.0f);
            t6.b a10 = j.this.f117153j0.a(Nc.b.F(0, i10 < floor2 ? 0 : i10 >= width2 - floor2 ? b10 - 1 : (i10 - floor2) / floor, j.this.f117153j0.f() - 1));
            if (a10 != null) {
                j.this.H1(a10);
            }
            return true;
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public final ImageView f117160b;

        public c(final ImageView val$pauseButton) {
            this.f117160b = val$pauseButton;
        }

        @Override
        public void click(View v10) {
            j.this.f117150g0 = !r2.f117150g0;
            Vc.e.U(this.f117160b, j.this.f117150g0 ? R.drawable.pause_btn : R.drawable.play_btn);
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            C15147a.g(v10, new C14188d(), C15147a.e.Right, Nc.b.k0(170.0f) / N7.c.D().N().f91407a, 0.8f);
        }
    }

    public class e extends F7.a {
        public e() {
        }

        @Override
        public List<F7.i> c() {
            return j.this.f117148e0 != null ? j.this.G1() : new SteppedArrayList();
        }

        @Override
        public void d(F7.i element, boolean open) {
        }

        @Override
        public void e(F7.i element) {
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return j.this.N1(eElement);
        }
    }

    public class f extends AbstractViewOnClickListenerC12733a {
        public f() {
        }

        @Override
        public void click(View view) {
            if (j.this.f117148e0 != null) {
                PrintStream printStream = System.out;
                printStream.println("==== FRAME DUMP ====");
                j jVar = j.this;
                printStream.println(jVar.D1(jVar.f117148e0.b()));
                printStream.println("====");
            }
        }
    }

    public static final class g {

        public final String f117165a;

        public double f117166b;

        public long f117167c;

        public g(String str, a aVar) {
            this(str);
        }

        public final void e(t6.e profile) {
            this.f117166b += profile.j();
            this.f117167c += profile.e();
        }

        public final String f() {
            return this.f117165a + " [x" + this.f117167c + "]: " + Nc.b.v0((float) this.f117166b, 1) + DateFormat.MINUTE_SECOND;
        }

        public final String g() {
            return this.f117165a;
        }

        public final double h() {
            return this.f117166b;
        }

        public g(String displayName) {
            this.f117165a = displayName;
        }
    }

    static {
        k.f(new a());
        f117131q0 = j.class;
        f117135u0 = 0L;
        f117136v0 = null;
        f117137w0 = null;
        f117138x0 = new SteppedArrayList();
        f117139y0 = false;
        f117140z0 = false;
        f117126A0 = null;
        f117128C0 = 25;
    }

    public j(K8.a engine) {
        super(engine);
        this.f117147d0 = null;
        this.f117149f0 = 1;
        this.f117150g0 = true;
        this.f117151h0 = 90;
        this.f117153j0 = new t6.c();
        this.f117156m0 = System.nanoTime();
        this.f117157n0 = 0;
        this.f117158o0 = 0;
        super.e1(false);
    }

    public static boolean A1() {
        return f117134t0;
    }

    public static void C1() {
        f117139y0 = false;
        int i10 = 0;
        while (true) {
            List<j> list = f117138x0;
            if (i10 >= list.size()) {
                break;
            }
            if (list.get(i10).B1()) {
                f117139y0 = true;
                break;
            }
            i10++;
        }
        if (!f117139y0) {
            f117135u0 = 0L;
            f117136v0 = null;
            if (f117140z0) {
                f117140z0 = false;
                t6.g.a();
                return;
            }
            return;
        }
        f117140z0 = true;
        f117139y0 = true;
        f117126A0 = Thread.currentThread();
        f117137w0 = new C15382a(f117135u0);
        t6.e S12 = S1("Total");
        f117127B0 = S12;
        S12.p(true);
        f117135u0++;
    }

    public List<F7.i> G1() {
        C15382a b10 = this.f117148e0.b();
        if (b10 == null) {
            throw new NullPointerException("Cant show a null data");
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Locale locale = Locale.ROOT;
        t6.d dVar = new t6.d(String.format(locale, "Heap memory: %.1f MB", Double.valueOf(this.f117148e0.d() / 1048576.0d)));
        dVar.r(false);
        dVar.f6684f.f6678c = false;
        steppedArrayList.add(dVar);
        this.f117148e0.d();
        t6.d dVar2 = new t6.d("Java GC?: " + Boolean.valueOf(this.f117148e0.e()).toString().toUpperCase(locale));
        dVar2.r(false);
        dVar2.f6684f.f6678c = false;
        steppedArrayList.add(dVar2);
        this.f117148e0.d();
        t6.d dVar3 = new t6.d("SGC:" + this.f117148e0.c());
        dVar3.r(false);
        dVar3.f6684f.f6678c = false;
        steppedArrayList.add(dVar3);
        try {
            List<g> E12 = E1(b10);
            for (int i10 = 0; i10 < E12.size(); i10++) {
                g gVar = E12.get(i10);
                if (X1(gVar)) {
                    t6.d dVar4 = new t6.d(gVar.f());
                    dVar4.r(false);
                    dVar4.f6684f.f6678c = false;
                    steppedArrayList.add(dVar4);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return steppedArrayList;
    }

    public static void I1(float deltaTime) {
        if (!f117139y0) {
            return;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.totalMemory() - runtime.freeMemory();
        P1(f117127B0);
        int i10 = 0;
        while (true) {
            List<j> list = f117138x0;
            if (i10 >= list.size()) {
                f117129D0 = freeMemory;
                return;
            }
            j jVar = list.get(i10);
            if (jVar.B1() && jVar.w0()) {
                jVar.O1(f117137w0, deltaTime, freeMemory, f117129D0);
            }
            i10++;
        }
    }

    public static boolean J1() {
        return f117139y0;
    }

    public static boolean K1() {
        return Thread.currentThread() == f117126A0;
    }

    public static double L1(Object obj) {
        return ((g) obj).h();
    }

    public static String M1(Object obj) {
        return ((g) obj).g();
    }

    public List<F7.i> N1(F7.i element) {
        return new SteppedArrayList();
    }

    public static void P1(t6.e profile) {
        if (profile != null) {
            profile.c();
        }
    }

    public static void Q1(t6.e profile) {
        P1(profile);
    }

    public static void R1(String name) {
        if (f117139y0) {
            P1(f117137w0.f(name));
        }
    }

    public static t6.e S1(String name) {
        if (f117139y0) {
            return f117137w0.f(name);
        }
        return null;
    }

    public static void T1(Object runnable) {
        W1("interrupt", runnable);
    }

    public static void U1(Object runnable) {
        W1("postOnEngine", runnable);
    }

    public static void V1(Object runnable) {
        W1("runOnEngine", runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void W1(String operation, Object runnable) {
        if (!f117139y0 || f117137w0 == null) {
            return;
        }
        String name = runnable != null ? runnable.getClass().getName() : "null";
        SteppedArrayList steppedArrayList = new SteppedArrayList(f117128C0 + 1);
        t6.e f10 = f117137w0.f(operation + " - " + name);
        if (f10 == null) {
            return;
        }
        steppedArrayList.add(f10);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (int i10 = 3; i10 < stackTrace.length && steppedArrayList.size() <= f117128C0; i10++) {
            StackTraceElement stackTraceElement = stackTrace[i10];
            if (!stackTraceElement.getClassName().startsWith("com.itsmagic.engine.Activities.Editor.Panels.Profiler.RunnableProfiler.")) {
                t6.e f11 = f117137w0.f(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + s.f32937c + stackTraceElement.getLineNumber());
                if (f11 == null) {
                    break;
                } else {
                    steppedArrayList.add(f11);
                }
            }
        }
        for (int size = steppedArrayList.size() - 1; size >= 0; size--) {
            P1((t6.e) steppedArrayList.get(size));
        }
    }

    public static void Y1() {
        C15147a.m(new j(), N7.c.g(250), N7.c.f(T6.a.f24083g0));
    }

    public boolean B1() {
        return this.f117150g0;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.profiler_panel_v2, (ViewGroup) null);
        f117138x0.add(this);
        this.f117143Z = inflate.findViewById(R.id.treeContent);
        this.f117144a0 = inflate.findViewById(R.id.unrecordedContent);
        this.f117143Z.setVisibility(8);
        this.f117144a0.setVisibility(0);
        this.f117152i0 = (ImageView) inflate.findViewById(R.id.dtHistory);
        this.f117153j0.e(this.f117151h0);
        if (this.f117155l0 == null || this.f117154k0 == null) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f117151h0, 24, Bitmap.Config.ARGB_8888);
            this.f117154k0 = createBitmap;
            this.f117153j0.c(createBitmap, this.f117148e0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f117154k0);
            this.f117155l0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f117155l0.setAntiAlias(false);
            this.f117152i0.setImageDrawable(this.f117155l0);
        }
        this.f117152i0.setOnTouchListener(new b());
        ImageView imageView = (ImageView) inflate.findViewById(R.id.pause);
        imageView.setOnClickListener(new c(imageView));
        inflate.findViewById(R.id.stat).setOnClickListener(new d());
        this.f117141X = (TextView) inflate.findViewById(R.id.fpsView);
        float d10 = 1.0f / K8.d.d();
        this.f117141X.setText("" + ((int) d10) + " FPS");
        this.f117142Y = (TextView) inflate.findViewById(R.id.limitedtv);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        this.f117146c0 = recyclerView;
        this.f117147d0 = new F7.l(recyclerView, new e());
        View findViewById = inflate.findViewById(R.id.dump);
        if (C15377a.f109719g.booleanValue()) {
            findViewById.setVisibility(8);
        } else {
            findViewById.setOnClickListener(new f());
        }
        return inflate;
    }

    public final String D1(C15382a data) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Heap memory: ");
        Locale locale = Locale.ROOT;
        sb2.append(String.format(locale, "%.1f MB", Double.valueOf(this.f117148e0.d() / 1048576.0d)));
        sb2.append("\n");
        sb2.append("Java GC?: ");
        sb2.append(Boolean.toString(this.f117148e0.e()).toUpperCase(locale));
        sb2.append("\n");
        sb2.append("SGC: ");
        sb2.append(this.f117148e0.c());
        List<g> E12 = E1(data);
        for (int i10 = 0; i10 < E12.size(); i10++) {
            g gVar = E12.get(i10);
            if (X1(gVar)) {
                sb2.append("\n");
                sb2.append(gVar.f());
            }
        }
        return sb2.toString();
    }

    public final List<g> E1(C15382a data) {
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < data.b(); i10++) {
            F1(data.h(i10).d(), hashMap);
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList(hashMap.values());
        Collections.sort(steppedArrayList, Comparator.comparingDouble(new ToDoubleFunction() {
            @Override
            public final double applyAsDouble(Object obj) {
                double L12;
                L12 = j.L1((j.g) obj);
                return L12;
            }
        }).reversed().thenComparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                String M12;
                M12 = j.M1((j.g) obj);
                return M12;
            }
        }, String.CASE_INSENSITIVE_ORDER));
        return steppedArrayList;
    }

    public final void F1(l stack, Map<String, g> summaryMap) {
        if (stack == null) {
            return;
        }
        for (int i10 = 0; i10 < stack.f(); i10++) {
            t6.e e10 = stack.e(i10);
            String lowerCase = e10.i().toLowerCase(Locale.ROOT);
            g gVar = summaryMap.get(lowerCase);
            if (gVar == null) {
                gVar = new g(e10.i(), null);
                summaryMap.put(lowerCase, gVar);
            }
            gVar.e(e10);
            l f10 = e10.f();
            if (f10 != null && f10.f() > 0) {
                F1(f10, summaryMap);
            }
        }
    }

    @Override
    public void G0() {
        f117138x0.remove(this);
        this.f117154k0 = null;
        super.G0();
    }

    public final void H1(t6.b data) {
        if (!N7.c.N()) {
            throw new RuntimeException("Invalid thread!");
        }
        this.f117148e0 = data;
        this.f117143Z.setVisibility(0);
        this.f117144a0.setVisibility(8);
        this.f117147d0.v();
    }

    public void O1(C15382a frameData, float deltaTime, long usedBytes, long previousFrameUsedGC) {
        this.f117153j0.d(new t6.b(deltaTime, frameData, usedBytes, previousFrameUsedGC));
    }

    public final boolean X1(g summary) {
        summary.h();
        return true;
    }

    @Override
    public EditorPanel k() {
        return new j();
    }

    @Override
    public void n1() {
        Bitmap bitmap;
        super.n1();
        this.f117157n0++;
        long nanoTime = System.nanoTime();
        long j10 = this.f117156m0;
        if (nanoTime - j10 >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
            this.f117158o0 = this.f117157n0 + 1;
            this.f117157n0 = 0;
            long j11 = j10 + ContactsContract.Directory.ENTERPRISE_DEFAULT;
            this.f117156m0 = j11;
            if (nanoTime - j11 >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
                this.f117156m0 = nanoTime;
            }
        }
        this.f117153j0.e(this.f117151h0);
        if (this.f117155l0 == null || (bitmap = this.f117154k0) == null || bitmap.getWidth() != this.f117151h0) {
            this.f117154k0 = Bitmap.createBitmap(this.f117151h0, 24, Bitmap.Config.ARGB_8888);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f117154k0);
            this.f117155l0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f117155l0.setAntiAlias(false);
            this.f117152i0.setImageDrawable(this.f117155l0);
        }
        this.f117153j0.c(this.f117154k0, this.f117148e0);
        this.f117155l0.invalidateSelf();
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public void o1() {
        this.f117141X.setText("" + this.f117158o0 + " FPS");
        int i10 = this.f117145b0;
        int i11 = this.f117158o0;
        if (i10 != i11) {
            this.f117145b0 = i11;
            if (K8.a.l() == null) {
                this.f117142Y.setVisibility(8);
            } else if (OGLSurfaceView.f79473t) {
                this.f117142Y.setVisibility(0);
            } else {
                this.f117142Y.setVisibility(8);
            }
        }
    }

    public j() {
        super(null, Lang.l(Lang.T.PROFILER), f117130p0);
        this.f117147d0 = null;
        this.f117149f0 = 1;
        this.f117150g0 = true;
        this.f117151h0 = 90;
        this.f117153j0 = new t6.c();
        this.f117156m0 = System.nanoTime();
        this.f117157n0 = 0;
        this.f117158o0 = 0;
        super.e1(false);
    }
}
