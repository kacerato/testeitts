package com.itsmagic.engine.Activities.Editor.Panels.Profiler.MemoryProfiler;

import F7.i;
import F7.l;
import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Profiler.MemoryProfiler.AllocatorWatcher;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.C;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.function.BiConsumer;
import java.util.function.ToIntFunction;
import m6.C14188d;
import r4.C15147a;
import r6.C15151a;

public class a extends EditorPanel {

    public static final String f71813l0 = "MemoryPanel";

    public static final int f71815n0 = 24;

    public static boolean f71816o0;

    public static long f71817p0;

    public static C15151a f71818q0;

    public static C15151a f71819r0;

    public static long f71825x0;

    public TextView f71826X;

    public View f71827Y;

    public View f71828Z;

    public int f71829a0;

    public RecyclerView f71830b0;

    public l f71831c0;

    public r6.b f71832d0;

    public int f71833e0;

    public boolean f71834f0;

    public int f71835g0;

    public ImageView f71836h0;

    public final r6.c f71837i0;

    public Bitmap f71838j0;

    public BitmapDrawable f71839k0;

    public static final Class f71814m0 = a.class;

    public static final List<a> f71820s0 = new SteppedArrayList();

    public static volatile boolean f71821t0 = false;

    public static Thread f71822u0 = null;

    public static int f71823v0 = 99;

    public static boolean f71824w0 = false;

    public class C1138a implements AllocatorWatcher.a {
        @Override
        public void a(Object object) {
            a.H1(object);
        }
    }

    public class b implements BiConsumer<Class, Integer> {

        public final List f71840a;

        public b(final List val$orderedProfiles) {
            this.f71840a = val$orderedProfiles;
        }

        @Override
        public void accept(Class cls, Integer count) {
            this.f71840a.add(cls);
        }
    }

    public class c implements ToIntFunction<Class> {

        public final r6.f f71842a;

        public c(final r6.f val$stack) {
            this.f71842a = val$stack;
        }

        @Override
        public int applyAsInt(Class aClass) {
            return this.f71842a.c().get(aClass).intValue();
        }
    }

    public class d implements BiConsumer<String, r6.f> {

        public final List f71844a;

        public d(final List val$orderedProfiles) {
            this.f71844a = val$orderedProfiles;
        }

        @Override
        public void accept(String s10, r6.f stack) {
            this.f71844a.add(stack);
        }
    }

    public class e implements View.OnTouchListener {
        public e() {
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
            if ((actionMasked != 0 && actionMasked != 2) || a.this.f71837i0.f() == 0 || (b10 = a.this.f71837i0.b()) <= 0) {
                return false;
            }
            float x10 = motionEvent.getX();
            int width = view.getWidth();
            if (width <= 0) {
                return false;
            }
            int width2 = a.this.f71838j0 != null ? a.this.f71838j0.getWidth() : width;
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
            r6.b a10 = a.this.f71837i0.a(Nc.b.F(0, i10 < floor2 ? 0 : i10 >= width2 - floor2 ? b10 - 1 : (i10 - floor2) / floor, a.this.f71837i0.f() - 1));
            if (a10 != null) {
                a.this.C1(a10);
            }
            return true;
        }
    }

    public class f extends AbstractViewOnClickListenerC12733a {

        public final ImageView f71847b;

        public f(final ImageView val$pauseButton) {
            this.f71847b = val$pauseButton;
        }

        @Override
        public void click(View v10) {
            a.this.f71834f0 = !r2.f71834f0;
            Vc.e.U(this.f71847b, a.this.f71834f0 ? R.drawable.pause_btn : R.drawable.play_btn);
        }
    }

    public class g extends AbstractViewOnClickListenerC12733a {
        public g() {
        }

        @Override
        public void click(View v10) {
            C15147a.g(v10, new C14188d(), C15147a.e.Right, Nc.b.k0(170.0f) / N7.c.D().N().f91407a, 0.8f);
        }
    }

    public class h extends F7.a {
        public h() {
        }

        @Override
        public List<i> c() {
            return a.this.f71832d0 != null ? a.this.B1() : new LinkedList();
        }

        @Override
        public void d(i element, boolean open) {
            if (element instanceof r6.g) {
                ((r6.g) element).u().n(open);
            }
        }

        @Override
        public void e(i element) {
            if (element instanceof r6.g) {
                r6.f u10 = ((r6.g) element).u();
                u10.n(!u10.j());
                if (u10.j()) {
                    a.this.f71831c0.z(element);
                } else {
                    a.this.f71831c0.x(element);
                }
            }
        }

        @Override
        public List<i> f(i eElement) {
            return a.this.G1(eElement);
        }
    }

    public a(K8.a engine) {
        super(engine);
        this.f71831c0 = null;
        this.f71833e0 = 1;
        this.f71834f0 = true;
        this.f71835g0 = 90;
        this.f71837i0 = new r6.c();
        super.e1(false);
    }

