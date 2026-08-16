package o6;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import gb.C13317e;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import m6.C14188d;
import r4.C15147a;
import t3.C15377a;

public class C14485a extends EditorPanel {

    public static final String f98530j0 = "ComponentStatisticProfiler";

    public static final int f98532l0 = 24;

    public static long f98533m0;

    public static o6.b f98534n0;

    public static long f98537q0;

    public TextView f98538X;

    public View f98539Y;

    public View f98540Z;

    public F7.l f98541a0;

    public o6.c f98542b0;

    public o6.c f98543c0;

    public boolean f98544d0;

    public int f98545e0;

    public ImageView f98546f0;

    public final o6.d f98547g0;

    public Bitmap f98548h0;

    public BitmapDrawable f98549i0;

    public static final Class f98531k0 = C14485a.class;

    public static final List<C14485a> f98535o0 = new SteppedArrayList();

    public static volatile boolean f98536p0 = false;

    public class C1887a implements Comparator<o6.f> {
        public C1887a() {
        }

        @Override
        public int compare(o6.f a10, o6.f b10) {
            return a10.c() != b10.c() ? Integer.compare(b10.c(), a10.c()) : a10.e().compareToIgnoreCase(b10.e());
        }
    }

    public class b implements Comparator<o6.f> {
        public b() {
        }

