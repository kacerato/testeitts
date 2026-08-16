package p6;

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
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Renders.OGLSurfaceView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.PrintStream;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.function.ToDoubleFunction;
import m6.C14188d;
import r4.C15147a;
import t3.C15377a;

public class d extends EditorPanel {

    public static g f103546B0 = null;

    public static long f103548D0 = 0;

    public static final String f103549p0 = "ProfilerV2";

    public static final int f103551r0 = 24;

    public static final boolean f103552s0 = true;

    public static boolean f103553t0;

    public static long f103554u0;

    public static C14930a f103555v0;

    public static C14930a f103556w0;

    public TextView f103560X;

    public TextView f103561Y;

    public View f103562Z;

    public View f103563a0;

    public int f103564b0;

    public RecyclerView f103565c0;

    public F7.l f103566d0;

    public C14931b f103567e0;

    public int f103568f0;

    public boolean f103569g0;

    public int f103570h0;

    public ImageView f103571i0;

    public final p6.e f103572j0;

    public Bitmap f103573k0;

    public BitmapDrawable f103574l0;

    public long f103575m0;

    public int f103576n0;

    public int f103577o0;

    public static final Class f103550q0 = d.class;

    public static final List<d> f103557x0 = new SteppedArrayList();

    public static boolean f103558y0 = false;

    public static boolean f103559z0 = false;

    public static Thread f103545A0 = null;

    public static int f103547C0 = 25;

