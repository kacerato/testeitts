package u6;

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

public class l extends EditorPanel {

    public static u6.e f118563B0 = null;

    public static long f118565D0 = 0;

    public static final String f118566p0 = "ProfilerV2";

    public static final int f118568r0 = 24;

    public static final boolean f118569s0 = true;

    public static boolean f118570t0;

    public static long f118571u0;

    public static C15577a f118572v0;

    public static C15577a f118573w0;

    public TextView f118577X;

    public TextView f118578Y;

    public View f118579Z;

    public View f118580a0;

    public int f118581b0;

    public RecyclerView f118582c0;

    public F7.l f118583d0;

    public u6.b f118584e0;

    public int f118585f0;

    public boolean f118586g0;

    public int f118587h0;

    public ImageView f118588i0;

    public final u6.c f118589j0;

    public Bitmap f118590k0;

    public BitmapDrawable f118591l0;

    public long f118592m0;

    public int f118593n0;

    public int f118594o0;

    public static final Class f118567q0 = l.class;

    public static final List<l> f118574x0 = new SteppedArrayList();

    public static boolean f118575y0 = false;

    public static boolean f118576z0 = false;

    public static Thread f118562A0 = null;

    public static int f118564C0 = 25;

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
            if ((actionMasked != 0 && actionMasked != 2) || l.this.f118589j0.f() == 0 || (b10 = l.this.f118589j0.b()) <= 0) {
                return false;
            }
            float x10 = motionEvent.getX();
            int width = view.getWidth();
            if (width <= 0) {
                return false;
            }
            int width2 = l.this.f118590k0 != null ? l.this.f118590k0.getWidth() : width;
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
            u6.b a10 = l.this.f118589j0.a(Nc.b.F(0, i10 < floor2 ? 0 : i10 >= width2 - floor2 ? b10 - 1 : (i10 - floor2) / floor, l.this.f118589j0.f() - 1));
            if (a10 != null) {
                l.this.C1(a10);
            }
            return true;
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {

        public final ImageView f118596b;

        public b(final ImageView val$pauseButton) {
            this.f118596b = val$pauseButton;
        }

        @Override
        public void click(View v10) {
            l.this.f118586g0 = !r2.f118586g0;
            Vc.e.U(this.f118596b, l.this.f118586g0 ? R.drawable.pause_btn : R.drawable.play_btn);
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
            return l.this.f118584e0 != null ? l.this.B1() : new LinkedList();
        }

        @Override
        public void d(F7.i element, boolean open) {
            if (element instanceof i) {
                ((i) element).u().i(open);
            } else if (element instanceof f) {
                ((f) element).u().l(open);
            }
        }

        @Override
        public void e(F7.i element) {
            if (element instanceof i) {
                h u10 = ((i) element).u();
                u10.i(!u10.d());
                if (u10.d()) {
                    l.this.f118583d0.z(element);
                    return;
                } else {
                    l.this.f118583d0.x(element);
                    return;
                }
            }
            if (element instanceof f) {
                u6.e u11 = ((f) element).u();
                u11.l(!u11.g());
                if (u11.g()) {
                    l.this.f118583d0.z(element);
                } else {
                    l.this.f118583d0.x(element);
                }
            }
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return l.this.H1(eElement);
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View view) {
            if (l.this.f118584e0 != null) {
                PrintStream printStream = System.out;
                printStream.println("==== FRAME DUMP ====");
                printStream.println(l.this.f118584e0.b().c());
                printStream.println("====");
            }
        }
    }

    public l(K8.a engine) {
        super(engine);
        this.f118583d0 = null;
        this.f118585f0 = 1;
        this.f118586g0 = true;
        this.f118587h0 = 90;
        this.f118589j0 = new u6.c();
        this.f118592m0 = System.nanoTime();
        this.f118593n0 = 0;
        this.f118594o0 = 0;
        super.e1(false);
    }

    public static void A1() {
        f118575y0 = false;
        int i10 = 0;
        while (true) {
            List<l> list = f118574x0;
            if (i10 >= list.size()) {
                break;
            }
            if (list.get(i10).z1()) {
                f118575y0 = true;
                break;
            }
            i10++;
        }
        if (!f118575y0) {
            f118571u0 = 0L;
            f118572v0 = null;
            if (f118576z0) {
                f118576z0 = false;
                g.a();
                return;
            }
            return;
        }
        f118576z0 = true;
        f118575y0 = true;
        f118562A0 = Thread.currentThread();
        f118573w0 = new C15577a(f118571u0);
        u6.e L12 = L1("Total");
        f118563B0 = L12;
        L12.l(true);
        f118571u0++;
    }

