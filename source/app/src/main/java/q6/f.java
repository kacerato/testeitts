package q6;

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
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
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

public class f extends EditorPanel {

    public static g f105949A0 = null;

    public static long f105951C0 = 0;

    public static final String f105952o0 = "LPProfiler";

    public static final int f105954q0 = 24;

    public static final boolean f105955r0 = true;

    public static boolean f105956s0;

    public static long f105957t0;

    public static C15044a f105958u0;

    public static C15044a f105959v0;

    public TextView f105964X;

    public View f105965Y;

    public View f105966Z;

    public View f105967a0;

    public int f105968b0;

    public RecyclerView f105969c0;

    public F7.l f105970d0;

    public q6.b f105971e0;

    public boolean f105972f0;

    public int f105973g0;

    public ImageView f105974h0;

    public final q6.c f105975i0;

    public Bitmap f105976j0;

    public BitmapDrawable f105977k0;

    public long f105978l0;

    public int f105979m0;

    public int f105980n0;

    public static final Class f105953p0 = f.class;

    public static final List<f> f105960w0 = new SteppedArrayList();

    public static boolean f105961x0 = false;

    public static boolean f105962y0 = false;

    public static Thread f105963z0 = null;

    public static int f105950B0 = 25;

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
            if ((actionMasked != 0 && actionMasked != 2) || f.this.f105975i0.f() == 0 || (b10 = f.this.f105975i0.b()) <= 0) {
                return false;
            }
            float x10 = motionEvent.getX();
            int width = view.getWidth();
            if (width <= 0) {
                return false;
            }
            int width2 = f.this.f105976j0 != null ? f.this.f105976j0.getWidth() : width;
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
            q6.b a10 = f.this.f105975i0.a(Nc.b.F(0, i10 < floor2 ? 0 : i10 >= width2 - floor2 ? b10 - 1 : (i10 - floor2) / floor, f.this.f105975i0.f() - 1));
            if (a10 != null) {
                f.this.C1(a10);
            }
            return true;
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {

        public final ImageView f105982b;

        public b(final ImageView val$pauseButton) {
            this.f105982b = val$pauseButton;
        }

        @Override
        public void click(View v10) {
            f.this.f105972f0 = !r2.f105972f0;
            Vc.e.U(this.f105982b, f.this.f105972f0 ? R.drawable.pause_btn : R.drawable.play_btn);
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

    public class d extends F7.a {
        public d() {
        }

        @Override
        public List<F7.i> c() {
            return f.this.f105971e0 != null ? f.this.B1() : new LinkedList();
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
                    f.this.f105970d0.z(element);
                    return;
                } else {
                    f.this.f105970d0.x(element);
                    return;
                }
            }
            if (element instanceof h) {
                g u11 = ((h) element).u();
                u11.l(!u11.g());
                if (u11.g()) {
                    f.this.f105970d0.z(element);
                } else {
                    f.this.f105970d0.x(element);
                }
            }
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return f.this.K1(eElement);
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View view) {
            if (f.this.f105971e0 != null) {
                PrintStream printStream = System.out;
                printStream.println("==== LP FRAME DUMP ====");
                printStream.println(f.this.f105971e0.b().c());
                printStream.println("====");
            }
        }
    }

    public f(K8.a engine) {
        super(engine);
        this.f105970d0 = null;
        this.f105972f0 = true;
        this.f105973g0 = 90;
        this.f105975i0 = new q6.c();
        this.f105978l0 = System.nanoTime();
        this.f105979m0 = 0;
        this.f105980n0 = 0;
        super.e1(false);
    }

    public static void A1() {
        f105961x0 = false;
        int i10 = 0;
        while (true) {
            List<f> list = f105960w0;
            if (i10 >= list.size()) {
                break;
            }
            if (list.get(i10).z1()) {
                f105961x0 = true;
                break;
            }
            i10++;
        }
        if (!f105961x0) {
            f105957t0 = 0L;
            f105958u0 = null;
            if (f105962y0) {
                f105962y0 = false;
                i.a();
                return;
            }
            return;
        }
        f105962y0 = true;
        f105961x0 = true;
        f105963z0 = Thread.currentThread();
        f105959v0 = new C15044a(f105957t0);
        g O12 = O1("Total");
        f105949A0 = O12;
        if (O12 != null) {
            O12.l(true);
        }
        f105957t0++;
    }

