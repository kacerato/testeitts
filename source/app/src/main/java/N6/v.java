package N6;

import android.graphics.Bitmap;
import android.opengl.Matrix;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.LightManager;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Skybox;
import com.google.android.filament.TransformManager;
import com.google.android.filament.View;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Modules.UpdateModule;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentIndirectLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentSkybox;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphBinder;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import dc.C12906d;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import lb.C14068e;
import t3.C15377a;

public class v {

    public static final int f15716B = 64;

    public p f15717A;

    public final H f15718a;

    public ShaderGraphData f15720c;

    public Material f15721d;

    public long f15729l;

    public long f15730m;

    public long f15731n;

    public long f15732o;

    public long f15733p;

    public int f15734q;

    public int[] f15735r;

    public boolean f15737t;

    public boolean f15738u;

    public g f15739v;

    public Rb.c f15740w;

    public FilamentRenderable f15741x;

    public Vertex f15742y;

    public Vertex.v f15743z;

    public final ArrayDeque<p> f15722e = new ArrayDeque<>();

    public final Map<String, e> f15723f = new HashMap();

    public final Map<String, f> f15724g = new HashMap();

    public final Map<String, b> f15725h = new HashMap();

    public final Map<String, d> f15726i = new HashMap();

    public final ConcurrentLinkedQueue<c> f15727j = new ConcurrentLinkedQueue<>();

    public final ExecutorService f15728k = Executors.newSingleThreadExecutor(new ThreadFactory() {
        @Override
        public final Thread newThread(Runnable runnable) {
            Thread x10;
            x10 = v.x(runnable);
            return x10;
        }
    });

    public final ArrayDeque<ByteBuffer> f15736s = new ArrayDeque<>();

    public final UpdateModule f15719b = new a();

    public class a extends UpdateModule {
        public a() {
        }

        @Override
        public String c() {
            return "ShaderGraphPreview";
        }

        @Override
        public void f() {
            v.this.D();
        }

        @Override
        public void h() {
            v.this.E();
        }
    }

    public static class b {

        public final long f15745a;

        public final Future<?> f15746b;

        public b(long graphStamp, Future<?> future) {
            this.f15745a = graphStamp;
            this.f15746b = future;
        }
    }

    public static class c {

        public final String f15747a;

        public final long f15748b;

        public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.n f15749c;

        public c(String nodeId, long graphStamp, com.itsmagic.engine.Engines.Graphics.ShaderGraph.n runtime) {
            this.f15747a = nodeId;
            this.f15748b = graphStamp;
            this.f15749c = runtime;
        }
    }

    public static class d {

        public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.n f15750a;

        public final long f15751b;

        public d(com.itsmagic.engine.Engines.Graphics.ShaderGraph.n runtime, long graphStamp) {
            this.f15750a = runtime;
            this.f15751b = graphStamp;
        }
    }

    public static class e {

        public Bitmap f15752a;

        public Bitmap f15753b;

        public e() {
        }

        public e(a aVar) {
            this();
        }
    }

    public static class f {

        public final Material f15754a;

        public final C12906d f15755b;

        public final long f15756c;

        public f(Material material, C12906d builded, long graphStamp) {
            this.f15754a = material;
            this.f15755b = builded;
            this.f15756c = graphStamp;
        }
    }

    public static class g {

        public final FilamentScene f15757a;

        public final FilamentView f15758b;

        public final FilamentCamera f15759c;

        public final Tb.a f15760d;

        public final FilamentSkybox f15761e;

        public final FilamentIndirectLight f15762f;

        public final FilamentLight f15763g;

        public g() {
            FilamentScene filamentScene = new FilamentScene();
            this.f15757a = filamentScene;
            FilamentSkybox filamentSkybox = new FilamentSkybox(new Skybox.a().b(0.0f, 0.0f, 0.0f, 0.0f));
            this.f15761e = filamentSkybox;
            filamentScene.v(filamentSkybox);
            FilamentIndirectLight filamentIndirectLight = new FilamentIndirectLight(new IndirectLight.a().c(1, new ColorINT("#ff9d9d9d").d0()).b(25000.0f), null);
            this.f15762f = filamentIndirectLight;
            filamentScene.u(filamentIndirectLight);
            FilamentView filamentView = new FilamentView();
            this.f15758b = filamentView;
            filamentView.C(filamentScene);
            filamentView.z(false);
            filamentView.w(View.d.OPAQUE);
            filamentView.D(0, 0, 64, 64);
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f15759c = filamentCamera;
            filamentView.x(filamentCamera);
            filamentScene.j(filamentCamera.f());
            this.f15760d = new Tb.a(64, 64);
            FilamentLight filamentLight = new FilamentLight(new LightManager.a(LightManager.d.SUN).e(0.0f, -1.0f, 0.0f).g(100000.0f).d(1.0f, 1.0f, 1.0f).c(false));
            this.f15763g = filamentLight;
            filamentScene.j(filamentLight.e());
        }

