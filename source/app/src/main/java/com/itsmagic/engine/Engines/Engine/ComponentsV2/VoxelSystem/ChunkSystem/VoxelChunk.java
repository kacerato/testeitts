package com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem;

import C5.b;
import JAVARuntime.Math;
import JAVARuntime.Point3;
import JAVARuntime.Runnable;
import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentUtils.ObjectReference;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.DataSystem.NativeVoxelChunkBuilder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.TerrainSystem.VoxelGenerator;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import d9.C12886a;
import da.C12894h;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import ib.InterfaceC13601h;
import java.util.LinkedList;
import java.util.List;
import o8.InterfaceC14490d;

public class VoxelChunk extends Component {

    public static final String f77675D2 = "@@ASSET@@Engine/Voxels/block_texture.png";

    public static final String f77676q2 = "VoxelChunk";

    public static final Class f77677v2 = VoxelChunk.class;

    public final R8.a<Collider> f77678D0;

    public vc.h f77679E;

    public boolean f77680F;

    public boolean f77681F1;

    public boolean f77682G;

    public boolean f77683H;

    public boolean f77684H1;

    public boolean f77685I;

    public boolean f77686J;

    public Material f77687K;

    public boolean f77688L;

    public volatile boolean f77689L1;

    public boolean f77690M;

    public volatile boolean f77691M1;

    public ub.p f77692N;

    public final Vector2 f77693O;

    public final E9.a f77694P;

    public final E9.c f77695Q;

    public int f77696R;

    public Vertex f77697R1;

    public int f77698S;

    public Vertex f77699T;

    public final Vector3 f77700U;

    public final float[] f77701V;

    public final InterfaceC13601h f77702V1;

    public boolean f77703W;

    public boolean f77704X;

    public final R8.a<ModelRenderer> f77705Y;

    public ModelRenderer f77706Z;

    public Collider f77707b1;

    public JAVARuntime.Component f77708b2;

    @Expose
    @eb.f
    private int blocksPerSideInTexture;

    @Expose
    private ObjectReference generatorReference;

    @Expose
    @eb.f
    private int height;

    public int f77709i1;

    public F9.c f77710i2;

    public boolean f77711m1;

    public VoxelGenerator f77712m2;

    @Expose
    private String materialFile;

    @Expose
    @eb.f
    private Vector2 offset;

    public final R8.a<ModelRenderer> f77713q0;

    public final Object f77714q1;

    @Expose
    private boolean usePositionAsCoordinatesOffset;

    public VoxelGenerator f77715v0;

    public Vertex f77716v1;

    @Expose
    @eb.f
    private int width;

    public List<W8.b> f77717y1;

    public class a implements D5.h {

        public class C1289a implements Runnable {

            public final Variable f77719b;

            public C1289a(final Variable val$variable) {
                this.f77719b = val$variable;
            }