    public List<F7.i> B1() {
        C15044a b10 = this.f105971e0.b();
        if (b10 == null) {
            throw new NullPointerException("Cant show a null data");
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Locale locale = Locale.ROOT;
        q6.d dVar = new q6.d(String.format(locale, "LP frame: %.1f ms", Float.valueOf(this.f105971e0.a())));
        dVar.r(false);
        dVar.f6684f.f6678c = false;
        steppedArrayList.add(dVar);
        q6.d dVar2 = new q6.d(String.format(locale, "Heap memory: %.1f MB", Double.valueOf(this.f105971e0.d() / 1048576.0d)));
        dVar2.r(false);
        dVar2.f6684f.f6678c = false;
        steppedArrayList.add(dVar2);
        q6.d dVar3 = new q6.d("Java GC?: " + Boolean.valueOf(this.f105971e0.e()).toString().toUpperCase(locale));
        dVar3.r(false);
        dVar3.f6684f.f6678c = false;
        steppedArrayList.add(dVar3);
        q6.d dVar4 = new q6.d("SGC:" + this.f105971e0.c());
        dVar4.r(false);
        dVar4.f6684f.f6678c = false;
        steppedArrayList.add(dVar4);
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
        if (!f105961x0 || f105959v0 == null) {
            return;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.totalMemory() - runtime.freeMemory();
        M1(f105949A0);
        int i10 = 0;
        while (true) {
            List<f> list = f105960w0;
            if (i10 >= list.size()) {
                f105951C0 = freeMemory;
                f105958u0 = f105959v0;
                f105959v0 = null;
                f105949A0 = null;
                return;
            }
            f fVar = list.get(i10);
            if (fVar.z1() && fVar.w0()) {
                fVar.L1(f105959v0, deltaTime, freeMemory, f105951C0);
            }
            i10++;
        }
    }

    public static String E1(Component component) {
        if (component == null) {
            return "null component";
        }
        String displayableTitle = component.getDisplayableTitle();
        if (displayableTitle == null || displayableTitle.isEmpty()) {
            displayableTitle = component.getTitle();
        }
        if (displayableTitle == null || displayableTitle.isEmpty()) {
            displayableTitle = component.getClass().getSimpleName();
        }
        return displayableTitle.isEmpty() ? component.getClass().getName() : displayableTitle;
    }

    public static String F1(Object value) {
        if (value == null) {
            return "null";
        }
        String simpleName = value.getClass().getSimpleName();
        return simpleName.isEmpty() ? value.getClass().getName() : simpleName;
    }

    public static String G1(Object runnable) {
        return F1(runnable);
    }

    public static boolean H1() {
        return f105961x0;
    }

    public static boolean I1() {
        return Thread.currentThread() == f105963z0;
    }

    public List<F7.i> K1(F7.i element) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (element instanceof k) {
            J1(((k) element).u(), steppedArrayList);
        }
        if (element instanceof h) {
            g u10 = ((h) element).u();
            if (u10.d() != null) {
                J1(u10.d(), steppedArrayList);
            }
        }
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            steppedArrayList.get(i10).q(element.e() + 1);
        }
        return steppedArrayList;
    }

    public static void M1(g profile) {
        if (profile != null) {
            profile.c();
        }
    }

    public static void N1(String name) {
        if (f105961x0) {
            M1(f105959v0.f(name));
        }
    }

    public static g O1(String name) {
        if (f105961x0) {
            return f105959v0.f(name);
        }
        return null;
    }

    public static void P1() {
        C15147a.m(new f(), N7.c.g(250), N7.c.f(T6.a.f24083g0));
    }