    public static void A1() {
        f71821t0 = false;
        int i10 = 0;
        while (true) {
            List<a> list = f71820s0;
            if (i10 >= list.size()) {
                break;
            }
            if (list.get(i10).z1()) {
                f71821t0 = true;
                break;
            }
            i10++;
        }
        if (f71821t0) {
            AllocatorWatcher.f71812l = new C1138a();
            f71821t0 = true;
            f71822u0 = Thread.currentThread();
            f71819r0 = new C15151a(f71817p0);
            f71817p0++;
            return;
        }
        f71817p0 = 0L;
        f71818q0 = null;
        if (f71824w0) {
            f71824w0 = false;
            r6.h.a();
        }
    }

    public List<i> B1() {
        C15151a b10 = this.f71832d0.b();
        if (b10 == null) {
            throw new NullPointerException("Cant show a null data");
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Locale locale = Locale.ROOT;
        r6.d dVar = new r6.d(String.format(locale, "Heap memory: %.1f MB", Double.valueOf(this.f71832d0.c() / 1048576.0d)));
        dVar.r(false);
        dVar.f6684f.f6678c = false;
        steppedArrayList.add(dVar);
        r6.d dVar2 = new r6.d("Java GC?: " + Boolean.valueOf(this.f71832d0.g()).toString().toUpperCase(locale));
        dVar2.r(false);
        dVar2.f6684f.f6678c = false;
        steppedArrayList.add(dVar2);
        r6.d dVar3 = new r6.d(String.format(locale, "Native memory: %.1f MB", Float.valueOf(this.f71832d0.e())));
        dVar3.r(false);
        dVar3.f6684f.f6678c = false;
        steppedArrayList.add(dVar3);
        this.f71832d0.c();
        r6.d dVar4 = new r6.d("SGC:" + this.f71832d0.f());
        dVar4.r(false);
        dVar4.f6684f.f6678c = false;
        steppedArrayList.add(dVar4);
        for (int i10 = 0; i10 < b10.c(); i10++) {
            try {
                r6.i j10 = b10.j(i10);
                r6.f e10 = j10.e();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Thread [");
                sb2.append(j10.g());
                sb2.append("]:");
                r6.g gVar = new r6.g(sb2.toString(), e10, sb2.toString().startsWith("[E]"));
                gVar.r(true);
                gVar.f6684f.f6678c = e10.j();
                steppedArrayList.add(gVar);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return steppedArrayList;
    }

    public static void D1(float deltaTime) {
        if (!f71821t0) {
            return;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.totalMemory() - runtime.freeMemory();
        f71819r0.a();
        int i10 = 0;
        while (true) {
            List<a> list = f71820s0;
            if (i10 >= list.size()) {
                f71825x0 = freeMemory;
                return;
            }
            a aVar = list.get(i10);
            if (aVar.z1() && aVar.w0()) {
                aVar.I1(f71819r0, freeMemory, f71825x0);
            }
            i10++;
        }
    }

    public static boolean E1() {
        return f71821t0;
    }

    public List<i> G1(i element) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (element instanceof r6.g) {
            F1(((r6.g) element).u(), steppedArrayList);
        }
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            steppedArrayList.get(i10).q(element.e() + 1);
        }
        return steppedArrayList;
    }

    public static void H1(Object object) {
        if (f71821t0 && f71819r0 != null) {
            Runtime runtime = Runtime.getRuntime();
            long freeMemory = runtime.totalMemory() - runtime.freeMemory();
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            boolean z10 = false;
            for (int i10 = 2; i10 < stackTrace.length; i10++) {
                StackTraceElement stackTraceElement = stackTrace[i10];
                if ("com.itsmagic.engine.Activities.Editor.Panels.Profiler.MemoryProfiler.AllocatorWatcher".equals(stackTraceElement.getClassName()) && "notify".equals(stackTraceElement.getMethodName())) {
                    if (z10) {
                        return;
                    } else {
                        z10 = true;
                    }
                }
            }
            List<String> c10 = C.c();
            SteppedArrayList steppedArrayList = new SteppedArrayList(c10.size());
            boolean z11 = false;
            boolean z12 = false;
            for (int i11 = 0; i11 < c10.size(); i11++) {
                String str = c10.get(i11);
                if (z11) {
                    z11 = false;
                } else if (z12) {
                    if (str.contains("DebugException")) {
                        continue;
                    } else {
                        if (str.contains("com.itsmagic.engine.Core.Core.")) {
                            break;
                        }
                        if (str.contains("(")) {
                            str = str.substring(0, str.indexOf("("));
                        }
                        if (str.contains("at ")) {
                            str = str.substring(str.indexOf("at ") + 3);
                        }
                        steppedArrayList.add(str.replace(N7.c.C() + ".", "").replace("com.itsmagic.engine.", ""));
                    }
                } else if (str.contains("AllocatorWatcher.notify")) {
                    z11 = true;
                    z12 = true;
                }
            }
            Collections.reverse(steppedArrayList);
            f71819r0.h(object, steppedArrayList, freeMemory);
        }
    }

    public static void K1() {
        C15147a.m(new a(), N7.c.g(250), N7.c.f(T6.a.f24083g0));
    }

    public static boolean y1() {
        return f71816o0;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.profiler_panel_v2, (ViewGroup) null);
        f71820s0.add(this);
        this.f71827Y = inflate.findViewById(R.id.treeContent);
        this.f71828Z = inflate.findViewById(R.id.unrecordedContent);
        this.f71827Y.setVisibility(8);
        this.f71828Z.setVisibility(0);
        this.f71836h0 = (ImageView) inflate.findViewById(R.id.dtHistory);
        this.f71837i0.e(this.f71835g0);
        if (this.f71839k0 == null || this.f71838j0 == null) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f71835g0, 24, Bitmap.Config.ARGB_8888);
            this.f71838j0 = createBitmap;
            this.f71837i0.c(createBitmap, this.f71832d0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f71838j0);
            this.f71839k0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f71839k0.setAntiAlias(false);
            this.f71836h0.setImageDrawable(this.f71839k0);
        }
        this.f71836h0.setOnTouchListener(new e());
        ImageView imageView = (ImageView) inflate.findViewById(R.id.pause);
        imageView.setOnClickListener(new f(imageView));
        inflate.findViewById(R.id.stat).setOnClickListener(new g());
        this.f71826X = (TextView) inflate.findViewById(R.id.fpsView);
        float d10 = 1.0f / K8.d.d();
        this.f71826X.setText("" + J1(d10) + " FPS");
        inflate.findViewById(R.id.limitedtv).setVisibility(8);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        this.f71830b0 = recyclerView;
        this.f71831c0 = new l(recyclerView, new h());
        return inflate;
    }