            @Override
            public void run() {
                try {
                    VoxelChunk.this.setUsePositionAsCoordinatesOffset(this.f77719b.booolean_value.booleanValue());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.v0(e10.getMessage());
                }
            }
        }

        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelChunk.this.usePositionAsCoordinatesOffset + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1289a(variable));
            }
        }
    }

    public class b implements R8.e {

        public final Context f77721a;

        public b(final Context val$context) {
            this.f77721a = val$context;
        }

        @Override
        public void a() {
            VoxelChunk.this.reloadInspector();
        }

        @Override
        public void b() {
            VoxelChunk.this.reloadInspector();
        }

        @Override
        public boolean c(GameObject gameObject) {
            if (gameObject == null || gameObject.c0(Component.e.VoxelGenerator) != null) {
                return true;
            }
            Toast.makeText(this.f77721a, Lang.l(Lang.T.PLEASE_SELECT_OBJECT_WITH_VOXEL_GENERATOR_COMPONENT), 0).show();
            return false;
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            if (VoxelChunk.this.materialFile == null) {
                return new Variable("", "");
            }
            return new Variable("", VoxelChunk.this.materialFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VoxelChunk.this.setMaterialFile(variable.str_value);
                VoxelChunk.this.reloadInspector();
            }
        }
    }

    public class d implements D5.h {

        public final Context f77724a;

        public class a implements Runnable {

            public final Variable f77726b;

            public class RunnableC1290a implements Runnable {

                public final Exception f77728b;

                public RunnableC1290a(final Exception val$e) {
                    this.f77728b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(d.this.f77724a, this.f77728b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f77726b = val$variable;
            }

            @Override
            public void run() {
                try {
                    VoxelChunk.this.blocksPerSideInTexture = this.f77726b.int_value;
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1290a(e10));
                }
            }
        }

        public d(final Context val$context) {
            this.f77724a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelChunk.this.blocksPerSideInTexture + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            VoxelChunk.this.f77682G = true;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            VoxelChunk.this.f77683H = true;
        }
    }

    public class g implements InterfaceC14490d {
        public g() {
        }

        @Override
        public void run() {
            F9.c generatorListener = VoxelChunk.this.getGeneratorListener();
            int positionX = VoxelChunk.this.getPositionX();
            int positionZ = VoxelChunk.this.getPositionZ();
            for (int i10 = 0; i10 < VoxelChunk.this.width; i10++) {
                for (int i11 = 0; i11 < VoxelChunk.this.width; i11++) {
                    int i12 = i10 + positionX;
                    int i13 = i11 + positionZ;
                    int groundHeight = generatorListener.getGroundHeight(i12, i13);
                    for (int i14 = 0; i14 < VoxelChunk.this.height; i14++) {
                        VoxelChunk.this.f77679E.y(i10, i11, i14, generatorListener.getBlockType(i12, i14, i13, groundHeight));
                    }
                }
            }
        }
    }

    public class h implements F9.c {
        public h() {
        }

        @Override
        public void beforeChunkBuild(GameObject gameObject, VoxelChunk voxelChunk) {
            VoxelChunk.this.f77715v0.beforeChunkBuild(gameObject, voxelChunk);
        }

        @Override
        public boolean drawFace(int blockType, int sideBlockType, int sideFace, Point3 internalCoords) {
            return VoxelChunk.this.f77715v0.drawFace(blockType, sideBlockType, sideFace, internalCoords);
        }

        @Override
        public int getBlockType(int x10, int y10, int z10, int groundHeight) {
            return VoxelChunk.this.f77715v0.getBlockType(x10, y10, z10, groundHeight);
        }

        @Override
        public int getGroundHeight(int x10, int z10) {
            return VoxelChunk.this.f77715v0.getGroundHeight(x10, z10);
        }

        @Override
        public int getTextureIndex(int blockType, int face) {
            return VoxelChunk.this.f77715v0.getTextureIndex(blockType, face);
        }

        @Override
        public vc.h loadChunk(int x10, int z10) {
            return VoxelChunk.this.f77715v0.loadChunk(x10, z10);
        }

        @Override
        public void onChunkBuilt(GameObject object, VoxelChunk chunk) {
            VoxelChunk.this.f77715v0.onChunkBuilt(object, chunk);
        }

        @Override
        public void onChunkCreated(GameObject object, VoxelChunk chunk) {
            VoxelChunk.this.f77715v0.onChunkCreated(object, chunk);
        }

        @Override
        public void storeChunk(vc.h chunk, int x10, int z10) {
            VoxelChunk.this.f77715v0.storeChunk(chunk, x10, z10);
        }
    }

    public class i implements InterfaceC14490d {

        public final F9.c f77734a;

        public final E9.e[] f77735b;

        public final E9.b f77736c;

        public final int f77737d;

        public final int f77738e;

        public i(final F9.c val$generatorListener, final E9.e[] val$builtFaceBuffer, final E9.b val$simData, final int val$chunkX, final int val$chunkZ) {
            this.f77734a = val$generatorListener;
            this.f77735b = val$builtFaceBuffer;
            this.f77736c = val$simData;
            this.f77737d = val$chunkX;
            this.f77738e = val$chunkZ;
        }

        @Override
        public void run() {
            if (VoxelChunk.this.f77694P != null) {
                F9.c cVar = this.f77734a;
                VoxelChunk voxelChunk = VoxelChunk.this;
                cVar.beforeChunkBuild(voxelChunk.f79250n, voxelChunk);
                this.f77735b[0] = VoxelChunk.this.f77694P.b(VoxelChunk.this.width, VoxelChunk.this.height, VoxelChunk.this.f77679E, this.f77736c.f5728e, this.f77737d, this.f77738e, this.f77734a);
                F9.c cVar2 = this.f77734a;
                VoxelChunk voxelChunk2 = VoxelChunk.this;
                cVar2.onChunkBuilt(voxelChunk2.f79250n, voxelChunk2);
            }
        }
    }

    public class j extends AbstractC13203c {
        @Override
        public Class b() {
            return VoxelChunk.f77677v2;
        }

        @Override
        public String c() {
            return VoxelChunk.f77676q2;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.VOXEL);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.VOXEL_CHUNK);
        }
    }

    public class k implements InterfaceC13601h {
        public k() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f ignoredGlobalMatrix) {
            Qb.a.d();
            VoxelChunk.this.refreshTransformSnapshot();
        }
    }

    public class l implements InterfaceC14490d {
        public l() {
        }

        @Override
        public void run() {
            F9.c generatorListener = VoxelChunk.this.getGeneratorListener();
            VoxelChunk voxelChunk = VoxelChunk.this;
            generatorListener.onChunkCreated(voxelChunk.f79250n, voxelChunk);
        }
    }

    public class m implements Cb.a {

        public final Vertex f77742a;

        public m(final Vertex val$renderableVertex) {
            this.f77742a = val$renderableVertex;
        }

        @Override
        public void a() {
            this.f77742a.L1(this);
            synchronized (VoxelChunk.this.f77714q1) {
                try {
                    if (VoxelChunk.this.f77697R1 == this.f77742a) {
                        VoxelChunk.this.f77689L1 = false;
                        VoxelChunk.this.f77691M1 = true;
                        VoxelChunk.this.f77697R1 = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public class n implements InterfaceC14490d {
        public n() {
        }

        @Override
        public void run() {
            VoxelChunk.this.getGeneratorListener().storeChunk(VoxelChunk.this.f77679E, VoxelChunk.this.getPositionX(), VoxelChunk.this.getPositionZ());
            VoxelChunk.this.f77679E = null;
        }
    }

    public class o implements D5.b {

        public class a implements Runnable {

            public class RunnableC1291a implements Runnable {
                public RunnableC1291a() {
                }

                @Override
                public void run() {
                    VoxelChunk.this.f77703W = true;
                    VoxelChunk.this.reloadInspector();
                }
            }

            public a() {
            }

            @Override
            public void run() {
                N7.c.j0(new RunnableC1291a());
            }
        }

        public o() {
        }

        @Override
        public void a(View view) {
            if (C13317e.J(VoxelChunk.this.f79250n)) {
                VoxelChunk.this.f79250n.r(new ModelRenderer());
                K8.a.B(new a());
            }
        }
    }

    public class p implements D5.b {

        public class a implements Runnable {

            public class RunnableC1292a implements Runnable {
                public RunnableC1292a() {
                }

                @Override
                public void run() {
                    VoxelChunk.this.f77704X = true;
                    VoxelChunk.this.reloadInspector();
                }
            }

            public a() {
            }

            @Override
            public void run() {
                N7.c.j0(new RunnableC1292a());
            }
        }

        public p() {
        }

        @Override
        public void a(View view) {
            if (C13317e.J(VoxelChunk.this.f79250n)) {
                VoxelChunk.this.f79250n.r(new Collider());
                K8.a.B(new a());
            }
        }
    }

    public class q implements D5.h {

        public final Context f77751a;

        public class a implements Runnable {

            public final Variable f77753b;

            public class RunnableC1293a implements Runnable {

                public final Exception f77755b;

                public RunnableC1293a(final Exception val$e) {
                    this.f77755b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(q.this.f77751a, this.f77755b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f77753b = val$variable;
            }

            @Override
            public void run() {
                try {
                    VoxelChunk.this.setWidth(this.f77753b.int_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1293a(e10));
                }
            }
        }

        public q(final Context val$context) {
            this.f77751a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelChunk.this.width + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class r implements D5.h {

        public final Context f77757a;

        public class a implements Runnable {

            public final Variable f77759b;

            public class RunnableC1294a implements Runnable {

                public final Exception f77761b;

                public RunnableC1294a(final Exception val$e) {
                    this.f77761b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(r.this.f77757a, this.f77761b.getMessage(), 0).show();
                }
            }

            public a(final Variable val$variable) {
                this.f77759b = val$variable;
            }

            @Override
            public void run() {
                try {
                    VoxelChunk.this.setHeight(this.f77759b.int_value);
                } catch (Exception e10) {
                    N7.c.j0(new RunnableC1294a(e10));
                }
            }
        }

        public r(final Context val$context) {
            this.f77757a = val$context;
        }

        @Override
        public Variable get() {
            return new Variable("", VoxelChunk.this.height + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    static {
        C13201a.b(new j());
    }

    public VoxelChunk() {
        super(f77676q2);
        this.width = 16;
        this.height = 96;
        this.offset = new Vector2();
        this.usePositionAsCoordinatesOffset = true;
        this.generatorReference = new ObjectReference();
        this.blocksPerSideInTexture = 16;
        this.f77679E = null;
        this.f77680F = false;
        this.f77683H = false;
        this.f77685I = false;
        this.f77686J = false;
        this.f77688L = true;
        this.f77693O = new Vector2();
        this.f77694P = new E9.a(this);
        this.f77695Q = new E9.c(this);
        this.f77696R = -999999;
        this.f77698S = -999999;
        this.f77700U = new Vector3();
        this.f77701V = new float[16];
        this.f77703W = true;
        this.f77704X = true;
        this.f77705Y = new R8.a<>();
        this.f77713q0 = new R8.a<>();
        this.f77678D0 = new R8.a<>();
        this.f77711m1 = false;
        this.f77714q1 = new Object();
        this.f77702V1 = new k();
        this.f77712m2 = null;
    }

    private void addToController() {
        if (this.f77686J) {
            return;
        }
        D9.a.f(this);
        this.f77686J = true;
    }

    private void applyMaterialToRenderer() {
        ModelRenderer modelRenderer = this.f77706Z;
        if (modelRenderer != null) {
            modelRenderer.setMaterial(this.f77687K);
        }
    }

    private void applyPendingBuildIfReady() {
        Vertex vertex;
        List<W8.b> list;
        Vertex vertex2;
        Collider collider;
        Vertex vertex3;
        synchronized (this.f77714q1) {
            try {
                if (this.f77681F1 || this.f77684H1) {
                    boolean z10 = this.f77689L1;
                    if (this.f77681F1 && this.f77691M1 && this.f77706Z != null) {
                        vertex = this.f77716v1;
                        this.f77716v1 = null;
                        this.f77681F1 = false;
                        this.f77691M1 = false;
                    } else {
                        vertex = null;
                    }
                    if (!this.f77684H1 || this.f77707b1 == null || z10 || this.f77689L1) {
                        list = null;
                        vertex2 = null;
                    } else {
                        list = this.f77717y1;
                        vertex2 = vertex != null ? vertex : this.f77716v1;
                        this.f77717y1 = null;
                        this.f77684H1 = false;
                    }
                    if (vertex != null) {
                        this.f77706Z.setModel(new C12886a(vertex));
                        this.f77693O.w0(this.f77696R, this.f77698S);
                        if (this.f77699T != null) {
                            this.f77699T = null;
                        }
                        this.f77699T = vertex;
                    }
                    synchronized (this.f77714q1) {
                        try {
                            if (!this.f77689L1 && this.f77697R1 == null && (vertex3 = this.f77699T) != null) {
                                this.f77680F = true;
                                if (list == null && this.f77684H1 && this.f77707b1 != null) {
                                    list = this.f77717y1;
                                    this.f77717y1 = null;
                                    this.f77684H1 = false;
                                    vertex2 = vertex3;
                                }
                            } else if (vertex != null) {
                                this.f77680F = false;
                            }
                        } finally {
                        }
                    }
                    if (list == null || (collider = this.f77707b1) == null) {
                        return;
                    }
                    collider.setPreparedShapeCandidates(Collider.o.Model, vertex2, list);
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void buildPendingPayload() {
        List<W8.b> list;
        Vertex vertex = new Vertex();
        if (this.f77679E == null || this.f77683H) {
            createMatrix();
            this.f77683H = false;
        }
        Vertex generateChunk = generateChunk(vertex);
        boolean z10 = true;
        if (generateChunk != null) {
            generateChunk.J();
            generateChunk.v(new m(generateChunk));
            synchronized (this.f77714q1) {
                this.f77689L1 = true;
                this.f77691M1 = false;
                this.f77697R1 = generateChunk;
            }
            generateChunk.apply();
            if (c8.b.j()) {
                list = Collider.buildModelShapeCandidates(generateChunk, new com.itsmagic.engine.Engines.Engine.Vector.f(this.f77701V), false);
                synchronized (this.f77714q1) {
                    try {
                        releasePendingCollisionShapesLocked();
                        this.f77716v1 = generateChunk;
                        this.f77717y1 = list;
                        this.f77681F1 = generateChunk != null;
                        if (list == null) {
                            z10 = false;
                        }
                        this.f77684H1 = z10;
                        if (generateChunk == null) {
                            this.f77689L1 = false;
                            this.f77691M1 = false;
                            this.f77697R1 = null;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                this.f77685I = false;
                return;
            }
        }
        list = null;
        synchronized (this.f77714q1) {
        }
    }

    private int calculatePositionX() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return this.f77696R;
        }
        return (int) (this.usePositionAsCoordinatesOffset ? ((int) Math.floor(transform.c1())) + this.offset.f79838x : this.offset.f79838x);
    }

    private int calculatePositionZ() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return this.f77698S;
        }
        return (int) (this.usePositionAsCoordinatesOffset ? ((int) Math.floor(transform.e1())) + this.offset.f79839y : this.offset.f79839y);
    }

    private void createMatrix() {
        vc.h hVar = this.f77679E;
        if (hVar == null || hVar.v() == this.width || this.f77679E.w() == this.width || this.f77679E.x() == this.height) {
            int i10 = this.width;
            this.f77679E = new vc.h(i10, i10, this.height);
        }
        d8.m.d(new g());
    }

    private void ensureMaterialAtlasTexture() {
        Material material = this.f77687K;
        if (material == null) {
            return;
        }
        ub.p l02 = material.l0("albedo");
        if (l02 != null) {
            this.f77692N = l02;
            return;
        }
        ub.p a10 = Bb.c.a("@@ASSET@@Engine/Voxels/atlas.png", this.f77692N);
        this.f77692N = a10;
        if (a10 != null) {
            this.f77687K.m0("albedo", a10);
        }
    }

    private Vertex generateChunk(Vertex targetVertex) {
        if (this.f79250n == null) {
            return targetVertex;
        }
        try {
            F9.c generatorListener = getGeneratorListener();
            int positionX = getPositionX();
            int positionZ = getPositionZ();
            E9.b bVar = new E9.b();
            this.f77695Q.b(this.width, this.height, this.f77679E, bVar, positionX, positionZ, generatorListener);
            this.f77709i1 = bVar.f5724a;
            E9.e[] eVarArr = new E9.e[1];
            if (this.f77694P == null) {
                scheduleReconstruct();
                return null;
            }
            if (!d8.m.b(this.f79250n, new i(generatorListener, eVarArr, bVar, positionX, positionZ))) {
                scheduleReconstruct();
                return null;
            }
            Vertex a10 = NativeVoxelChunkBuilder.a(eVarArr[0], this.f77690M ? 16 : this.blocksPerSideInTexture);
            if (a10 == null) {
                scheduleReconstruct();
            }
            return a10;
        } catch (IndexOutOfBoundsException e10) {
            e10.printStackTrace();
            scheduleReconstruct();
            return null;
        } catch (Exception e11) {
            e11.printStackTrace();
            System.out.println("Failed at chunk [" + getPositionX() + ", " + getPositionZ() + "]");
            scheduleReconstruct();
            return null;
        }
    }

    private boolean hasPendingBuildReady() {
        boolean z10;
        synchronized (this.f77714q1) {
            try {
                z10 = this.f77681F1 || this.f77684H1;
            } finally {
            }
        }
        return z10;
    }

    private void notifyChunkCreated() {
        d8.m.d(new l());
    }

    private void refreshMaterialState() {
        if (this.f77688L || this.f77687K == null) {
            this.f77687K = null;
            String str = this.materialFile;
            if (str == null || str.isEmpty()) {
                this.f77687K = C12894h.i("@VoxelsMaterial@");
                this.f77690M = true;
            } else {
                this.f77687K = C12894h.t(this.materialFile);
                this.f77690M = false;
            }
            if (this.f77687K == null) {
                this.f77690M = true;
                Material material = new Material();
                this.f77687K = material;
                material.o0();
                Material material2 = this.f77687K;
                material2.f78885e = "@VoxelsMaterial@";
                material2.f78886g = false;
                material2.i0(ResourceLocatorTool.TYPE_TEXTURE, "@@ASSET@@Engine/Voxels/atlas.png");
                this.f77687K = C12894h.d(this.f77687K);
            }
            ensureMaterialAtlasTexture();
            this.f77688L = false;
            applyMaterialToRenderer();
        }
    }

    private void refreshRuntimeRefs(boolean forceReloadInspector) {
        ModelRenderer modelRenderer = this.f77706Z;
        Collider collider = this.f77707b1;
        this.f77706Z = this.f77705Y.d(Component.e.ModelRenderer, this.f79250n);
        Collider d10 = this.f77678D0.d(Component.e.Collider, this.f79250n);
        this.f77707b1 = d10;
        boolean z10 = modelRenderer != this.f77706Z;
        boolean z11 = collider != d10;
        if (z10) {
            applyMaterialToRenderer();
        }
        ModelRenderer modelRenderer2 = this.f77706Z;
        if ((modelRenderer2 != null) != this.f77703W || (forceReloadInspector && z10)) {
            this.f77703W = modelRenderer2 != null;
            reloadInspector();
        }
        Collider collider2 = this.f77707b1;
        if ((collider2 != null) != this.f77704X || (forceReloadInspector && z11)) {
            this.f77704X = collider2 != null;
            reloadInspector();
        }
        if (z11) {
            scheduleReconstruct();
        }
    }

    public void refreshTransformSnapshot() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.u0(this.f77700U);
        this.f79250n.transform.r0(this.f77701V);
    }

    private void releasePendingCollisionShapesLocked() {
        if (this.f77717y1 == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f77717y1.size(); i10++) {
            W8.b bVar = this.f77717y1.get(i10);
            if (bVar != null) {
                bVar.e();
            }
        }
        this.f77717y1.clear();
        this.f77717y1 = null;
    }

    private void removeFromController() {
        if (this.f77686J) {
            D9.a.n(this);
            this.f77686J = false;
            if (this.f77679E != null) {
                d8.m.d(new n());
            }
        }
    }

    public boolean containsBlock(int x10, int y10, int z10) {
        int floor;
        int floor2;
        return this.f77679E != null && (floor = (int) Math.floor((float) (x10 - getPositionX()))) >= 0 && y10 >= 0 && (floor2 = (int) Math.floor((float) (z10 - getPositionZ()))) >= 0 && floor < this.f77679E.v() && floor2 < this.f77679E.w() && y10 < this.f77679E.x();
    }

    public boolean containsInternalBlock(int x10, int y10, int z10) {
        vc.h hVar = this.f77679E;
        return hVar != null && x10 >= 0 && y10 >= 0 && z10 >= 0 && x10 < hVar.v() && z10 < this.f77679E.w() && y10 < this.f77679E.x();
    }

    public void destroy() {
        this.f77679E = null;
        this.f77699T = null;
        this.f77680F = false;
        this.f77685I = false;
    }

    public void forceCalculatedPos(int x10, int z10) {
        this.f77696R = x10;
        this.f77698S = z10;
    }

    public int getBlock(int worldX, int worldY, int worldZ) {
        int floor = (int) Math.floor(worldX - getPositionX());
        Math.floor(worldY);
        int floor2 = (int) Math.floor(worldZ - getPositionZ());
        if (containsInternalBlock(floor, worldY, floor2)) {
            return this.f77679E.u(floor, floor2, worldY);
        }
        return -1;
    }

    public int getBlockInternal(int localX, int localY, int localZ) {
        if (containsInternalBlock(localX, localY, localZ)) {
            return this.f77679E.u(localX, localZ, localY);
        }
        return -1;
    }

    public vc.h getBlocksCritical() {
        return this.f77679E;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.VOXEL_CHUNK);
    }

    public F9.c getGeneratorListener() {
        updateGeneratorReference();
        VoxelGenerator voxelGenerator = this.f77715v0;
        if (voxelGenerator == null) {
            this.f77712m2 = null;
            return F9.b.f6704a;
        }
        if (voxelGenerator != this.f77712m2 || this.f77710i2 == null) {
            this.f77712m2 = voxelGenerator;
            this.f77710i2 = new h();
        }
        return this.f77710i2;
    }

    public int getHeight() {
        return this.height;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        if (!this.f77703W) {
            linkedList.add(new C5.b(Lang.l(Lang.T.MISSING_MODEL_RENDERER_COMPONENT), 12, R.color.theme_error));
            linkedList.add(new C5.b(new o(), Lang.l(Lang.T.ADD_NEW_MODEL_RENDERER), b.a.Button));
        }
        if (!this.f77704X) {
            linkedList.add(new C5.b(Lang.l(Lang.T.MISSING_COLLIDER_COMPONENT), 12, R.color.theme_error));
            linkedList.add(new C5.b(new p(), Lang.l(Lang.T.ADD_NEW_COLLIDER), b.a.Button));
        }
        q qVar = new q(context);
        String l10 = Lang.l(Lang.T.WIDTH);
        b.a aVar = b.a.SLInt;
        C5.b bVar = new C5.b((D5.h) qVar, l10, aVar, false);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.INT;
        bVar.d(gameObject, this, "width", cVar);
        linkedList.add(bVar);
        C5.b bVar2 = new C5.b((D5.h) new r(context), Lang.l(Lang.T.HEIGHT), aVar, false);
        bVar2.d(gameObject, this, "height", cVar);
        linkedList.add(bVar2);
        linkedList.add(new C5.b(new a(), Lang.l(Lang.T.POSITION_AS_COORDINATES_OFFSET), b.a.SLBoolean));
        C5.b y10 = F5.c.y(Lang.l(Lang.T.OFFSET), this.offset, new Vector2(0.0f));
        y10.d(gameObject, this, "offset", com.itsmagic.engine.Engines.Engine.Animation.c.VEC2);
        linkedList.add(y10);
        linkedList.add(this.generatorReference.d(Lang.l(Lang.T.GENERATOR), new b(context)));
        linkedList.add(new C5.b(new c(), Lang.l(Lang.T.MATERIAL), b.a.InputFile, ".mat"));
        String str = this.materialFile;
        if (str != null && !str.isEmpty()) {
            C5.b bVar3 = new C5.b((D5.h) new d(context), Lang.l(Lang.T.BLOCKS_PER_SIDE_IN_TEXTURE), aVar, false);
            bVar3.d(gameObject, this, "blocksPerSideInTexture", cVar);
            linkedList.add(bVar3);
        }
        return linkedList;
    }

    public String getMaterialFile() {
        return this.materialFile;
    }

    public int getMaxVerticesCount() {
        return this.f77709i1;
    }

    public Vector2 getOffset() {
        return this.offset;
    }

    public int getPositionX() {
        return this.f77696R;
    }

    public int getPositionZ() {
        return this.f77698S;
    }

    @Override
    public String getTitle() {
        return f77676q2;
    }

    @Override
    public Component.e getType() {
        return Component.e.VoxelChunk;
    }

    public Vertex getVertex() {
        return this.f77699T;
    }

    public int getWidth() {
        return this.width;
    }

    @Override
    public int iconPriority() {
        return super.iconPriority();
    }

    public int internalBlockIndexX(int x10) {
        return (int) Math.floor(x10 - getPositionX());
    }

    public int internalBlockIndexY(int y10) {
        return (int) Math.floor(y10);
    }

    public int internalBlockIndexZ(int z10) {
        return (int) Math.floor(z10 - getPositionZ());
    }

    public boolean isBuilding() {
        return this.f77682G || this.f77683H || this.f77685I;
    }

    public boolean isCustomGenerator() {
        return getGeneratorListener() != F9.b.f6704a;
    }

    public boolean isReady() {
        return (!this.f77680F || this.f77682G || this.f77683H || this.f77685I || this.f77699T == null) ? false : true;
    }

    public boolean isUsePositionAsCoordinatesOffset() {
        return this.usePositionAsCoordinatesOffset;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        addToController();
        this.f77682G = true;
        this.f79250n.transform.u(this.f77702V1);
        refreshTransformSnapshot();
        this.f77696R = calculatePositionX();
        this.f77698S = calculatePositionZ();
        refreshMaterialState();
        refreshRuntimeRefs(true);
        notifyChunkCreated();
    }

    @Override
    public void onDetach() {
        Transform transform;
        super.onDetach();
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f77702V1);
        }
        synchronized (this.f77714q1) {
            releasePendingCollisionShapesLocked();
            this.f77716v1 = null;
            this.f77681F1 = false;
            this.f77684H1 = false;
            this.f77689L1 = false;
            this.f77691M1 = false;
            this.f77697R1 = null;
        }
        removeFromController();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        refreshRuntimeRefs(false);
        if (enabled) {
            addToController();
        } else {
            removeFromController();
        }
    }

    @Override
    public void onParentChanged() {
        super.onParentChanged();
        refreshRuntimeRefs(false);
    }

    @Override
    public void parallelDisabledUpdate() {
        super.parallelDisabledUpdate();
        C13317e.j(this.f79250n);
    }

    public void parallelLowTaskUpdate() {
        Collider collider;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.transform == null) {
            return;
        }
        this.generatorReference.j();
        updateGeneratorReference();
        if (!this.f77685I) {
            this.f77696R = calculatePositionX();
            this.f77698S = calculatePositionZ();
        }
        if (!this.f77685I && !this.f77693O.O(this.f77696R, this.f77698S)) {
            scheduleReconstruct();
            scheduleReconstructMatrix();
            this.f77693O.w0(this.f77696R, this.f77698S);
        }
        if (!this.f77685I && c8.b.j() && this.f77699T != null && !this.f77684H1 && ((collider = this.f77707b1) == null || collider.getShape() != Collider.o.Model || this.f77707b1.getCollisionVertex() != this.f77699T)) {
            synchronized (this.f77714q1) {
                try {
                    if (!this.f77684H1) {
                        List<W8.b> buildModelShapeCandidates = Collider.buildModelShapeCandidates(this.f77699T, new com.itsmagic.engine.Engines.Engine.Vector.f(this.f77701V), false);
                        this.f77717y1 = buildModelShapeCandidates;
                        this.f77684H1 = buildModelShapeCandidates != null;
                    }
                } finally {
                }
            }
        }
        if (wantsBuild() && this.f77711m1) {
            this.f77685I = true;
            this.f77682G = false;
            buildPendingPayload();
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (this.f77706Z == null || this.f77707b1 == null) {
            refreshRuntimeRefs(false);
        }
        applyPendingBuildIfReady();
    }

    public void scheduleReconstruct() {
        K8.a.I(new e());
    }

    public void scheduleReconstructMatrix() {
        K8.a.I(new f());
    }

    public boolean setBlock(int worldX, int worldY, int worldZ, int blockType) {
        return setInternalBlock((int) Math.floor(worldX - getPositionX()), (int) Math.floor(worldY), (int) Math.floor(worldZ - getPositionZ()), blockType);
    }

    public void setBlocksCritical(vc.h blocks) {
        this.f77679E = blocks;
    }

    public void setHeight(int height) {
        if (isBuilding()) {
            throw new RuntimeException("Chunk is currently building, can't edit.");
        }
        if (height <= 0) {
            throw new IllegalArgumentException("height can't be <= 0");
        }
        if (this.height != height) {
            scheduleReconstruct();
            scheduleReconstructMatrix();
        }
        this.height = height;
    }

    public boolean setInternalBlock(int localX, int localY, int localZ, int blockType) {
        if (!isReady()) {
            throw new RuntimeException("Can't modify a chunk that is not ready");
        }
        if (!containsInternalBlock(localX, localY, localZ)) {
            return false;
        }
        this.f77679E.y(localX, localZ, localY, blockType);
        return true;
    }

    public void setMaterialFile(String materialFile) {
        this.materialFile = materialFile;
        this.f77688L = true;
        refreshMaterialState();
    }

    public void setOffset(Vector2 offset) {
        if (offset == null) {
            throw new NullPointerException("offset can't be null");
        }
        this.offset = offset;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f77708b2 = run;
    }

    public void setUsePositionAsCoordinatesOffset(boolean usePositionAsCoordinatesOffset) {
        if (isBuilding()) {
            throw new RuntimeException("Chunk is currently building, can't edit.");
        }
        if (this.usePositionAsCoordinatesOffset != usePositionAsCoordinatesOffset) {
            scheduleReconstruct();
            scheduleReconstructMatrix();
        }
        this.usePositionAsCoordinatesOffset = usePositionAsCoordinatesOffset;
    }

    public void setWidth(int width) {
        if (isBuilding()) {
            throw new RuntimeException("Chunk is currently building, can't edit.");
        }
        if (width <= 0) {
            throw new IllegalArgumentException("width can't be <= 0");
        }
        if (this.width != width) {
            scheduleReconstruct();
            scheduleReconstructMatrix();
        }
        this.width = width;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f77708b2;
        if (component != null) {
            return component;
        }
        JAVARuntime.VoxelChunk voxelChunk = new JAVARuntime.VoxelChunk(this);
        this.f77708b2 = voxelChunk;
        return voxelChunk;
    }

    public void updateGeneratorReference() {
        if (!this.generatorReference.f()) {
            this.f77715v0 = null;
        } else if (C13317e.J(this.generatorReference.e())) {
            this.f77715v0 = (VoxelGenerator) this.f77713q0.d(Component.e.VoxelGenerator, this.generatorReference.e());
        }
    }

    public boolean wantsBuild() {
        if (this.f77685I || hasPendingBuildReady()) {
            return false;
        }
        return this.f77682G || !this.f77680F;
    }

    @Override
    public Component mo1248clone() {
        VoxelChunk voxelChunk = new VoxelChunk();
        voxelChunk.width = this.width;
        voxelChunk.height = this.height;
        voxelChunk.offset = this.offset.clone();
        voxelChunk.usePositionAsCoordinatesOffset = this.usePositionAsCoordinatesOffset;
        voxelChunk.generatorReference = this.generatorReference.clone();
        voxelChunk.materialFile = this.materialFile;
        voxelChunk.blocksPerSideInTexture = this.blocksPerSideInTexture;
        return voxelChunk;
    }
}