        @Override
        public int compare(o6.f a10, o6.f b10) {
            int compare = Double.compare(b10.d(), a10.d());
            return compare != 0 ? compare : a10.e().compareToIgnoreCase(b10.e());
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
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
            if ((actionMasked != 0 && actionMasked != 2) || C14485a.this.f98547g0.f() == 0 || (b10 = C14485a.this.f98547g0.b()) <= 0) {
                return false;
            }
            float x10 = motionEvent.getX();
            int width = view.getWidth();
            if (width <= 0) {
                return false;
            }
            int width2 = C14485a.this.f98548h0 != null ? C14485a.this.f98548h0.getWidth() : width;
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
            o6.c a10 = C14485a.this.f98547g0.a(Nc.b.F(0, i10 < floor2 ? 0 : i10 >= width2 - floor2 ? b10 - 1 : (i10 - floor2) / floor, C14485a.this.f98547g0.f() - 1));
            if (a10 != null) {
                C14485a.this.D1(a10);
            }
            return true;
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {

        public final ImageView f98553b;

        public d(final ImageView val$pauseButton) {
            this.f98553b = val$pauseButton;
        }

        @Override
        public void click(View v10) {
            C14485a.this.f98544d0 = !r2.f98544d0;
            Vc.e.U(this.f98553b, C14485a.this.f98544d0 ? R.drawable.pause_btn : R.drawable.play_btn);
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View v10) {
            C15147a.g(v10, new C14188d(), C15147a.e.Right, Nc.b.k0(170.0f) / N7.c.D().N().f91407a, 0.8f);
        }
    }

    public class f extends F7.a {
        public f() {
        }

        @Override
        public List<F7.i> c() {
            return C14485a.this.f98542b0 != null ? C14485a.this.B1() : new LinkedList();
        }

        @Override
        public void d(F7.i element, boolean open) {
            if (element instanceof j) {
                ((j) element).u().o(open);
            }
        }

        @Override
        public void e(F7.i element) {
            if (element instanceof j) {
                i u10 = ((j) element).u();
                u10.o(!u10.i());
                if (u10.i()) {
                    C14485a.this.f98541a0.z(element);
                } else {
                    C14485a.this.f98541a0.x(element);
                }
            }
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return C14485a.this.G1(eElement);
        }
    }

    public C14485a(K8.a engine) {
        super(engine);
        this.f98541a0 = null;
        this.f98544d0 = true;
        this.f98545e0 = 90;
        this.f98547g0 = new o6.d();
        super.e1(false);
    }

    public List<F7.i> B1() {
        o6.b a10 = this.f98542b0.a();
        if (a10 == null) {
            throw new NullPointerException("Cant show a null data");
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList(3);
        steppedArrayList.add(C1(a10));
        steppedArrayList.add(A1("Repeat", a10.f()));
        steppedArrayList.add(A1("Parallel", a10.d()));
        return steppedArrayList;
    }

    public static void E1(float deltaTime) {
        if (!f98536p0 || f98534n0 == null) {
            return;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.totalMemory() - runtime.freeMemory();
        int i10 = 0;
        while (true) {
            List<C14485a> list = f98535o0;
            if (i10 >= list.size()) {
                f98537q0 = freeMemory;
                return;
            }
            C14485a c14485a = list.get(i10);
            if (c14485a.y1() && c14485a.w0()) {
                c14485a.J1(f98534n0, freeMemory, f98537q0);
            }
            i10++;
        }
    }

    public static boolean F1() {
        return f98536p0;
    }

    public List<F7.i> G1(F7.i element) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (element instanceof j) {
            j jVar = (j) element;
            if ("Types".equals(jVar.u().f())) {
                I1(this.f98542b0.a(), jVar.u(), steppedArrayList);
            } else {
                H1(jVar.u(), steppedArrayList);
            }
        }
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            steppedArrayList.get(i10).q(element.e() + 1);
        }
        return steppedArrayList;
    }

    public static void K1(Component component, long elapsedNanos) {
        if (!M1(component) || elapsedNanos < 0) {
            return;
        }
        f98534n0.k(component, elapsedNanos);
    }

    public static void L1(Component component, long elapsedNanos) {
        if (!M1(component) || elapsedNanos < 0) {
            return;
        }
        f98534n0.l(component, elapsedNanos);
    }

    public static boolean M1(Component component) {
        GameObject gameObject;
        if (!f98536p0 || f98534n0 == null || component == null || (gameObject = component.f79250n) == null || !C13317e.J(gameObject) || component.f79250n.R0()) {
            return false;
        }
        return (C15377a.f109719g.booleanValue() && component.f79250n.Y0()) ? false : true;
    }

    public static void N1() {
        C15147a.m(new C14485a(), N7.c.g(250), N7.c.f(T6.a.f24083g0));
    }

    public static void z1() {
        int i10 = 0;
        f98536p0 = false;
        while (true) {
            List<C14485a> list = f98535o0;
            if (i10 >= list.size()) {
                break;
            }
            if (list.get(i10).y1()) {
                f98536p0 = true;
                break;
            }
            i10++;
        }
        if (!f98536p0) {
            f98533m0 = 0L;
            f98534n0 = null;
            return;
        }
        long j10 = f98533m0;
        f98533m0 = 1 + j10;
        o6.b bVar = new o6.b(j10);
        f98534n0 = bVar;
        bVar.a();
        f98536p0 = true;
    }

    public final j A1(String label, i stack) {
        j jVar = new j(label + ": " + Nc.b.v0((float) stack.h(), 1) + " ms", stack);
        jVar.r(stack.k() > 0);
        jVar.f6684f.f6678c = stack.i();
        return jVar;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.profiler_panel_v2, (ViewGroup) null);
        f98535o0.add(this);
        this.f98539Y = inflate.findViewById(R.id.treeContent);
        this.f98540Z = inflate.findViewById(R.id.unrecordedContent);
        this.f98539Y.setVisibility(8);
        this.f98540Z.setVisibility(0);
        this.f98546f0 = (ImageView) inflate.findViewById(R.id.dtHistory);
        this.f98547g0.e(this.f98545e0);
        if (this.f98549i0 == null || this.f98548h0 == null) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f98545e0, 24, Bitmap.Config.ARGB_8888);
            this.f98548h0 = createBitmap;
            this.f98547g0.c(createBitmap, this.f98542b0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f98548h0);
            this.f98549i0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f98549i0.setAntiAlias(false);
            this.f98546f0.setImageDrawable(this.f98549i0);
        }
        this.f98546f0.setOnTouchListener(new c());
        ImageView imageView = (ImageView) inflate.findViewById(R.id.pause);
        imageView.setOnClickListener(new d(imageView));
        inflate.findViewById(R.id.stat).setOnClickListener(new e());
        TextView textView = (TextView) inflate.findViewById(R.id.fpsView);
        this.f98538X = textView;
        textView.setText("0 components | 0 types | repeat 0.0 ms | parallel 0.0 ms");
        inflate.findViewById(R.id.limitedtv).setVisibility(8);
        inflate.findViewById(R.id.dump).setVisibility(8);
        this.f98541a0 = new F7.l((RecyclerView) inflate.findViewById(R.id.recyclerView), new f());
        return inflate;
    }

    public final j C1(o6.b data) {
        j jVar = new j("Types: " + data.g() + " components / " + data.i() + " types", data.j());
        jVar.r(true);
        jVar.f6684f.f6678c = data.j().i();
        return jVar;
    }

    public final void D1(o6.c data) {
        if (!N7.c.N()) {
            throw new RuntimeException("Invalid thread!");
        }
        this.f98542b0 = data;
        this.f98539Y.setVisibility(0);
        this.f98540Z.setVisibility(8);
        this.f98541a0.v();
    }

    @Override
    public void G0() {
        f98535o0.remove(this);
        this.f98548h0 = null;
        super.G0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void H1(i stack, List<F7.i> elements) {
        SteppedArrayList steppedArrayList = new SteppedArrayList(stack.k());
        for (int i10 = 0; i10 < stack.k(); i10++) {
            steppedArrayList.add(stack.j(i10));
        }
        Collections.sort(steppedArrayList, new b());
        for (int i11 = 0; i11 < steppedArrayList.size(); i11++) {
            o6.f fVar = (o6.f) steppedArrayList.get(i11);
            g gVar = new g(fVar.e() + " : " + String.format(Locale.ROOT, "%.1fms", Double.valueOf(fVar.d())), fVar);
            gVar.r(false);
            gVar.f6684f.f6678c = false;
            elements.add(gVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void I1(o6.b data, i stack, List<F7.i> elements) {
        o6.e eVar = new o6.e("Components: " + data.g());
        eVar.r(false);
        eVar.f6684f.f6678c = false;
        elements.add(eVar);
        o6.e eVar2 = new o6.e("Types: " + data.i());
        eVar2.r(false);
        eVar2.f6684f.f6678c = false;
        elements.add(eVar2);
        SteppedArrayList steppedArrayList = new SteppedArrayList(stack.k());
        for (int i10 = 0; i10 < stack.k(); i10++) {
            steppedArrayList.add(stack.j(i10));
        }
        Collections.sort(steppedArrayList, new C1887a());
        for (int i11 = 0; i11 < steppedArrayList.size(); i11++) {
            o6.f fVar = (o6.f) steppedArrayList.get(i11);
            g gVar = new g(fVar.e() + " : " + fVar.c(), fVar);
            gVar.r(false);
            gVar.f6684f.f6678c = false;
            elements.add(gVar);
        }
    }

    public void J1(o6.b frameData, long usedBytes, long previousFrameUsedGC) {
        o6.c cVar = new o6.c(frameData, usedBytes, previousFrameUsedGC);
        this.f98543c0 = cVar;
        this.f98547g0.d(cVar);
    }

    @Override
    public EditorPanel k() {
        return new C14485a();
    }

    @Override
    public void n1() {
        Bitmap bitmap;
        super.n1();
        this.f98547g0.e(this.f98545e0);
        if (this.f98549i0 == null || (bitmap = this.f98548h0) == null || bitmap.getWidth() != this.f98545e0) {
            this.f98548h0 = Bitmap.createBitmap(this.f98545e0, 24, Bitmap.Config.ARGB_8888);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f98548h0);
            this.f98549i0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f98549i0.setAntiAlias(false);
            this.f98546f0.setImageDrawable(this.f98549i0);
        }
        this.f98547g0.c(this.f98548h0, this.f98542b0);
        this.f98549i0.invalidateSelf();
    }

    @Override
    public void o1() {
        if (this.f98543c0 == null) {
            this.f98538X.setText("0 components | 0 types | repeat 0.0 ms | parallel 0.0 ms");
            return;
        }
        this.f98538X.setText(this.f98543c0.d() + " components | " + this.f98543c0.f() + " types | repeat " + Nc.b.v0((float) this.f98543c0.c(), 1) + " ms | parallel " + Nc.b.v0((float) this.f98543c0.b(), 1) + " ms");
    }

    public boolean y1() {
        return this.f98544d0;
    }

    public C14485a() {
        super(null, "Component profiler", f98530j0);
        this.f98541a0 = null;
        this.f98544d0 = true;
        this.f98545e0 = 90;
        this.f98547g0 = new o6.d();
        super.e1(false);
    }
}
