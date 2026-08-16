package com.itsmagic.engine.Engines.Engine.ComponentsV2.NavMesh;

import C5.b;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.GizmoObject;
import JAVARuntime.NavMesh;
import JAVARuntime.Order;
import Z6.g;
import android.content.Context;
import android.view.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.NavMesh.TilesLimitReachedException;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fa.C13200a;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteOrder;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import jn.A;
import jn.C13894k;
import jn.C13900q;
import jn.C13901s;
import jn.C13902t;
import jn.C13904v;
import jn.G;
import jn.L;
import jn.O;
import jn.P;
import jn.S;
import jn.T;
import jn.U;
import jn.y;
import s8.InterfaceC15237a;
import wn.C16035m;
import wn.u;

public class BakedNavMesh extends Component implements Serializable {

    public static final String f73828L = "BakedNavMesh";

    public static final Class f73829M = BakedNavMesh.class;

    public String f73830E;

    public final Object f73831F;

    public C13904v f73832G;

    public boolean f73833H;

    public final AtomicBoolean f73834I;

    public GizmoObject f73835J;

    public JAVARuntime.Component f73836K;

    @Order(idx = {0})
    @Expose
    @eb.f
    private float agentHeight;

    @Order(idx = {2})
    @Expose
    @eb.f
    private float agentMaxClimb;

    @Order(idx = {3})
    @Expose
    @eb.f
    private float agentMaxSlope;

    @Order(idx = {1})
    @Expose
    @eb.f
    private float agentWidth;

    @Expose
    private String bakeFile;

    @Order(idx = {8})
    @Expose
    @eb.f
    private float detailSampleDist;

    @Order(idx = {9})
    @Expose
    @eb.f
    private float detailSampleMaxError;

    @Order(idx = {7})
    @Expose
    @eb.f
    private float edgeMaxError;

    @Order(idx = {6})
    @Expose
    @eb.f
    private float edgeMaxLen;

    @Order(idx = {11})
    @Expose
    @eb.f
    private int maxPathFails;

    @Order(idx = {-1})
    @Expose
    @eb.f
    private int maxTiles;

    @Expose
    @eb.f
    private int nms_maxPolys;

    @Expose
    @eb.f
    private int nms_tileCount;

    @Order(idx = {5})
    @Expose
    @eb.f
    private int regionMergeSize;

    @Order(idx = {4})
    @Expose
    @eb.f
    private int regionMinSize;