    public static boolean y1() {
        return f105956s0;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.profiler_panel_v2, (ViewGroup) null);
        f105960w0.add(this);
        this.f105965Y = inflate.findViewById(R.id.treeContent);
        this.f105966Z = inflate.findViewById(R.id.unrecordedContent);
        this.f105965Y.setVisibility(8);
        this.f105966Z.setVisibility(0);
        this.f105974h0 = (ImageView) inflate.findViewById(R.id.dtHistory);
        this.f105975i0.e(this.f105973g0);
        if (this.f105977k0 == null || this.f105976j0 == null) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f105973g0, 24, Bitmap.Config.ARGB_8888);
            this.f105976j0 = createBitmap;
            this.f105975i0.c(createBitmap, this.f105971e0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f105976j0);
            this.f105977k0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f105977k0.setAntiAlias(false);
            this.f105974h0.setImageDrawable(this.f105977k0);
        }
        this.f105974h0.setOnTouchListener(new a());
        ImageView imageView = (ImageView) inflate.findViewById(R.id.pause);
        imageView.setOnClickListener(new b(imageView));
        inflate.findViewById(R.id.stat).setOnClickListener(new c());
        TextView textView = (TextView) inflate.findViewById(R.id.fpsView);
        this.f105964X = textView;
        textView.setText("0 FPS");
        View findViewById = inflate.findViewById(R.id.limitedtv);
        this.f105967a0 = findViewById;
        findViewById.setVisibility(8);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        this.f105969c0 = recyclerView;
        this.f105970d0 = new F7.l(recyclerView, new d());
        View findViewById2 = inflate.findViewById(R.id.dump);
        if (C15377a.f109719g.booleanValue()) {
            findViewById2.setVisibility(8);
        } else {
            findViewById2.setOnClickListener(new e());
        }
        return inflate;
    }

    public final void C1(q6.b data) {
        if (!N7.c.N()) {
            throw new RuntimeException("Invalid thread!");
        }
        this.f105971e0 = data;
        this.f105965Y.setVisibility(0);
        this.f105966Z.setVisibility(8);
        this.f105970d0.v();
    }

    @Override
    public void G0() {
        f105960w0.remove(this);
        this.f105976j0 = null;
        super.G0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void J1(j stack, List<F7.i> elements) {
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

    public void L1(C15044a frameData, float deltaTime, long usedBytes, long previousFrameUsedGC) {
        this.f105975i0.d(new q6.b(deltaTime, frameData, usedBytes, previousFrameUsedGC));
    }

    @Override
    public EditorPanel k() {
        return new f();
    }

    @Override
    public void n1() {
        Bitmap bitmap;
        super.n1();
        this.f105979m0++;
        long nanoTime = System.nanoTime();
        long j10 = this.f105978l0;
        if (nanoTime - j10 >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
            this.f105980n0 = this.f105979m0 + 1;
            this.f105979m0 = 0;
            long j11 = j10 + ContactsContract.Directory.ENTERPRISE_DEFAULT;
            this.f105978l0 = j11;
            if (nanoTime - j11 >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
                this.f105978l0 = nanoTime;
            }
        }
        this.f105975i0.e(this.f105973g0);
        if (this.f105977k0 == null || (bitmap = this.f105976j0) == null || bitmap.getWidth() != this.f105973g0) {
            this.f105976j0 = Bitmap.createBitmap(this.f105973g0, 24, Bitmap.Config.ARGB_8888);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f105976j0);
            this.f105977k0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f105977k0.setAntiAlias(false);
            this.f105974h0.setImageDrawable(this.f105977k0);
        }
        this.f105975i0.c(this.f105976j0, this.f105971e0);
        this.f105977k0.invalidateSelf();
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public void o1() {
        this.f105964X.setText("" + this.f105980n0 + " FPS");
        int i10 = this.f105968b0;
        int i11 = this.f105980n0;
        if (i10 != i11) {
            this.f105968b0 = i11;
            if (K8.a.l() == null) {
                View view = this.f105967a0;
                if (view != null) {
                    view.setVisibility(8);
                    return;
                }
                return;
            }
            if (OGLSurfaceView.f79473t) {
                View view2 = this.f105967a0;
                if (view2 != null) {
                    view2.setVisibility(0);
                    return;
                }
                return;
            }
            View view3 = this.f105967a0;
            if (view3 != null) {
                view3.setVisibility(8);
            }
        }
    }

    public boolean z1() {
        return this.f105972f0;
    }

    public f() {
        super(null, "LP profiler", f105952o0);
        this.f105970d0 = null;
        this.f105972f0 = true;
        this.f105973g0 = 90;
        this.f105975i0 = new q6.c();
        this.f105978l0 = System.nanoTime();
        this.f105979m0 = 0;
        this.f105980n0 = 0;
        super.e1(false);
    }
}
