package com.itsmagic.engine.Engines.Engine.ComponentsV2.Path;

import C5.b;
import F5.c;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ComponentUtils.BakeChildSuppressor;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.LevelComponents.ModelTerrainLevel;
import com.itsmagic.engine.Engines.Engine.Native.MeshBakeNative;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvComponentReference;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import f9.C13198b;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import ib.C13600g;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import y9.C16154b;

public class MeshCurve extends Component {

    public static final Class f74197D5 = MeshCurve.class;

    public static final String f74198H4 = "MeshCurve";

    public final Vector3 f74199D0;

    public final Vector3 f74200D2;

    public s f74201D3;

    public boolean f74202D4;

    public CurvePath f74203E;

    public int f74204F;

    public final Vector3 f74205F1;

    public final Quaternion f74206F2;

    public boolean f74207F3;

    public JAVARuntime.Component f74208F4;

    public volatile boolean f74209G;

    public final Object f74210H;

    public final Vector3 f74211H1;

    public final Quaternion f74212H2;

    public n f74213H3;

    public Vertex f74214I;

    public Vertex f74215J;

    public boolean f74216K;

    public boolean f74217L;

    public final Vector3 f74218L1;

    public final Vector3 f74219L2;

    public final List<ModelRenderer> f74220M;

    public final Vector3 f74221M1;

    public final Vector3 f74222M2;

    public r f74223M3;

    public final Map<ModelRenderer, Integer> f74224N;

    public final Map<ModelRenderer, Integer> f74225O;

    public final Map<String, Vertex> f74226P;

    public final Map<String, Vertex> f74227Q;

    public final Map<String, ModelRenderer> f74228R;

    public final Vector3 f74229R1;

    public final Vector3 f74230R2;

    public final List<ModelRenderer> f74231S;

    public boolean f74232T;

    public volatile boolean f74233U;

    public NativeFloatBuffer f74234V;

    public final Vector3 f74235V1;

    public final Vector3 f74236V2;

    public int f74237W;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f74238X;

    public final float[] f74239Y;

    public final Object f74240Z;

    public final Vector3 f74241b1;

    public final Vector3 f74242b2;

    @Expose
    @eb.f
    private n bakeMode;

    @Expose
    @eb.f
    private float curveQuality;

    @Expose
    @eb.f
    private o deformMode;

    @Expose
    @eb.f
    private boolean fitCurveV2;

    @Expose
    @eb.f
    private p forwardAxis;

    public final Vector3 f74243i1;

    public final Vector3 f74244i2;

    public float f74245i3;

    @Expose
    @eb.f
    private q levelMode;

    public final Vector3 f74246m1;

    public final Vector3 f74247m2;

    public float f74248m3;

    public float f74249m4;

    @Expose
    @eb.f
    private Vector3 offset;

    @Expose
    private AdvComponentReference pathController;

    public final Vector3 f74250q0;

    public final Vector3 f74251q1;

    public final Vector3 f74252q2;

    public float f74253q3;

    @Expose
    @eb.f
    private Vector3 scale;

    @Expose
    @eb.f
    private float simplifyAngle;

    @Expose
    @eb.f
    private float spacing;

    @Expose
    @eb.f
    private r spacingMode;

    @Expose
    @eb.f
    private float spacingPadding;

    @Expose
    @eb.f
    private float startOffset;

    @Expose
    @eb.f
    private s upMode;

    public final Vector3 f74254v0;

    public final Vector3 f74255v1;

    public final Vector3 f74256v2;

    public p f74257v3;

    public o f74258v4;

    public final Vector3 f74259y1;

    public class a extends c.n0<n> {
        public a() {
        }

        @Override
        public void set(n value) {
            if (value != null) {
                MeshCurve.this.bakeMode = value;
                MeshCurve.this.f74202D4 = false;
            }
        }
    }

    public class b extends c.n0<p> {
        public b() {
        }

        @Override
        public void set(p value) {
            if (value != null) {
                MeshCurve.this.forwardAxis = value;
                MeshCurve.this.f74216K = true;
            }
        }
    }

    public class c extends c.n0<s> {
        public c() {
        }

        @Override
        public void set(s value) {
            if (value != null) {
                MeshCurve.this.upMode = value;
                MeshCurve.this.f74216K = true;
            }
        }
    }

    public class d extends c.n0<q> {

        public class a implements Runnable {

            public final q f74264b;

            public a(final q val$value) {
                this.f74264b = val$value;
            }

            @Override
            public void run() {
                MeshCurve.this.setLevelMode(this.f74264b);
            }
        }

        public d() {
        }

        @Override
        public void set(q value) {
            if (value != null) {
                K8.a.I(new a(value));
            }
        }
    }

    public class e extends AbstractC13203c {
        @Override
        public Class b() {
            return MeshCurve.f74197D5;
        }

        @Override
        public String c() {
            return MeshCurve.f74198H4;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return MeshCurve.f74198H4;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            MeshCurve.this.f74233U = false;
            MeshCurve.this.applyBakedOutputOnEngine();
        }
    }

    public class g implements Runnable {

        public final GameObject f74267b;

        public g(final GameObject val$pathParent) {
            this.f74267b = val$pathParent;
        }

        @Override
        public void run() {
            MeshCurve.this.f74209G = false;
            GameObject gameObject = MeshCurve.this.f79250n;
            if (gameObject == null || gameObject.isGarbage() || this.f74267b.isGarbage()) {
                return;
            }
            CurvePath curvePath = (CurvePath) this.f74267b.d0(CurvePath.class);
            if (curvePath == null) {
                curvePath = new CurvePath();
                this.f74267b.r(curvePath);
            }
            MeshCurve.this.f74203E = curvePath;
            MeshCurve.this.pathController = new AdvComponentReference(curvePath);
            MeshCurve.this.pathController.i(MeshCurve.this.f79250n);
            MeshCurve.this.pathController.j();
            MeshCurve.this.f74216K = true;
        }
    }