    public final void C1(r6.b data) {
        if (!N7.c.N()) {
            throw new RuntimeException("Invalid thread!");
        }
        this.f71832d0 = data;
        this.f71827Y.setVisibility(0);
        this.f71828Z.setVisibility(8);
        this.f71831c0.v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void F1(r6.f stack, List<i> elements) {
        LinkedList linkedList = new LinkedList();
        stack.c().forEach(new b(linkedList));
        Collections.sort(linkedList, Comparator.comparingInt(new c(stack)));
        for (int size = linkedList.size() - 1; size >= 0; size += -1) {
            Class cls = (Class) linkedList.get(size);
            r6.d dVar = new r6.d(cls.getSimpleName() + " [" + ((Object) stack.c().get(cls)) + "]");
            dVar.r(false);
            dVar.f6684f.f6678c = false;
            elements.add(dVar);
        }
        LinkedList linkedList2 = new LinkedList();
        stack.h().forEach(new d(linkedList2));
        Collections.sort(linkedList2, Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((f) obj).g();
            }
        }));
        for (int size2 = linkedList2.size() - 1; size2 >= 0; size2 += -1) {
            r6.f fVar = (r6.f) linkedList2.get(size2);
            r6.g gVar = new r6.g(fVar.i() + " [" + fVar.g() + "]", fVar);
            gVar.r(true);
            gVar.f6684f.f6678c = fVar.j();
            elements.add(gVar);
        }
    }

    @Override
    public void G0() {
        f71820s0.remove(this);
        this.f71838j0 = null;
        super.G0();
    }

    public void I1(C15151a frameData, long usedBytes, long previousFrameUsedGC) {
        this.f71837i0.d(new r6.b(frameData, usedBytes, previousFrameUsedGC));
    }

    public final int J1(float fps) {
        return (int) fps;
    }

    @Override
    public EditorPanel k() {
        return new a();
    }

    @Override
    public void n1() {
        Bitmap bitmap;
        super.n1();
        this.f71837i0.e(this.f71835g0);
        if (this.f71839k0 == null || (bitmap = this.f71838j0) == null || bitmap.getWidth() != this.f71835g0) {
            this.f71838j0 = Bitmap.createBitmap(this.f71835g0, 24, Bitmap.Config.ARGB_8888);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f71838j0);
            this.f71839k0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f71839k0.setAntiAlias(false);
            this.f71836h0.setImageDrawable(this.f71839k0);
        }
        this.f71837i0.c(this.f71838j0, this.f71832d0);
        this.f71839k0.invalidateSelf();
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public void o1() {
        Runtime runtime = Runtime.getRuntime();
        this.f71826X.setText(String.format(Locale.ROOT, "Heap: %.1f MB", Double.valueOf((runtime.totalMemory() - runtime.freeMemory()) / 1048576.0d)));
    }

    public boolean z1() {
        return this.f71834f0;
    }

    public a() {
        super(null, "Memory profiler", f71813l0);
        this.f71831c0 = null;
        this.f71833e0 = 1;
        this.f71834f0 = true;
        this.f71835g0 = 90;
        this.f71837i0 = new r6.c();
        super.e1(false);
    }
}