    public List<F7.i> B1() {
        C15577a b10 = this.f118584e0.b();
        if (b10 == null) {
            throw new NullPointerException("Cant show a null data");
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Locale locale = Locale.ROOT;
        u6.d dVar = new u6.d(String.format(locale, "Heap memory: %.1f MB", Double.valueOf(this.f118584e0.d() / 1048576.0d)));
        dVar.r(false);
        dVar.f6684f.f6678c = false;
        steppedArrayList.add(dVar);
        this.f118584e0.d();
        u6.d dVar2 = new u6.d("Java GC?: " + Boolean.valueOf(this.f118584e0.e()).toString().toUpperCase(locale));
        dVar2.r(false);
        dVar2.f6684f.f6678c = false;
        steppedArrayList.add(dVar2);
        for (int i10 = 0; i10 < b10.b(); i10++) {
            try {
                j h10 = b10.h(i10);
                h d10 = h10.d();
                if (d10.f() > 0) {
                    d10.e(0).e();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Thread [");
                    sb2.append(h10.f());
                    sb2.append("]:");
                    i iVar = new i(sb2.toString(), d10, sb2.toString().startsWith("[E]"));
                    iVar.r(d10.f() > 0);
                    iVar.f6684f.f6678c = d10.d();
                    steppedArrayList.add(iVar);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return steppedArrayList;
    }

    public static void D1(float deltaTime) {
        if (!f118575y0) {
            return;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.totalMemory() - runtime.freeMemory();
        J1(f118563B0);
        int i10 = 0;
        while (true) {
            List<l> list = f118574x0;
            if (i10 >= list.size()) {
                f118565D0 = freeMemory;
                return;
            }
            l lVar = list.get(i10);
            if (lVar.z1() && lVar.w0()) {
                lVar.I1(f118573w0, deltaTime, freeMemory, f118565D0);
            }
            i10++;
        }
    }

    public static boolean E1() {
        return f118575y0;
    }

    public static boolean F1() {
        return Thread.currentThread() == f118562A0;
    }

    public List<F7.i> H1(F7.i element) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (element instanceof i) {
            G1(((i) element).u(), steppedArrayList);
        }
        if (element instanceof f) {
            u6.e u10 = ((f) element).u();
            if (u10.d() != null) {
                G1(u10.d(), steppedArrayList);
            }
        }
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            steppedArrayList.get(i10).q(element.e() + 1);
        }
        return steppedArrayList;
    }

    public static void J1(u6.e profile) {
        if (profile != null) {
            profile.c();
        }
    }

    public static void K1(String name) {
        if (f118575y0) {
            J1(f118573w0.f(name));
        }
    }

    public static u6.e L1(String name) {
        if (f118575y0) {
            return f118573w0.f(name);
        }
        return null;
    }

    public static void M1() {
        C15147a.m(new l(), N7.c.g(250), N7.c.f(T6.a.f24083g0));
    }

    public static boolean y1() {
        return f118570t0;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.profiler_panel_v2, (ViewGroup) null);
        f118574x0.add(this);
        this.f118579Z = inflate.findViewById(R.id.treeContent);
        this.f118580a0 = inflate.findViewById(R.id.unrecordedContent);
        this.f118579Z.setVisibility(8);
        this.f118580a0.setVisibility(0);
        this.f118588i0 = (ImageView) inflate.findViewById(R.id.dtHistory);
        this.f118589j0.e(this.f118587h0);
        if (this.f118591l0 == null || this.f118590k0 == null) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f118587h0, 24, Bitmap.Config.ARGB_8888);
            this.f118590k0 = createBitmap;
            this.f118589j0.c(createBitmap, this.f118584e0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f118590k0);
            this.f118591l0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f118591l0.setAntiAlias(false);
            this.f118588i0.setImageDrawable(this.f118591l0);
        }
        this.f118588i0.setOnTouchListener(new a());
        ImageView imageView = (ImageView) inflate.findViewById(R.id.pause);
        imageView.setOnClickListener(new b(imageView));
        inflate.findViewById(R.id.stat).setOnClickListener(new c());
        this.f118577X = (TextView) inflate.findViewById(R.id.fpsView);
        float d10 = 1.0f / K8.d.d();
        this.f118577X.setText("" + ((int) d10) + " FPS");
        this.f118578Y = (TextView) inflate.findViewById(R.id.limitedtv);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        this.f118582c0 = recyclerView;
        this.f118583d0 = new F7.l(recyclerView, new d());
        View findViewById = inflate.findViewById(R.id.dump);
        if (C15377a.f109719g.booleanValue()) {
            findViewById.setVisibility(8);
        } else {
            findViewById.setOnClickListener(new e());
        }
        return inflate;
    }

    public final void C1(u6.b data) {
        if (!N7.c.N()) {
            throw new RuntimeException("Invalid thread!");
        }
        this.f118584e0 = data;
        this.f118579Z.setVisibility(0);
        this.f118580a0.setVisibility(8);
        this.f118583d0.v();
    }

    @Override
    public void G0() {
        f118574x0.remove(this);
        this.f118590k0 = null;
        super.G0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void G1(h stack, List<F7.i> elements) {
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < stack.f(); i10++) {
            linkedList.add(stack.e(i10));
        }
        Collections.sort(linkedList, Comparator.comparingDouble(new ToDoubleFunction() {
            @Override
            public final double applyAsDouble(Object obj) {
                return ((e) obj).e();
            }
        }));
        for (int size = linkedList.size() - 1; size >= 0; size--) {
            u6.e eVar = (u6.e) linkedList.get(size);
            f fVar = new f(eVar.f() + ": " + Nc.b.v0((float) eVar.e(), 1) + DateFormat.MINUTE_SECOND, eVar);
            fVar.r(eVar.d() != null && eVar.d().f() > 0);
            fVar.f6684f.f6678c = eVar.g();
            elements.add(fVar);
        }
    }

    public void I1(C15577a frameData, float deltaTime, long usedBytes, long previousFrameUsedGC) {
        this.f118589j0.d(new u6.b(deltaTime, frameData, usedBytes, previousFrameUsedGC));
    }

    @Override
    public EditorPanel k() {
        return new l();
    }

    @Override
    public void n1() {
        Bitmap bitmap;
        super.n1();
        this.f118593n0++;
        long nanoTime = System.nanoTime();
        long j10 = this.f118592m0;
        if (nanoTime - j10 >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
            this.f118594o0 = this.f118593n0 + 1;
            this.f118593n0 = 0;
            long j11 = j10 + ContactsContract.Directory.ENTERPRISE_DEFAULT;
            this.f118592m0 = j11;
            if (nanoTime - j11 >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
                this.f118592m0 = nanoTime;
            }
        }
        this.f118589j0.e(this.f118587h0);
        if (this.f118591l0 == null || (bitmap = this.f118590k0) == null || bitmap.getWidth() != this.f118587h0) {
            this.f118590k0 = Bitmap.createBitmap(this.f118587h0, 24, Bitmap.Config.ARGB_8888);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f118590k0);
            this.f118591l0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f118591l0.setAntiAlias(false);
            this.f118588i0.setImageDrawable(this.f118591l0);
        }
        this.f118589j0.c(this.f118590k0, this.f118584e0);
        this.f118591l0.invalidateSelf();
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public void o1() {
        this.f118577X.setText("" + this.f118594o0 + " FPS");
        int i10 = this.f118581b0;
        int i11 = this.f118594o0;
        if (i10 != i11) {
            this.f118581b0 = i11;
            if (K8.a.l() == null) {
                this.f118578Y.setVisibility(8);
            } else if (OGLSurfaceView.f79473t) {
                this.f118578Y.setVisibility(0);
            } else {
                this.f118578Y.setVisibility(8);
            }
        }
    }

    public boolean z1() {
        return this.f118586g0;
    }

    public l() {
        super(null, Lang.l(Lang.T.PROFILER), "ProfilerV2");
        this.f118583d0 = null;
        this.f118585f0 = 1;
        this.f118586g0 = true;
        this.f118587h0 = 90;
        this.f118589j0 = new u6.c();
        this.f118592m0 = System.nanoTime();
        this.f118593n0 = 0;
        this.f118594o0 = 0;
        super.e1(false);
    }
}
