package m6;

import JAVARuntime.Thread;
import M9.i;
import R8.f;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.AnimatedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.BasePool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine2.R;
import da.C12894h;
import java.util.List;
import java.util.function.Consumer;
import lb.C14066c;

public class C14188d extends EditorPanel {

    public static final String f96708u0 = "StatisticProfiler";

    public static final Class f96709v0 = C14188d.class;

    public TextView f96710X;

    public TextView f96711Y;

    public TextView f96712Z;

    public final C14066c f96713a0;

    public volatile int f96714b0;

    public volatile int f96715c0;

    public volatile int f96716d0;

    public volatile int f96717e0;

    public volatile int f96718f0;

    public volatile int f96719g0;

    public volatile int f96720h0;

    public volatile int f96721i0;

    public volatile int f96722j0;

    public volatile int f96723k0;

    public volatile int f96724l0;

    public volatile String f96725m0;

    public volatile String f96726n0;

    public volatile String f96727o0;

    public volatile boolean f96728p0;

    public final Object f96729q0;

    public volatile boolean f96730r0;

    public volatile boolean f96731s0;

    public Thread f96732t0;

    public class a extends EditorPanel.j {
        @Override
        public Class b() {
            return C14188d.f96709v0;
        }

        @Override
        public String c() {
            return C14188d.f96708u0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            while (C14188d.this.f96730r0) {
                synchronized (C14188d.this.f96729q0) {
                    while (C14188d.this.f96730r0 && !C14188d.this.f96731s0) {
                        try {
                            C14188d.this.f96729q0.wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                    if (!C14188d.this.f96730r0) {
                        return;
                    } else {
                        C14188d.this.f96731s0 = false;
                    }
                }
                C14188d.this.w1();
            }
        }
    }

    public class c implements Consumer<GameObject> {

        public final int[] f96734b;

        public final int[] f96735c;

        public final int[] f96736d;

        public final int[] f96737e;

        public final int[] f96738f;

        public final int[] f96739g;

        public final int[] f96740h;

        public c(final int[] val$c, final int[] val$sc, final int[] val$dc, final int[] val$components, final int[] val$v, final int[] val$t, final int[] val$sp) {
            this.f96734b = val$c;
            this.f96735c = val$sc;
            this.f96736d = val$dc;
            this.f96737e = val$components;
            this.f96738f = val$v;
            this.f96739g = val$t;
            this.f96740h = val$sp;
        }

        @Override
        public void accept(GameObject gameObject) {
            Vertex vertex;
            int[] iArr = this.f96734b;
            iArr[0] = iArr[0] + 1;
            if (gameObject.transform.w1() == Transform.G.STATIC) {
                int[] iArr2 = this.f96735c;
                iArr2[0] = iArr2[0] + 1;
            } else {
                int[] iArr3 = this.f96736d;
                iArr3[0] = iArr3[0] + 1;
            }
            int[] iArr4 = this.f96737e;
            iArr4[0] = iArr4[0] + gameObject.N();
            for (int i10 = 0; i10 < gameObject.N(); i10++) {
                Component L10 = gameObject.L(i10);
                if (L10 instanceof ModelRenderer) {
                    vertex = ((ModelRenderer) L10).getVertex();
                } else if (L10 instanceof SkinnedModelRenderer) {
                    vertex = ((SkinnedModelRenderer) L10).getVertex();
                } else if (L10 instanceof AnimatedModelRenderer) {
                    vertex = ((AnimatedModelRenderer) L10).getVertex();
                } else {
                    if (L10 instanceof Terrain) {
                        try {
                            Terrain terrain = (Terrain) L10;
                            int[] iArr5 = this.f96738f;
                            iArr5[0] = iArr5[0] + terrain.getRenderedVerticesCount();
                            int[] iArr6 = this.f96739g;
                            iArr6[0] = iArr6[0] + terrain.getRenderedTrianglesCount();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    } else if (L10 instanceof ParticleEmitter) {
                        ((ParticleEmitter) L10).getMaxParticles();
                    } else if ((L10 instanceof SoundPlayer) && L10.isHierarchyActive()) {
                        int[] iArr7 = this.f96740h;
                        iArr7[0] = iArr7[0] + 1;
                    }
                    vertex = null;
                }
                if (vertex != null) {
                    int[] iArr8 = this.f96738f;
                    iArr8[0] = iArr8[0] + vertex.j1();
                    int[] iArr9 = this.f96739g;
                    iArr9[0] = iArr9[0] + vertex.W0();
                }
            }
            gameObject.z0().forEach(this);
        }
    }

    static {
        EditorPanel.a(new a());
    }

    public C14188d(K8.a engine) {
        super(engine);
        this.f96713a0 = new C14066c();
        this.f96714b0 = 0;
        this.f96728p0 = true;
        this.f96729q0 = new Object();
        this.f96730r0 = false;
        this.f96731s0 = false;
        super.e1(false);
    }

    private void v1() {
        if (this.f96730r0) {
            synchronized (this.f96729q0) {
                this.f96731s0 = true;
                this.f96729q0.notifyAll();
            }
        }
    }

    private void y1() {
        if (this.f96730r0) {
            return;
        }
        this.f96730r0 = true;
        this.f96731s0 = true;
        Thread thread = new Thread(new b(), "StatisticProfilerWorker");
        this.f96732t0 = thread;
        thread.setPriority(1);
        this.f96732t0.start();
    }

    private void z1() {
        this.f96730r0 = false;
        synchronized (this.f96729q0) {
            this.f96731s0 = false;
            this.f96729q0.notifyAll();
        }
        Thread thread = this.f96732t0;
        if (thread != null) {
            thread.interrupt();
            this.f96732t0 = null;
        }
    }

    public final void A1() {
        this.f96710X.setText(this.f96725m0);
        this.f96711Y.setText(this.f96727o0);
        this.f96712Z.setText(this.f96726n0);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.profiler_panel, (ViewGroup) null);
        y1();
        this.f96710X = (TextView) inflate.findViewById(R.id.stat);
        this.f96711Y = (TextView) inflate.findViewById(R.id.frame);
        this.f96712Z = (TextView) inflate.findViewById(R.id.memory);
        u1();
        A1();
        v1();
        return inflate;
    }

    @Override
    public void G0() {
        z1();
        super.G0();
    }

    @Override
    public EditorPanel k() {
        return new C14188d();
    }

    @Override
    public void n1() {
        super.n1();
        if (this.f96728p0) {
            this.f96728p0 = false;
            A1();
        }
    }

    @Override
    public void o1() {
        v1();
    }

    public final void u1() {
        String str;
        String str2;
        if (com.itsmagic.engine.Engines.Engine.World.a.f80030c != null) {
            str = ((((("" + this.f96717e0 + " objects\n") + this.f96719g0 + " dynamic objects\n") + this.f96718f0 + " static objects\n") + this.f96715c0 + " pooled objects\n") + this.f96723k0 + " update transforms\n") + C12894h.k().size() + " materials";
        } else {
            str = "";
        }
        this.f96725m0 = str + "\n";
        if (com.itsmagic.engine.Engines.Engine.World.a.f80030c != null) {
            str2 = ((((((((((((((((((("Components\n") + "-" + this.f96724l0 + " total components\n") + "-" + f.y() + " update components\n") + "-" + f.n() + " parallel components\n") + "\n") + "Graphics\n") + "-" + Tc.b.W(this.f96721i0) + " vertices\n") + "-" + Tc.b.W(this.f96722j0) + " triangles\n") + "\n") + "UI\n") + "-" + P9.a.f21181n + "/50 layout passes\n") + "\n") + "Physics\n") + "-" + this.f96716d0 + " objects\n") + "-" + this.f96714b0 + " colliders\n") + "\n") + "Audio\n") + "-" + this.f96720h0 + " sound players\n") + "-Audio-Task: " + Nc.b.v0(Hc.b.j(), 0) + " ms\n") + "\n";
        } else {
            str2 = "";
        }
        this.f96727o0 = (((((str2 + "LP-Task: " + Nc.b.v0(ca.c.x(), 0) + " ms\n") + "SGC-Task: " + Nc.b.v0(i.d(), 0) + " ms\n") + "Threads: " + Thread.activeCount() + "\n") + "JAVA RT Threads: " + Thread.countThreads() + "\n") + "SGC Objects: " + SGC.getConcreteCount() + "\n") + "SGC Dead: " + SGC.getDeadCount() + "\n";
        String str3 = (((("Native " + Nc.b.v0(((C14066c.i(M()) + C14066c.f(M())) / C14066c.k(M())) * 100.0f, 0) + "%\n") + " -Max: " + C14066c.b(C14066c.k(M())) + "\n") + " -Used: " + C14066c.b(C14066c.i(M())) + "\n") + " -Textures: " + C14066c.b(C14066c.h(M())) + "\n") + " -Buffers: " + C14066c.b(C14066c.g(M())) + "\n";
        C14066c c14066c = this.f96713a0;
        float f10 = c14066c.f96229a / c14066c.f96230b;
        String str4 = ((str3 + "\nJava Heap " + Nc.b.v0(100.0f * f10, 0) + "%\n") + " -Max: " + C14066c.b(this.f96713a0.f96230b) + "\n") + " -Used: " + C14066c.b(this.f96713a0.f96229a) + "\n";
        if (f10 >= 0.8f) {
            str4 = str4 + " Attention!\n";
        }
        this.f96726n0 = ((((str4 + "\nGraphics\n") + " -Used: " + C14066c.b(C14066c.f(M())) + "\n") + " -Textures: " + C14066c.b(C14066c.e(M())) + "\n") + " -FrameBuffers: " + C14066c.b(C14066c.c(M())) + "\n") + " -Models: " + C14066c.b(C14066c.d(M())) + "\n";
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0095 A[Catch: Exception -> 0x00a7, TryCatch #3 {Exception -> 0x00a7, blocks: (B:19:0x008a, B:20:0x008f, B:22:0x0095, B:24:0x00a1), top: B:18:0x008a, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd A[Catch: Exception -> 0x00cf, TryCatch #1 {Exception -> 0x00cf, blocks: (B:32:0x00b1, B:33:0x00b7, B:35:0x00bd, B:37:0x00c9, B:39:0x00d1, B:42:0x00d4), top: B:31:0x00b1, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e7 A[Catch: Exception -> 0x00f8, TRY_LEAVE, TryCatch #2 {Exception -> 0x00f8, blocks: (B:45:0x00da, B:46:0x00e1, B:48:0x00e7), top: B:44:0x00da, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void w1() {
        int i10;
        int i11;
        List<Component> h10;
        int i12;
        List<Component> h11;
        int i13;
        List<Component> h12;
        int i14;
        try {
            this.f96723k0 = K8.a.f10982m;
            World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
            if (world != null) {
                int[] iArr = {0};
                int[] iArr2 = {0};
                int[] iArr3 = {0};
                int[] iArr4 = {0};
                int[] iArr5 = {0};
                int[] iArr6 = {0};
                int[] iArr7 = {0};
                world.f80011b.forEach(new c(iArr, iArr2, iArr3, iArr7, iArr4, iArr5, iArr6));
                i10 = 0;
                this.f96717e0 = iArr[0];
                this.f96718f0 = iArr2[0];
                this.f96719g0 = iArr3[0];
                this.f96721i0 = iArr4[0];
                this.f96722j0 = iArr5[0];
                this.f96720h0 = iArr6[0];
                this.f96724l0 = iArr7[0];
            } else {
                i10 = 0;
            }
            try {
                List<Component> h13 = f.h(Collider.class);
                int i15 = i10;
                i11 = i15;
                while (i15 < h13.size()) {
                    try {
                        if (h13.get(i15).isHierarchyActive()) {
                            i11++;
                        }
                        i15++;
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        h12 = f.h(BasePool.class);
                        while (i14 < h12.size()) {
                        }
                        this.f96714b0 = i11;
                        h11 = f.h(BasePool.class);
                        i13 = i10;
                        int i16 = i13;
                        while (i13 < h11.size()) {
                        }
                        this.f96715c0 = i16;
                        h10 = f.h(PhysicsComponent.class);
                        while (i12 < h10.size()) {
                        }
                        this.f96716d0 = i10;
                        this.f96713a0.n(M());
                        u1();
                        this.f96728p0 = true;
                    }
                }
            } catch (Exception e11) {
                e = e11;
                i11 = i10;
            }
            try {
                h12 = f.h(BasePool.class);
                for (i14 = i10; i14 < h12.size(); i14++) {
                    BasePool basePool = (BasePool) h12.get(i14);
                    if (basePool.isHierarchyActive()) {
                        i11 += basePool.getCollidersCount();
                    }
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            this.f96714b0 = i11;
            try {
                h11 = f.h(BasePool.class);
                i13 = i10;
                int i162 = i13;
                while (i13 < h11.size()) {
                    BasePool basePool2 = (BasePool) h11.get(i13);
                    if (basePool2.isHierarchyActive()) {
                        i162 += basePool2.getHPOCount();
                    }
                    i13++;
                }
                this.f96715c0 = i162;
            } catch (Exception e13) {
                e13.printStackTrace();
            }
            try {
                h10 = f.h(PhysicsComponent.class);
                for (i12 = i10; i12 < h10.size(); i12++) {
                    if (h10.get(i12).isHierarchyActive()) {
                        i10++;
                    }
                }
            } catch (Exception e14) {
                int i17 = i10;
                e14.printStackTrace();
                i10 = i17;
            }
            this.f96716d0 = i10;
        } catch (Exception e15) {
            e15.printStackTrace();
        }
        this.f96713a0.n(M());
        u1();
        this.f96728p0 = true;
    }

    public final String x1(int value) {
        if (value > 1000000) {
            float f10 = value / 1000000.0f;
            if (f10 > 1.0f) {
                return Nc.b.v0(f10, 2) + "M";
            }
            return Nc.b.v0(f10, 2) + "M";
        }
        if (value <= 1000) {
            return value + "";
        }
        float f11 = value / 1000.0f;
        if (f11 > 1.0f) {
            return Nc.b.v0(f11, 0) + "K";
        }
        return Nc.b.v0(f11, 0) + "K";
    }

    public C14188d() {
        super(null, Lang.l(Lang.T.STATISTIC), f96708u0);
        this.f96713a0 = new C14066c();
        this.f96714b0 = 0;
        this.f96728p0 = true;
        this.f96729q0 = new Object();
        this.f96730r0 = false;
        this.f96731s0 = false;
        super.e1(false);
    }
}