    public class h implements D5.k {
        public h() {
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public GameObject get() {
            CurvePath pathController = MeshCurve.this.getPathController();
            if (pathController != null) {
                return pathController.f79250n;
            }
            return null;
        }

        @Override
        public String getExtraTittle() {
            return " (" + Lang.l(Lang.T.OBJECT) + ")";
        }

        @Override
        public GameObject getParent() {
            return null;
        }

        @Override
        public void set(GameObject object) {
            CurvePath curvePath;
            if (object != null) {
                curvePath = (CurvePath) object.d0(CurvePath.class);
                if (curvePath == null) {
                    curvePath = MeshCurve.this.findCurvePathInChildren(object);
                }
            } else {
                curvePath = null;
            }
            if (curvePath != null) {
                MeshCurve.this.f74203E = curvePath;
                MeshCurve.this.pathController = new AdvComponentReference(curvePath);
            } else {
                MeshCurve.this.f74203E = null;
                MeshCurve.this.pathController = new AdvComponentReference();
            }
            MeshCurve.this.pathController.i(MeshCurve.this.f79250n);
            MeshCurve.this.pathController.j();
            MeshCurve.this.f74204F = -1;
            MeshCurve.this.f74216K = true;
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", Nc.b.M(0.1f, MeshCurve.this.curveQuality) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                MeshCurve.this.curveQuality = Nc.b.M(0.1f, variable.float_value);
            }
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", Nc.b.M(0.01f, MeshCurve.this.spacing) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                MeshCurve.this.spacing = Nc.b.M(0.01f, variable.float_value);
            }
        }
    }

    public class k extends c.n0<r> {
        public k() {
        }

        @Override
        public void set(r value) {
            if (value != null) {
                MeshCurve.this.spacingMode = value;
                MeshCurve.this.f74216K = true;
            }
        }
    }

    public class l extends c.n0<o> {
        public l() {
        }

        @Override
        public void set(o value) {
            if (value != null) {
                MeshCurve.this.deformMode = value;
                MeshCurve.this.f74216K = true;
            }
        }
    }

    public class m implements D5.h {
        public m() {
        }

        @Override
        public Variable get() {
            return new Variable("", Nc.b.M(0.0f, MeshCurve.this.spacingPadding) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                MeshCurve.this.spacingPadding = Nc.b.M(0.0f, variable.float_value);
            }
        }
    }

    public enum n {
        Dynamic,
        Static
    }

    public enum o {
        None,
        Curve
    }

    public enum p {
        X,
        Y,
        Z
    }

    public enum q {
        StickToTerrain,
        LevelTerrain
    }

    public enum r {
        Bounds,
        WorldUnits
    }

    public enum s {
        AlignToCurve,
        FixX,
        FixY,
        FixZ
    }

    static {
        C13201a.b(new e());
    }

    public MeshCurve() {
        super(f74198H4);
        this.curveQuality = 2.0f;
        this.simplifyAngle = 0.0f;
        this.spacing = 1.0f;
        this.spacingMode = r.Bounds;
        this.spacingPadding = 0.0f;
        this.deformMode = o.Curve;
        this.startOffset = 0.0f;
        this.offset = new Vector3(0.0f, 0.0f, 0.0f);
        this.scale = new Vector3(1.0f, 1.0f, 1.0f);
        this.forwardAxis = p.Z;
        this.upMode = s.FixY;
        this.fitCurveV2 = false;
        this.bakeMode = n.Dynamic;
        this.levelMode = q.StickToTerrain;
        this.pathController = new AdvComponentReference();
        this.f74204F = -1;
        this.f74210H = new Object();
        this.f74220M = new SteppedArrayList();
        this.f74224N = new HashMap();
        this.f74225O = new HashMap();
        this.f74226P = new HashMap();
        this.f74227Q = new HashMap();
        this.f74228R = new HashMap();
        this.f74231S = new SteppedArrayList();
        this.f74237W = 0;
        this.f74238X = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f74239Y = new float[16];
        this.f74240Z = new Object();
        this.f74250q0 = new Vector3();
        this.f74254v0 = new Vector3();
        this.f74199D0 = new Vector3();
        this.f74241b1 = new Vector3();
        this.f74243i1 = new Vector3();
        this.f74246m1 = new Vector3();
        this.f74251q1 = new Vector3();
        this.f74255v1 = new Vector3();
        this.f74259y1 = new Vector3();
        this.f74205F1 = new Vector3();
        this.f74211H1 = new Vector3();
        this.f74218L1 = new Vector3();
        this.f74221M1 = new Vector3();
        this.f74229R1 = new Vector3();
        this.f74235V1 = new Vector3();
        this.f74242b2 = new Vector3();
        this.f74244i2 = new Vector3();
        this.f74247m2 = new Vector3();
        this.f74252q2 = new Vector3();
        this.f74256v2 = new Vector3();
        this.f74200D2 = new Vector3();
        this.f74206F2 = new Quaternion();
        this.f74212H2 = new Quaternion();
        this.f74219L2 = new Vector3();
        this.f74222M2 = new Vector3();
        this.f74230R2 = new Vector3();
        this.f74236V2 = new Vector3();
        this.f74245i3 = -1.0f;
        this.f74248m3 = -1.0f;
        this.f74253q3 = -1.0f;
        this.f74257v3 = null;
        this.f74201D3 = null;
        this.f74207F3 = false;
        this.f74213H3 = null;
        this.f74223M3 = null;
        this.f74249m4 = -1.0f;
        this.f74258v4 = null;
        this.f74202D4 = false;
    }

    public void applyBakedOutputOnEngine() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.isGarbage()) {
            return;
        }
        normalizeRootTransform();
        synchronized (this.f74240Z) {
            try {
                if (this.f74232T && !this.f74227Q.isEmpty()) {
                    generateModelRenderers();
                    generateCollider();
                    if (!this.f74202D4 && this.bakeMode == n.Static && c8.b.k()) {
                        clearChildrenAfterBake();
                        destroyComponent();
                        this.f74202D4 = true;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        updateBakeSuppressor();
    }

    private void applyLevelTerrain() {
        if (this.levelMode == q.LevelTerrain) {
            if (this.f79250n.d0(ModelTerrainLevel.class) == null) {
                this.f79250n.r(new ModelTerrainLevel());
            }
        } else {
            Component d02 = this.f79250n.d0(ModelTerrainLevel.class);
            if (d02 != null) {
                d02.setEnabled(false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x012a, code lost:
    
        if (r1 < 1.0f) goto L76;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x024e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0196  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void bakeMeshAlongCurve() {
        float f10;
        float f11;
        o oVar;
        o oVar2;
        float f12;
        float f13;
        int countInstances;
        float f14;
        float abs;
        HashMap hashMap;
        boolean z10;
        Vertex b10;
        Vertex b11;
        int ordinal;
        this.f74232T = false;
        synchronized (this.f74210H) {
            try {
                Vertex vertex = this.f74214I;
                if (vertex == null) {
                    return;
                }
                HashMap hashMap2 = new HashMap(this.f74226P);
                CurvePath pathController = getPathController();
                if (pathController == null) {
                    return;
                }
                pathController.setStickToTerrain(this.levelMode == q.StickToTerrain);
                List<C16154b> path = pathController.getPath();
                if (path == null || path.size() < 2) {
                    return;
                }
                try {
                    int size = path.size();
                    SteppedArrayList steppedArrayList = new SteppedArrayList(size);
                    for (int i10 = 0; i10 < size; i10++) {
                        steppedArrayList.add(path.get(i10));
                    }
                    int size2 = steppedArrayList.size();
                    if (size2 < 2) {
                        return;
                    }
                    float boundsSizeAlongForwardAxis = getBoundsSizeAlongForwardAxis(vertex);
                    if (boundsSizeAlongForwardAxis <= 1.0E-4f) {
                        boundsSizeAlongForwardAxis = 1.0f;
                    }
                    float scaleAlongForwardAxis = getScaleAlongForwardAxis();
                    float M10 = Nc.b.M(0.0f, this.spacingPadding) + (this.spacingMode == r.WorldUnits ? Nc.b.M(0.01f, this.spacing) : Nc.b.M(0.01f, this.spacing) * boundsSizeAlongForwardAxis * scaleAlongForwardAxis);
                    float M11 = Nc.b.M(0.0f, this.startOffset) * boundsSizeAlongForwardAxis * scaleAlongForwardAxis;
                    float minBoundsAlongForwardAxis = getMinBoundsAlongForwardAxis(vertex) * scaleAlongForwardAxis;
                    float maxBoundsAlongForwardAxis = getMaxBoundsAlongForwardAxis(vertex) * scaleAlongForwardAxis;
                    float abs2 = Math.abs(maxBoundsAlongForwardAxis - minBoundsAlongForwardAxis);
                    float pathLength = getPathLength(steppedArrayList);
                    if (abs2 <= 1.0E-4f || pathLength <= 1.0E-4f) {
                        return;
                    }
                    List<PointReference> pointReferencesSnapshot = pathController.getPointReferencesSnapshot();
                    if (pointReferencesSnapshot.size() >= 2) {
                        Vector3 vector3 = pointReferencesSnapshot.get(0).f74313e;
                        Vector3 vector32 = pointReferencesSnapshot.get(pointReferencesSnapshot.size() - 1).f74313e;
                        f10 = getPathDistanceAtPosition(steppedArrayList, vector3);
                        float pathDistanceAtPosition = getPathDistanceAtPosition(steppedArrayList, vector32);
                        if (!Float.isNaN(f10) && !Float.isNaN(pathDistanceAtPosition) && pathDistanceAtPosition > f10) {
                            pathLength = pathDistanceAtPosition;
                            f11 = pathLength - f10;
                            if (f11 <= 1.0E-4f && f11 - M11 > 1.0E-4f) {
                                oVar = this.deformMode;
                                oVar2 = o.Curve;
                                if (oVar != oVar2) {
                                    f12 = f10 + M11;
                                    f13 = pathLength - abs2;
                                } else {
                                    f12 = (f10 - minBoundsAlongForwardAxis) + M11;
                                    f13 = pathLength - maxBoundsAlongForwardAxis;
                                }
                                if (f13 < 0.0f && (countInstances = countInstances(steppedArrayList, M10, f12, f13)) > 0) {
                                    if (this.fitCurveV2) {
                                        float f15 = (pathLength - f12) - ((countInstances - 1) * M10);
                                        if (f15 <= 1.0E-4f) {
                                            return;
                                        } else {
                                            f14 = f15 / abs2;
                                        }
                                    }
                                    f14 = 1.0f;
                                    float f16 = maxBoundsAlongForwardAxis * f14;
                                    abs = this.deformMode != oVar2 ? pathLength - Math.abs(f16 - (minBoundsAlongForwardAxis * f14)) : pathLength - f16;
                                    if (abs < 0.0f && countInstances > 0) {
                                        this.f74222M2.set(this.scale);
                                        if (this.fitCurveV2 && f14 != 1.0f) {
                                            ordinal = this.forwardAxis.ordinal();
                                            if (ordinal != 0) {
                                                this.f74222M2.setX(this.scale.getX() * f14);
                                            } else if (ordinal != 1) {
                                                this.f74222M2.setZ(this.scale.getZ() * f14);
                                            } else {
                                                this.f74222M2.setY(this.scale.getY() * f14);
                                            }
                                        }
                                        HashMap hashMap3 = new HashMap(hashMap2.size());
                                        if (this.deformMode != oVar2) {
                                            NativeFloatBuffer buildPathDataBuffer = buildPathDataBuffer(steppedArrayList);
                                            if (buildPathDataBuffer == null) {
                                                return;
                                            }
                                            b10 = MeshBakeNative.a(vertex, buildPathDataBuffer, size2, M10, f12, countInstances, this.forwardAxis, this.f74222M2, this.offset);
                                            Iterator it = hashMap2.entrySet().iterator();
                                            while (it.hasNext()) {
                                                Map.Entry entry = (Map.Entry) it.next();
                                                Vertex vertex2 = (Vertex) entry.getValue();
                                                if (vertex2 != null) {
                                                    Vertex a10 = MeshBakeNative.a(vertex2, buildPathDataBuffer, size2, M10, f12, countInstances, this.forwardAxis, this.f74222M2, this.offset);
                                                    if (a10 != null) {
                                                        hashMap3.put((String) entry.getKey(), a10);
                                                    }
                                                }
                                            }
                                            hashMap = hashMap3;
                                            z10 = true;
                                        } else {
                                            NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(countInstances * 16);
                                            hashMap = hashMap3;
                                            z10 = true;
                                            int fillInstanceMatrices = fillInstanceMatrices(steppedArrayList, M10, f12, abs, nativeFloatBuffer, this.f74222M2, countInstances);
                                            if (fillInstanceMatrices <= 0) {
                                                return;
                                            }
                                            b10 = MeshBakeNative.b(vertex, nativeFloatBuffer, fillInstanceMatrices);
                                            Iterator it2 = hashMap2.entrySet().iterator();
                                            while (it2.hasNext()) {
                                                Map.Entry entry2 = (Map.Entry) it2.next();
                                                Vertex vertex3 = (Vertex) entry2.getValue();
                                                if (vertex3 != null && (b11 = MeshBakeNative.b(vertex3, nativeFloatBuffer, fillInstanceMatrices)) != null) {
                                                    hashMap.put((String) entry2.getKey(), b11);
                                                }
                                            }
                                        }
                                        synchronized (this.f74240Z) {
                                            this.f74227Q.clear();
                                            this.f74227Q.putAll(hashMap);
                                            this.f74215J = b10;
                                            this.f74232T = this.f74227Q.isEmpty() ^ z10;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                    }
                    f10 = 0.0f;
                    f11 = pathLength - f10;
                    if (f11 <= 1.0E-4f) {
                        return;
                    }
                    oVar = this.deformMode;
                    oVar2 = o.Curve;
                    if (oVar != oVar2) {
                    }
                    if (f13 < 0.0f) {
                        return;
                    }
                    if (this.fitCurveV2) {
                    }
                    f14 = 1.0f;
                    float f162 = maxBoundsAlongForwardAxis * f14;
                    if (this.deformMode != oVar2) {
                    }
                    if (abs < 0.0f) {
                        return;
                    }
                    this.f74222M2.set(this.scale);
                    if (this.fitCurveV2) {
                        ordinal = this.forwardAxis.ordinal();
                        if (ordinal != 0) {
                        }
                    }
                    HashMap hashMap32 = new HashMap(hashMap2.size());
                    if (this.deformMode != oVar2) {
                    }
                    synchronized (this.f74240Z) {
                    }
                } catch (RuntimeException unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static MeshCurve buildDefault(GameObject gameObject) {
        MeshCurve meshCurve = new MeshCurve();
        com.itsmagic.engine.Engines.Engine.World.b.f(new GameObject("Mesh", new Transform()), gameObject);
        GameObject gameObject2 = new GameObject("Points", new Transform());
        com.itsmagic.engine.Engines.Engine.World.b.f(gameObject2, gameObject);
        gameObject2.r(new CurvePath());
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new Vector3(0.0f, 0.0f, 0.0f));
        steppedArrayList.add(new Vector3(0.0f, 0.0f, 10.0f));
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            GameObject gameObject3 = new GameObject("Point " + i10, new Transform());
            com.itsmagic.engine.Engines.Engine.World.b.f(gameObject3, gameObject2);
            gameObject3.r(new PathPoint());
            gameObject3.transform.p3((Vector3) steppedArrayList.get(i10));
        }
        return meshCurve;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private NativeFloatBuffer buildPathDataBuffer(List<C16154b> path) {
        float f10;
        if (path == null || path.size() < 2) {
            return null;
        }
        int size = path.size() * 13;
        if (this.f74234V == null || this.f74237W != size) {
            this.f74234V = new NativeFloatBuffer(size);
            this.f74237W = size;
        }
        NativeFloatBuffer nativeFloatBuffer = this.f74234V;
        Vector3 vector3 = this.f74250q0;
        Vector3 vector32 = this.f74254v0;
        Vector3 vector33 = this.f74199D0;
        Vector3 vector34 = this.f74241b1;
        Vector3 vector35 = this.f74243i1;
        Vector3 vector36 = this.f74246m1;
        Vector3 vector37 = this.f74251q1;
        Vector3 vector38 = this.f74255v1;
        float f11 = 0.0f;
        for (int i10 = 0; i10 < path.size(); i10++) {
            C16154b c16154b = path.get(i10);
            if (c16154b == null || c16154b.c() == null) {
                return null;
            }
            vector32.set(c16154b.c());
            if (i10 > 0) {
                f11 += vector32.distance(vector3);
            }
            Vector3 a10 = c16154b.a();
            if (a10 != null && a10.lengthSquared() > 1.0E-8f) {
                vector33.set(a10).normalizeLocal();
            } else if (i10 < path.size() - 1) {
                C16154b c16154b2 = path.get(i10 + 1);
                Vector3 c10 = c16154b2 != null ? c16154b2.c() : null;
                if (c10 != null) {
                    vector38.set(c10).subLocal(vector32);
                    f10 = 0.0f;
                    if (vector38.lengthSquared() <= 1.0E-8f) {
                        vector38.set(f10, f10, 1.0f);
                    }
                    vector33.set(vector38).normalizeLocal();
                } else {
                    f10 = 0.0f;
                    vector38.set(0.0f, 0.0f, 1.0f);
                    if (vector38.lengthSquared() <= 1.0E-8f) {
                    }
                    vector33.set(vector38).normalizeLocal();
                }
            } else {
                f10 = 0.0f;
                if (i10 > 0) {
                    vector38.set(vector32).subLocal(vector3);
                    f10 = 0.0f;
                    if (vector38.lengthSquared() <= 1.0E-8f) {
                    }
                    vector33.set(vector38).normalizeLocal();
                } else {
                    vector38.set(0.0f, 0.0f, 1.0f);
                    if (vector38.lengthSquared() <= 1.0E-8f) {
                    }
                    vector33.set(vector38).normalizeLocal();
                }
            }
            resolveUpAndRight(c16154b, vector33, vector34, vector35);
            if (i10 > 0 && vector36.lengthSquared() > 1.0E-8f) {
                if (vector35.dot(vector36) < 0.0f) {
                    vector35.negateLocal();
                    vector34.negateLocal();
                }
            }
            vector36.set(vector35);
            vector37.set(vector34);
            int i11 = i10 * 13;
            nativeFloatBuffer.set(i11, vector32.getX());
            nativeFloatBuffer.set(i11 + 1, vector32.getY());
            nativeFloatBuffer.set(i11 + 2, vector32.getZ());
            nativeFloatBuffer.set(i11 + 3, vector33.getX());
            nativeFloatBuffer.set(i11 + 4, vector33.getY());
            nativeFloatBuffer.set(i11 + 5, vector33.getZ());
            nativeFloatBuffer.set(i11 + 6, vector34.getX());
            nativeFloatBuffer.set(i11 + 7, vector34.getY());
            nativeFloatBuffer.set(i11 + 8, vector34.getZ());
            nativeFloatBuffer.set(i11 + 9, vector35.getX());
            nativeFloatBuffer.set(i11 + 10, vector35.getY());
            nativeFloatBuffer.set(i11 + 11, vector35.getZ());
            nativeFloatBuffer.set(i11 + 12, f11);
            vector3.set(vector32);
        }
        return nativeFloatBuffer;
    }

    private void clearChildrenAfterBake() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return;
        }
        for (int D10 = gameObject.D() - 1; D10 >= 0; D10--) {
            GameObject C10 = this.f79250n.C(D10);
            if (C10 != null) {
                C13317e.j(C10);
            }
        }
    }

    private int countInstances(List<C16154b> path, float safeSpacing, float safeStartOffset, float maxStart) {
        Vector3 vector3 = this.f74259y1;
        Vector3 vector32 = this.f74205F1;
        float f10 = 0.0f;
        int i10 = 0;
        int i11 = 0;
        while (i10 < path.size() - 1) {
            C16154b c16154b = path.get(i10);
            i10++;
            C16154b c16154b2 = path.get(i10);
            vector3.set(c16154b.c());
            vector32.set(c16154b2.c());
            float distance = vector3.distance(vector32);
            if (distance > 1.0E-4f) {
                while (true) {
                    float f11 = f10 + distance;
                    if (f11 < safeStartOffset) {
                        f10 = f11;
                        break;
                    }
                    if (safeStartOffset > maxStart) {
                        return i11;
                    }
                    i11++;
                    safeStartOffset += safeSpacing;
                }
            }
        }
        return i11;
    }

    private int fillInstanceMatrices(List<C16154b> path, float safeSpacing, float safeStartOffset, float maxStart, NativeFloatBuffer matrices, Vector3 scaleForBake, int maxInstances) {
        int i10;
        Vector3 vector3;
        Quaternion quaternion;
        float[] fArr;
        com.itsmagic.engine.Engines.Engine.Vector.f fVar;
        Vector3 vector32;
        Vector3 vector33;
        MeshCurve meshCurve = this;
        List<C16154b> list = path;
        Vector3 vector34 = meshCurve.f74221M1;
        Vector3 vector35 = meshCurve.f74229R1;
        Vector3 vector36 = meshCurve.f74235V1;
        Vector3 vector37 = meshCurve.f74242b2;
        Vector3 vector38 = meshCurve.f74244i2;
        Vector3 vector39 = meshCurve.f74247m2;
        Vector3 vector310 = meshCurve.f74252q2;
        Vector3 vector311 = meshCurve.f74256v2;
        Vector3 vector312 = meshCurve.f74200D2;
        Quaternion quaternion2 = meshCurve.f74206F2;
        Quaternion quaternion3 = meshCurve.f74212H2;
        com.itsmagic.engine.Engines.Engine.Vector.f fVar2 = meshCurve.f74238X;
        float[] fArr2 = meshCurve.f74239Y;
        meshCurve.getForwardAxisAdjust(meshCurve.forwardAxis, quaternion3);
        float f10 = safeStartOffset;
        int i11 = 0;
        int i12 = 0;
        float f11 = 0.0f;
        while (true) {
            float[] fArr3 = fArr2;
            com.itsmagic.engine.Engines.Engine.Vector.f fVar3 = fVar2;
            if (i11 >= path.size() - 1) {
                return i12;
            }
            C16154b c16154b = list.get(i11);
            int i13 = i11 + 1;
            C16154b c16154b2 = list.get(i13);
            vector34.set(c16154b.c());
            vector35.set(c16154b2.c());
            float distance = vector34.distance(vector35);
            if (distance <= 1.0E-4f) {
                vector3 = vector36;
                i10 = i13;
                fArr = fArr3;
                fVar = fVar3;
                vector32 = vector34;
                vector33 = vector35;
                quaternion = quaternion3;
            } else {
                i10 = i13;
                int i14 = i12;
                int i15 = maxInstances;
                while (i14 < i15 && f11 + distance >= f10) {
                    if (f10 > maxStart) {
                        return i14;
                    }
                    float f12 = (f10 - f11) / distance;
                    vector39.set(vector34);
                    vector39.lerpLocal(vector35, f12);
                    float f13 = distance;
                    Vector3 a10 = c16154b.a();
                    Quaternion quaternion4 = quaternion3;
                    Vector3 a11 = c16154b2.a();
                    if (a10 == null || a11 == null || a10.lengthSquared() <= 1.0E-8f || a11.lengthSquared() <= 1.0E-8f) {
                        vector36.set(vector35).subLocal(vector34).normalizeLocal();
                    } else {
                        vector36.set(a10);
                        vector36.lerpLocal(a11, f12);
                        vector36.normalizeLocal();
                    }
                    meshCurve.resolveUpAndRight(c16154b, vector36, vector37, vector38);
                    if (i14 > 0 && vector311.lengthSquared() > 1.0E-8f) {
                        if (vector38.dot(vector311) < 0.0f) {
                            vector38.negateLocal();
                            vector37.negateLocal();
                        }
                    }
                    vector311.set(vector38);
                    vector312.set(vector37);
                    vector310.set(vector38).mulLocal(meshCurve.offset.getX());
                    vector310.addLocal(vector37.mulLocal(meshCurve.offset.getY()));
                    vector310.addLocal(vector36.mulLocal(meshCurve.offset.getZ()));
                    vector39.addLocal(vector310);
                    quaternion2.C0();
                    quaternion2.c0(vector36, vector37, true, true);
                    quaternion2.i0(quaternion4);
                    com.itsmagic.engine.Engines.Engine.Vector.f fVar4 = fVar3;
                    fVar4.Z0(vector39, quaternion2, scaleForBake);
                    float[] fArr4 = fArr3;
                    fVar4.o(fArr4);
                    int i16 = i14 * 16;
                    Vector3 vector313 = vector34;
                    Vector3 vector314 = vector35;
                    int i17 = 0;
                    while (i17 < 16) {
                        matrices.set(i16 + i17, fArr4[i17]);
                        i17++;
                        vector36 = vector36;
                        fArr4 = fArr4;
                    }
                    float[] fArr5 = fArr4;
                    i14++;
                    f10 += safeSpacing;
                    meshCurve = this;
                    quaternion3 = quaternion4;
                    vector34 = vector313;
                    vector35 = vector314;
                    fArr3 = fArr5;
                    i15 = maxInstances;
                    fVar3 = fVar4;
                    distance = f13;
                }
                vector3 = vector36;
                quaternion = quaternion3;
                float f14 = distance;
                fArr = fArr3;
                fVar = fVar3;
                vector32 = vector34;
                vector33 = vector35;
                f11 += f14;
                i12 = i14;
            }
            meshCurve = this;
            list = path;
            fVar2 = fVar;
            quaternion3 = quaternion;
            vector34 = vector32;
            vector35 = vector33;
            i11 = i10;
            vector36 = vector3;
            fArr2 = fArr;
        }
    }

    public CurvePath findCurvePathInChildren(GameObject root) {
        if (root == null) {
            return null;
        }
        CurvePath curvePath = (CurvePath) root.d0(CurvePath.class);
        if (curvePath != null) {
            return curvePath;
        }
        for (int i10 = 0; i10 < root.D(); i10++) {
            CurvePath findCurvePathInChildren = findCurvePathInChildren(root.C(i10));
            if (findCurvePathInChildren != null) {
                return findCurvePathInChildren;
            }
        }
        return null;
    }

    private GameObject findPathPointParent(GameObject root) {
        if (root == null) {
            return null;
        }
        PathPoint pathPoint = (PathPoint) root.d0(PathPoint.class);
        if (pathPoint != null && pathPoint.isEnabled()) {
            GameObject H02 = root.H0();
            return H02 != null ? H02 : root;
        }
        for (int i10 = 0; i10 < root.D(); i10++) {
            GameObject findPathPointParent = findPathPointParent(root.C(i10));
            if (findPathPointParent != null) {
                return findPathPointParent;
            }
        }
        return null;
    }

    private void generateCollider() {
        if (this.f74215J == null) {
            return;
        }
        Collider collider = (Collider) this.f79250n.c0(Component.e.Collider);
        if (collider == null) {
            collider = new Collider();
            this.f79250n.r(collider);
        }
        Collider.o shape = collider.getShape();
        Collider.o oVar = Collider.o.Model;
        if (shape == oVar && collider.getCollisionVertex() == this.f74215J) {
            return;
        }
        collider.shape = oVar;
        collider.setVertex(this.f74215J);
    }

    private void generateModelRenderers() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (Map.Entry<String, Vertex> entry : this.f74227Q.entrySet()) {
            String key = entry.getKey();
            Vertex value = entry.getValue();
            if (value != null) {
                String materialFileFromKey = getMaterialFileFromKey(key);
                ModelRenderer orCreateOutputRenderer = getOrCreateOutputRenderer(key, materialFileFromKey);
                if (orCreateOutputRenderer.getVertex() != value) {
                    orCreateOutputRenderer.setModel(value);
                }
                if (materialFileFromKey != null && !materialFileFromKey.isEmpty() && !materialFileFromKey.equals(orCreateOutputRenderer.getMaterialFile())) {
                    orCreateOutputRenderer.setMaterialFile(materialFileFromKey);
                }
                orCreateOutputRenderer.setEnabled(true);
                steppedArrayList.add(orCreateOutputRenderer);
            }
        }
        removeUnusedOutputRenderers(steppedArrayList);
    }

    private float getBoundsSizeAlongForwardAxis(Vertex vertex) {
        AABB d02 = vertex.d0();
        if (d02 == null) {
            return 0.0f;
        }
        int ordinal = this.forwardAxis.ordinal();
        return ordinal != 0 ? ordinal != 1 ? Math.abs(d02.y() - d02.D()) : Math.abs(d02.x() - d02.C()) : Math.abs(d02.w() - d02.B());
    }

    private float getEndCapDistance() {
        Vertex vertex = this.f74214I;
        if (vertex != null) {
            float boundsSizeAlongForwardAxis = getBoundsSizeAlongForwardAxis(vertex);
            if (boundsSizeAlongForwardAxis > 1.0E-4f) {
                return boundsSizeAlongForwardAxis * getScaleAlongForwardAxis();
            }
        }
        return 1.0f;
    }

    private void getForwardAxisAdjust(p axis, Quaternion out) {
        out.C0();
        int ordinal = axis.ordinal();
        if (ordinal == 0) {
            out.v(0.0f, -90.0f, 0.0f);
        } else if (ordinal != 1) {
            out.C0();
        } else {
            out.v(90.0f, 0.0f, 0.0f);
        }
    }

    private String getMaterialFileFromKey(String key) {
        if ("__NULL__".equals(key)) {
            return null;
        }
        return key;
    }

    private String getMaterialKey(ModelRenderer mr) {
        String materialFile = mr.getMaterialFile();
        return (materialFile == null || materialFile.isEmpty()) ? "__NULL__" : materialFile;
    }

    private float getMaxBoundsAlongForwardAxis(Vertex vertex) {
        AABB d02 = vertex.d0();
        if (d02 == null) {
            return 0.0f;
        }
        int ordinal = this.forwardAxis.ordinal();
        return ordinal != 0 ? ordinal != 1 ? d02.y() : d02.x() : d02.w();
    }

    private float getMinBoundsAlongForwardAxis(Vertex vertex) {
        AABB d02 = vertex.d0();
        if (d02 == null) {
            return 0.0f;
        }
        int ordinal = this.forwardAxis.ordinal();
        return ordinal != 0 ? ordinal != 1 ? d02.D() : d02.C() : d02.B();
    }

    private ModelRenderer getOrCreateOutputRenderer(String key, String materialFile) {
        ModelRenderer modelRenderer;
        GameObject gameObject;
        ModelRenderer modelRenderer2 = this.f74228R.get(key);
        if (modelRenderer2 != null && ((gameObject = modelRenderer2.f79250n) == null || gameObject != this.f79250n)) {
            this.f74228R.remove(key);
            this.f74231S.remove(modelRenderer2);
            modelRenderer2 = null;
        }
        if (modelRenderer2 != null) {
            return modelRenderer2;
        }
        if (this.f74231S.isEmpty() && (modelRenderer = (ModelRenderer) this.f79250n.c0(Component.e.ModelRenderer)) != null && modelRenderer.getVertex() == null) {
            modelRenderer2 = modelRenderer;
        }
        if (modelRenderer2 == null) {
            modelRenderer2 = new ModelRenderer();
            this.f79250n.r(modelRenderer2);
        }
        this.f74231S.add(modelRenderer2);
        this.f74228R.put(key, modelRenderer2);
        if (materialFile != null && !materialFile.isEmpty()) {
            modelRenderer2.setMaterialFile(materialFile);
        }
        return modelRenderer2;
    }

    public CurvePath getPathController() {
        CurvePath curvePath = this.f74203E;
        if (curvePath != null) {
            GameObject gameObject = curvePath.f79250n;
            if (gameObject != null && C13317e.J(gameObject)) {
                return this.f74203E;
            }
            this.f74203E = null;
        }
        return resolvePathController();
    }

    private float getPathDistanceAtPosition(List<C16154b> path, Vector3 target) {
        float f10 = Float.NaN;
        if (path != null && path.size() >= 2 && target != null) {
            Vector3 vector3 = this.f74259y1;
            Vector3 vector32 = this.f74205F1;
            Vector3 vector33 = this.f74211H1;
            Vector3 vector34 = this.f74218L1;
            float f11 = Float.MAX_VALUE;
            int i10 = 0;
            float f12 = 0.0f;
            while (i10 < path.size() - 1) {
                C16154b c16154b = path.get(i10);
                i10++;
                C16154b c16154b2 = path.get(i10);
                if (c16154b != null && c16154b2 != null) {
                    vector3.set(c16154b.c());
                    vector32.set(c16154b2.c());
                    vector33.set(vector32).subLocal(vector3);
                    float lengthSquared = vector33.lengthSquared();
                    if (lengthSquared > 1.0E-6f) {
                        vector34.set(target).subLocal(vector3);
                        float dot = vector34.dot(vector33) / lengthSquared;
                        if (dot < 0.0f) {
                            dot = 0.0f;
                        } else if (dot > 1.0f) {
                            dot = 1.0f;
                        }
                        float x10 = vector3.getX() + (vector33.getX() * dot);
                        float y10 = vector3.getY() + (vector33.getY() * dot);
                        float z10 = vector3.getZ() + (vector33.getZ() * dot);
                        float x11 = target.getX() - x10;
                        float y11 = target.getY() - y10;
                        float z11 = target.getZ() - z10;
                        float f13 = (x11 * x11) + (y11 * y11) + (z11 * z11);
                        float sqrt = (float) Math.sqrt(lengthSquared);
                        if (f13 < f11) {
                            f10 = f12 + (dot * sqrt);
                            f11 = f13;
                        }
                        f12 += sqrt;
                    }
                }
            }
        }
        return f10;
    }

    private float getPathLength(List<C16154b> path) {
        Vector3 c10;
        float f10 = 0.0f;
        if (path != null && path.size() >= 2) {
            Vector3 vector3 = this.f74259y1;
            Vector3 vector32 = this.f74205F1;
            boolean z10 = false;
            for (int i10 = 0; i10 < path.size(); i10++) {
                C16154b c16154b = path.get(i10);
                if (c16154b != null && (c10 = c16154b.c()) != null) {
                    if (z10) {
                        vector32.set(c10);
                        float distance = vector3.distance(vector32);
                        if (distance > 1.0E-4f) {
                            f10 += distance;
                        }
                        vector3.set(vector32);
                    } else {
                        vector3.set(c10);
                        z10 = true;
                    }
                }
            }
        }
        return f10;
    }

    private float getScaleAlongForwardAxis() {
        int ordinal = this.forwardAxis.ordinal();
        return ordinal != 0 ? ordinal != 1 ? Math.abs(this.scale.getZ()) : Math.abs(this.scale.getY()) : Math.abs(this.scale.getX());
    }

    private void normalizeRootTransform() {
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.transform.G3();
            this.f79250n.transform.setScale(1.0f);
        }
    }

    private boolean refreshAppliedSettings() {
        boolean z10;
        float f10 = this.f74253q3;
        float f11 = this.simplifyAngle;
        if (f10 != f11) {
            this.f74253q3 = f11;
            z10 = true;
        } else {
            z10 = false;
        }
        float f12 = this.f74245i3;
        float f13 = this.spacing;
        if (f12 != f13) {
            this.f74245i3 = f13;
            z10 = true;
        }
        r rVar = this.f74223M3;
        r rVar2 = this.spacingMode;
        if (rVar != rVar2) {
            this.f74223M3 = rVar2;
            z10 = true;
        }
        float f14 = this.f74249m4;
        float f15 = this.spacingPadding;
        if (f14 != f15) {
            this.f74249m4 = f15;
            z10 = true;
        }
        o oVar = this.f74258v4;
        o oVar2 = this.deformMode;
        if (oVar != oVar2) {
            this.f74258v4 = oVar2;
            z10 = true;
        }
        float f16 = this.f74248m3;
        float f17 = this.startOffset;
        if (f16 != f17) {
            this.f74248m3 = f17;
            z10 = true;
        }
        if (!this.f74230R2.equally(this.offset)) {
            this.f74230R2.set(this.offset);
            z10 = true;
        }
        if (!this.f74236V2.equally(this.scale)) {
            this.f74236V2.set(this.scale);
            z10 = true;
        }
        p pVar = this.f74257v3;
        p pVar2 = this.forwardAxis;
        if (pVar != pVar2) {
            this.f74257v3 = pVar2;
            z10 = true;
        }
        s sVar = this.f74201D3;
        s sVar2 = this.upMode;
        if (sVar != sVar2) {
            this.f74201D3 = sVar2;
            z10 = true;
        }
        boolean z11 = this.f74207F3;
        boolean z12 = this.fitCurveV2;
        if (z11 != z12) {
            this.f74207F3 = z12;
            z10 = true;
        }
        n nVar = this.f74213H3;
        n nVar2 = this.bakeMode;
        if (nVar == nVar2) {
            return z10;
        }
        this.f74213H3 = nVar2;
        this.f74202D4 = false;
        return true;
    }

    private boolean refreshBaseMeshSnapshot() {
        if (this.f79250n == null) {
            return false;
        }
        int size = this.f74220M.size();
        this.f74220M.clear();
        for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
            searchMeshesOnChild(this.f79250n.C(i10));
        }
        if (size != this.f74220M.size()) {
            this.f74217L = true;
        }
        return updateBaseMeshFromChildren();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void refreshPathControllerSettings() {
        float f10;
        CurvePath resolvePathController;
        Vertex vertex = this.f74214I;
        if (vertex != null) {
            float boundsSizeAlongForwardAxis = getBoundsSizeAlongForwardAxis(vertex);
            if (boundsSizeAlongForwardAxis > 1.0E-4f) {
                f10 = boundsSizeAlongForwardAxis * getScaleAlongForwardAxis();
                float M10 = Nc.b.M(0.1f, f10 / this.curveQuality);
                resolvePathController = resolvePathController();
                if (resolvePathController == null) {
                    resolvePathController.setUsageRoot(this.f79250n);
                    resolvePathController.setResolution(M10);
                    resolvePathController.setSimplifyAngle(this.simplifyAngle);
                    resolvePathController.setEndCapDistance(getEndCapDistance());
                    return;
                }
                return;
            }
        }
        f10 = 1.0f;
        float M102 = Nc.b.M(0.1f, f10 / this.curveQuality);
        resolvePathController = resolvePathController();
        if (resolvePathController == null) {
        }
    }

    private boolean refreshPathVersion() {
        CurvePath pathController = getPathController();
        if (pathController == null) {
            this.f74204F = -1;
            return false;
        }
        int pathVersion = pathController.getPathVersion();
        if (pathVersion == this.f74204F) {
            return false;
        }
        this.f74204F = pathVersion;
        return true;
    }

    private void removeUnusedOutputRenderers(List<ModelRenderer> usedRenderers) {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return;
        }
        List<Component> n02 = gameObject.n0(Component.e.ModelRenderer);
        for (int size = n02.size() - 1; size >= 0; size--) {
            Component component = n02.get(size);
            if (component instanceof ModelRenderer) {
                ModelRenderer modelRenderer = (ModelRenderer) component;
                if (!usedRenderers.contains(modelRenderer)) {
                    this.f79250n.v1(modelRenderer, true);
                    this.f74231S.remove(modelRenderer);
                }
            }
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (Map.Entry<String, ModelRenderer> entry : this.f74228R.entrySet()) {
            ModelRenderer value = entry.getValue();
            if (value == null || value.f79250n != this.f79250n || !usedRenderers.contains(value)) {
                steppedArrayList.add(entry.getKey());
            }
        }
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            this.f74228R.remove(steppedArrayList.get(i10));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CurvePath resolvePathController() {
        CurvePath curvePath;
        GameObject gameObject;
        GameObject findPathPointParent;
        GameObject gameObject2;
        if (this.pathController == null) {
            this.pathController = new AdvComponentReference();
        }
        AdvComponentReference advComponentReference = this.pathController;
        if (advComponentReference != null) {
            advComponentReference.i(this.f79250n);
            Component g10 = this.pathController.g();
            if ((g10 instanceof CurvePath) && C13317e.J(g10.f79250n)) {
                curvePath = (CurvePath) g10;
                if (curvePath == null && (gameObject2 = this.f79250n) != null) {
                    curvePath = findCurvePathInChildren(gameObject2);
                }
                if (curvePath == null && (gameObject = this.f79250n) != null && (findPathPointParent = findPathPointParent(gameObject)) != null && (curvePath = (CurvePath) findPathPointParent.d0(CurvePath.class)) == null) {
                    if (K8.a.r()) {
                        schedulePathControllerCreation(findPathPointParent);
                    } else {
                        curvePath = new CurvePath();
                        findPathPointParent.r(curvePath);
                    }
                }
                if (curvePath != null) {
                    this.f74203E = curvePath;
                    AdvComponentReference advComponentReference2 = new AdvComponentReference(curvePath);
                    this.pathController = advComponentReference2;
                    advComponentReference2.i(this.f79250n);
                    this.pathController.j();
                }
                return curvePath;
            }
        }
        curvePath = null;
        if (curvePath == null) {
            curvePath = findCurvePathInChildren(gameObject2);
        }
        if (curvePath == null) {
            if (K8.a.r()) {
            }
        }
        if (curvePath != null) {
        }
        return curvePath;
    }

    private void resolveUpAndRight(C16154b a10, Vector3 dir, Vector3 up, Vector3 right) {
        s sVar = this.upMode;
        if (sVar == s.AlignToCurve) {
            Vector3 d10 = a10.d();
            if (d10 == null || d10.lengthSquared() <= 1.0E-8f) {
                up.set(0.0f, 1.0f, 0.0f);
            } else {
                up.set(d10).normalizeLocal();
            }
        } else {
            int ordinal = sVar.ordinal();
            if (ordinal == 1) {
                up.set(1.0f, 0.0f, 0.0f);
            } else if (ordinal == 2) {
                up.set(0.0f, 1.0f, 0.0f);
            } else if (ordinal != 3) {
                up.set(0.0f, 1.0f, 0.0f);
            } else {
                up.set(0.0f, 0.0f, 1.0f);
            }
        }
        if (Math.abs(dir.dot(up)) > 0.999f) {
            up.set(0.0f, 1.0f, 0.0f);
            if (Math.abs(dir.dot(up)) > 0.999f) {
                up.set(1.0f, 0.0f, 0.0f);
            }
        }
        right.set(up).crossLocal(dir).normalizeLocal();
        up.set(dir).crossLocal(right).normalizeLocal();
    }

    private void scheduleApplyBakedOutput() {
        if (this.f74233U) {
            return;
        }
        this.f74233U = true;
        K8.a.I(new f());
    }

    private void schedulePathControllerCreation(final GameObject pathParent) {
        if (pathParent == null || this.f74209G) {
            return;
        }
        this.f74209G = true;
        K8.a.I(new g(pathParent));
    }

    private void searchMeshesOnChild(GameObject gameObject) {
        if (gameObject.isEnabled()) {
            ModelRenderer modelRenderer = (ModelRenderer) gameObject.c0(Component.e.ModelRenderer);
            if (modelRenderer != null && modelRenderer.isEnabled() && modelRenderer.getVertex() != null && modelRenderer.f79250n != this.f79250n) {
                this.f74220M.add(modelRenderer);
            }
            for (int i10 = 0; i10 < gameObject.D(); i10++) {
                searchMeshesOnChild(gameObject.C(i10));
            }
        }
    }

    private void updateBakeSuppressor() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return;
        }
        BakeChildSuppressor bakeChildSuppressor = (BakeChildSuppressor) gameObject.c0(Component.e.BakeChildSuppressor);
        if (!this.f74232T) {
            if (bakeChildSuppressor == null || !bakeChildSuppressor.isEnabled()) {
                return;
            }
            bakeChildSuppressor.setEnabled(false);
            return;
        }
        if (bakeChildSuppressor == null) {
            bakeChildSuppressor = new BakeChildSuppressor();
            this.f79250n.r(bakeChildSuppressor);
        }
        if (bakeChildSuppressor.isEnabled()) {
            return;
        }
        bakeChildSuppressor.setEnabled(true);
    }

    private boolean updateBaseMeshFromChildren() {
        boolean z10 = this.f74217L || this.f74214I == null;
        for (int i10 = 0; i10 < this.f74220M.size(); i10++) {
            ModelRenderer modelRenderer = this.f74220M.get(i10);
            if (modelRenderer != null && modelRenderer.getVertex() != null) {
                Integer num = this.f74224N.get(modelRenderer);
                if (num == null || modelRenderer.f73752K != num.intValue()) {
                    z10 = true;
                }
                Integer num2 = this.f74225O.get(modelRenderer);
                if (num2 == null || modelRenderer.getVertex().f0() != num2.intValue()) {
                    z10 = true;
                }
            }
        }
        if (!z10) {
            return false;
        }
        this.f74217L = false;
        this.f74224N.clear();
        this.f74225O.clear();
        if (this.f74220M.isEmpty()) {
            synchronized (this.f74210H) {
                this.f74214I = null;
                this.f74226P.clear();
            }
            return true;
        }
        com.itsmagic.engine.Engines.Engine.Vector.f a10 = C13600g.a(this.f79250n);
        a10.E();
        SteppedArrayList steppedArrayList = new SteppedArrayList(this.f74220M.size());
        HashMap hashMap = new HashMap();
        for (int i11 = 0; i11 < this.f74220M.size(); i11++) {
            ModelRenderer modelRenderer2 = this.f74220M.get(i11);
            if (modelRenderer2 != null && modelRenderer2.getVertex() != null) {
                MeshBakeNative.a aVar = new MeshBakeNative.a(modelRenderer2.getVertex(), a10.K(C13600g.a(modelRenderer2.f79250n)));
                steppedArrayList.add(aVar);
                String materialKey = getMaterialKey(modelRenderer2);
                Collection collection = (List) hashMap.get(materialKey);
                if (collection == null) {
                    collection = new SteppedArrayList();
                    hashMap.put(materialKey, collection);
                }
                collection.add(aVar);
                this.f74224N.put(modelRenderer2, Integer.valueOf(modelRenderer2.f73752K));
                this.f74225O.put(modelRenderer2, Integer.valueOf(modelRenderer2.getVertex().f0()));
            }
        }
        Vertex c10 = MeshBakeNative.c(steppedArrayList);
        HashMap hashMap2 = new HashMap();
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Vertex c11 = MeshBakeNative.c((List) entry.getValue());
            if (c11 != null) {
                hashMap2.put((String) entry.getKey(), c11);
            }
        }
        synchronized (this.f74210H) {
            this.f74214I = c10;
            this.f74226P.clear();
            this.f74226P.putAll(hashMap2);
        }
        return true;
    }

    public n getBakeMode() {
        return this.bakeMode;
    }

    public float getCurveQuality() {
        return this.curveQuality;
    }

    public o getDeformMode() {
        return this.deformMode;
    }

    @Override
    public String getDisplayableTitle() {
        return f74198H4;
    }

    public p getForwardAxis() {
        return this.forwardAxis;
    }

    @Override
    public int getIconResource() {
        return R.drawable.road;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_terrain;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new h(), "Path Controller"));
        i iVar = new i();
        String l10 = Lang.l(Lang.T.QUALITY);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b((D5.h) iVar, l10, aVar, false);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar.d(gameObject, this, "Curve quality", cVar));
        linkedList.add(new C5.b((D5.h) new j(), this.spacingMode == r.WorldUnits ? "Spacing (World Units)" : "Spacing (Bounds)", aVar, false).d(this.f79250n, this, "spacing", cVar));
        linkedList.add(F5.c.i("Spacing Mode", r.class, this.spacingMode, new k()));
        linkedList.add(F5.c.i("Deform Mode", o.class, this.deformMode, new l()));
        linkedList.add(new C5.b((D5.h) new m(), "Spacing Padding", aVar, false).d(this.f79250n, this, "spacingPadding", cVar));
        linkedList.add(F5.c.i("Bake Mode", n.class, this.bakeMode, new a()));
        linkedList.add(F5.c.i("Forward Axis", p.class, this.forwardAxis, new b()));
        linkedList.add(F5.c.i("Up Mode", s.class, this.upMode, new c()));
        linkedList.add(F5.c.i("Level Mode", q.class, this.levelMode, new d()));
        return linkedList;
    }

    public q getLevelMode() {
        return this.levelMode;
    }

    public Vector3 getOffset() {
        return this.offset;
    }

    public Vector3 getScale() {
        return this.scale;
    }

    public float getSpacing() {
        return this.spacing;
    }

    public r getSpacingMode() {
        return this.spacingMode;
    }

    public float getSpacingPadding() {
        return this.spacingPadding;
    }

    public float getStartOffset() {
        return this.startOffset;
    }

    @Override
    public String getTitle() {
        return f74198H4;
    }

    @Override
    public Component.e getType() {
        return Component.e.MeshCurve;
    }

    public s getUpMode() {
        return this.upMode;
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    public boolean isFitCurve() {
        return this.fitCurveV2;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        refreshPathControllerSettings();
        boolean refreshBaseMeshSnapshot = refreshBaseMeshSnapshot();
        boolean refreshPathVersion = refreshPathVersion();
        boolean refreshAppliedSettings = refreshAppliedSettings();
        if (refreshPathVersion || refreshBaseMeshSnapshot || refreshAppliedSettings) {
            this.f74216K = true;
        }
        if (this.f74216K) {
            this.f74216K = false;
            bakeMeshAlongCurve();
            scheduleApplyBakedOutput();
        }
    }

    @Override
    public void onAttach() {
        super.onAttach();
        normalizeRootTransform();
        refreshPathControllerSettings();
        applyLevelTerrain();
        this.f74217L = true;
        this.f74216K = true;
    }

    @Override
    public void onDetach() {
        this.f74233U = false;
        super.onDetach();
        if (this.f74234V != null) {
            this.f74234V = null;
            this.f74237W = 0;
        }
    }

    @Override
    public void onParentChanged() {
        super.onParentChanged();
        refreshPathControllerSettings();
        this.f74217L = true;
        this.f74216K = true;
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof C13198b) {
            C13198b c13198b = (C13198b) event;
            CurvePath pathController = getPathController();
            if (pathController == null || c13198b.a() == pathController) {
                this.f74204F = c13198b.b();
                this.f74216K = true;
            }
        }
    }

    public void setBakeMode(n bakeMode) {
        if (bakeMode != null) {
            this.bakeMode = bakeMode;
            this.f74202D4 = false;
        }
    }

    public void setCurveQuality(float curveQuality) {
        this.curveQuality = curveQuality;
    }

    public void setDeformMode(o deformMode) {
        if (deformMode != null) {
            this.deformMode = deformMode;
            this.f74216K = true;
        }
    }

    public void setFitCurve(boolean fitCurve) {
        this.fitCurveV2 = fitCurve;
        this.f74216K = true;
    }

    public void setForwardAxis(p forwardAxis) {
        if (forwardAxis != null) {
            this.forwardAxis = forwardAxis;
            this.f74216K = true;
        }
    }

    public void setLevelMode(q levelMode) {
        boolean z10 = this.levelMode != levelMode;
        this.levelMode = levelMode;
        if (z10) {
            applyLevelTerrain();
            this.f74216K = true;
        }
    }

    public void setOffset(Vector3 offset) {
        if (offset != null) {
            this.offset.set(offset);
            this.f74216K = true;
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f74208F4 = run;
    }

    public void setScale(Vector3 scale) {
        if (scale != null) {
            this.scale.set(scale);
            this.f74216K = true;
        }
    }

    public void setSpacing(float spacing) {
        this.spacing = spacing;
        this.f74216K = true;
    }

    public void setSpacingMode(r spacingMode) {
        if (spacingMode != null) {
            this.spacingMode = spacingMode;
            this.f74216K = true;
        }
    }

    public void setSpacingPadding(float spacingPadding) {
        this.spacingPadding = spacingPadding;
        this.f74216K = true;
    }

    public void setStartOffset(float startOffset) {
        this.startOffset = startOffset;
        this.f74216K = true;
    }

    public void setUpMode(s upMode) {
        if (upMode != null) {
            this.upMode = upMode;
            this.f74216K = true;
        }
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f74208F4;
        if (component != null) {
            return component;
        }
        JAVARuntime.MeshCurve meshCurve = new JAVARuntime.MeshCurve(this);
        this.f74208F4 = meshCurve;
        return meshCurve;
    }

    @Override
    public Component mo1248clone() {
        MeshCurve meshCurve = new MeshCurve();
        meshCurve.curveQuality = this.curveQuality;
        meshCurve.simplifyAngle = this.simplifyAngle;
        meshCurve.spacing = this.spacing;
        meshCurve.spacingMode = this.spacingMode;
        meshCurve.spacingPadding = this.spacingPadding;
        meshCurve.deformMode = this.deformMode;
        meshCurve.startOffset = this.startOffset;
        meshCurve.offset = Vector3.clone(this.offset);
        meshCurve.scale = Vector3.clone(this.scale);
        meshCurve.forwardAxis = this.forwardAxis;
        meshCurve.upMode = this.upMode;
        meshCurve.fitCurveV2 = this.fitCurveV2;
        meshCurve.bakeMode = this.bakeMode;
        meshCurve.pathController = AdvComponentReference.f(this.pathController);
        meshCurve.levelMode = this.levelMode;
        return meshCurve;
    }
}