        public void a() {
            this.f15758b.F();
            this.f15758b.x(null);
            this.f15758b.C(null);
            this.f15757a.v(null);
            this.f15757a.u(null);
            this.f15757a.s(this.f15759c.f());
            this.f15757a.s(this.f15763g.e());
            this.f15760d.c();
            this.f15763g.destroyImmediate();
            this.f15763g.e().destroyImmediate();
            this.f15759c.destroyImmediate();
            this.f15758b.destroyImmediate();
            this.f15761e.destroyImmediate();
            this.f15762f.destroyImmediate();
            this.f15757a.destroyImmediate();
        }
    }

    public v(H graphView) {
        this.f15718a = graphView;
    }

    public static boolean u(Bitmap bitmap) {
        if (C15377a.f109719g.booleanValue()) {
            return false;
        }
        if (bitmap == null) {
            return true;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width > 0 && height > 0) {
            int i10 = width * height;
            int[] iArr = new int[i10];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            for (int i11 = 0; i11 < i10; i11++) {
                if (((iArr[i11] >> 24) & 255) != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    public static Thread x(Runnable runnable) {
        Thread thread = new Thread(runnable, "ShaderGraphPreviewCompile");
        thread.setPriority(1);
        return thread;
    }

    public final void A(ShaderGraphNode shaderGraphNode, String str, long j10) {
        try {
            com.itsmagic.engine.Engines.Graphics.ShaderGraph.n e10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.n.e(this.f15720c, shaderGraphNode);
            e10.h();
            this.f15727j.add(new c(str, j10, e10));
        } catch (Throwable unused) {
            this.f15727j.add(new c(str, j10, null));
        }
    }

    public final void B(Vector3 center, float distance) {
        float f10 = 1.5f * distance;
        if (f10 < 0.5f) {
            f10 = 0.5f;
        }
        double[] dArr = new double[16];
        float[] fArr = new float[16];
        float[] fArr2 = new float[16];
        float f11 = f10 * 4.0f;
        Matrix.perspectiveM(new float[16], 0, 90.0f, 1.0f, 0.1f, f11);
        for (int i10 = 0; i10 < 16; i10++) {
            dArr[i10] = r9[i10];
        }
        this.f15739v.f15759c.j(dArr, 0.1f, f11);
        Vector3 add = center.add(0.0f, 0.0f, -f10);
        add.rotateLocal(10.0f, 45.0f, 0.0f);
        Quaternion quaternion = new Quaternion();
        quaternion.v(10.0f, 45.0f, 0.0f);
        Vector3 p02 = quaternion.p0(Vector3.forward());
        p02.normalizeLocal();
        Matrix.setLookAtM(fArr, 0, add.getX(), add.getY(), add.getZ(), add.getX() + p02.getX(), add.getY() + p02.getY(), add.getZ() + p02.getZ(), 0.0f, 1.0f, 0.0f);
        Matrix.setIdentityM(fArr2, 0);
        Matrix.invertM(fArr2, 0, fArr, 0);
        for (int i11 = 0; i11 < 16; i11++) {
            dArr[i11] = fArr2[i11];
        }
        this.f15739v.f15759c.k(dArr);
    }

    public void C() {
        this.f15730m = System.currentTimeMillis();
    }

    public final void D() {
        g gVar;
        if (!v() || this.f15717A == null || this.f15737t || (gVar = this.f15739v) == null) {
            return;
        }
        this.f15737t = true;
        gVar.f15760d.a(gVar.f15758b);
        Qb.a.b(true, true);
        Qb.a.o(this.f15739v.f15758b);
        this.f15739v.f15760d.z();
        final p pVar = this.f15717A;
        ShaderGraphNode node = pVar.getNode();
        final String j10 = node != null ? node.j() : null;
        Bitmap s10 = j10 != null ? s(j10) : null;
        int[] iArr = this.f15735r;
        if (iArr == null || iArr.length != 4096) {
            this.f15735r = new int[4096];
        }
        final ByteBuffer h10 = h(16384);
        this.f15739v.f15760d.l().R0(this.f15739v.f15760d.r(), s10, this.f15735r, h10, new a.b() {
            @Override
            public final void on(Bitmap bitmap) {
                v.this.z(h10, j10, pVar, bitmap);
            }
        });
    }

    public final void E() {
        if (!v()) {
            M();
            return;
        }
        if (this.f15720c == null || this.f15718a == null || this.f15737t) {
            return;
        }
        Material material = this.f15721d;
        if (material == null || !material.J()) {
            int i10 = this.f15734q;
            if (i10 > 0) {
                this.f15734q = i10 - 1;
                return;
            }
            n();
            long currentTimeMillis = System.currentTimeMillis();
            long j10 = this.f15720c.f81297c;
            if (j10 > this.f15732o) {
                this.f15732o = j10;
                this.f15723f.clear();
                k();
                j();
                this.f15726i.clear();
                this.f15722e.clear();
                this.f15738u = true;
            }
            long j11 = this.f15720c.f81297c;
            long j12 = this.f15731n;
            boolean z10 = j11 > j12 || this.f15730m > j12;
            boolean z11 = currentTimeMillis - this.f15729l >= 1000;
            boolean z12 = currentTimeMillis - this.f15730m >= 450;
            if ((z10 || z11 || this.f15738u) && this.f15722e.isEmpty()) {
                G(this.f15718a.getNodeViews());
                this.f15731n = currentTimeMillis;
                this.f15738u = false;
            }
            if (this.f15717A != null || this.f15722e.isEmpty() || !z12 || currentTimeMillis - this.f15733p < 250) {
                return;
            }
            C14068e c10 = C14068e.c();
            p poll = this.f15722e.poll();
            this.f15717A = poll;
            this.f15733p = currentTimeMillis;
            F(poll != null ? poll.getNode() : null);
            c10.h("CREATING PREVIEW MATERIAL");
        }
    }

    public final void F(ShaderGraphNode node) {
        C12906d c12906d;
        if (node == null || this.f15720c == null || !node.y()) {
            return;
        }
        q();
        if (this.f15739v == null) {
            return;
        }
        try {
            f r10 = r(node);
            if (r10 != null && (c12906d = r10.f15755b) != null && c12906d.b() != null) {
                o(r10.f15755b.b(), node);
                if (this.f15741x != null) {
                    L();
                    return;
                }
                p pVar = this.f15717A;
                if (pVar != null) {
                    this.f15722e.addFirst(pVar);
                }
                this.f15717A = null;
                this.f15737t = false;
                return;
            }
            p pVar2 = this.f15717A;
            if (pVar2 != null) {
                this.f15722e.addLast(pVar2);
            }
            this.f15717A = null;
            this.f15737t = false;
            this.f15734q = 2;
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f15737t = false;
            this.f15717A = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0055, code lost:
    
        r2 = r7.f15725h.get(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void G(List<p> nodes) {
        ShaderGraphNode node;
        Future<?> future;
        this.f15722e.clear();
        if (nodes == null) {
            return;
        }
        for (p pVar : nodes) {
            if (pVar != null && (node = pVar.getNode()) != null && !node.z() && node.y()) {
                String j10 = node.j();
                b bVar = null;
                f fVar = j10 != null ? this.f15724g.get(j10) : null;
                if (j10 == null || fVar == null || fVar.f15756c != this.f15732o || !t(j10)) {
                    if (bVar == null || bVar.f15745a != this.f15732o || (future = bVar.f15746b) == null || future.isDone()) {
                        this.f15722e.add(pVar);
                    }
                }
            }
        }
    }

    public final void H(C12906d builded) {
        if (builded != null && (builded.k() instanceof ShaderGraphBinder)) {
            ShaderGraphBinder shaderGraphBinder = (ShaderGraphBinder) builded.k();
            shaderGraphBinder.d1(this.f15720c);
            shaderGraphBinder.V0();
        }
    }

    public final void I(ByteBuffer buffer) {
        if (buffer != null && buffer.isDirect() && this.f15736s.size() < 2) {
            this.f15736s.addLast(buffer);
        }
    }

    public final void J(final ShaderGraphNode node) {
        final String j10;
        Future<?> future;
        if (node == null || this.f15720c == null || (j10 = node.j()) == null) {
            return;
        }
        final long j11 = this.f15732o;
        b bVar = this.f15725h.get(j10);
        if (bVar == null || bVar.f15745a != j11 || (future = bVar.f15746b) == null || future.isDone()) {
            this.f15725h.put(j10, new b(j11, this.f15728k.submit(new Runnable() {
                @Override
                public final void run() {
                    v.this.A(node, j10, j11);
                }
            })));
        }
    }

    public final void K() {
        ShaderGraphData shaderGraphData = this.f15720c;
        this.f15732o = shaderGraphData != null ? shaderGraphData.f81297c : 0L;
        this.f15722e.clear();
        j();
        this.f15726i.clear();
        this.f15723f.clear();
        k();
        this.f15735r = null;
        this.f15736s.clear();
        this.f15717A = null;
        this.f15737t = false;
        this.f15743z = null;
        this.f15729l = 0L;
        this.f15733p = 0L;
    }

    public final void L() {
        Vertex vertex;
        if (this.f15739v != null && (vertex = this.f15742y) != null) {
            try {
                Vector3 m10 = vertex.d0().m();
                float radius = this.f15742y.d0().getRadius();
                if (radius <= 0.0f) {
                    radius = 0.5f;
                }
                B(m10, radius);
            } catch (Exception unused) {
            }
        }
    }

    public void M() {
        this.f15719b.b();
        m();
        this.f15722e.clear();
        j();
        this.f15726i.clear();
        this.f15723f.clear();
        k();
        this.f15717A = null;
        this.f15737t = false;
    }

    public final void N(String nodeId, Bitmap bitmap) {
        if (nodeId == null || bitmap == null) {
            return;
        }
        e eVar = this.f15723f.get(nodeId);
        if (eVar == null) {
            eVar = new e(null);
            this.f15723f.put(nodeId, eVar);
        }
        Bitmap bitmap2 = eVar.f15752a;
        eVar.f15752a = bitmap;
        eVar.f15753b = bitmap2;
    }

    public void O(List<p> nodes) {
        if (!v() || this.f15720c == null || nodes == null || nodes.isEmpty()) {
            return;
        }
        this.f15738u = true;
        p();
    }

    public final ByteBuffer h(int bytes) {
        ByteBuffer pollFirst = this.f15736s.pollFirst();
        if (pollFirst == null || !pollFirst.isDirect() || pollFirst.capacity() < bytes) {
            return ByteBuffer.allocateDirect(bytes).order(ByteOrder.nativeOrder());
        }
        pollFirst.clear();
        return pollFirst;
    }

    public void i(Material material, ShaderGraphData graphData) {
        this.f15721d = material;
        this.f15720c = graphData;
        if (!v()) {
            M();
        } else if (graphData == null) {
            M();
        } else {
            K();
            p();
        }
    }

    public final void j() {
        Future<?> future;
        if (!this.f15725h.isEmpty()) {
            for (b bVar : this.f15725h.values()) {
                if (bVar != null && (future = bVar.f15746b) != null) {
                    future.cancel(true);
                }
            }
            this.f15725h.clear();
        }
        this.f15727j.clear();
    }

    public final void k() {
        if (this.f15724g.isEmpty()) {
            return;
        }
        for (f fVar : this.f15724g.values()) {
            if (fVar != null && fVar.f15755b != null) {
                if (K8.a.r()) {
                    fVar.f15755b.a();
                } else {
                    final C12906d c12906d = fVar.f15755b;
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            C12906d.this.a();
                        }
                    });
                }
            }
        }
        this.f15724g.clear();
    }

    public final void l() {
        Rb.c cVar;
        g gVar = this.f15739v;
        if (gVar != null && (cVar = this.f15740w) != null) {
            gVar.f15757a.s(cVar);
        }
        FilamentRenderable filamentRenderable = this.f15741x;
        if (filamentRenderable != null) {
            filamentRenderable.destroyImmediate();
            this.f15741x = null;
        }
        Rb.c cVar2 = this.f15740w;
        if (cVar2 != null) {
            cVar2.destroyImmediate();
            this.f15740w = null;
        }
        this.f15742y = null;
    }

    public final void m() {
        Rb.c cVar;
        l();
        g gVar = this.f15739v;
        if (gVar != null && (cVar = this.f15740w) != null) {
            gVar.f15757a.s(cVar);
        }
        Rb.c cVar2 = this.f15740w;
        if (cVar2 != null) {
            cVar2.destroyImmediate();
            this.f15740w = null;
        }
        this.f15742y = null;
        this.f15743z = null;
        g gVar2 = this.f15739v;
        if (gVar2 != null) {
            gVar2.a();
            this.f15739v = null;
        }
    }

    public final void n() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.n nVar;
        boolean z10 = false;
        while (true) {
            c poll = this.f15727j.poll();
            if (poll == null) {
                break;
            }
            b bVar = this.f15725h.get(poll.f15747a);
            if (bVar != null && bVar.f15745a == poll.f15748b) {
                this.f15725h.remove(poll.f15747a);
            }
            long j10 = poll.f15748b;
            if (j10 == this.f15732o && (nVar = poll.f15749c) != null) {
                this.f15726i.put(poll.f15747a, new d(nVar, j10));
                z10 = true;
            }
        }
        if (z10) {
            this.f15738u = true;
        }
    }

    public final void o(FilamentMaterial filamentMaterial, ShaderGraphNode node) {
        if (this.f15739v == null || filamentMaterial == null || node == null) {
            return;
        }
        Vertex.v s10 = node.s();
        if (s10 == null) {
            s10 = Vertex.v.SPHERE;
        }
        FilamentRenderable filamentRenderable = this.f15741x;
        if (filamentRenderable != null && this.f15740w != null && this.f15742y != null && this.f15743z == s10) {
            filamentRenderable.setMaterialInstanceAt(0, filamentMaterial);
            return;
        }
        l();
        this.f15743z = s10;
        Vertex C12 = Vertex.C1(s10);
        this.f15742y = C12;
        if (C12 != null && !C12.x1() && !this.f15742y.u1()) {
            this.f15742y.apply();
        }
        Vertex vertex = this.f15742y;
        if (vertex == null || !vertex.x1() || this.f15742y.u1()) {
            return;
        }
        this.f15740w = new Rb.c();
        this.f15741x = new FilamentRenderable(new RenderableManager.a(1).f(false).d(false).y(false), filamentMaterial, this.f15740w, this.f15742y.f1(), this.f15742y.l0(), RenderableManager.b.TRIANGLES, this.f15742y.k0());
        TransformManager i10 = Qb.a.i();
        i10.b(this.f15740w.getId());
        int h10 = i10.h(this.f15740w.getId());
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        i10.u(h10, fArr);
        this.f15739v.f15757a.j(this.f15740w);
    }

    public final void p() {
        if (this.f15719b.d()) {
            return;
        }
        this.f15719b.a();
    }

    public final void q() {
        if (this.f15739v != null) {
            return;
        }
        this.f15739v = new g();
    }

    public final f r(ShaderGraphNode node) {
        String j10;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.n nVar;
        Material material;
        C12906d c12906d;
        C12906d c12906d2;
        if (node == null || (j10 = node.j()) == null) {
            return null;
        }
        f fVar = this.f15724g.get(j10);
        if (fVar != null && fVar.f15756c == this.f15732o && (c12906d2 = fVar.f15755b) != null && c12906d2.b() != null) {
            H(fVar.f15755b);
            return fVar;
        }
        if (fVar != null && (c12906d = fVar.f15755b) != null) {
            c12906d.a();
        }
        d dVar = this.f15726i.get(j10);
        if (dVar == null || dVar.f15751b != this.f15732o || (nVar = dVar.f15750a) == null) {
            J(node);
            return null;
        }
        if (fVar == null || (material = fVar.f15754a) == null) {
            material = new Material();
        }
        material.g0(com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.f81159a);
        material.f78885e = "_EDITOR/ShaderGraphPreview/" + j10;
        dc.j c10 = nVar.c(material);
        if (c10 == null || c10.b() == null) {
            return null;
        }
        material.f78884d = c10;
        H(c10);
        material.P();
        f fVar2 = new f(material, c10, this.f15732o);
        this.f15724g.put(j10, fVar2);
        return fVar2;
    }

    public Bitmap s(String nodeId) {
        e eVar;
        if (nodeId == null || (eVar = this.f15723f.get(nodeId)) == null) {
            return null;
        }
        return eVar.f15752a;
    }

    public boolean t(String nodeId) {
        e eVar = nodeId != null ? this.f15723f.get(nodeId) : null;
        return (eVar == null || eVar.f15752a == null) ? false : true;
    }

    public final boolean v() {
        EditorSettings.Settings a10 = EditorSettings.a();
        return a10 == null || a10.materialGraphPreviewsEnabled;
    }

    public final void z(ByteBuffer byteBuffer, String str, final p pVar, Bitmap bitmap) {
        I(byteBuffer);
        if (bitmap != null && str != null) {
            N(str, bitmap);
            final Bitmap s10 = s(str);
            if (s10 != null) {
                N7.c.j0(new Runnable() {
                    @Override
                    public final void run() {
                        p.this.setPreviewBitmap(s10);
                    }
                });
            }
        } else if (bitmap == null && str != null) {
            J4.d.b2("ShaderGraph preview bitmap is null for node: " + str);
        }
        this.f15729l = System.currentTimeMillis();
        this.f15737t = false;
        this.f15717A = null;
        this.f15734q = 10;
    }
}