    @Order(idx = {10})
    @Expose
    @eb.f
    private int tileSize;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.agentHeight + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.agentHeight = variable.float_value;
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.agentWidth + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.agentWidth = variable.float_value;
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.agentMaxClimb + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.agentMaxClimb = variable.float_value;
            }
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.agentMaxSlope + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.agentMaxSlope = variable.float_value;
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.regionMinSize + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.regionMinSize = variable.int_value;
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.regionMergeSize + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.regionMergeSize = variable.int_value;
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.edgeMaxLen + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.edgeMaxLen = variable.float_value;
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.edgeMaxError + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.edgeMaxError = variable.float_value;
            }
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.detailSampleDist + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.detailSampleDist = variable.float_value;
            }
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.detailSampleMaxError + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.detailSampleMaxError = variable.float_value;
            }
        }
    }

    public class k extends AbstractC13203c {
        @Override
        public Class b() {
            return BakedNavMesh.f73829M;
        }

        @Override
        public String c() {
            return BakedNavMesh.f73828L;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.NPC);
        }

        @Override
        public String f() {
            return BakedNavMesh.f73828L;
        }
    }

    public class l implements Runnable {

        public class a implements g.c {
            public a() {
            }

            @Override
            public void a(Z6.g dialog, FloatingPanelArea area) {
                BakedNavMesh.this.runBake(dialog);
            }
        }

        public l() {
        }

        @Override
        public void run() {
            Z6.g.s1("Baking navmesh", new a());
        }
    }

    public class m implements D5.h {
        public m() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.tileSize + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.tileSize = variable.int_value;
            }
        }
    }

    public class n implements D5.h {
        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.maxPathFails + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.maxPathFails = variable.int_value;
            }
        }
    }

    public class o implements Runnable {

        public final EditorPanel f73851b;

        public class a implements Consumer<GameObject> {

            public final xn.d f73853b;

            public a(final xn.d val$geom) {
                this.f73853b = val$geom;
            }

            @Override
            public void accept(GameObject gameObject) {
                com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c navMesh;
                xn.e a10;
                if (gameObject.isEnabled()) {
                    for (int i10 = 0; i10 < gameObject.N(); i10++) {
                        Component L10 = gameObject.L(i10);
                        if (L10.isEnabled() && (L10 instanceof Collider) && (navMesh = ((Collider) L10).getNavMesh()) != null && (a10 = navMesh.a()) != null) {
                            this.f73853b.e(a10);
                        }
                    }
                    gameObject.z0().forEach(this);
                }
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                Z6.i.y1("Ops!", "Limit of " + BakedNavMesh.this.maxTiles + " tiles has been reached, the NavMesh bake will be incomplete, you can increase limits in nav mesh settings!");
            }
        }

        public class c implements Runnable {

            public final C13904v f73856b;

            public final int f73857c;

            public final xn.d f73858d;

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    N7.c.v0(c.this.f73858d.g() + " colliders eligible for nav mesh.");
                    EditorPanel editorPanel = o.this.f73851b;
                    if (editorPanel != null) {
                        editorPanel.R0();
                    }
                }
            }

            public c(final C13904v val$navMesh, final int val$finalMaxPolys, final xn.d val$geom) {
                this.f73856b = val$navMesh;
                this.f73857c = val$finalMaxPolys;
                this.f73858d = val$geom;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("BakedNavMesh - save bake") : null;
                try {
                    BakedNavMesh.this.f73832G = this.f73856b;
                    BakedNavMesh.this.nms_tileCount = this.f73856b.N();
                    BakedNavMesh.this.nms_maxPolys = this.f73857c;
                    BakedNavMesh bakedNavMesh = BakedNavMesh.this;
                    bakedNavMesh.f73830E = bakedNavMesh.bakeFile;
                    N7.c.j0(new a());
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public class d implements Runnable {
            public d() {
            }

            @Override
            public void run() {
                EditorPanel editorPanel = o.this.f73851b;
                if (editorPanel != null) {
                    editorPanel.R0();
                }
            }
        }

        public class e implements Runnable {
            public e() {
            }

            @Override
            public void run() {
                EditorPanel editorPanel = o.this.f73851b;
                if (editorPanel != null) {
                    editorPanel.R0();
                }
            }
        }

        public class f implements Runnable {

            public final Exception f73863b;

            public f(final Exception val$e) {
                this.f73863b = val$e;
            }

            @Override
            public void run() {
                EditorPanel editorPanel = o.this.f73851b;
                if (editorPanel != null) {
                    editorPanel.R0();
                }
                Z6.i.y1("Ops!", this.f73863b.getMessage());
            }
        }

        public class g implements Runnable {
            public g() {
            }

            @Override
            public void run() {
                EditorPanel editorPanel = o.this.f73851b;
                if (editorPanel != null) {
                    editorPanel.R0();
                }
            }
        }

        public o(final EditorPanel val$dialog) {
            this.f73851b = val$dialog;
        }

        @Override
        public void run() {
            g gVar;
            C13900q c13900q;
            G[] gArr;
            try {
                try {
                    xn.d dVar = new xn.d();
                    World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
                    if (world != null) {
                        world.f80011b.forEach(new a(dVar));
                        if (dVar.g() > 0) {
                            dVar.f();
                            y yVar = new y();
                            BakedNavMesh.vCopy(yVar.f94387a, dVar.c());
                            yVar.f94388b = BakedNavMesh.this.tileSize * BakedNavMesh.this.getCellSize();
                            yVar.f94389c = BakedNavMesh.this.tileSize * BakedNavMesh.this.getCellSize();
                            yVar.f94390d = BakedNavMesh.this.maxTiles;
                            C13904v c13904v = new C13904v(yVar);
                            wn.t tVar = new wn.t(true, BakedNavMesh.this.tileSize, BakedNavMesh.this.tileSize, wn.t.a(BakedNavMesh.this.agentWidth / 2.0f, BakedNavMesh.this.getCellSize()), u.a.WATERSHED, BakedNavMesh.this.getCellSize(), BakedNavMesh.this.getCellHeight(), BakedNavMesh.this.agentMaxSlope, true, true, true, BakedNavMesh.this.agentHeight, BakedNavMesh.this.agentWidth / 2.0f, BakedNavMesh.this.agentMaxClimb, BakedNavMesh.this.getRegionMinArea(), BakedNavMesh.this.getRegionMergeArea(), BakedNavMesh.this.edgeMaxLen, BakedNavMesh.this.edgeMaxError, 3, true, BakedNavMesh.this.detailSampleDist, BakedNavMesh.this.detailSampleMaxError, P.f94214h);
                            T t10 = new T();
                            float[] c10 = dVar.c();
                            float[] d10 = dVar.d();
                            int[] c11 = C16035m.c(c10, d10, BakedNavMesh.this.getCellSize(), BakedNavMesh.this.tileSize, BakedNavMesh.this.tileSize);
                            int i10 = c11[0];
                            boolean z10 = true;
                            int i11 = c11[1];
                            int i12 = 0;
                            while (i12 < i10) {
                                int i13 = 0;
                                while (i13 < i11) {
                                    int i14 = i13;
                                    int i15 = i12;
                                    int i16 = i11;
                                    int i17 = i10;
                                    C13900q b10 = t10.b(dVar, new wn.q(tVar, c10, d10, i12, i14), BakedNavMesh.this.agentHeight, BakedNavMesh.this.agentWidth / 2.0f, BakedNavMesh.this.agentMaxClimb, i15, i14, false);
                                    if (b10 != null) {
                                        try {
                                            c13904v.c(b10, 0, 0L);
                                        } catch (TilesLimitReachedException unused) {
                                            BakedNavMesh.this.f73834I.set(true);
                                            J4.d.E1();
                                            J4.d.M1("Limit of " + BakedNavMesh.this.maxTiles + " tiles has been reached, the NavMesh bake will be incomplete, you can increase limits in nav mesh settings!");
                                            N7.c.j0(new b());
                                        }
                                    }
                                    i13 = i14 + 1;
                                    z10 = true;
                                    i10 = i17;
                                    i12 = i15;
                                    i11 = i16;
                                }
                                i12++;
                            }
                            int i18 = 0;
                            for (int i19 = 0; i19 < c13904v.x(); i19++) {
                                C13901s I10 = c13904v.I(i19);
                                if (I10 != null && (c13900q = I10.f94321c) != null && (gArr = c13900q.f94284c) != null) {
                                    i18 = Math.max(i18, gArr.length);
                                }
                            }
                            BakedNavMesh.this.saveNM(c13904v, c13904v.N(), i18);
                            BakedNavMesh.this.createGizmo(c13904v, c13904v.N(), i18);
                            K8.a.I(new c(c13904v, i18, dVar));
                        } else {
                            N7.c.v0("No colliders eligible for nav mesh.");
                            N7.c.j0(new d());
                        }
                    } else {
                        N7.c.j0(new e());
                    }
                    gVar = new g();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.j0(new f(e10));
                    gVar = new g();
                }
                N7.c.j0(gVar);
            } catch (Throwable th2) {
                N7.c.j0(new g());
                throw th2;
            }
        }
    }

    public class p implements L {
        public p() {
        }

        @Override
        public float a(float[] pa2, float[] pb2, long prevRef, C13901s prevTile, G prevPoly, long curRef, C13901s curTile, G curPoly, long nextRef, C13901s nextTile, G nextPoly) {
            return 0.0f;
        }

        @Override
        public boolean b(long ref, C13901s tile, G poly) {
            return true;
        }
    }

    public class q implements L {
        public q() {
        }

        @Override
        public float a(float[] pa2, float[] pb2, long prevRef, C13901s prevTile, G prevPoly, long curRef, C13901s curTile, G curPoly, long nextRef, C13901s nextTile, G nextPoly) {
            return 0.0f;
        }

        @Override
        public boolean b(long ref, C13901s tile, G poly) {
            return true;
        }
    }

    public class r implements Runnable {

        public final Vertex f73868b;

        public r(final Vertex val$gizmoVertex) {
            this.f73868b = val$gizmoVertex;
        }

        @Override
        public void run() {
            t6.e S12 = t6.j.J1() ? t6.j.S1("BakedNavMesh - create gizmo") : null;
            try {
                synchronized (BakedNavMesh.this.f73831F) {
                    BakedNavMesh.this.f73835J = new GizmoObject(this.f73868b.x2());
                    BakedNavMesh.this.f73835J.setDualFaceRender(true);
                    BakedNavMesh.this.f73835J.setColor(new ColorINT(116, 185, 255).e0());
                }
            } finally {
                t6.j.P1(S12);
            }
        }
    }

    public class s implements D5.b {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("BakedNavMesh - trigger bake") : null;
                try {
                    BakedNavMesh.this.f73833H = true;
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public s() {
        }

        @Override
        public void a(View view) {
            K8.a.I(new a());
        }
    }

    public class t implements D5.h {
        public t() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", BakedNavMesh.this.bakeFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.bakeFile = variable.str_value;
            }
        }
    }

    public class u implements D5.h {
        public u() {
        }

        @Override
        public Variable get() {
            return new Variable("", BakedNavMesh.this.maxTiles + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BakedNavMesh.this.maxTiles = variable.int_value;
            }
        }
    }

    static {
        C13201a.b(new k());
    }

    public BakedNavMesh() {
        super(f73828L);
        this.maxTiles = 1000;
        this.agentHeight = 1.0f;
        this.agentWidth = 0.6f;
        this.agentMaxClimb = 0.5f;
        this.agentMaxSlope = 45.0f;
        this.regionMinSize = 2;
        this.regionMergeSize = 5;
        this.edgeMaxLen = 12.0f;
        this.edgeMaxError = 1.3f;
        this.detailSampleDist = 6.0f;
        this.detailSampleMaxError = 1.0f;
        this.tileSize = 32;
        this.maxPathFails = 1000;
        this.nms_tileCount = 0;
        this.nms_maxPolys = 0;
        this.f73831F = new Object();
        this.f73833H = false;
        this.f73834I = new AtomicBoolean();
    }

    public void createGizmo(C13904v navMesh, int nms_tileCount, int maxPolys) {
        int i10 = 0;
        for (int i11 = 0; i11 < nms_tileCount; i11++) {
            C13900q c13900q = navMesh.I(i11).f94321c;
            if (c13900q != null && c13900q.f94284c != null) {
                int i12 = 0;
                while (true) {
                    G[] gArr = c13900q.f94284c;
                    if (i12 < gArr.length) {
                        i10 += gArr[i12].f94177b.length * 3;
                        i12++;
                    }
                }
            }
        }
        if (i10 > 0) {
            NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(i10);
            nativeFloatBuffer.position(0);
            for (int i13 = 0; i13 < nms_tileCount; i13++) {
                C13900q c13900q2 = navMesh.I(i13).f94321c;
                if (c13900q2 != null && c13900q2.f94284c != null) {
                    int i14 = 0;
                    while (true) {
                        G[] gArr2 = c13900q2.f94284c;
                        if (i14 < gArr2.length) {
                            for (int i15 : gArr2[i14].f94177b) {
                                int i16 = i15 * 3;
                                nativeFloatBuffer.put(c13900q2.f94283b[i16]);
                                nativeFloatBuffer.put(c13900q2.f94283b[i16 + 1] + 0.015f);
                                nativeFloatBuffer.put(c13900q2.f94283b[i16 + 2]);
                            }
                            i14++;
                        }
                    }
                }
            }
            NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(i10 / 3);
            for (int i17 = 0; i17 < nativeIntBuffer.capacity(); i17++) {
                nativeIntBuffer.set(i17, i17);
            }
            nativeFloatBuffer.position(0);
            nativeIntBuffer.position(0);
            Vertex vertex = new Vertex();
            vertex.q2(nativeFloatBuffer);
            vertex.i2(nativeIntBuffer);
            vertex.apply();
            K8.a.I(new r(vertex));
        }
    }

    private float[] getPolyCenter(C13904v navMesh, long polyRef) {
        O<U<C13901s, G>> J10 = navMesh.J(polyRef);
        if (!J10.j()) {
            return null;
        }
        U<C13901s, G> u10 = J10.f94204a;
        C13901s c13901s = u10.f94229a;
        G g10 = u10.f94230b;
        float[] fArr = c13901s.f94321c.f94283b;
        int i10 = g10.f94180e;
        float[] fArr2 = new float[3];
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = g10.f94177b[i11] * 3;
            fArr2[0] = fArr2[0] + fArr[i12];
            fArr2[1] = fArr2[1] + fArr[i12 + 1];
            fArr2[2] = fArr2[2] + fArr[i12 + 2];
        }
        float f10 = i10;
        fArr2[0] = fArr2[0] / f10;
        fArr2[1] = fArr2[1] / f10;
        fArr2[2] = fArr2[2] / f10;
        return fArr2;
    }

    private void loadFile() {
        InputStream o10;
        String str = this.bakeFile;
        if (str == null || str.isEmpty() || (o10 = X7.a.o(this.bakeFile)) == null) {
            return;
        }
        try {
            C13904v c10 = new pn.e().c(o10, 3);
            this.f73832G = c10;
            if (c10 == null) {
                y C10 = c10.C();
                C10.f94390d = this.nms_tileCount;
                C10.f94391e = this.nms_maxPolys;
                System.out.println("CARREGAMENTO DO DISCO FALHOU");
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public void runBake(EditorPanel dialog) {
        O9.b.d(new o(dialog));
    }

    public void saveNM(C13904v navMesh, int maxTiles, int maxPolys) {
        String str = this.bakeFile;
        if (str == null || str.isEmpty()) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.bakeFile);
            try {
                y C10 = navMesh.C();
                C10.f94390d = maxTiles;
                C10.f94391e = maxPolys;
                new pn.g().h(fileOutputStream, navMesh, ByteOrder.LITTLE_ENDIAN, true);
                fileOutputStream.close();
            } finally {
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static void vCopy(float[] out, float[] in2) {
        out[0] = in2[0];
        out[1] = in2[1];
        out[2] = in2[2];
    }

    @Override
    public int countAsync() {
        return 1;
    }

    public Vector3 findDirection(Vector3 from, Vector3 to) {
        if (this.f73832G == null) {
            return null;
        }
        A a10 = new A(this.f73832G, this.maxPathFails);
        p pVar = new p();
        if (from.distance(to) < 0.05f) {
            return null;
        }
        float[] fArr = {2.0f, 2.0f, 2.0f};
        float[] array = from.toArray();
        float[] array2 = to.toArray();
        O<C13894k> j10 = a10.j(array, fArr, pVar);
        O<C13894k> j11 = a10.j(array2, fArr, pVar);
        if (j10.j() && j11.j()) {
            long b10 = j10.f94204a.b();
            long b11 = j11.f94204a.b();
            if (this.f73832G.S(b10) && this.f73832G.S(b11)) {
                O<C13902t> L10 = a10.L(b10, j10.f94204a.a(), array2, pVar);
                if (L10.j()) {
                    Vector3 vector3 = new Vector3(L10.f94204a.a());
                    if (vector3.distance(from) > 0.01f) {
                        return vector3.sub(from).normalize();
                    }
                }
            }
        }
        return null;
    }

    public C13200a findEntirePath(Vector3 from, Vector3 to) {
        if (this.f73832G == null) {
            return null;
        }
        A a10 = new A(this.f73832G, this.maxPathFails);
        q qVar = new q();
        float[] array = from.toArray();
        float[] array2 = to.toArray();
        if (from.distance(to) < 0.05f) {
            return null;
        }
        float[] fArr = {0.5f, 1.0f, 0.5f};
        O<C13894k> j10 = a10.j(array, fArr, qVar);
        O<C13894k> j11 = a10.j(array2, fArr, qVar);
        C13894k c13894k = j10.f94204a;
        C13894k c13894k2 = j11.f94204a;
        float[] a11 = c13894k.a();
        float[] a12 = c13894k2.a();
        long b10 = c13894k.b();
        long b11 = c13894k2.b();
        if (this.f73832G.S(b10) && this.f73832G.S(b11)) {
            O<List<Long>> k10 = a10.k(b10, b11, a11, a12, qVar);
            if (k10.j()) {
                C13200a c13200a = new C13200a();
                List<Long> list = k10.f94204a;
                O<List<S>> t10 = a10.t(array, array2, list, list.size(), 2);
                if (t10.j()) {
                    List<S> list2 = t10.f94204a;
                    for (int i10 = 0; i10 < list2.size(); i10++) {
                        c13200a.a(new Vector3(list2.get(i10).b()));
                    }
                    return c13200a;
                }
            }
        }
        return null;
    }

    public void generateBake() {
        this.f73833H = true;
    }

    @InterfaceC15237a
    public float getAgentHeight() {
        return this.agentHeight;
    }

    @InterfaceC15237a
    public float getAgentMaxClimb() {
        return this.agentMaxClimb;
    }

    @InterfaceC15237a
    public float getAgentMaxSlope() {
        return this.agentMaxSlope;
    }

    @InterfaceC15237a
    public float getAgentWidth() {
        return this.agentWidth;
    }

    @InterfaceC15237a
    public float getCellHeight() {
        return this.agentMaxClimb * 0.6f;
    }

    @InterfaceC15237a
    public float getCellSize() {
        return this.agentWidth * 0.7f;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.bakeFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.bakeFile);
        }
        return c2632k;
    }

    @InterfaceC15237a
    public float getDetailSampleDist() {
        return this.detailSampleDist;
    }

    @InterfaceC15237a
    public float getDetailSampleMaxError() {
        return this.detailSampleMaxError;
    }

    @InterfaceC15237a
    public float getEdgeMaxError() {
        return this.edgeMaxError;
    }

    @InterfaceC15237a
    public float getEdgeMaxLen() {
        return this.edgeMaxLen;
    }

    public GizmoObject getGizmoObject() {
        GizmoObject gizmoObject;
        synchronized (this.f73831F) {
            gizmoObject = this.f73835J;
        }
        return gizmoObject;
    }

    @Override
    public int getIconResource() {
        return R.drawable.navigator;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_soundlistener;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new s(), "Bake", b.a.Button));
        linkedList.add(new C5.b(new t(), "Bake file", b.a.InputFile, ".nvmb"));
        u uVar = new u();
        b.a aVar = b.a.SLInt;
        C5.b bVar = new C5.b(uVar, "Max tiles", aVar);
        if (gameObject != null) {
            bVar.d(gameObject, this, "maxTiles", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
        }
        linkedList.add(bVar);
        a aVar2 = new a();
        b.a aVar3 = b.a.SLFloat;
        C5.b bVar2 = new C5.b(aVar2, "Agent height", aVar3);
        if (gameObject != null) {
            bVar2.d(gameObject, this, "agentHeight", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new b(), "Agent width", aVar3);
        if (gameObject != null) {
            bVar3.d(gameObject, this, "agentWidth", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new c(), "Agent max climb", aVar3);
        if (gameObject != null) {
            bVar4.d(gameObject, this, "agentMaxClimb", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar4);
        C5.b bVar5 = new C5.b(new d(), "Agent max slope", aVar3);
        if (gameObject != null) {
            bVar5.d(gameObject, this, "agentMaxSlope", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar5);
        C5.b bVar6 = new C5.b(new e(), "Region min size", aVar);
        if (gameObject != null) {
            bVar6.d(gameObject, this, "regionMinSize", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
        }
        linkedList.add(bVar6);
        C5.b bVar7 = new C5.b(new f(), "Region merge size", aVar);
        if (gameObject != null) {
            bVar7.d(gameObject, this, "regionMergeSize", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
        }
        linkedList.add(bVar7);
        C5.b bVar8 = new C5.b(new g(), "Edge max length", aVar3);
        if (gameObject != null) {
            bVar8.d(gameObject, this, "edgeMaxLen", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar8);
        C5.b bVar9 = new C5.b(new h(), "Edge max error", aVar3);
        if (gameObject != null) {
            bVar9.d(gameObject, this, "edgeMaxError", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar9);
        C5.b bVar10 = new C5.b(new i(), "Detail sample dist", aVar3);
        if (gameObject != null) {
            bVar10.d(gameObject, this, "detailSampleDist", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar10);
        C5.b bVar11 = new C5.b(new j(), "Detail sample max error", aVar3);
        if (gameObject != null) {
            bVar11.d(gameObject, this, "detailSampleMaxError", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar11);
        C5.b bVar12 = new C5.b(new m(), "Tile size", aVar);
        if (gameObject != null) {
            bVar12.d(gameObject, this, "tileSize", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
        }
        linkedList.add(bVar12);
        C5.b bVar13 = new C5.b(new n(), "Max path fails", aVar);
        if (gameObject != null) {
            bVar13.d(gameObject, this, "maxPathFails", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
        }
        linkedList.add(bVar13);
        return linkedList;
    }

    @InterfaceC15237a
    public int getMaxPathFails() {
        return this.maxPathFails;
    }

    @InterfaceC15237a
    public int getMaxTiles() {
        return this.maxTiles;
    }

    @InterfaceC15237a
    public float getRegionMergeArea() {
        int i10 = this.regionMergeSize;
        return i10 * i10 * getCellSize() * getCellSize();
    }

    @InterfaceC15237a
    public int getRegionMergeSize() {
        return this.regionMergeSize;
    }

    @InterfaceC15237a
    public float getRegionMinArea() {
        int i10 = this.regionMinSize;
        return i10 * i10 * getCellSize() * getCellSize();
    }

    @InterfaceC15237a
    public int getRegionMinSize() {
        return this.regionMinSize;
    }

    @InterfaceC15237a
    public int getTileSize() {
        return this.tileSize;
    }

    @Override
    public String getTitle() {
        return "NavMesh";
    }

    @Override
    public Component.e getType() {
        return Component.e.BakedNavMesh;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        String str = this.bakeFile;
        if (str != null && !str.isEmpty()) {
            listener.b("(" + this.f79250n.getName() + "),(NavMesh),(Loading),(" + this.bakeFile + ")");
            loadFile();
            this.f73830E = this.bakeFile;
        }
        listener.e();
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        String str = this.bakeFile;
        if (str != null && !str.isEmpty() && !this.bakeFile.equals(this.f73830E)) {
            loadFile();
            this.f73830E = this.bakeFile;
        }
        if (this.f73833H) {
            this.f73833H = false;
            N7.c.j0(new l());
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        C13904v c13904v;
        super.preUpdate(gameObject, isEditor);
        if (gameObject.b1()) {
            if (this.f73835J == null && (c13904v = this.f73832G) != null) {
                createGizmo(c13904v, this.nms_tileCount, this.nms_maxPolys);
            }
            renderGizmo();
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.bakeFile;
        if (str == null || str.isEmpty() || this.bakeFile.startsWith("@@ASSET@@") || (f10 = dictionary.f(this.bakeFile)) == null) {
            return;
        }
        dictionary.h("BakedNavMesh: REPLACING " + this.bakeFile + " TO " + f10.b());
        this.bakeFile = f10.b();
    }

    public void renderGizmo() {
        GizmoObject gizmoObject = getGizmoObject();
        if (gizmoObject != null) {
            gizmoObject.setUserPointer("nav mesh");
            Ub.a.a(gizmoObject);
        }
    }

    @InterfaceC15237a
    public void setAgentHeight(float agentHeight) {
        this.agentHeight = agentHeight;
    }

    @InterfaceC15237a
    public void setAgentMaxClimb(float agentMaxClimb) {
        this.agentMaxClimb = agentMaxClimb;
    }

    @InterfaceC15237a
    public void setAgentMaxSlope(float agentMaxSlope) {
        this.agentMaxSlope = agentMaxSlope;
    }

    @InterfaceC15237a
    public void setAgentWidth(float agentWidth) {
        this.agentWidth = agentWidth;
    }

    @InterfaceC15237a
    public void setDetailSampleDist(float detailSampleDist) {
        this.detailSampleDist = detailSampleDist;
    }

    @InterfaceC15237a
    public void setDetailSampleMaxError(float detailSampleMaxError) {
        this.detailSampleMaxError = detailSampleMaxError;
    }

    @InterfaceC15237a
    public void setEdgeMaxError(float edgeMaxError) {
        this.edgeMaxError = edgeMaxError;
    }

    @InterfaceC15237a
    public void setEdgeMaxLen(float edgeMaxLen) {
        this.edgeMaxLen = edgeMaxLen;
    }

    @InterfaceC15237a
    public void setMaxPathFails(int maxPathFails) {
        this.maxPathFails = maxPathFails;
    }

    @InterfaceC15237a
    public void setMaxTiles(int maxTiles) {
        this.maxTiles = maxTiles;
    }

    @InterfaceC15237a
    public void setRegionMergeSize(int regionMergeSize) {
        this.regionMergeSize = regionMergeSize;
    }

    @InterfaceC15237a
    public void setRegionMinSize(int regionMinSize) {
        this.regionMinSize = regionMinSize;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73836K = run;
    }

    @InterfaceC15237a
    public void setTileSize(int tileSize) {
        this.tileSize = tileSize;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73836K;
        if (component != null) {
            return component;
        }
        NavMesh navMesh = new NavMesh(this);
        this.f73836K = navMesh;
        return navMesh;
    }

    @Override
    public Component mo1248clone() {
        BakedNavMesh bakedNavMesh = new BakedNavMesh();
        bakedNavMesh.bakeFile = this.bakeFile;
        bakedNavMesh.maxTiles = this.maxTiles;
        bakedNavMesh.agentHeight = this.agentHeight;
        bakedNavMesh.agentWidth = this.agentWidth;
        bakedNavMesh.agentMaxClimb = this.agentMaxClimb;
        bakedNavMesh.agentMaxSlope = this.agentMaxSlope;
        bakedNavMesh.regionMinSize = this.regionMinSize;
        bakedNavMesh.regionMergeSize = this.regionMergeSize;
        bakedNavMesh.edgeMaxLen = this.edgeMaxLen;
        bakedNavMesh.edgeMaxError = this.edgeMaxError;
        bakedNavMesh.detailSampleDist = this.detailSampleDist;
        bakedNavMesh.detailSampleMaxError = this.detailSampleMaxError;
        bakedNavMesh.tileSize = this.tileSize;
        bakedNavMesh.nms_tileCount = this.nms_tileCount;
        bakedNavMesh.nms_maxPolys = this.nms_maxPolys;
        return bakedNavMesh;
    }

    public BakedNavMesh(C13201a componentDictionary) {
        super(f73828L);
        this.maxTiles = 1000;
        this.agentHeight = 1.0f;
        this.agentWidth = 0.6f;
        this.agentMaxClimb = 0.5f;
        this.agentMaxSlope = 45.0f;
        this.regionMinSize = 2;
        this.regionMergeSize = 5;
        this.edgeMaxLen = 12.0f;
        this.edgeMaxError = 1.3f;
        this.detailSampleDist = 6.0f;
        this.detailSampleMaxError = 1.0f;
        this.tileSize = 32;
        this.maxPathFails = 1000;
        this.nms_tileCount = 0;
        this.nms_maxPolys = 0;
        this.f73831F = new Object();
        this.f73833H = false;
        this.f73834I = new AtomicBoolean();
    }

    public BakedNavMesh(String bakeFile) {
        super(f73828L);
        this.maxTiles = 1000;
        this.agentHeight = 1.0f;
        this.agentWidth = 0.6f;
        this.agentMaxClimb = 0.5f;
        this.agentMaxSlope = 45.0f;
        this.regionMinSize = 2;
        this.regionMergeSize = 5;
        this.edgeMaxLen = 12.0f;
        this.edgeMaxError = 1.3f;
        this.detailSampleDist = 6.0f;
        this.detailSampleMaxError = 1.0f;
        this.tileSize = 32;
        this.maxPathFails = 1000;
        this.nms_tileCount = 0;
        this.nms_maxPolys = 0;
        this.f73831F = new Object();
        this.f73833H = false;
        this.f73834I = new AtomicBoolean();
        this.bakeFile = bakeFile;
    }
}
