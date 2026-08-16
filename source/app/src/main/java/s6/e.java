package s6;

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
import com.bumptech.glide.load.engine.j;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import m6.C14188d;
import r4.C15147a;

public class e extends EditorPanel {

    public static final String f109211l0 = "NativeMemoryPanel";

    public static final int f109213n0 = 24;

    public static final boolean f109214o0 = false;

    public static long f109215p0;

    public static C15234a f109216q0;

    public static long f109219t0;

    public TextView f109220X;

    public View f109221Y;

    public View f109222Z;

    public int f109223a0;

    public RecyclerView f109224b0;

    public l f109225c0;

    public s6.b f109226d0;

    public int f109227e0;

    public boolean f109228f0;

    public int f109229g0;

    public ImageView f109230h0;

    public final s6.c f109231i0;

    public Bitmap f109232j0;

    public BitmapDrawable f109233k0;

    public static final Class f109212m0 = e.class;

    public static final List<e> f109217r0 = new SteppedArrayList();

    public static volatile boolean f109218s0 = false;

    public class a implements Comparator<Map.Entry<String, Integer>> {
        public a() {
        }

        @Override
        public int compare(Map.Entry<String, Integer> a10, Map.Entry<String, Integer> b10) {
            return Integer.compare(b10.getValue() != null ? b10.getValue().intValue() : 0, a10.getValue() == null ? 0 : a10.getValue().intValue());
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
            if ((actionMasked != 0 && actionMasked != 2) || e.this.f109231i0.f() == 0 || (b10 = e.this.f109231i0.b()) <= 0) {
                return false;
            }
            float x10 = motionEvent.getX();
            int width = view.getWidth();
            if (width <= 0) {
                return false;
            }
            int width2 = e.this.f109232j0 != null ? e.this.f109232j0.getWidth() : width;
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
            s6.b a10 = e.this.f109231i0.a(Nc.b.F(0, i10 < floor2 ? 0 : i10 >= width2 - floor2 ? b10 - 1 : (i10 - floor2) / floor, e.this.f109231i0.f() - 1));
            if (a10 != null) {
                e.this.B1(a10);
            }
            return true;
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public final ImageView f109236b;

        public c(final ImageView val$pauseButton) {
            this.f109236b = val$pauseButton;
        }

        @Override
        public void click(View v10) {
            e.this.f109228f0 = !r2.f109228f0;
            Vc.e.U(this.f109236b, e.this.f109228f0 ? R.drawable.pause_btn : R.drawable.play_btn);
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

    public class C2002e extends F7.a {
        public C2002e() {
        }

        @Override
        public List<F7.i> c() {
            return e.this.f109226d0 != null ? e.this.A1() : new LinkedList();
        }

        @Override
        public void d(F7.i element, boolean open) {
        }

        @Override
        public void e(F7.i element) {
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return e.this.E1(eElement);
        }
    }

    public e(K8.a engine) {
        super(engine);
        this.f109225c0 = null;
        this.f109227e0 = 1;
        this.f109228f0 = true;
        this.f109229g0 = 90;
        this.f109231i0 = new s6.c();
        super.e1(false);
    }

    public List<F7.i> A1() {
        C15234a b10 = this.f109226d0.b();
        if (b10 == null) {
            throw new NullPointerException("Cant show a null data");
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Java GC?: ");
        String bool = Boolean.valueOf(this.f109226d0.f()).toString();
        Locale locale = Locale.ROOT;
        sb2.append(bool.toUpperCase(locale));
        s6.d dVar = new s6.d(sb2.toString());
        dVar.r(false);
        dVar.f6684f.f6678c = false;
        steppedArrayList.add(dVar);
        s6.d dVar2 = new s6.d(String.format(locale, "Native memory: %.1f MB", Float.valueOf(this.f109226d0.d())));
        dVar2.r(false);
        dVar2.f6684f.f6678c = false;
        steppedArrayList.add(dVar2);
        s6.d dVar3 = new s6.d("SGC:" + this.f109226d0.e());
        dVar3.r(false);
        dVar3.f6684f.f6678c = false;
        steppedArrayList.add(dVar3);
        SteppedArrayList steppedArrayList2 = new SteppedArrayList(b10.c().entrySet());
        Collections.sort(steppedArrayList2, new a());
        for (int i10 = 0; i10 < steppedArrayList2.size(); i10++) {
            Map.Entry entry = (Map.Entry) steppedArrayList2.get(i10);
            int intValue = entry.getValue() == null ? 0 : ((Integer) entry.getValue()).intValue();
            String str = (String) entry.getKey();
            if (str.contains("Filament")) {
                str = str.replace("Filament", j.f59190i);
            }
            s6.d dVar4 = new s6.d(str + ": " + intValue);
            dVar4.r(false);
            dVar4.f6684f.f6678c = false;
            steppedArrayList.add(dVar4);
        }
        return steppedArrayList;
    }

    public static void C1(float deltaTime) {
        if (!f109218s0 || f109216q0 == null) {
            return;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.totalMemory() - runtime.freeMemory();
        f109216q0.a();
        int i10 = 0;
        while (true) {
            List<e> list = f109217r0;
            if (i10 >= list.size()) {
                f109219t0 = freeMemory;
                return;
            }
            e eVar = list.get(i10);
            if (eVar.y1() && eVar.w0()) {
                eVar.G1(f109216q0, freeMemory, f109219t0);
            }
            i10++;
        }
    }

    public static boolean D1() {
        return f109218s0;
    }

    public List<F7.i> E1(F7.i element) {
        return new SteppedArrayList();
    }

    public static void F1(Object object) {
    }

    private int H1(float fps) {
        return (int) fps;
    }

    public static void I1() {
        C15147a.m(new e(), N7.c.g(250), N7.c.f(T6.a.f24083g0));
    }

    public static boolean x1() {
        return false;
    }

    public static void z1() {
        int i10 = 0;
        f109218s0 = false;
        while (true) {
            List<e> list = f109217r0;
            if (i10 >= list.size()) {
                break;
            }
            if (list.get(i10).y1()) {
                f109218s0 = true;
                break;
            }
            i10++;
        }
        if (!f109218s0) {
            f109215p0 = 0L;
            f109216q0 = null;
        } else {
            f109218s0 = true;
            long j10 = f109215p0;
            f109215p0 = 1 + j10;
            f109216q0 = new C15234a(j10);
        }
    }

    public final void B1(s6.b data) {
        if (!N7.c.N()) {
            throw new RuntimeException("Invalid thread!");
        }
        this.f109226d0 = data;
        this.f109221Y.setVisibility(0);
        this.f109222Z.setVisibility(8);
        this.f109225c0.v();
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.profiler_panel_v2, (ViewGroup) null);
        f109217r0.add(this);
        this.f109221Y = inflate.findViewById(R.id.treeContent);
        this.f109222Z = inflate.findViewById(R.id.unrecordedContent);
        this.f109221Y.setVisibility(8);
        this.f109222Z.setVisibility(0);
        this.f109230h0 = (ImageView) inflate.findViewById(R.id.dtHistory);
        this.f109231i0.e(this.f109229g0);
        if (this.f109233k0 == null || this.f109232j0 == null) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f109229g0, 24, Bitmap.Config.ARGB_8888);
            this.f109232j0 = createBitmap;
            this.f109231i0.c(createBitmap, this.f109226d0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f109232j0);
            this.f109233k0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f109233k0.setAntiAlias(false);
            this.f109230h0.setImageDrawable(this.f109233k0);
        }
        this.f109230h0.setOnTouchListener(new b());
        ImageView imageView = (ImageView) inflate.findViewById(R.id.pause);
        imageView.setOnClickListener(new c(imageView));
        inflate.findViewById(R.id.stat).setOnClickListener(new d());
        this.f109220X = (TextView) inflate.findViewById(R.id.fpsView);
        float d10 = 1.0f / K8.d.d();
        this.f109220X.setText("" + H1(d10) + " FPS");
        inflate.findViewById(R.id.limitedtv).setVisibility(8);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        this.f109224b0 = recyclerView;
        this.f109225c0 = new l(recyclerView, new C2002e());
        return inflate;
    }

    @Override
    public void G0() {
        f109217r0.remove(this);
        this.f109232j0 = null;
        super.G0();
    }

    public void G1(C15234a frameData, long usedBytes, long previousFrameUsedGC) {
        this.f109231i0.d(new s6.b(frameData, usedBytes, previousFrameUsedGC));
    }

    @Override
    public EditorPanel k() {
        return new e();
    }

    @Override
    public void n1() {
        Bitmap bitmap;
        super.n1();
        this.f109231i0.e(this.f109229g0);
        if (this.f109233k0 == null || (bitmap = this.f109232j0) == null || bitmap.getWidth() != this.f109229g0) {
            this.f109232j0 = Bitmap.createBitmap(this.f109229g0, 24, Bitmap.Config.ARGB_8888);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(M().getResources(), this.f109232j0);
            this.f109233k0 = bitmapDrawable;
            bitmapDrawable.setFilterBitmap(false);
            this.f109233k0.setAntiAlias(false);
            this.f109230h0.setImageDrawable(this.f109233k0);
        }
        this.f109231i0.c(this.f109232j0, this.f109226d0);
        this.f109233k0.invalidateSelf();
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public void o1() {
        Runtime runtime = Runtime.getRuntime();
        this.f109220X.setText(String.format(Locale.ROOT, "Heap: %.1f MB", Double.valueOf((runtime.totalMemory() - runtime.freeMemory()) / 1048576.0d)));
    }

    public boolean y1() {
        return this.f109228f0;
    }

    public e() {
        super(null, "Native memory profiler", f109211l0);
        this.f109225c0 = null;
        this.f109227e0 = 1;
        this.f109228f0 = true;
        this.f109229g0 = 90;
        this.f109231i0 = new s6.c();
        super.e1(false);
    }
}