    public class a implements View.OnTouchListener {
        public a() {
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
            if ((actionMasked != 0 && actionMasked != 2) || d.this.f103572j0.f() == 0 || (b10 = d.this.f103572j0.b()) <= 0) {
                return false;
            }
            float x10 = motionEvent.getX();
            int width = view.getWidth();
            if (width <= 0) {
                return false;
            }
            int width2 = d.this.f103573k0 != null ? d.this.f103573k0.getWidth() : width;
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
            C14931b a10 = d.this.f103572j0.a(Nc.b.F(0, i10 < floor2 ? 0 : i10 >= width2 - floor2 ? b10 - 1 : (i10 - floor2) / floor, d.this.f103572j0.f() - 1));
            if (a10 != null) {
                d.this.C1(a10);
            }
            return true;
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {

        public final ImageView f103579b;

        public b(final ImageView val$pauseButton) {
            this.f103579b = val$pauseButton;
        }

        @Override
        public void click(View v10) {
            d.this.f103569g0 = !r2.f103569g0;
            Vc.e.U(this.f103579b, d.this.f103569g0 ? R.drawable.pause_btn : R.drawable.play_btn);
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View v10) {
            C15147a.g(v10, new C14188d(), C15147a.e.Right, Nc.b.k0(170.0f) / N7.c.D().N().f91407a, 0.8f);
        }
    }

    public class C1942d extends F7.a {
        public C1942d() {
        }

        @Override
        public List<F7.i> c() {
            return d.this.f103567e0 != null ? d.this.B1() : new LinkedList();
        }

        @Override
        public void d(F7.i element, boolean open) {
            if (element instanceof k) {
                ((k) element).u().i(open);
            } else if (element instanceof h) {
                ((h) element).u().l(open);
            }
        }

        @Override
        public void e(F7.i element) {
            if (element instanceof k) {
                j u10 = ((k) element).u();
                u10.i(!u10.d());
                if (u10.d()) {
                    d.this.f103566d0.z(element);
                    return;
                } else {
                    d.this.f103566d0.x(element);
                    return;
                }
            }
            if (element instanceof h) {
                g u11 = ((h) element).u();
                u11.l(!u11.g());
                if (u11.g()) {
                    d.this.f103566d0.z(element);
                } else {
                    d.this.f103566d0.x(element);
                }
            }
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return d.this.H1(eElement);
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View view) {
            if (d.this.f103567e0 != null) {
                PrintStream printStream = System.out;
                printStream.println("==== FRAME DUMP ====");
                printStream.println(d.this.f103567e0.b().c());
                printStream.println("====");
            }
        }
    }

    public d(K8.a engine) {
        super(engine);
        this.f103566d0 = null;
        this.f103568f0 = 1;
        this.f103569g0 = true;
        this.f103570h0 = 90;
        this.f103572j0 = new p6.e();
        this.f103575m0 = System.nanoTime();
        this.f103576n0 = 0;
        this.f103577o0 = 0;
        super.e1(false);
    }

    public static void A1() {
        f103558y0 = false;
        int i10 = 0;
        while (true) {
            List<d> list = f103557x0;
            if (i10 >= list.size()) {
                break;
            }
            if (list.get(i10).z1()) {
                f103558y0 = true;
                break;
            }
            i10++;
        }
        if (!f103558y0) {
            f103554u0 = 0L;
            f103555v0 = null;
            if (f103559z0) {
                f103559z0 = false;
                i.a();
                return;
            }
            return;
        }
        f103559z0 = true;
        f103558y0 = true;
        f103545A0 = Thread.currentThread();
        f103556w0 = new C14930a(f103554u0);
        g L12 = L1("Total");
        f103546B0 = L12;
        L12.l(true);
        f103554u0++;
    }

    public List<F7.i> B1() {
        C14930a b10 = this.f103567e0.b();
        if (b10 == null) {
            throw new NullPointerException("Cant show a null data");
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Locale locale = Locale.ROOT;
        f fVar = new f(String.format(locale, "Heap memory: %.1f MB", Double.valueOf(this.f103567e0.d() / 1048576.0d)));
        fVar.r(false);
        fVar.f6684f.f6678c = false;
        steppedArrayList.add(fVar);
        this.f103567e0.d();
        f fVar2 = new f("Java GC?: " + Boolean.valueOf(this.f103567e0.e()).toString().toUpperCase(locale));
        fVar2.r(false);
        fVar2.f6684f.f6678c = false;
        steppedArrayList.add(fVar2);
        this.f103567e0.d();
        f fVar3 = new f("SGC:" + this.f103567e0.c());
        fVar3.r(false);
        fVar3.f6684f.f6678c = false;
        steppedArrayList.add(fVar3);
        for (int i10 = 0; i10 < b10.b(); i10++) {
            try {
                l h10 = b10.h(i10);
                j d10 = h10.d();
                if (d10.f() > 0) {
                    d10.e(0).e();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Thread [");
                    sb2.append(h10.f());
                    sb2.append("]:");
                    k kVar = new k(sb2.toString(), d10, sb2.toString().startsWith("[E]"));
                    kVar.r(d10.f() > 0);
                    kVar.f6684f.f6678c = d10.d();
                    steppedArrayList.add(kVar);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return steppedArrayList;
    }

    public static void D1(float deltaTime) {
        if (!f103558y0) {
            return;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.totalMemory() - runtime.freeMemory();
        J1(f103546B0);
        int i10 = 0;
        while (true) {
            List<d> list = f103557x0;
            if (i10 >= list.size()) {
                f103548D0 = freeMemory;
                return;
            }
            d dVar = list.get(i10);
            if (dVar.z1() && dVar.w0()) {
                dVar.I1(f103556w0, deltaTime, freeMemory, f103548D0);
            }
            i10++;
        }
    }

    public static boolean E1() {
        return f103558y0;
    }

    public static boolean F1() {
        return Thread.currentThread() == f103545A0;
    }

    public List<F7.i> H1(F7.i element) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (element instanceof k) {
            G1(((k) element).u(), steppedArrayList);
        }
        if (element instanceof h) {
            g u10 = ((h) element).u();
            if (u10.d() != null) {
                G1(u10.d(), steppedArrayList);
            }
        }
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            steppedArrayList.get(i10).q(element.e() + 1);
        }
        return steppedArrayList;
    }

    public static void J1(g profile) {
        if (profile != null) {
            profile.c();
        }
    }

    public static void K1(String name) {
        if (f103558y0) {
            J1(f103556w0.f(name));
        }
    }

    public static g L1(String name) {
        if (f103558y0) {
            return f103556w0.f(name);
        }
        return null;
    }

    public static void M1() {
        C15147a.m(new d(), N7.c.g(250), N7.c.f(T6.a.f24083g0));
    }

    public static boolean y1() {
        return f103553t0;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.profiler_panel_v2, (ViewGroup) null);
        f103557x0.add(this);
        this.f103562Z = inflate.findViewById(R.id.treeContent);
        this.f103563a0 = inflate.findViewById(R.id.unrecordedContent);
        this.f103562Z.setVisibility(8);
        this.f103563a0.setVisibility(0);
        this.f103571i0 = (ImageView) inflate.findViewById(R.id.dtHistory);
        this.f103572j0.e(this.f103570h0);
        if (this.f103574l0 == null || this.f103573k0 == null) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f103570h0, 24, Bitmap.Config.ARGB_8888);
            this.f103573k0 = createBitmap;
            this.f103572j0.c(createBitmap, this.f103567e0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f103573k0);
            this.f103574l0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f103574l0.setAntiAlias(false);
            this.f103571i0.setImageDrawable(this.f103574l0);
        }
        this.f103571i0.setOnTouchListener(new a());
        ImageView imageView = (ImageView) inflate.findViewById(R.id.pause);
        imageView.setOnClickListener(new b(imageView));
        inflate.findViewById(R.id.stat).setOnClickListener(new c());
        this.f103560X = (TextView) inflate.findViewById(R.id.fpsView);
        float d10 = 1.0f / K8.d.d();
        this.f103560X.setText("" + ((int) d10) + " FPS");
        this.f103561Y = (TextView) inflate.findViewById(R.id.limitedtv);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        this.f103565c0 = recyclerView;
        this.f103566d0 = new F7.l(recyclerView, new C1942d());
        View findViewById = inflate.findViewById(R.id.dump);
        if (C15377a.f109719g.booleanValue()) {
            findViewById.setVisibility(8);
        } else {
            findViewById.setOnClickListener(new e());
        }
        return inflate;
    }

    public final void C1(C14931b data) {
        if (!N7.c.N()) {
            throw new RuntimeException("Invalid thread!");
        }
        this.f103567e0 = data;
        this.f103562Z.setVisibility(0);
        this.f103563a0.setVisibility(8);
        this.f103566d0.v();
    }

    @Override
    public void G0() {
        f103557x0.remove(this);
        this.f103573k0 = null;
        super.G0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void G1(j stack, List<F7.i> elements) {
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < stack.f(); i10++) {
            linkedList.add(stack.e(i10));
        }
        Collections.sort(linkedList, Comparator.comparingDouble(new ToDoubleFunction() {
            @Override
            public final double applyAsDouble(Object obj) {
                return ((g) obj).e();
            }
        }));
        for (int size = linkedList.size() - 1; size >= 0; size--) {
            g gVar = (g) linkedList.get(size);
            h hVar = new h(gVar.f() + ": " + Nc.b.v0((float) gVar.e(), 1) + DateFormat.MINUTE_SECOND, gVar);
            hVar.r(gVar.d() != null && gVar.d().f() > 0);
            hVar.f6684f.f6678c = gVar.g();
            elements.add(hVar);
        }
    }

    public void I1(C14930a frameData, float deltaTime, long usedBytes, long previousFrameUsedGC) {
        this.f103572j0.d(new C14931b(deltaTime, frameData, usedBytes, previousFrameUsedGC));
    }

    @Override
    public EditorPanel k() {
        return new d();
    }

    @Override
    public void n1() {
        Bitmap bitmap;
        super.n1();
        this.f103576n0++;
        long nanoTime = System.nanoTime();
        long j10 = this.f103575m0;
        if (nanoTime - j10 >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
            this.f103577o0 = this.f103576n0 + 1;
            this.f103576n0 = 0;
            long j11 = j10 + ContactsContract.Directory.ENTERPRISE_DEFAULT;
            this.f103575m0 = j11;
            if (nanoTime - j11 >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
                this.f103575m0 = nanoTime;
            }
        }
        this.f103572j0.e(this.f103570h0);
        if (this.f103574l0 == null || (bitmap = this.f103573k0) == null || bitmap.getWidth() != this.f103570h0) {
            this.f103573k0 = Bitmap.createBitmap(this.f103570h0, 24, Bitmap.Config.ARGB_8888);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f103573k0);
            this.f103574l0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f103574l0.setAntiAlias(false);
            this.f103571i0.setImageDrawable(this.f103574l0);
        }
        this.f103572j0.c(this.f103573k0, this.f103567e0);
        this.f103574l0.invalidateSelf();
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public void o1() {
        this.f103560X.setText("" + this.f103577o0 + " FPS");
        int i10 = this.f103564b0;
        int i11 = this.f103577o0;
        if (i10 != i11) {
            this.f103564b0 = i11;
            if (K8.a.l() == null) {
                this.f103561Y.setVisibility(8);
            } else if (OGLSurfaceView.f79473t) {
                this.f103561Y.setVisibility(0);
            } else {
                this.f103561Y.setVisibility(8);
            }
        }
    }

    public boolean z1() {
        return this.f103569g0;
    }

    public d() {
        super(null, Lang.l(Lang.T.PROFILER), "ProfilerV2");
        this.f103566d0 = null;
        this.f103568f0 = 1;
        this.f103569g0 = true;
        this.f103570h0 = 90;
        this.f103572j0 = new p6.e();
        this.f103575m0 = System.nanoTime();
        this.f103576n0 = 0;
        this.f103577o0 = 0;
        super.e1(false);
    }
}
