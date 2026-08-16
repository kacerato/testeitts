package com.itsmagic.engine.Engines.Engine.Vertex;

import Ic.C2633l;
import Ic.C2634m;
import JAVARuntime.Point3;
import JAVARuntime.Vertex;
import Jb.c;
import Jb.f;
import Xg.x;
import aa.C3593a;
import aa.C3595c;
import android.content.res.AssetManager;
import com.google.android.filament.Box;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.VertexBuffer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.Primitives.Triangle;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.VertexData;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class Vertex extends C2634m implements Serializable {

    public static final ThreadLocal<Vector3> f79930D0;

    public static final Object f79931F1;

    public static final Vertex f79932Q = new Vertex();

    public static final ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> f79933R;

    public static final ThreadLocal<Vector3> f79934S;

    public static final ThreadLocal<Vector3> f79935T;

    public static final ThreadLocal<Vector3> f79936U;

    public static final ThreadLocal<Point3> f79937V;

    public static final ThreadLocal<Vector3> f79938W;

    public static final ThreadLocal<Vector2> f79939X;

    public static final ThreadLocal<Vector2> f79940Y;

    public static final ThreadLocal<Vector2> f79941Z;

    public static final ThreadLocal<Vector3> f79942b1;

    public static final ThreadLocal<Vector3> f79943i1;

    public static final ThreadLocal<Vector3> f79944m1;

    public static final ThreadLocal<Triangle> f79945q0;

    public static final ThreadLocal<float[]> f79946q1;

    public static final ThreadLocal<Vector3> f79947v0;

    public static final Map<String, Vertex> f79948v1;

    public static final Map<String, Vertex> f79949y1;

    public FilamentVertexBuffer f79961L;

    public Rb.d f79962M;

    public JAVARuntime.Vertex f79965P;

    public NativeIntBuffer f79971i;

    public NativeShortBuffer f79973k;

    public NativeByteBuffer f79974l;

    public NativeShortBuffer f79975m;

    public boolean f79976n;

    public AABB f79977o;

    public Box f79978p;

    public String f79966b = "RT@" + Tc.b.L();

    public NativeFloatBuffer f79967c = null;

    public NativeFloatBuffer f79968d = null;

    public NativeFloatBuffer f79969e = null;

    public NativeFloatBuffer f79970g = null;

    public NativeFloatBuffer f79972j = null;

    public NativeFloatBuffer f79979q = null;

    public NativeFloatBuffer f79980r = null;

    public boolean f79981s = false;

    public int f79982t = Nc.d.j(0, 99999);

    public int f79983u = Nc.d.j(0, 99999);

    public volatile BVHMesh f79950A = null;

    public final AtomicBoolean f79951B = new AtomicBoolean();

    public boolean f79952C = false;

    public int f79953D = 0;

    public boolean f79954E = false;

    public boolean f79955F = false;

    public final Object f79956G = new Object();

    public boolean f79957H = false;

    public boolean f79958I = false;

    public boolean f79959J = false;

    public boolean f79960K = false;

    public final Mc.a<Cb.a> f79963N = new Mc.a<>();

    public final List<Cb.a> f79964O = new SteppedArrayList();

    public class a extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public class b extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public class c extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public class d extends ThreadLocal<Triangle> {
        @Override
        public Triangle initialValue() {
            return new Triangle();
        }
    }

    public class e extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class f extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class g extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class h extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class i extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class j extends ThreadLocal<float[]> {
        @Override
        public float[] initialValue() {
            return new float[16];
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override
        public void run() {
            Vertex.this.apply();
        }
    }

    public class l implements Runnable {

        public final boolean f79985b;

        public final NativeFloatBuffer f79986c;

        public final NativeFloatBuffer f79987d;

        public final NativeByteBuffer f79988e;

        public final NativeShortBuffer f79989f;

        public final int f79990g;

        public final int f79991h;

        public final int f79992i;

        public final boolean f79993j;

        public final NativeFloatBuffer f79994k;

        public final boolean f79995l;

        public final int f79996m;

        public final NativeShortBuffer f79997n;

        public final NativeIntBuffer f79998o;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                l lVar = l.this;
                if (lVar.f79985b) {
                    lVar.f79986c.destroyImmediate();
                }
                l.this.f79987d.destroyImmediate();
                l lVar2 = l.this;
                if (lVar2.f79988e != null) {
                    NativeByteBuffer nativeByteBuffer = Vertex.this.f79974l;
                    l lVar3 = l.this;
                    if (nativeByteBuffer == lVar3.f79988e) {
                        Vertex.this.f79974l = null;
                        l.this.f79988e.destroyImmediate();
                    }
                }
                NativeShortBuffer nativeShortBuffer = Vertex.this.f79973k;
                l lVar4 = l.this;
                if (nativeShortBuffer == lVar4.f79989f) {
                    Vertex.this.f79973k = null;
                    l.this.f79989f.destroyImmediate();
                }
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                NativeShortBuffer nativeShortBuffer = Vertex.this.f79975m;
                l lVar = l.this;
                if (nativeShortBuffer == lVar.f79997n) {
                    Vertex.this.f79975m = null;
                    l.this.f79997n.destroyImmediate();
                }
                boolean z10 = Vertex.this.f79976n;
                l lVar2 = l.this;
                if (z10 == lVar2.f79995l) {
                    Vertex.this.f79976n = false;
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                boolean z10 = Vertex.this.f79976n;
                l lVar = l.this;
                if (z10 == lVar.f79995l) {
                    Vertex.this.f79976n = false;
                }
            }
        }

        public l(final boolean val$generatedUvBuffer, final NativeFloatBuffer val$uvBufferSnapshot, final NativeFloatBuffer val$boundsBufferSnapshot, final NativeByteBuffer val$skinBufferSnapshot, final NativeShortBuffer val$quatS4BufferSnapshot, final int val$vertexCount, final int val$bufferCount, final int val$boundsBufferIndex, final boolean val$hasSkin, final NativeFloatBuffer val$positionsBufferSnapshot, final boolean val$useUshort, final int val$indexCount, final NativeShortBuffer val$ushortIndexBufferSnapshot, final NativeIntBuffer val$trianglesBufferSnapshot) {
            this.f79985b = val$generatedUvBuffer;
            this.f79986c = val$uvBufferSnapshot;
            this.f79987d = val$boundsBufferSnapshot;
            this.f79988e = val$skinBufferSnapshot;
            this.f79989f = val$quatS4BufferSnapshot;
            this.f79990g = val$vertexCount;
            this.f79991h = val$bufferCount;
            this.f79992i = val$boundsBufferIndex;
            this.f79993j = val$hasSkin;
            this.f79994k = val$positionsBufferSnapshot;
            this.f79995l = val$useUshort;
            this.f79996m = val$indexCount;
            this.f79997n = val$ushortIndexBufferSnapshot;
            this.f79998o = val$trianglesBufferSnapshot;
        }

        @Override
        public void run() {
            try {
                a aVar = new a();
                VertexBuffer.b c10 = new VertexBuffer.b().h(this.f79990g).c(this.f79991h);
                VertexBuffer.c cVar = VertexBuffer.c.POSITION;
                VertexBuffer.a aVar2 = VertexBuffer.a.FLOAT3;
                VertexBuffer.b b10 = c10.b(cVar, 0, aVar2, 0, 12);
                VertexBuffer.c cVar2 = VertexBuffer.c.UV0;
                NativeFloatBuffer.b precision = this.f79986c.getPrecision();
                NativeFloatBuffer.b bVar = NativeFloatBuffer.b.FLOAT16;
                VertexBuffer.b b11 = b10.b(cVar2, 1, precision == bVar ? VertexBuffer.a.HALF2 : VertexBuffer.a.FLOAT2, 0, this.f79986c.getPrecision() == bVar ? 4 : 8);
                VertexBuffer.c cVar3 = VertexBuffer.c.TANGENTS;
                VertexBuffer.b b12 = b11.b(cVar3, 2, VertexBuffer.a.SHORT4, 0, 8).f(cVar3).b(com.itsmagic.engine.Engines.Engine.Vertex.a.f80006a.f80009b, this.f79992i, aVar2, 0, 24).b(com.itsmagic.engine.Engines.Engine.Vertex.a.f80007b.f80009b, this.f79992i, aVar2, 12, 24);
                if (this.f79993j) {
                    VertexBuffer.c cVar4 = VertexBuffer.c.BONE_INDICES;
                    VertexBuffer.a aVar3 = VertexBuffer.a.UBYTE4;
                    b12.b(cVar4, 3, aVar3, 0, 8);
                    VertexBuffer.c cVar5 = VertexBuffer.c.BONE_WEIGHTS;
                    b12.b(cVar5, 3, aVar3, 4, 8).f(cVar5);
                }
                FilamentVertexBuffer filamentVertexBuffer = new FilamentVertexBuffer(b12);
                filamentVertexBuffer.m(0, this.f79994k);
                filamentVertexBuffer.m(1, this.f79986c);
                filamentVertexBuffer.o(2, this.f79989f);
                if (this.f79993j) {
                    filamentVertexBuffer.k(3, this.f79988e);
                }
                filamentVertexBuffer.n(this.f79992i, this.f79987d, aVar);
                Rb.d dVar = new Rb.d(new IndexBuffer.a().c(this.f79996m).a(this.f79995l ? IndexBuffer.a.b.USHORT : IndexBuffer.a.b.UINT));
                if (this.f79995l) {
                    dVar.q(this.f79997n, new b());
                } else {
                    dVar.o(this.f79998o, new c());
                }
                Vertex.this.f79961L = filamentVertexBuffer;
                Vertex.this.f79962M = dVar;
                Vertex.this.t1();
                Vertex.this.s1();
                Vertex.this.F1();
                Vertex.this.W();
            } catch (Throwable th2) {
                Vertex.this.W();
                throw th2;
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override
        public void run() {
            BVHMesh bVHMesh = new BVHMesh();
            bVHMesh.H(Vertex.this.f79967c, Vertex.this.f79971i);
            Vertex.this.f79950A = bVHMesh;
            Vertex.this.f79951B.set(false);
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override
        public void run() {
            BVHMesh bVHMesh = new BVHMesh();
            bVHMesh.H(Vertex.this.f79967c, Vertex.this.f79971i);
            Vertex.this.f79950A = bVHMesh;
            Vertex.this.f79951B.set(false);
        }
    }

    public class o implements c.InterfaceC0345c {
        public o() {
        }

        @Override
        public void a(FilamentVertexBuffer vertexBuffer, Rb.d indexBuffer) {
            try {
                Vertex.this.f79961L = vertexBuffer;
                Vertex.this.f79962M = indexBuffer;
                Vertex.this.t1();
                Vertex.this.s1();
                Vertex.this.F1();
            } finally {
                Vertex.this.W();
            }
        }
    }

    public class p extends ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> {
        @Override
        public com.itsmagic.engine.Engines.Engine.Vector.f initialValue() {
            return new com.itsmagic.engine.Engines.Engine.Vector.f();
        }
    }

    public class q extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class r extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class s extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class t extends ThreadLocal<Point3> {
        @Override
        public Point3 initialValue() {
            return new Point3();
        }
    }

    public class u extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public enum v {
        CUBE,
        SPHERE,
        SPHERE_LOWPOLY,
        CONE,
        CYLINDER,
        CIRCLE,
        TORUS,
        SQUARE,
        SQUARE90,
        CAPSULE,
        HALF_CAPSULE,
        CUBEMAP,
        PANORAMA,
        RENDER_TARGET
    }

    static {
        System.loadLibrary("vertex");
        f79933R = new p();
        f79934S = new q();
        f79935T = new r();
        f79936U = new s();
        f79937V = new t();
        f79938W = new u();
        f79939X = new a();
        f79940Y = new b();
        f79941Z = new c();
        f79945q0 = new d();
        f79947v0 = new e();
        f79930D0 = new f();
        f79942b1 = new g();
        f79943i1 = new h();
        f79944m1 = new i();
        f79946q1 = new j();
        f79948v1 = new HashMap();
        f79949y1 = new HashMap();
        f79931F1 = new Object();
    }

    public static Vertex A1(String file) {
        boolean z10;
        if (file.startsWith("@@ASSET@@")) {
            file = file.replace("@@ASSET@@", "");
            z10 = true;
        } else {
            z10 = false;
        }
        if (C2633l.b(file, ".mesh")) {
            try {
                return Fb.c.p(file, z10, false, null);
            } catch (OutOfMemoryError e10) {
                e10.printStackTrace();
                return null;
            }
        }
        throw new RuntimeException("Unsupported file format " + Tc.b.t(file) + " only .vertex is supported!");
    }

    public static Vertex B1(String file, Fb.a importSettings) {
        InputStream open;
        if (file.startsWith("@@ASSET@@")) {
            file = file.replace("@@ASSET@@", "");
        }
        while (file.startsWith("/")) {
            file = file.substring(1);
        }
        String trim = file.trim();
        synchronized (f79931F1) {
            try {
                Vertex j10 = Fb.c.j("@obj@-" + trim);
                if (j10 != null) {
                    if (importSettings != null) {
                        if (importSettings.f6730a) {
                            if (!j10.x1() && !j10.u1()) {
                                j10.apply();
                            }
                        } else if (importSettings.f6731b) {
                            j10.d0();
                        }
                    } else if (!j10.x1() && !j10.u1()) {
                        j10.apply();
                    }
                    return j10;
                }
                Vertex vertex = null;
                if (trim != null) {
                    try {
                        AssetManager assets = N7.c.t().getAssets();
                        if (assets != null && (open = assets.open((trim = trim.replace("@@ASSET@@", "")))) != null) {
                            vertex = Wg.d.b(x.p(x.d(Xg.u.c(new InputStreamReader(open)))), importSettings);
                        }
                    } catch (IOException e10) {
                        e10.printStackTrace();
                        throw new RuntimeException(e10);
                    }
                }
                if (vertex != null) {
                    Fb.c.d("@obj@-" + trim, vertex);
                }
                return vertex;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Vertex C1(v primitive) {
        return D1(primitive, null);
    }

    public static Vertex D1(v primitive, Fb.a importSettings) {
        Vertex vertex;
        String str = "";
        switch (primitive) {
            case CUBE:
                str = "@@ASSET@@Engine/Primitives/Models/cube.obj";
                break;
            case SPHERE:
                str = "@@ASSET@@Engine/Primitives/Models/sphere.obj";
                break;
            case SPHERE_LOWPOLY:
                str = "@@ASSET@@Engine/Primitives/Models/sphere_lp.obj";
                break;
            case CONE:
                str = "@@ASSET@@Engine/Primitives/Models/cone.obj";
                break;
            case CYLINDER:
                str = "@@ASSET@@Engine/Primitives/Models/cylinder.obj";
                break;
            case CIRCLE:
                str = "@@ASSET@@Engine/Primitives/Models/circle.obj";
                break;
            case TORUS:
                str = "@@ASSET@@Engine/Primitives/Models/torus.obj";
                break;
            case SQUARE:
                str = "@@ASSET@@Engine/Primitives/Models/square.obj";
                break;
            case SQUARE90:
                str = "@@ASSET@@Engine/Primitives/Models/square90.obj";
                break;
            case CAPSULE:
                str = "@@ASSET@@Engine/Primitives/Models/capsule.obj";
                break;
            case HALF_CAPSULE:
                str = "@@ASSET@@Engine/Primitives/Models/half_capsule.obj";
                break;
            case CUBEMAP:
                str = "@@ASSET@@Engine/Primitives/Models/Cubemap.obj";
                break;
            case PANORAMA:
                str = "@@ASSET@@Engine/Primitives/Models/panorama_skybox.obj";
                break;
            case RENDER_TARGET:
                str = "@@ASSET@@Engine/Primitives/Models/render_target.obj";
                break;
        }
        Map<String, Vertex> map = f79948v1;
        synchronized (map) {
            try {
                vertex = map.get(str);
                if (vertex == null) {
                    vertex = B1(str, importSettings);
                    map.put(str, vertex);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return vertex;
    }

    public static Vertex E1(v primitive, Fb.a importSettings) {
        Vertex vertex;
        Vertex j10;
        String str = "";
        switch (primitive) {
            case CUBE:
                str = "@@ASSET@@Engine/Primitives/Models/cube.obj";
                break;
            case SPHERE:
                str = "@@ASSET@@Engine/Primitives/Models/sphere.obj";
                break;
            case SPHERE_LOWPOLY:
                str = "@@ASSET@@Engine/Primitives/Models/sphere_lp.obj";
                break;
            case CONE:
                str = "@@ASSET@@Engine/Primitives/Models/cone.obj";
                break;
            case CYLINDER:
                str = "@@ASSET@@Engine/Primitives/Models/cylinder.obj";
                break;
            case CIRCLE:
                str = "@@ASSET@@Engine/Primitives/Models/circle.obj";
                break;
            case TORUS:
                str = "@@ASSET@@Engine/Primitives/Models/torus.obj";
                break;
            case SQUARE:
                str = "@@ASSET@@Engine/Primitives/Models/square.obj";
                break;
            case SQUARE90:
                str = "@@ASSET@@Engine/Primitives/Models/square90.obj";
                break;
            case CAPSULE:
                str = "@@ASSET@@Engine/Primitives/Models/capsule.obj";
                break;
            case HALF_CAPSULE:
                str = "@@ASSET@@Engine/Primitives/Models/half_capsule.obj";
                break;
            case CUBEMAP:
                str = "@@ASSET@@Engine/Primitives/Models/Cubemap.obj";
                break;
            case PANORAMA:
                str = "@@ASSET@@Engine/Primitives/Models/panorama_skybox.obj";
                break;
            case RENDER_TARGET:
                str = "@@ASSET@@Engine/Primitives/Models/render_target.obj";
                break;
        }
        Map<String, Vertex> map = f79949y1;
        synchronized (map) {
            try {
                vertex = map.get(str);
                if (vertex == null) {
                    if (primitive == v.CUBE) {
                        j10 = Ib.k.g();
                    } else {
                        j10 = Ib.k.j(B1(str, importSettings));
                        if (importSettings != null && !importSettings.f6730a) {
                            if (importSettings != null && importSettings.f6731b) {
                                j10.d0();
                            }
                        }
                        j10.apply();
                    }
                    vertex = j10;
                    map.put(str, vertex);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return vertex;
    }

    public static FloatBuffer L(float minX, float minY, float minZ, float maxX, float maxY, float maxZ, int vertexCount) {
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(Math.max(0, vertexCount) * 24).order(ByteOrder.nativeOrder()).asFloatBuffer();
        for (int i10 = 0; i10 < vertexCount; i10++) {
            asFloatBuffer.put(minX);
            asFloatBuffer.put(minY);
            asFloatBuffer.put(minZ);
            asFloatBuffer.put(maxX);
            asFloatBuffer.put(maxY);
            asFloatBuffer.put(maxZ);
        }
        asFloatBuffer.flip();
        return asFloatBuffer;
    }

    public static FloatBuffer M(AABB boundingBox, int vertexCount) {
        if (boundingBox == null) {
            boundingBox = new AABB();
        }
        return L(boundingBox.B(), boundingBox.C(), boundingBox.D(), boundingBox.w(), boundingBox.x(), boundingBox.y(), vertexCount);
    }

    public static NativeFloatBuffer N(float minX, float minY, float minZ, float maxX, float maxY, float maxZ, int vertexCount) {
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(Math.max(0, vertexCount) * 6);
        for (int i10 = 0; i10 < vertexCount; i10++) {
            nativeFloatBuffer.put(minX);
            nativeFloatBuffer.put(minY);
            nativeFloatBuffer.put(minZ);
            nativeFloatBuffer.put(maxX);
            nativeFloatBuffer.put(maxY);
            nativeFloatBuffer.put(maxZ);
        }
        nativeFloatBuffer.position(0);
        return nativeFloatBuffer;
    }

    public static NativeFloatBuffer O(AABB boundingBox, int vertexCount) {
        if (boundingBox == null) {
            boundingBox = new AABB();
        }
        return N(boundingBox.B(), boundingBox.C(), boundingBox.D(), boundingBox.w(), boundingBox.x(), boundingBox.y(), vertexCount);
    }

    public static void P() {
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(9);
        nativeFloatBuffer.fill(0.0f);
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(3);
        nativeIntBuffer.put(0);
        nativeIntBuffer.put(1);
        nativeIntBuffer.put(2);
        Vertex vertex = f79932Q;
        vertex.q2(nativeFloatBuffer);
        vertex.i2(nativeIntBuffer);
        vertex.apply();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C3593a T(NativeFloatBuffer vertices, NativeIntBuffer indices, NativeFloatBuffer uvs, float[] matrix, C3595c ray, float maxDistance, boolean backfaceCulling, Vertex.RayMode rayMode, AABB aabb) {
        NativeFloatBuffer nativeFloatBuffer;
        NativeFloatBuffer nativeFloatBuffer2;
        NativeFloatBuffer nativeFloatBuffer3;
        NativeFloatBuffer nativeFloatBuffer4;
        long criticalDirectCppPointer;
        long j10;
        long j11;
        NativeFloatBuffer nativeFloatBuffer5;
        NativeFloatBuffer nativeFloatBuffer6;
        long criticalDirectCppPointer2;
        if (vertices == null || indices == null) {
            return null;
        }
        try {
            nativeFloatBuffer2 = new NativeFloatBuffer(16);
            if (matrix != null) {
                try {
                    nativeFloatBuffer3 = new NativeFloatBuffer(16);
                    for (int i10 = 0; i10 < 16; i10++) {
                        try {
                            nativeFloatBuffer3.set(i10, matrix[i10]);
                        } catch (Throwable th2) {
                            th = th2;
                            nativeFloatBuffer = null;
                            nativeFloatBuffer4 = null;
                            if (nativeFloatBuffer != null) {
                            }
                            if (nativeFloatBuffer4 != null) {
                            }
                            if (nativeFloatBuffer3 != null) {
                            }
                            if (nativeFloatBuffer2 != null) {
                            }
                            throw th;
                        }
                    }
                    criticalDirectCppPointer = NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer3, 0L);
                } catch (Throwable th3) {
                    th = th3;
                    nativeFloatBuffer = null;
                    nativeFloatBuffer3 = null;
                    nativeFloatBuffer4 = null;
                    if (nativeFloatBuffer != null) {
                    }
                    if (nativeFloatBuffer4 != null) {
                    }
                    if (nativeFloatBuffer3 != null) {
                    }
                    if (nativeFloatBuffer2 != null) {
                    }
                    throw th;
                }
            } else {
                criticalDirectCppPointer = 0;
                nativeFloatBuffer3 = null;
            }
            if (aabb != null) {
                Vector3 z10 = aabb.z();
                Vector3 u10 = aabb.u();
                nativeFloatBuffer4 = new NativeFloatBuffer(3);
                try {
                    nativeFloatBuffer4.set(0, z10.getX());
                    nativeFloatBuffer4.set(1, z10.getY());
                    nativeFloatBuffer4.set(2, z10.getZ());
                    nativeFloatBuffer = new NativeFloatBuffer(3);
                } catch (Throwable th4) {
                    th = th4;
                    nativeFloatBuffer = null;
                }
                try {
                    nativeFloatBuffer.set(0, u10.getX());
                    nativeFloatBuffer.set(1, u10.getY());
                    nativeFloatBuffer.set(2, u10.getZ());
                    long criticalDirectCppPointer3 = NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer4, 0L);
                    long criticalDirectCppPointer4 = NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer, 0L);
                    nativeFloatBuffer6 = nativeFloatBuffer;
                    j10 = criticalDirectCppPointer3;
                    nativeFloatBuffer5 = nativeFloatBuffer4;
                    j11 = criticalDirectCppPointer4;
                } catch (Throwable th5) {
                    th = th5;
                    if (nativeFloatBuffer != null) {
                    }
                    if (nativeFloatBuffer4 != null) {
                    }
                    if (nativeFloatBuffer3 != null) {
                    }
                    if (nativeFloatBuffer2 != null) {
                    }
                    throw th;
                }
            } else {
                j10 = 0;
                j11 = 0;
                nativeFloatBuffer5 = null;
                nativeFloatBuffer6 = null;
            }
            if (uvs != null) {
                try {
                    criticalDirectCppPointer2 = NativeFloatBuffer.getCriticalDirectCppPointer(uvs, 0L);
                } catch (Throwable th6) {
                    th = th6;
                    nativeFloatBuffer4 = nativeFloatBuffer5;
                    nativeFloatBuffer = nativeFloatBuffer6;
                    if (nativeFloatBuffer != null) {
                        nativeFloatBuffer.destroyImmediate();
                    }
                    if (nativeFloatBuffer4 != null) {
                        nativeFloatBuffer4.destroyImmediate();
                    }
                    if (nativeFloatBuffer3 != null) {
                        nativeFloatBuffer3.destroyImmediate();
                    }
                    if (nativeFloatBuffer2 != null) {
                        nativeFloatBuffer2.destroyImmediate();
                    }
                    throw th;
                }
            } else {
                criticalDirectCppPointer2 = 0;
            }
            aa.d dVar = ray.f31953b;
            Vector3 vector3 = dVar.f31957b;
            Vector3 vector32 = dVar.f31958c;
            nativeTraceRay(NativeFloatBuffer.getCriticalDirectCppPointer(vertices, 0L), NativeIntBuffer.getCriticalDirectCppPointer(indices, 0L), criticalDirectCppPointer2, criticalDirectCppPointer, vector3.getX(), vector3.getY(), vector3.getZ(), vector32.getX(), vector32.getY(), vector32.getZ(), maxDistance, backfaceCulling, rayMode.ordinal(), j10, j11, NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer2, 0L));
            if (nativeFloatBuffer2.get(0) <= 0.0f) {
                if (nativeFloatBuffer6 != null) {
                    nativeFloatBuffer6.destroyImmediate();
                }
                if (nativeFloatBuffer5 != null) {
                    nativeFloatBuffer5.destroyImmediate();
                }
                if (nativeFloatBuffer3 != null) {
                    nativeFloatBuffer3.destroyImmediate();
                }
                nativeFloatBuffer2.destroyImmediate();
                return null;
            }
            C3593a c3593a = new C3593a();
            c3593a.f31932r = true;
            c3593a.v(new Vector3(nativeFloatBuffer2.get(1), nativeFloatBuffer2.get(2), nativeFloatBuffer2.get(3)));
            c3593a.s(new Vector3(nativeFloatBuffer2.get(4), nativeFloatBuffer2.get(5), nativeFloatBuffer2.get(6)));
            c3593a.setDistance(nativeFloatBuffer2.get(7));
            c3593a.D(new Vector2(nativeFloatBuffer2.get(8), nativeFloatBuffer2.get(9)));
            c3593a.A(new Vector2(nativeFloatBuffer2.get(10), nativeFloatBuffer2.get(11)));
            c3593a.B(new Vector2(nativeFloatBuffer2.get(12), nativeFloatBuffer2.get(13)));
            c3593a.C(new Vector2(nativeFloatBuffer2.get(14), nativeFloatBuffer2.get(15)));
            c3593a.u(ray.f31953b.f31958c.m1249clone());
            if (nativeFloatBuffer6 != null) {
                nativeFloatBuffer6.destroyImmediate();
            }
            if (nativeFloatBuffer5 != null) {
                nativeFloatBuffer5.destroyImmediate();
            }
            if (nativeFloatBuffer3 != null) {
                nativeFloatBuffer3.destroyImmediate();
            }
            nativeFloatBuffer2.destroyImmediate();
            return c3593a;
        } catch (Throwable th7) {
            th = th7;
            nativeFloatBuffer = null;
            nativeFloatBuffer2 = null;
        }
    }

    public static void U(NativeFloatBuffer bakeVertices, NativeFloatBuffer outBuffer) {
        nativeUpdateAABB(NativeFloatBuffer.getCriticalDirectCppPointer(bakeVertices, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(outBuffer, 0L));
    }

    public static native void nativeTraceRay(long verticesPointer, long indicesPointer, long uvsPointer, long matrixPointer, float rayOriginX, float rayOriginY, float rayOriginZ, float rayDirX, float rayDirY, float rayDirZ, float maxDistance, boolean backfaceCulling, int rayMode, long aabbMinPointer, long aabbMaxPointer, long outBufferPointer);

    public static native void nativeUpdateAABB(long bakeVertices, long outBufferPointer);

    public void A(vc.q buffer) {
        z(buffer.k());
        this.f79955F = true;
    }

    public C3593a A2(C3595c ray, Vertex.RayMode rayMode) {
        return B2(ray, rayMode, true);
    }

    public void B(NativeIntBuffer buffer) {
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(this.f79971i.capacity() + buffer.capacity());
        int capacity = this.f79971i.capacity();
        for (int i10 = 0; i10 < this.f79971i.capacity(); i10++) {
            nativeIntBuffer.set(i10, this.f79971i.get(i10));
        }
        for (int i11 = 0; i11 < buffer.capacity(); i11++) {
            nativeIntBuffer.set(i11 + capacity, buffer.get(i11));
        }
        this.f79971i = nativeIntBuffer;
        this.f79955F = true;
    }

    public NativeShortBuffer B0() {
        return this.f79973k;
    }

    public C3593a B2(C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling) {
        return C2(ray, rayMode, backfaceCulling, f79934S.get(), f79935T.get(), f79936U.get(), f79938W.get(), f79947v0.get(), f79930D0.get(), f79942b1.get(), f79943i1.get());
    }

    public void C(vc.n buffer) {
        B(buffer.f121470a);
    }

    public NativeByteBuffer C0() {
        return this.f79974l;
    }

    public C3593a C2(C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling, Vector3 vertice1, Vector3 vertice2, Vector3 vertice3, Vector3 normal, Vector3 tmp1, Vector3 tmp2, Vector3 tmp3, Vector3 tmp4) {
        NativeFloatBuffer nativeFloatBuffer;
        float f10;
        int i10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        Vertex.RayMode rayMode2;
        C3595c c3595c;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        C3595c c3595c2 = ray;
        Vertex.RayMode rayMode3 = rayMode;
        boolean z10 = backfaceCulling;
        if (this.f79950A != null) {
            return this.f79950A.U(c3595c2, rayMode3, z10);
        }
        if (this.f79951B.compareAndSet(false, true)) {
            ca.c.D(new n());
        }
        try {
            NativeFloatBuffer i12 = i1();
            NativeIntBuffer V02 = V0();
            NativeFloatBuffer a12 = a1();
            if (i12 == null || V02 == null) {
                return null;
            }
            return T(i12, V02, a12, null, ray, c3595c2.f31954c, backfaceCulling, rayMode, d0());
        } catch (Exception e10) {
            e10.printStackTrace();
            AABB d02 = d0();
            if (!G1(c3595c2, d02.z(), d02.u())) {
                return null;
            }
            NativeFloatBuffer i13 = i1();
            NativeFloatBuffer a13 = a1();
            NativeIntBuffer V03 = V0();
            if (i13 != null && V03 != null) {
                float x10 = c3595c2.f31953b.f31957b.getX();
                float y10 = c3595c2.f31953b.f31957b.getY();
                float z11 = c3595c2.f31953b.f31957b.getZ();
                float x11 = c3595c2.f31953b.f31958c.getX();
                float y11 = c3595c2.f31953b.f31958c.getY();
                float z12 = c3595c2.f31953b.f31958c.getZ();
                float f23 = (x11 * x11) + (y11 * y11) + (z12 * z12);
                if (f23 <= 1.0E-12f) {
                    return null;
                }
                float sqrt = 1.0f / ((float) Math.sqrt(f23));
                float f24 = x11 * sqrt;
                float f25 = y11 * sqrt;
                float f26 = z12 * sqrt;
                float f27 = c3595c2.f31954c;
                if (f27 <= 0.0f) {
                    f27 = Float.POSITIVE_INFINITY;
                }
                int capacity = a13 != null ? a13.capacity() : 0;
                float f28 = 0.0f;
                float f29 = 0.0f;
                float f30 = 0.0f;
                float f31 = 0.0f;
                float f32 = 0.0f;
                float f33 = 0.0f;
                float f34 = 0.0f;
                float f35 = 0.0f;
                float f36 = 0.0f;
                float f37 = 0.0f;
                float f38 = 0.0f;
                float f39 = 0.0f;
                float f40 = 0.0f;
                float f41 = 0.0f;
                float f42 = 0.0f;
                float f43 = 0.0f;
                float f44 = 0.0f;
                float f45 = 0.0f;
                float f46 = 0.0f;
                float f47 = 0.0f;
                float f48 = 0.0f;
                float f49 = 0.0f;
                float f50 = Float.NEGATIVE_INFINITY;
                float f51 = Float.POSITIVE_INFINITY;
                int i11 = 0;
                while (i11 < V03.capacity()) {
                    int i14 = V03.get(i11);
                    int i15 = V03.get(i11 + 1);
                    int i16 = V03.get(i11 + 2);
                    NativeIntBuffer nativeIntBuffer = V03;
                    int i17 = i14 * 3;
                    int i18 = i11;
                    int i19 = i15 * 3;
                    int i20 = i16 * 3;
                    float f52 = i13.get(i17);
                    float f53 = i13.get(i17 + 1);
                    float f54 = i13.get(i17 + 2);
                    float f55 = i13.get(i19);
                    float f56 = i13.get(i19 + 1);
                    NativeFloatBuffer nativeFloatBuffer2 = a13;
                    float f57 = f55 - f52;
                    float f58 = f56 - f53;
                    float f59 = i13.get(i19 + 2) - f54;
                    float f60 = i13.get(i20) - f52;
                    float f61 = i13.get(i20 + 1) - f53;
                    float f62 = i13.get(i20 + 2) - f54;
                    float f63 = (f25 * f62) - (f26 * f61);
                    float f64 = (f26 * f60) - (f24 * f62);
                    float f65 = (f24 * f61) - (f25 * f60);
                    float f66 = (f57 * f63) + (f58 * f64) + (f59 * f65);
                    if (!z10 ? f66 <= -1.0E-8f || f66 >= 1.0E-8f : f66 > 1.0E-8f) {
                        float f67 = 1.0f / f66;
                        float f68 = x10 - f52;
                        float f69 = y10 - f53;
                        float f70 = z11 - f54;
                        float f71 = ((f63 * f68) + (f64 * f69) + (f65 * f70)) * f67;
                        if (f71 >= 0.0f && f71 <= 1.0f) {
                            float f72 = (f69 * f59) - (f70 * f58);
                            float f73 = (f70 * f57) - (f68 * f59);
                            float f74 = (f68 * f58) - (f69 * f57);
                            float f75 = ((f24 * f72) + (f25 * f73) + (f26 * f74)) * f67;
                            if (f75 >= 0.0f && f71 + f75 <= 1.0f) {
                                float f76 = ((f72 * f60) + (f73 * f61) + (f74 * f62)) * f67;
                                if (f76 >= 0.0f && f76 <= f27) {
                                    float f77 = (f58 * f62) - (f59 * f61);
                                    float f78 = (f59 * f60) - (f62 * f57);
                                    float f79 = (f57 * f61) - (f58 * f60);
                                    float f80 = (f77 * f77) + (f78 * f78) + (f79 * f79);
                                    if (f80 > 1.0E-12f) {
                                        float sqrt2 = 1.0f / ((float) Math.sqrt(f80));
                                        f77 *= sqrt2;
                                        f78 *= sqrt2;
                                        f79 *= sqrt2;
                                    }
                                    int i21 = capacity;
                                    float f81 = f77;
                                    float f82 = f79;
                                    if (i21 > 0) {
                                        int i22 = i14 * 2;
                                        int i23 = i22 + 1;
                                        nativeFloatBuffer = i13;
                                        if (i23 < i21) {
                                            f15 = nativeFloatBuffer2.get(i22);
                                            f20 = nativeFloatBuffer2.get(i23);
                                        } else {
                                            f20 = 0.0f;
                                            f15 = 0.0f;
                                        }
                                        float f83 = f20;
                                        int i24 = i15 * 2;
                                        f10 = f27;
                                        int i25 = i24 + 1;
                                        if (i25 < i21) {
                                            f21 = nativeFloatBuffer2.get(i24);
                                            f22 = nativeFloatBuffer2.get(i25);
                                        } else {
                                            f21 = 0.0f;
                                            f22 = 0.0f;
                                        }
                                        float f84 = f21;
                                        int i26 = i16 * 2;
                                        float f85 = f22;
                                        int i27 = i26 + 1;
                                        if (i27 < i21) {
                                            float f86 = nativeFloatBuffer2.get(i26);
                                            f14 = nativeFloatBuffer2.get(i27);
                                            f13 = f84;
                                            f16 = f86;
                                            f12 = f83;
                                            nativeFloatBuffer2 = nativeFloatBuffer2;
                                        } else {
                                            f12 = f83;
                                            nativeFloatBuffer2 = nativeFloatBuffer2;
                                            f13 = f84;
                                            f14 = 0.0f;
                                            f16 = 0.0f;
                                        }
                                        f11 = f85;
                                        i10 = i21;
                                    } else {
                                        nativeFloatBuffer = i13;
                                        f10 = f27;
                                        i10 = i21;
                                        f11 = 0.0f;
                                        f12 = 0.0f;
                                        f13 = 0.0f;
                                        f14 = 0.0f;
                                        f15 = 0.0f;
                                        f16 = 0.0f;
                                    }
                                    float f87 = f14;
                                    rayMode2 = rayMode;
                                    if (rayMode2 == Vertex.RayMode.FirstHit) {
                                        Vector3 vector3 = new Vector3(x10 + (f24 * f76), y10 + (f25 * f76), z11 + (f76 * f26));
                                        C3593a c3593a = new C3593a();
                                        c3593a.f31932r = true;
                                        c3593a.v(vector3);
                                        c3593a.u(new Vector3(f24, f25, f26));
                                        c3593a.s(new Vector3(f81, f78, f82));
                                        c3593a.setDistance(vector3.distance(ray.f31953b.f31957b));
                                        float f88 = (1.0f - f71) - f75;
                                        c3593a.A(new Vector2(f15, f12));
                                        c3593a.B(new Vector2(f13, f11));
                                        float f89 = f16;
                                        c3593a.C(new Vector2(f89, f87));
                                        c3593a.D(new Vector2((f15 * f88) + (f13 * f71) + (f89 * f75), (f12 * f88) + (f11 * f71) + (f87 * f75)));
                                        return c3593a;
                                    }
                                    float f90 = f16;
                                    c3595c = ray;
                                    float f91 = f51;
                                    float f92 = f11;
                                    f17 = f91;
                                    if (f76 < f17) {
                                        f30 = f82;
                                        f34 = f12;
                                        f35 = f13;
                                        f32 = f75;
                                        f37 = f90;
                                        f33 = f15;
                                        f29 = f78;
                                        f36 = f92;
                                        f28 = f81;
                                        f38 = f87;
                                        f31 = f71;
                                        f17 = f76;
                                        f19 = f50;
                                        f18 = f30;
                                    } else {
                                        float f93 = f50;
                                        f18 = f82;
                                        f19 = f93;
                                    }
                                    if (f76 > f19) {
                                        f45 = f12;
                                        f46 = f13;
                                        f43 = f75;
                                        f48 = f90;
                                        f44 = f15;
                                        f40 = f78;
                                        f47 = f92;
                                        f41 = f18;
                                        f39 = f81;
                                        f49 = f87;
                                        f42 = f71;
                                        f50 = f76;
                                        f51 = f17;
                                        i11 = i18 + 3;
                                        V03 = nativeIntBuffer;
                                        f27 = f10;
                                        a13 = nativeFloatBuffer2;
                                        c3595c2 = c3595c;
                                        rayMode3 = rayMode2;
                                        i13 = nativeFloatBuffer;
                                        z10 = backfaceCulling;
                                        capacity = i10;
                                    }
                                    f51 = f17;
                                    f50 = f19;
                                    i11 = i18 + 3;
                                    V03 = nativeIntBuffer;
                                    f27 = f10;
                                    a13 = nativeFloatBuffer2;
                                    c3595c2 = c3595c;
                                    rayMode3 = rayMode2;
                                    i13 = nativeFloatBuffer;
                                    z10 = backfaceCulling;
                                    capacity = i10;
                                }
                            }
                        }
                    }
                    c3595c = ray;
                    rayMode2 = rayMode;
                    f10 = f27;
                    i10 = capacity;
                    f19 = f50;
                    nativeFloatBuffer = i13;
                    f17 = f51;
                    f51 = f17;
                    f50 = f19;
                    i11 = i18 + 3;
                    V03 = nativeIntBuffer;
                    f27 = f10;
                    a13 = nativeFloatBuffer2;
                    c3595c2 = c3595c;
                    rayMode3 = rayMode2;
                    i13 = nativeFloatBuffer;
                    z10 = backfaceCulling;
                    capacity = i10;
                }
                C3595c c3595c3 = c3595c2;
                Vertex.RayMode rayMode4 = rayMode3;
                float f94 = f51;
                float f95 = f50;
                if (rayMode4 == Vertex.RayMode.ClosestPoint && f94 < Float.POSITIVE_INFINITY) {
                    Vector3 vector32 = new Vector3(x10 + (f24 * f94), y10 + (f25 * f94), z11 + (f26 * f94));
                    C3593a c3593a2 = new C3593a();
                    c3593a2.f31932r = true;
                    c3593a2.v(vector32);
                    c3593a2.u(c3595c3.f31953b.f31958c.m1249clone());
                    c3593a2.s(new Vector3(f28, f29, f30));
                    c3593a2.setDistance(f94);
                    float f96 = (1.0f - f31) - f32;
                    float f97 = f33;
                    float f98 = f34;
                    c3593a2.A(new Vector2(f97, f98));
                    float f99 = f35;
                    float f100 = f36;
                    c3593a2.B(new Vector2(f99, f100));
                    float f101 = f37;
                    float f102 = f38;
                    c3593a2.C(new Vector2(f101, f102));
                    c3593a2.D(new Vector2((f97 * f96) + (f99 * f31) + (f101 * f32), (f98 * f96) + (f100 * f31) + (f102 * f32)));
                    return c3593a2;
                }
                if (rayMode4 == Vertex.RayMode.FarHit && f95 > Float.NEGATIVE_INFINITY) {
                    Vector3 vector33 = new Vector3(x10 + (f24 * f95), y10 + (f25 * f95), z11 + (f26 * f95));
                    C3593a c3593a3 = new C3593a();
                    c3593a3.f31932r = true;
                    c3593a3.v(vector33);
                    c3593a3.u(c3595c3.f31953b.f31958c.m1249clone());
                    c3593a3.s(new Vector3(f39, f40, f41));
                    c3593a3.setDistance(f95);
                    float f103 = (1.0f - f42) - f43;
                    float f104 = f44;
                    float f105 = f45;
                    c3593a3.A(new Vector2(f104, f105));
                    float f106 = f46;
                    float f107 = f47;
                    c3593a3.B(new Vector2(f106, f107));
                    float f108 = f48;
                    float f109 = f49;
                    c3593a3.C(new Vector2(f108, f109));
                    c3593a3.D(new Vector2((f104 * f103) + (f106 * f42) + (f108 * f43), (f105 * f103) + (f107 * f42) + (f109 * f43)));
                    return c3593a3;
                }
            }
            return null;
        }
    }

    public void D(NativeFloatBuffer buffer) {
        this.f79967c = this.f79967c.concat(buffer);
        H1();
        s1();
        this.f79955F = true;
    }

    public Vector3 D0(int idx) {
        return E0(idx, new Vector3());
    }

    public C3593a D2(Transform transform, C3595c ray, Vertex.RayMode rayMode) {
        return H2(transform.x1(), ray, rayMode);
    }

    public void E(vc.q buffer) {
        D(buffer.k());
    }

    public Vector3 E0(int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(this.f79970g.get(i10));
        out.setY(this.f79970g.get(i10 + 1));
        out.setZ(this.f79970g.get(i10 + 2));
        return out;
    }

    public C3593a E2(Transform transform, C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling) {
        return I2(transform.x1(), ray, rayMode, backfaceCulling);
    }

    public void F(boolean tbn, boolean boundingBox) {
        if (I(tbn, boundingBox)) {
            H(tbn, boundingBox);
        }
    }

    public NativeFloatBuffer F0() {
        return this.f79970g;
    }

    public void F1() {
        synchronized (this.f79963N) {
            try {
                this.f79964O.addAll(this.f79963N);
                for (int i10 = 0; i10 < this.f79964O.size(); i10++) {
                    this.f79964O.get(i10).a();
                }
                this.f79964O.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public C3593a F2(com.itsmagic.engine.Engines.Engine.Vector.f matrix, C3595c ray, Vertex.RayMode rayMode) {
        float[] fArr = f79946q1.get();
        matrix.o(fArr);
        return I2(fArr, ray, rayMode, true);
    }

    public void G() {
        O9.b.d(new k());
    }

    public int G0() {
        NativeFloatBuffer nativeFloatBuffer = this.f79970g;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }

    public boolean G1(C3595c ray, Vector3 min, Vector3 max) {
        float x10 = (min.getX() - ray.f31953b.f31957b.getX()) / ray.f31953b.f31958c.getX();
        float x11 = (max.getX() - ray.f31953b.f31957b.getX()) / ray.f31953b.f31958c.getX();
        if (x10 > x11) {
            x11 = x10;
            x10 = x11;
        }
        float y10 = (min.getY() - ray.f31953b.f31957b.getY()) / ray.f31953b.f31958c.getY();
        float y11 = (max.getY() - ray.f31953b.f31957b.getY()) / ray.f31953b.f31958c.getY();
        if (y10 <= y11) {
            y11 = y10;
            y10 = y11;
        }
        if (x10 <= y10 && y11 <= x11) {
            if (y11 > x10) {
                x10 = y11;
            }
            if (y10 < x11) {
                x11 = y10;
            }
            float z10 = (min.getZ() - ray.f31953b.f31957b.getZ()) / ray.f31953b.f31958c.getZ();
            float z11 = (max.getZ() - ray.f31953b.f31957b.getZ()) / ray.f31953b.f31958c.getZ();
            if (z10 <= z11) {
                z11 = z10;
                z10 = z11;
            }
            if (x10 <= z10 && z11 <= x11) {
                return true;
            }
        }
        return false;
    }

    public C3593a G2(com.itsmagic.engine.Engines.Engine.Vector.f matrix, C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling) {
        float[] fArr = f79946q1.get();
        matrix.o(fArr);
        return I2(fArr, ray, rayMode, backfaceCulling);
    }

    public final void H(boolean tbn, boolean boundingBox) {
        try {
            this.f79955F = true;
            b0();
            if (boundingBox) {
                H1();
                d0();
                k0();
            }
            Q();
            this.f79950A = null;
            this.f79951B.set(false);
        } catch (Throwable th2) {
            W();
            throw th2;
        }
    }

    public vc.q H0() {
        return new vc.q(this.f79970g);
    }

    public void H1() {
        this.f79977o = null;
        this.f79978p = null;
    }

    public C3593a H2(float[] matrix, C3595c ray, Vertex.RayMode rayMode) {
        return I2(matrix, ray, rayMode, true);
    }

    public final boolean I(boolean tbn, boolean boundingBox) {
        synchronized (this.f79956G) {
            try {
                if (!this.f79957H) {
                    this.f79957H = true;
                    return true;
                }
                this.f79958I = true;
                this.f79959J = tbn | this.f79959J;
                this.f79960K |= boundingBox;
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public com.itsmagic.engine.Engines.Engine.Vector.h I0(int idx) {
        return J0(idx, new com.itsmagic.engine.Engines.Engine.Vector.h());
    }

    public C3593a I2(float[] matrix, C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling) {
        return J2(matrix, ray, rayMode, backfaceCulling, false);
    }

    public void J() {
        BVHMesh bVHMesh = new BVHMesh();
        bVHMesh.H(this.f79967c, this.f79971i);
        this.f79950A = bVHMesh;
        this.f79951B.set(false);
    }

    public com.itsmagic.engine.Engines.Engine.Vector.h J0(int idx, com.itsmagic.engine.Engines.Engine.Vector.h out) {
        int i10 = idx * 3;
        out.f79903b = this.f79971i.get(i10);
        out.f79904c = this.f79971i.get(i10 + 1);
        out.f79905d = this.f79971i.get(i10 + 2);
        return out;
    }

    public void J1(Vertex vertex, com.itsmagic.engine.Engines.Engine.Vector.f matrixMultiplier, int verticesOffset, int normalsOffset, int tangentsOffset) {
        if (vertex.f79967c != null && this.f79967c != null) {
            for (int i10 = 0; i10 < vertex.j1(); i10++) {
                Vector3 g12 = vertex.g1(i10);
                matrixMultiplier.P(g12, g12);
                p2(i10 + verticesOffset, g12);
            }
        }
        if (vertex.f79969e != null && this.f79969e != null) {
            for (int i11 = 0; i11 < vertex.y0(); i11++) {
                Vector3 v02 = vertex.v0(i11);
                matrixMultiplier.g0(v02, v02);
                X1(i11 + normalsOffset, v02);
            }
        }
        if (vertex.f79970g != null && this.f79970g != null) {
            for (int i12 = 0; i12 < vertex.G0(); i12++) {
                Vector3 D02 = vertex.D0(i12);
                matrixMultiplier.g0(D02, D02);
                d2(i12 + tangentsOffset, D02);
            }
        }
        this.f79977o = null;
    }

    public C3593a J2(float[] matrix, C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling, boolean noAABB) {
        NativeFloatBuffer nativeFloatBuffer;
        float f10;
        int i10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        Vertex.RayMode rayMode2;
        float f20;
        float f21;
        float f22;
        float f23;
        AABB aabb;
        C3595c c3595c = ray;
        Vertex.RayMode rayMode3 = rayMode;
        if (this.f79950A != null) {
            return this.f79950A.c0(matrix, ray, rayMode, backfaceCulling, noAABB);
        }
        if (this.f79951B.compareAndSet(false, true)) {
            ca.c.D(new m());
        }
        try {
            NativeFloatBuffer i12 = i1();
            NativeIntBuffer V02 = V0();
            NativeFloatBuffer a12 = a1();
            if (i12 == null || V02 == null) {
                return null;
            }
            if (noAABB) {
                aabb = null;
            } else {
                AABB d02 = d0();
                if (d02 != null) {
                    d02 = d02.d(matrix);
                }
                aabb = d02;
            }
            return T(i12, V02, a12, matrix, ray, c3595c.f31954c, backfaceCulling, rayMode, aabb);
        } catch (Exception e10) {
            e10.printStackTrace();
            if (!noAABB) {
                AABB d10 = d0().d(matrix);
                if (!G1(c3595c, d10.z(), d10.u())) {
                    return null;
                }
            }
            NativeFloatBuffer i13 = i1();
            NativeFloatBuffer a13 = a1();
            NativeIntBuffer V03 = V0();
            if (i13 != null && V03 != null) {
                float x10 = c3595c.f31953b.f31957b.getX();
                float y10 = c3595c.f31953b.f31957b.getY();
                float z10 = c3595c.f31953b.f31957b.getZ();
                float x11 = c3595c.f31953b.f31958c.getX();
                float y11 = c3595c.f31953b.f31958c.getY();
                float z11 = c3595c.f31953b.f31958c.getZ();
                float f24 = (x11 * x11) + (y11 * y11) + (z11 * z11);
                if (f24 <= 1.0E-12f) {
                    return null;
                }
                float sqrt = 1.0f / ((float) Math.sqrt(f24));
                float f25 = x11 * sqrt;
                float f26 = y11 * sqrt;
                float f27 = z11 * sqrt;
                float f28 = c3595c.f31954c;
                if (f28 <= 0.0f) {
                    f28 = Float.POSITIVE_INFINITY;
                }
                int capacity = a13 != null ? a13.capacity() : 0;
                float f29 = matrix != null ? matrix[0] : 1.0f;
                float f30 = matrix != null ? matrix[1] : 0.0f;
                float f31 = matrix != null ? matrix[2] : 0.0f;
                float f32 = matrix != null ? matrix[4] : 0.0f;
                float f33 = matrix != null ? matrix[5] : 1.0f;
                float f34 = matrix != null ? matrix[6] : 0.0f;
                float f35 = matrix != null ? matrix[8] : 0.0f;
                float f36 = matrix != null ? matrix[9] : 0.0f;
                float f37 = matrix != null ? matrix[10] : 1.0f;
                float f38 = matrix != null ? matrix[12] : 0.0f;
                float f39 = matrix != null ? matrix[13] : 0.0f;
                float f40 = matrix != null ? matrix[14] : 0.0f;
                float f41 = 0.0f;
                float f42 = 0.0f;
                float f43 = 0.0f;
                float f44 = 0.0f;
                float f45 = 0.0f;
                float f46 = 0.0f;
                float f47 = 0.0f;
                float f48 = 0.0f;
                float f49 = 0.0f;
                float f50 = 0.0f;
                float f51 = 0.0f;
                float f52 = 0.0f;
                float f53 = 0.0f;
                float f54 = 0.0f;
                float f55 = 0.0f;
                float f56 = 0.0f;
                float f57 = 0.0f;
                float f58 = 0.0f;
                float f59 = 0.0f;
                float f60 = 0.0f;
                float f61 = 0.0f;
                float f62 = Float.POSITIVE_INFINITY;
                float f63 = Float.NEGATIVE_INFINITY;
                int i11 = 0;
                float f64 = 0.0f;
                while (i11 < V03.capacity()) {
                    int i14 = V03.get(i11);
                    int i15 = V03.get(i11 + 1);
                    int i16 = V03.get(i11 + 2);
                    NativeIntBuffer nativeIntBuffer = V03;
                    int i17 = i14 * 3;
                    int i18 = i11;
                    int i19 = i15 * 3;
                    int i20 = i16 * 3;
                    float f65 = i13.get(i17);
                    float f66 = i13.get(i17 + 1);
                    float f67 = i13.get(i17 + 2);
                    float f68 = i13.get(i19);
                    float f69 = i13.get(i19 + 1);
                    float f70 = i13.get(i19 + 2);
                    float f71 = i13.get(i20);
                    NativeFloatBuffer nativeFloatBuffer2 = a13;
                    float f72 = i13.get(i20 + 1);
                    float f73 = i13.get(i20 + 2);
                    float f74 = (f29 * f65) + (f32 * f66) + (f35 * f67) + f38;
                    float f75 = (f30 * f65) + (f33 * f66) + (f36 * f67) + f39;
                    float f76 = (f65 * f31) + (f66 * f34) + (f67 * f37) + f40;
                    float f77 = ((((f29 * f68) + (f32 * f69)) + (f35 * f70)) + f38) - f74;
                    float f78 = ((((f30 * f68) + (f33 * f69)) + (f36 * f70)) + f39) - f75;
                    float f79 = ((((f68 * f31) + (f69 * f34)) + (f70 * f37)) + f40) - f76;
                    float f80 = ((((f29 * f71) + (f32 * f72)) + (f35 * f73)) + f38) - f74;
                    float f81 = ((((f30 * f71) + (f33 * f72)) + (f36 * f73)) + f39) - f75;
                    float f82 = ((((f71 * f31) + (f72 * f34)) + (f73 * f37)) + f40) - f76;
                    float f83 = (f26 * f82) - (f27 * f81);
                    float f84 = (f27 * f80) - (f25 * f82);
                    float f85 = (f25 * f81) - (f26 * f80);
                    float f86 = (f77 * f83) + (f78 * f84) + (f79 * f85);
                    if (!backfaceCulling ? f86 <= -1.0E-8f || f86 >= 1.0E-8f : f86 > 1.0E-8f) {
                        float f87 = 1.0f / f86;
                        float f88 = x10 - f74;
                        float f89 = y10 - f75;
                        float f90 = z10 - f76;
                        float f91 = ((f83 * f88) + (f84 * f89) + (f85 * f90)) * f87;
                        if (f91 >= 0.0f && f91 <= 1.0f) {
                            float f92 = (f89 * f79) - (f90 * f78);
                            float f93 = (f90 * f77) - (f88 * f79);
                            float f94 = (f88 * f78) - (f89 * f77);
                            float f95 = ((f25 * f92) + (f26 * f93) + (f27 * f94)) * f87;
                            if (f95 >= 0.0f && f91 + f95 <= 1.0f) {
                                float f96 = ((f92 * f80) + (f93 * f81) + (f94 * f82)) * f87;
                                if (f96 < 0.0f || f96 > f28) {
                                    c3595c = ray;
                                    nativeFloatBuffer = i13;
                                    f10 = f40;
                                    i10 = capacity;
                                    f11 = f62;
                                    f12 = f63;
                                    f13 = f28;
                                    rayMode2 = rayMode;
                                    f62 = f11;
                                    f63 = f12;
                                    i11 = i18 + 3;
                                    i13 = nativeFloatBuffer;
                                    rayMode3 = rayMode2;
                                    f28 = f13;
                                    V03 = nativeIntBuffer;
                                    capacity = i10;
                                    f40 = f10;
                                    a13 = nativeFloatBuffer2;
                                } else {
                                    float f97 = (f78 * f82) - (f79 * f81);
                                    float f98 = (f79 * f80) - (f82 * f77);
                                    float f99 = (f77 * f81) - (f78 * f80);
                                    float f100 = (f97 * f97) + (f98 * f98) + (f99 * f99);
                                    nativeFloatBuffer = i13;
                                    if (f100 > 1.0E-12f) {
                                        float sqrt2 = 1.0f / ((float) Math.sqrt(f100));
                                        f97 *= sqrt2;
                                        f98 *= sqrt2;
                                        f99 *= sqrt2;
                                    }
                                    int i21 = capacity;
                                    float f101 = f98;
                                    float f102 = f97;
                                    if (i21 > 0) {
                                        int i22 = i14 * 2;
                                        int i23 = i22 + 1;
                                        f13 = f28;
                                        if (i23 < i21) {
                                            f21 = nativeFloatBuffer2.get(i22);
                                            f17 = nativeFloatBuffer2.get(i23);
                                        } else {
                                            f21 = 0.0f;
                                            f17 = 0.0f;
                                        }
                                        f10 = f40;
                                        int i24 = i15 * 2;
                                        float f103 = f21;
                                        int i25 = i24 + 1;
                                        if (i25 < i21) {
                                            f22 = nativeFloatBuffer2.get(i24);
                                            f23 = nativeFloatBuffer2.get(i25);
                                        } else {
                                            f22 = 0.0f;
                                            f23 = 0.0f;
                                        }
                                        float f104 = f22;
                                        int i26 = i16 * 2;
                                        float f105 = f23;
                                        int i27 = i26 + 1;
                                        if (i27 < i21) {
                                            float f106 = nativeFloatBuffer2.get(i26);
                                            float f107 = nativeFloatBuffer2.get(i27);
                                            nativeFloatBuffer2 = nativeFloatBuffer2;
                                            f19 = f107;
                                            f14 = f105;
                                            f16 = f104;
                                            i10 = i21;
                                            f18 = f106;
                                            f15 = f103;
                                        } else {
                                            nativeFloatBuffer2 = nativeFloatBuffer2;
                                            f19 = 0.0f;
                                            f14 = f105;
                                            f15 = f103;
                                            f16 = f104;
                                            i10 = i21;
                                            f18 = 0.0f;
                                        }
                                    } else {
                                        f13 = f28;
                                        f10 = f40;
                                        i10 = i21;
                                        f14 = 0.0f;
                                        f15 = 0.0f;
                                        f16 = 0.0f;
                                        f17 = 0.0f;
                                        f18 = 0.0f;
                                        f19 = 0.0f;
                                    }
                                    float f108 = f14;
                                    rayMode2 = rayMode;
                                    if (rayMode2 == Vertex.RayMode.FirstHit) {
                                        Vector3 vector3 = new Vector3(x10 + (f25 * f96), y10 + (f26 * f96), z10 + (f27 * f96));
                                        C3593a c3593a = new C3593a();
                                        c3593a.f31932r = true;
                                        c3593a.v(vector3);
                                        c3593a.u(ray.f31953b.f31958c.m1249clone());
                                        c3593a.s(new Vector3(f102, f101, f99));
                                        c3593a.setDistance(f96);
                                        float f109 = (1.0f - f91) - f95;
                                        c3593a.A(new Vector2(f15, f17));
                                        c3593a.B(new Vector2(f16, f108));
                                        float f110 = f18;
                                        float f111 = f19;
                                        c3593a.C(new Vector2(f110, f111));
                                        c3593a.D(new Vector2((f15 * f109) + (f16 * f91) + (f110 * f95), (f17 * f109) + (f108 * f91) + (f111 * f95)));
                                        return c3593a;
                                    }
                                    c3595c = ray;
                                    float f112 = f19;
                                    f11 = f62;
                                    float f113 = f18;
                                    if (f96 < f11) {
                                        f41 = f102;
                                        f64 = f91;
                                        f43 = f99;
                                        f45 = f15;
                                        f11 = f96;
                                        f47 = f16;
                                        f46 = f17;
                                        f42 = f101;
                                        f48 = f108;
                                        f49 = f113;
                                        f50 = f112;
                                        f44 = f95;
                                        f12 = f63;
                                        f20 = f41;
                                    } else {
                                        float f114 = f63;
                                        f20 = f102;
                                        f12 = f114;
                                    }
                                    if (f96 > f12) {
                                        f54 = f91;
                                        f53 = f99;
                                        f56 = f15;
                                        f58 = f16;
                                        f57 = f17;
                                        f52 = f101;
                                        f51 = f20;
                                        f59 = f108;
                                        f60 = f113;
                                        f61 = f112;
                                        f55 = f95;
                                        f62 = f11;
                                        f63 = f96;
                                        i11 = i18 + 3;
                                        i13 = nativeFloatBuffer;
                                        rayMode3 = rayMode2;
                                        f28 = f13;
                                        V03 = nativeIntBuffer;
                                        capacity = i10;
                                        f40 = f10;
                                        a13 = nativeFloatBuffer2;
                                    }
                                    f62 = f11;
                                    f63 = f12;
                                    i11 = i18 + 3;
                                    i13 = nativeFloatBuffer;
                                    rayMode3 = rayMode2;
                                    f28 = f13;
                                    V03 = nativeIntBuffer;
                                    capacity = i10;
                                    f40 = f10;
                                    a13 = nativeFloatBuffer2;
                                }
                            }
                        }
                    }
                    c3595c = ray;
                    nativeFloatBuffer = i13;
                    f10 = f40;
                    i10 = capacity;
                    f11 = f62;
                    f12 = f63;
                    f13 = f28;
                    rayMode2 = rayMode;
                    f62 = f11;
                    f63 = f12;
                    i11 = i18 + 3;
                    i13 = nativeFloatBuffer;
                    rayMode3 = rayMode2;
                    f28 = f13;
                    V03 = nativeIntBuffer;
                    capacity = i10;
                    f40 = f10;
                    a13 = nativeFloatBuffer2;
                }
                Vertex.RayMode rayMode4 = rayMode3;
                float f115 = f62;
                float f116 = f63;
                if (rayMode4 == Vertex.RayMode.ClosestPoint && f115 < Float.POSITIVE_INFINITY) {
                    Vector3 vector32 = new Vector3(x10 + (f25 * f115), y10 + (f26 * f115), z10 + (f27 * f115));
                    C3593a c3593a2 = new C3593a();
                    c3593a2.f31932r = true;
                    c3593a2.v(vector32);
                    c3593a2.u(c3595c.f31953b.f31958c.m1249clone());
                    c3593a2.s(new Vector3(f41, f42, f43));
                    c3593a2.setDistance(f115);
                    float f117 = (1.0f - f64) - f44;
                    float f118 = f45;
                    float f119 = f46;
                    c3593a2.A(new Vector2(f118, f119));
                    float f120 = f47;
                    float f121 = f48;
                    c3593a2.B(new Vector2(f120, f121));
                    float f122 = f49;
                    float f123 = f50;
                    c3593a2.C(new Vector2(f122, f123));
                    c3593a2.D(new Vector2((f118 * f117) + (f120 * f64) + (f122 * f44), (f119 * f117) + (f121 * f64) + (f123 * f44)));
                    return c3593a2;
                }
                if (rayMode4 == Vertex.RayMode.FarHit && f116 > Float.NEGATIVE_INFINITY) {
                    Vector3 vector33 = new Vector3(x10 + (f25 * f116), y10 + (f26 * f116), z10 + (f27 * f116));
                    C3593a c3593a3 = new C3593a();
                    c3593a3.f31932r = true;
                    c3593a3.v(vector33);
                    c3593a3.u(c3595c.f31953b.f31958c.m1249clone());
                    c3593a3.s(new Vector3(f51, f52, f53));
                    c3593a3.setDistance(f116);
                    float f124 = (1.0f - f54) - f55;
                    float f125 = f56;
                    float f126 = f57;
                    c3593a3.A(new Vector2(f125, f126));
                    float f127 = f58;
                    float f128 = f59;
                    c3593a3.B(new Vector2(f127, f128));
                    float f129 = f60;
                    float f130 = f61;
                    c3593a3.C(new Vector2(f129, f130));
                    c3593a3.D(new Vector2((f125 * f124) + (f127 * f54) + (f129 * f55), (f126 * f124) + (f128 * f54) + (f130 * f55)));
                    return c3593a3;
                }
            }
            return null;
        }
    }

    public void K() {
        d0();
    }

    public Vector3 K0(int idx) {
        return L0(idx, new Vector3());
    }

    public void K1() {
        V(true);
    }

    public Vector3 L0(int idx, Vector3 out) {
        int i10 = this.f79971i.get(idx * 3) * 3;
        out.setX(this.f79967c.get(i10));
        out.setY(this.f79967c.get(i10 + 1));
        out.setZ(this.f79967c.get(i10 + 2));
        return out;
    }

    public void L1(Cb.a listener) {
        listener.getClass();
        synchronized (this.f79963N) {
            this.f79963N.remove(listener);
        }
    }

    public int M0(int idx) {
        return this.f79971i.get(idx * 3);
    }

    public void M1(AABB boundingBox) {
        this.f79977o = boundingBox;
    }

    public Vector3 N0(int idx) {
        return O0(idx, new Vector3());
    }

    public void N1(int idx, float x10, float y10, float z10) {
        int i10 = idx * 3;
        this.f79972j.set(i10, x10);
        this.f79972j.set(i10 + 1, y10);
        this.f79972j.set(i10 + 2, z10);
        this.f79955F = true;
    }

    public Vector3 O0(int idx, Vector3 out) {
        int i10 = this.f79971i.get((idx * 3) + 1) * 3;
        out.setX(this.f79967c.get(i10));
        out.setY(this.f79967c.get(i10 + 1));
        out.setZ(this.f79967c.get(i10 + 2));
        return out;
    }

    public void O1(int idx, Vector3 v10) {
        int i10 = idx * 3;
        this.f79972j.set(i10, v10.getX());
        this.f79972j.set(i10 + 1, v10.getY());
        this.f79972j.set(i10 + 2, v10.getZ());
        this.f79955F = true;
    }

    public int P0(int idx) {
        return this.f79971i.get((idx * 3) + 1);
    }

    public void P1(NativeFloatBuffer buffer) {
        this.f79972j = buffer;
        s1();
        this.f79955F = true;
    }

    public final void Q() {
        NativeShortBuffer nativeShortBuffer;
        NativeShortBuffer nativeShortBuffer2 = this.f79973k;
        if (nativeShortBuffer2 == null || ((nativeShortBuffer = this.f79975m) == null && (this.f79976n || this.f79971i == null))) {
            new Jb.c(this.f79967c, this.f79968d, this.f79971i, this.f79969e, this.f79970g, this.f79979q, this.f79980r, new o());
            return;
        }
        NativeByteBuffer nativeByteBuffer = this.f79974l;
        NativeIntBuffer nativeIntBuffer = this.f79971i;
        int j12 = j1();
        NativeIntBuffer nativeIntBuffer2 = this.f79971i;
        int capacity = nativeIntBuffer2 != null ? nativeIntBuffer2.capacity() : 0;
        int i10 = capacity / 3;
        if (j12 == 0 || i10 == 0) {
            W();
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = this.f79967c;
        NativeFloatBuffer nativeFloatBuffer2 = this.f79968d;
        NativeFloatBuffer a02 = a0(j12);
        NativeFloatBuffer O10 = O(d0(), j12);
        boolean z10 = (a02 == null || a02 == nativeFloatBuffer2) ? false : true;
        int i11 = nativeByteBuffer != null ? 5 : 4;
        int i12 = i11 - 1;
        boolean z11 = nativeByteBuffer != null;
        boolean z12 = this.f79976n;
        Qb.a.f();
        K8.a.I(new l(z10, a02, O10, nativeByteBuffer, nativeShortBuffer2, j12, i11, i12, z11, nativeFloatBuffer, z12, capacity, nativeShortBuffer, nativeIntBuffer));
    }

    public Vector3 Q0(int idx) {
        return R0(idx, new Vector3());
    }

    public void Q1(vc.q buffer) {
        this.f79972j = buffer.k();
        s1();
        this.f79955F = true;
    }

    public Vector3 R0(int idx, Vector3 out) {
        int i10 = this.f79971i.get((idx * 3) + 2) * 3;
        out.setX(this.f79967c.get(i10));
        out.setY(this.f79967c.get(i10 + 1));
        out.setZ(this.f79967c.get(i10 + 2));
        return out;
    }

    public void R1(boolean editedInGame) {
        this.f79955F = editedInGame;
    }

    public void S(f.a listener) {
        new Jb.f(this.f79967c, this.f79968d, this.f79971i, this.f79969e, this.f79970g, this.f79979q, this.f79980r, listener);
    }

    public void S1(NativeFloatBuffer buffer) {
        this.f79979q = buffer;
        s1();
        this.f79955F = true;
    }

    public void T1(vc.q buffer) {
        this.f79979q = buffer.k();
        s1();
        this.f79955F = true;
    }

    public int U0(int idx) {
        return this.f79971i.get((idx * 3) + 2);
    }

    public void U1(int idx, int x10, int y10, int z10) {
        int i10 = idx * 3;
        this.f79979q.set(i10, x10);
        this.f79979q.set(i10 + 1, y10);
        this.f79979q.set(i10 + 2, z10);
        this.f79955F = true;
    }

    public final void V(boolean forceRegen) {
    }

    public NativeIntBuffer V0() {
        return this.f79971i;
    }

    public void V1(int idx, Vector3 v10) {
        int i10 = idx * 3;
        this.f79979q.set(i10, v10.getX());
        this.f79979q.set(i10 + 1, v10.getY());
        this.f79979q.set(i10 + 2, v10.getZ());
        this.f79955F = true;
    }

    public final void W() {
        synchronized (this.f79956G) {
            try {
                if (!this.f79958I) {
                    this.f79957H = false;
                    return;
                }
                boolean z10 = this.f79959J;
                boolean z11 = this.f79960K;
                this.f79958I = false;
                this.f79959J = false;
                this.f79960K = false;
                H(z10, z11);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int W0() {
        NativeIntBuffer nativeIntBuffer = this.f79971i;
        if (nativeIntBuffer == null) {
            return 0;
        }
        return nativeIntBuffer.capacity() / 3;
    }

    public void W1(int idx, float x10, float y10, float z10) {
        int i10 = idx * 3;
        this.f79969e.set(i10, x10);
        this.f79969e.set(i10 + 1, y10);
        this.f79969e.set(i10 + 2, z10);
        this.f79955F = true;
    }

    public Vertex X(boolean deepCopy) {
        return deepCopy ? Y() : w2();
    }

    public vc.n X0() {
        return new vc.n(this.f79971i);
    }

    public void X1(int idx, Vector3 v10) {
        int i10 = idx * 3;
        this.f79969e.set(i10, v10.getX());
        this.f79969e.set(i10 + 1, v10.getY());
        this.f79969e.set(i10 + 2, v10.getZ());
        this.f79955F = true;
    }

    public Vertex Y() {
        Vertex vertex = new Vertex();
        NativeFloatBuffer nativeFloatBuffer = this.f79967c;
        if (nativeFloatBuffer != null) {
            vertex.q2(nativeFloatBuffer.m1250clone());
        }
        NativeFloatBuffer nativeFloatBuffer2 = this.f79969e;
        if (nativeFloatBuffer2 != null) {
            vertex.Y1(nativeFloatBuffer2.m1250clone());
        }
        NativeIntBuffer nativeIntBuffer = this.f79971i;
        if (nativeIntBuffer != null) {
            vertex.i2(nativeIntBuffer.m1251clone());
        }
        NativeFloatBuffer nativeFloatBuffer3 = this.f79968d;
        if (nativeFloatBuffer3 != null) {
            vertex.m2(nativeFloatBuffer3.m1250clone());
        }
        NativeFloatBuffer nativeFloatBuffer4 = this.f79970g;
        if (nativeFloatBuffer4 != null) {
            vertex.e2(nativeFloatBuffer4.m1250clone());
        }
        NativeFloatBuffer nativeFloatBuffer5 = this.f79972j;
        if (nativeFloatBuffer5 != null) {
            vertex.P1(nativeFloatBuffer5.m1250clone());
        }
        NativeFloatBuffer nativeFloatBuffer6 = this.f79980r;
        if (nativeFloatBuffer6 != null) {
            vertex.s2(nativeFloatBuffer6.m1250clone());
        }
        NativeFloatBuffer nativeFloatBuffer7 = this.f79979q;
        if (nativeFloatBuffer7 != null) {
            vertex.S1(nativeFloatBuffer7.m1250clone());
        }
        vertex.apply();
        return vertex;
    }

    public Vector2 Y0(int idx) {
        return Z0(idx, new Vector2());
    }

    public void Y1(NativeFloatBuffer buffer) {
        this.f79969e = buffer;
        s1();
        this.f79955F = true;
    }

    public void Z() {
        NativeFloatBuffer nativeFloatBuffer = this.f79967c;
        if (nativeFloatBuffer != null && nativeFloatBuffer.validate()) {
            this.f79967c.destroyImmediate();
        }
        this.f79967c = null;
        NativeFloatBuffer nativeFloatBuffer2 = this.f79969e;
        if (nativeFloatBuffer2 != null && nativeFloatBuffer2.validate()) {
            this.f79969e.destroyImmediate();
        }
        this.f79969e = null;
        NativeIntBuffer nativeIntBuffer = this.f79971i;
        if (nativeIntBuffer != null && nativeIntBuffer.validate()) {
            this.f79971i.destroyImmediate();
        }
        this.f79971i = null;
        NativeFloatBuffer nativeFloatBuffer3 = this.f79968d;
        if (nativeFloatBuffer3 != null && nativeFloatBuffer3.validate()) {
            this.f79968d.destroyImmediate();
        }
        this.f79968d = null;
        NativeFloatBuffer nativeFloatBuffer4 = this.f79970g;
        if (nativeFloatBuffer4 != null && nativeFloatBuffer4.validate()) {
            this.f79970g.destroyImmediate();
        }
        this.f79970g = null;
        NativeFloatBuffer nativeFloatBuffer5 = this.f79972j;
        if (nativeFloatBuffer5 != null && nativeFloatBuffer5.validate()) {
            this.f79972j.destroyImmediate();
        }
        this.f79972j = null;
        NativeFloatBuffer nativeFloatBuffer6 = this.f79980r;
        if (nativeFloatBuffer6 != null && nativeFloatBuffer6.validate()) {
            this.f79980r.destroyImmediate();
        }
        this.f79980r = null;
        NativeFloatBuffer nativeFloatBuffer7 = this.f79979q;
        if (nativeFloatBuffer7 != null && nativeFloatBuffer7.validate()) {
            this.f79979q.destroyImmediate();
        }
        this.f79979q = null;
        try {
            Qb.a.d();
            K8.a.G();
            try {
                FilamentVertexBuffer filamentVertexBuffer = this.f79961L;
                if (filamentVertexBuffer != null) {
                    filamentVertexBuffer.destroyImmediate();
                }
            } catch (Error | Exception unused) {
            }
            try {
                Rb.d dVar = this.f79962M;
                if (dVar != null) {
                    dVar.destroyImmediate();
                }
            } catch (Error | Exception unused2) {
            }
        } catch (Error | Exception e10) {
            e10.printStackTrace();
        }
    }

    public Vector2 Z0(int idx, Vector2 out) {
        int i10 = idx * 2;
        out.B0(this.f79968d.get(i10));
        out.C0(this.f79968d.get(i10 + 1));
        return out;
    }

    public void Z1(vc.q buffer) {
        this.f79969e = buffer.k();
        s1();
        this.f79955F = true;
    }

    public final NativeFloatBuffer a0(int vertexCount) {
        NativeFloatBuffer nativeFloatBuffer = this.f79968d;
        if (nativeFloatBuffer != null && nativeFloatBuffer.capacity() >= vertexCount * 2) {
            return this.f79968d;
        }
        NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(vertexCount * 2);
        NativeFloatBuffer nativeFloatBuffer3 = this.f79968d;
        int min = nativeFloatBuffer3 != null ? Math.min(vertexCount, nativeFloatBuffer3.capacity() / 2) : 0;
        NativeFloatBuffer nativeFloatBuffer4 = this.f79968d;
        if (nativeFloatBuffer4 != null && min > 0) {
            nativeFloatBuffer2.put(nativeFloatBuffer4, min * 2);
        }
        while (min < vertexCount) {
            int i10 = min * 3;
            float f10 = this.f79967c.get(i10);
            float f11 = this.f79967c.get(i10 + 2);
            int i11 = min * 2;
            nativeFloatBuffer2.set(i11, f10);
            nativeFloatBuffer2.set(i11 + 1, f11);
            min++;
        }
        nativeFloatBuffer2.position(0);
        return nativeFloatBuffer2;
    }

    public NativeFloatBuffer a1() {
        return this.f79968d;
    }

    public void a2(FilamentVertexBuffer vertexBuffer, Rb.d indexBuffer, Box filamentBoundingBox) {
        this.f79961L = vertexBuffer;
        this.f79962M = indexBuffer;
        this.f79978p = filamentBoundingBox;
    }

    public void apply() {
        F(true, true);
    }

    public void b0() {
    }

    public int b1() {
        NativeFloatBuffer nativeFloatBuffer = this.f79968d;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 2;
    }

    public void b2(NativeShortBuffer quatS4, NativeShortBuffer ushortIndexData, NativeByteBuffer skinBuf, boolean useShort) {
        this.f79973k = quatS4;
        this.f79975m = ushortIndexData;
        this.f79974l = skinBuf;
        this.f79976n = useShort;
    }

    public void c0() {
        V(false);
    }

    public vc.p c1() {
        return new vc.p(this.f79968d);
    }

    public void c2(int idx, float x10, float y10, float z10) {
        int i10 = idx * 3;
        this.f79970g.set(i10, x10);
        this.f79970g.set(i10 + 1, y10);
        this.f79970g.set(i10 + 2, z10);
        this.f79955F = true;
    }

    public AABB d0() {
        if (this.f79977o == null) {
            this.f79977o = new AABB();
            NativeFloatBuffer nativeFloatBuffer = this.f79967c;
            if (nativeFloatBuffer != null && nativeFloatBuffer.capacity() > 3) {
                NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(10);
                try {
                    U(this.f79967c, nativeFloatBuffer2);
                    this.f79977o.s(nativeFloatBuffer2);
                } finally {
                    nativeFloatBuffer2.destroyImmediate();
                }
            }
        }
        return this.f79977o;
    }

    public NativeShortBuffer d1() {
        return this.f79975m;
    }

    public void d2(int idx, Vector3 v10) {
        int i10 = idx * 3;
        this.f79970g.set(i10, v10.getX());
        this.f79970g.set(i10 + 1, v10.getY());
        this.f79970g.set(i10 + 2, v10.getZ());
        this.f79955F = true;
    }

    public float e0() {
        try {
            return d0().getRadius();
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public int e1() {
        return this.f79982t;
    }

    public void e2(NativeFloatBuffer buffer) {
        this.f79970g = buffer;
        s1();
        this.f79955F = true;
    }

    public int f0() {
        return this.f79983u;
    }

    public FilamentVertexBuffer f1() {
        return this.f79961L;
    }

    public void f2(vc.q buffer) {
        this.f79970g = buffer.k();
        s1();
        this.f79955F = true;
    }

    public Vector3 g0(int idx) {
        return h0(idx, new Vector3());
    }

    public Vector3 g1(int idx) {
        return h1(idx, new Vector3());
    }

    public void g2(int idx, int x10, int y10, int z10) {
        int i10 = idx * 3;
        this.f79971i.set(i10, x10);
        this.f79971i.set(i10 + 1, y10);
        this.f79971i.set(i10 + 2, z10);
        this.f79955F = true;
    }

    public Vector3 h0(int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(this.f79972j.get(i10));
        out.setY(this.f79972j.get(i10 + 1));
        out.setZ(this.f79972j.get(i10 + 2));
        return out;
    }

    public Vector3 h1(int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(this.f79967c.get(i10));
        out.setY(this.f79967c.get(i10 + 1));
        out.setZ(this.f79967c.get(i10 + 2));
        return out;
    }

    public void h2(int idx, com.itsmagic.engine.Engines.Engine.Vector.h v10) {
        int i10 = idx * 3;
        this.f79971i.set(i10, v10.J());
        this.f79971i.set(i10 + 1, v10.K());
        this.f79971i.set(i10 + 2, v10.L());
        this.f79955F = true;
    }

    public NativeFloatBuffer i0() {
        return this.f79972j;
    }

    public NativeFloatBuffer i1() {
        return this.f79967c;
    }

    public void i2(NativeIntBuffer buffer) {
        this.f79971i = buffer;
        s1();
        this.f79955F = true;
    }

    public vc.q j0() {
        return new vc.q(this.f79972j);
    }

    public int j1() {
        NativeFloatBuffer nativeFloatBuffer = this.f79967c;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }

    public void j2(vc.n buffer) {
        this.f79971i = buffer.f121470a;
        s1();
        this.f79955F = true;
    }

    public Box k0() {
        if (this.f79978p == null) {
            AABB d02 = d0();
            Vector3 z10 = d02.z();
            Vector3 u10 = d02.u();
            if (z10.equals(u10)) {
                u10 = new Vector3(z10.getX() + 0.001f, z10.getY() + 0.001f, z10.getZ() + 0.001f);
            }
            Vector3 vector3 = new Vector3((z10.getX() + u10.getX()) * 0.5f, (z10.getY() + u10.getY()) * 0.5f, (z10.getZ() + u10.getZ()) * 0.5f);
            Vector3 vector32 = new Vector3((u10.getX() - z10.getX()) * 0.5f, (u10.getY() - z10.getY()) * 0.5f, (u10.getZ() - z10.getZ()) * 0.5f);
            this.f79978p = new Box(new float[]{vector3.getX(), vector3.getY(), vector3.getZ()}, new float[]{vector32.getX(), vector32.getY(), vector32.getZ()});
        }
        return this.f79978p;
    }

    public vc.q k1() {
        return new vc.q(this.f79967c);
    }

    public void k2(int idx, float x10, float y10) {
        int i10 = idx * 2;
        this.f79968d.set(i10, x10);
        this.f79968d.set(i10 + 1, y10);
        this.f79955F = true;
    }

    public Rb.d l0() {
        return this.f79962M;
    }

    public NativeFloatBuffer l1() {
        return this.f79980r;
    }

    public void l2(int idx, Vector2 v10) {
        int i10 = idx * 2;
        this.f79968d.set(i10, v10.f79838x);
        this.f79968d.set(i10 + 1, v10.f79839y);
        this.f79955F = true;
    }

    public NativeFloatBuffer m0() {
        return this.f79979q;
    }

    public void m2(NativeFloatBuffer buffer) {
        this.f79968d = buffer;
        s1();
        this.f79955F = true;
    }

    public float n0(int idx) {
        return this.f79979q.get(idx * 3);
    }

    public Vector3 n1(int idx) {
        return o1(idx, new Vector3());
    }

    public void n2(vc.p buffer) {
        this.f79968d = buffer.h();
        s1();
        this.f79955F = true;
    }

    public float o0(int idx) {
        return this.f79979q.get((idx * 3) + 1);
    }

    public Vector3 o1(int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(this.f79980r.get(i10));
        out.setY(this.f79980r.get(i10 + 1));
        out.setZ(this.f79980r.get(i10 + 2));
        return out;
    }

    public void o2(int idx, float x10, float y10, float z10) {
        int i10 = idx * 3;
        this.f79967c.set(i10, x10);
        this.f79967c.set(i10 + 1, y10);
        this.f79967c.set(i10 + 2, z10);
        H1();
        this.f79955F = true;
    }

    public float p0(int idx) {
        return this.f79979q.get((idx * 3) + 2);
    }

    public int p1() {
        NativeFloatBuffer nativeFloatBuffer = this.f79980r;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }

    public void p2(int idx, Vector3 v10) {
        int i10 = idx * 3;
        this.f79967c.set(i10, v10.getX());
        this.f79967c.set(i10 + 1, v10.getY());
        this.f79967c.set(i10 + 2, v10.getZ());
        H1();
        this.f79955F = true;
    }

    public Vector3 q0(int idx) {
        return r0(idx, new Vector3());
    }

    public vc.q q1() {
        return new vc.q(this.f79980r);
    }

    public void q2(NativeFloatBuffer buffer) {
        this.f79967c = buffer;
        H1();
        s1();
        this.f79955F = true;
    }

    public Vector3 r0(int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(this.f79979q.get(i10));
        out.setY(this.f79979q.get(i10 + 1));
        out.setZ(this.f79979q.get(i10 + 2));
        return out;
    }

    public boolean r1() {
        NativeFloatBuffer nativeFloatBuffer = this.f79972j;
        return nativeFloatBuffer != null && nativeFloatBuffer.capacity() >= this.f79967c.capacity();
    }

    public void r2(vc.q buffer) {
        this.f79967c = buffer.k();
        H1();
        s1();
        this.f79955F = true;
    }

    public int s0() {
        NativeFloatBuffer nativeFloatBuffer = this.f79979q;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }

    public void s1() {
        int j10 = Nc.d.j(0, 99999);
        while (j10 == this.f79983u) {
            j10 = Nc.d.j(0, 99999);
        }
        this.f79983u = j10;
    }

    public void s2(NativeFloatBuffer buffer) {
        this.f79980r = buffer;
        s1();
        this.f79955F = true;
    }

    public vc.q t0() {
        return new vc.q(this.f79979q);
    }

    public void t1() {
        int j10 = Nc.d.j(0, 99999);
        while (j10 == this.f79982t) {
            j10 = Nc.d.j(0, 99999);
        }
        this.f79982t = j10;
    }

    public void t2(vc.q buffer) {
        this.f79980r = buffer.k();
        s1();
        this.f79955F = true;
    }

    @Deprecated
    public String toJson() {
        return new VertexData(this).u();
    }

    public int u0() {
        return this.f79953D;
    }

    public boolean u1() {
        boolean z10;
        synchronized (this.f79956G) {
            try {
                z10 = this.f79957H || this.f79958I;
            } finally {
            }
        }
        return z10;
    }

    public void u2(int idx, float x10, float y10, float z10) {
        int i10 = idx * 3;
        this.f79980r.set(i10, x10);
        this.f79980r.set(i10 + 1, y10);
        this.f79980r.set(i10 + 2, z10);
        this.f79955F = true;
    }

    public void v(Cb.a listener) {
        listener.getClass();
        synchronized (this.f79963N) {
            this.f79963N.add(listener);
        }
    }

    public Vector3 v0(int idx) {
        return w0(idx, new Vector3());
    }

    public boolean v1() {
        return this.f79977o != null;
    }

    public void v2(int idx, Vector3 v10) {
        int i10 = idx * 3;
        this.f79980r.set(i10, v10.getX());
        this.f79980r.set(i10 + 1, v10.getY());
        this.f79980r.set(i10 + 2, v10.getZ());
        this.f79955F = true;
    }

    public void w(Vertex vertex) {
        NativeFloatBuffer nativeFloatBuffer = vertex.f79967c;
        if (nativeFloatBuffer != null) {
            NativeFloatBuffer nativeFloatBuffer2 = this.f79967c;
            int i10 = 0;
            if (nativeFloatBuffer2 != null) {
                int capacity = nativeFloatBuffer2.capacity() / 3;
                this.f79967c = this.f79967c.concat(vertex.f79967c);
                if (vertex.f79971i != null) {
                    NativeIntBuffer nativeIntBuffer = this.f79971i;
                    if (nativeIntBuffer != null) {
                        int capacity2 = nativeIntBuffer.capacity();
                        NativeIntBuffer nativeIntBuffer2 = new NativeIntBuffer(this.f79971i.capacity() + vertex.f79971i.capacity());
                        nativeIntBuffer2.position(0);
                        nativeIntBuffer2.put(this.f79971i);
                        while (i10 < vertex.f79971i.capacity()) {
                            nativeIntBuffer2.set(i10 + capacity2, vertex.f79971i.get(i10) + capacity);
                            i10++;
                        }
                        this.f79971i = nativeIntBuffer2;
                    } else {
                        NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(vertex.f79971i.capacity());
                        while (i10 < vertex.f79971i.capacity()) {
                            nativeIntBuffer3.set(i10, vertex.f79971i.get(i10) + capacity);
                            i10++;
                        }
                        this.f79971i = nativeIntBuffer3;
                    }
                }
            } else {
                this.f79967c = nativeFloatBuffer.m1250clone();
                NativeIntBuffer nativeIntBuffer4 = vertex.f79971i;
                if (nativeIntBuffer4 != null) {
                    NativeIntBuffer nativeIntBuffer5 = this.f79971i;
                    if (nativeIntBuffer5 != null) {
                        nativeIntBuffer5.capacity();
                        NativeIntBuffer nativeIntBuffer6 = new NativeIntBuffer(this.f79971i.capacity() + vertex.f79971i.capacity());
                        nativeIntBuffer6.position(0);
                        nativeIntBuffer6.put(this.f79971i);
                        nativeIntBuffer6.put(vertex.f79971i);
                        this.f79971i = nativeIntBuffer6;
                    } else {
                        this.f79971i = nativeIntBuffer4.m1251clone();
                    }
                }
            }
        }
        NativeFloatBuffer nativeFloatBuffer3 = vertex.f79969e;
        if (nativeFloatBuffer3 != null) {
            NativeFloatBuffer nativeFloatBuffer4 = this.f79969e;
            if (nativeFloatBuffer4 != null) {
                this.f79969e = nativeFloatBuffer4.concat(nativeFloatBuffer3);
            } else {
                this.f79969e = nativeFloatBuffer3.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer5 = vertex.f79970g;
        if (nativeFloatBuffer5 != null) {
            NativeFloatBuffer nativeFloatBuffer6 = this.f79970g;
            if (nativeFloatBuffer6 != null) {
                this.f79970g = nativeFloatBuffer6.concat(nativeFloatBuffer5);
            } else {
                this.f79970g = nativeFloatBuffer5.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer7 = vertex.f79968d;
        if (nativeFloatBuffer7 != null) {
            NativeFloatBuffer nativeFloatBuffer8 = this.f79968d;
            if (nativeFloatBuffer8 != null) {
                this.f79968d = nativeFloatBuffer8.concat(nativeFloatBuffer7);
            } else {
                this.f79968d = nativeFloatBuffer7.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer9 = vertex.f79980r;
        if (nativeFloatBuffer9 != null) {
            NativeFloatBuffer nativeFloatBuffer10 = this.f79980r;
            if (nativeFloatBuffer10 != null) {
                this.f79980r = nativeFloatBuffer10.concat(nativeFloatBuffer9);
            } else {
                this.f79980r = nativeFloatBuffer9.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer11 = vertex.f79979q;
        if (nativeFloatBuffer11 != null) {
            NativeFloatBuffer nativeFloatBuffer12 = this.f79979q;
            if (nativeFloatBuffer12 != null) {
                this.f79979q = nativeFloatBuffer12.concat(nativeFloatBuffer11);
            } else {
                this.f79979q = nativeFloatBuffer11.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer13 = vertex.f79972j;
        if (nativeFloatBuffer13 != null) {
            NativeFloatBuffer nativeFloatBuffer14 = this.f79972j;
            if (nativeFloatBuffer14 != null) {
                this.f79972j = nativeFloatBuffer14.concat(nativeFloatBuffer13);
            } else {
                this.f79972j = nativeFloatBuffer13.m1250clone();
            }
        }
        this.f79977o = null;
    }

    public Vector3 w0(int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(this.f79969e.get(i10));
        out.setY(this.f79969e.get(i10 + 1));
        out.setZ(this.f79969e.get(i10 + 2));
        return out;
    }

    public boolean w1() {
        return this.f79955F;
    }

    public Vertex w2() {
        Vertex vertex = new Vertex();
        vertex.q2(this.f79967c);
        vertex.Y1(this.f79969e);
        vertex.i2(this.f79971i);
        vertex.m2(this.f79968d);
        vertex.e2(this.f79970g);
        vertex.P1(this.f79972j);
        vertex.s2(this.f79980r);
        vertex.S1(this.f79979q);
        return vertex;
    }

    public void x(Vertex vertex, com.itsmagic.engine.Engines.Engine.Vector.f matrixMultiplier) {
        if (matrixMultiplier == null) {
            w(vertex);
            return;
        }
        if (vertex.f79967c != null) {
            NativeFloatBuffer nativeFloatBuffer = this.f79967c;
            if (nativeFloatBuffer != null) {
                int capacity = nativeFloatBuffer.capacity() / 3;
                NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(this.f79967c.capacity() + vertex.f79967c.capacity());
                nativeFloatBuffer2.position(0);
                nativeFloatBuffer2.put(this.f79967c);
                vc.q qVar = new vc.q(vertex.f79967c);
                for (int i10 = 0; i10 < qVar.d(); i10++) {
                    Vector3 h10 = qVar.h(i10);
                    matrixMultiplier.P(h10, h10);
                    nativeFloatBuffer2.put(h10);
                }
                nativeFloatBuffer2.position(0);
                this.f79967c = nativeFloatBuffer2;
                if (vertex.f79971i != null) {
                    NativeIntBuffer nativeIntBuffer = this.f79971i;
                    if (nativeIntBuffer != null) {
                        int capacity2 = nativeIntBuffer.capacity();
                        NativeIntBuffer nativeIntBuffer2 = new NativeIntBuffer(this.f79971i.capacity() + vertex.f79971i.capacity());
                        nativeIntBuffer2.position(0);
                        nativeIntBuffer2.put(this.f79971i);
                        for (int i11 = 0; i11 < vertex.f79971i.capacity(); i11++) {
                            nativeIntBuffer2.set(i11 + capacity2, vertex.f79971i.get(i11) + capacity);
                        }
                        this.f79971i = nativeIntBuffer2;
                    } else {
                        NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(vertex.f79971i.capacity());
                        nativeIntBuffer3.position(0);
                        for (int i12 = 0; i12 < vertex.f79971i.capacity(); i12++) {
                            nativeIntBuffer3.set(i12, vertex.f79971i.get(i12) + capacity);
                        }
                        this.f79971i = nativeIntBuffer3;
                    }
                }
            } else {
                NativeFloatBuffer nativeFloatBuffer3 = new NativeFloatBuffer(vertex.f79967c.capacity());
                nativeFloatBuffer3.position(0);
                vc.q qVar2 = new vc.q(vertex.f79967c);
                for (int i13 = 0; i13 < qVar2.d(); i13++) {
                    Vector3 h11 = qVar2.h(i13);
                    matrixMultiplier.P(h11, h11);
                    nativeFloatBuffer3.put(h11);
                }
                nativeFloatBuffer3.position(0);
                this.f79967c = nativeFloatBuffer3;
                if (vertex.f79971i != null) {
                    NativeIntBuffer nativeIntBuffer4 = this.f79971i;
                    if (nativeIntBuffer4 != null) {
                        int capacity3 = nativeIntBuffer4.capacity();
                        NativeIntBuffer nativeIntBuffer5 = new NativeIntBuffer(this.f79971i.capacity() + vertex.f79971i.capacity());
                        nativeIntBuffer5.position(0);
                        nativeIntBuffer5.put(this.f79971i);
                        for (int i14 = 0; i14 < vertex.f79971i.capacity(); i14++) {
                            nativeIntBuffer5.set(i14 + capacity3, vertex.f79971i.get(i14));
                        }
                        this.f79971i = nativeIntBuffer5;
                    } else {
                        NativeIntBuffer nativeIntBuffer6 = new NativeIntBuffer(vertex.f79971i.capacity());
                        nativeIntBuffer6.position(0);
                        for (int i15 = 0; i15 < vertex.f79971i.capacity(); i15++) {
                            nativeIntBuffer6.set(i15, vertex.f79971i.get(i15));
                        }
                        this.f79971i = nativeIntBuffer6;
                    }
                }
            }
        }
        if (vertex.f79969e != null) {
            if (this.f79969e != null) {
                NativeFloatBuffer nativeFloatBuffer4 = new NativeFloatBuffer(this.f79969e.capacity() + vertex.f79969e.capacity());
                nativeFloatBuffer4.position(0);
                nativeFloatBuffer4.put(this.f79969e);
                vc.q qVar3 = new vc.q(vertex.f79969e);
                for (int i16 = 0; i16 < qVar3.d(); i16++) {
                    Vector3 h12 = qVar3.h(i16);
                    matrixMultiplier.g0(h12, h12);
                    nativeFloatBuffer4.put(h12);
                }
                nativeFloatBuffer4.position(0);
                this.f79969e = nativeFloatBuffer4;
            } else {
                NativeFloatBuffer nativeFloatBuffer5 = new NativeFloatBuffer(vertex.f79969e.capacity());
                nativeFloatBuffer5.position(0);
                vc.q qVar4 = new vc.q(vertex.f79969e);
                for (int i17 = 0; i17 < qVar4.d(); i17++) {
                    Vector3 h13 = qVar4.h(i17);
                    matrixMultiplier.g0(h13, h13);
                    nativeFloatBuffer5.put(h13);
                }
                nativeFloatBuffer5.position(0);
                this.f79969e = nativeFloatBuffer5;
            }
        }
        if (vertex.f79970g != null) {
            if (this.f79970g != null) {
                NativeFloatBuffer nativeFloatBuffer6 = new NativeFloatBuffer(this.f79970g.capacity() + vertex.f79970g.capacity());
                nativeFloatBuffer6.position(0);
                nativeFloatBuffer6.put(this.f79970g);
                vc.q qVar5 = new vc.q(vertex.f79970g);
                for (int i18 = 0; i18 < qVar5.d(); i18++) {
                    Vector3 h14 = qVar5.h(i18);
                    matrixMultiplier.g0(h14, h14);
                    nativeFloatBuffer6.put(h14);
                }
                nativeFloatBuffer6.position(0);
                this.f79970g = nativeFloatBuffer6;
            } else {
                NativeFloatBuffer nativeFloatBuffer7 = new NativeFloatBuffer(vertex.f79970g.capacity());
                nativeFloatBuffer7.position(0);
                vc.q qVar6 = new vc.q(vertex.f79970g);
                for (int i19 = 0; i19 < qVar6.d(); i19++) {
                    Vector3 h15 = qVar6.h(i19);
                    matrixMultiplier.g0(h15, h15);
                    nativeFloatBuffer7.put(h15);
                }
                nativeFloatBuffer7.position(0);
                this.f79970g = nativeFloatBuffer7;
            }
        }
        NativeFloatBuffer nativeFloatBuffer8 = vertex.f79968d;
        if (nativeFloatBuffer8 != null) {
            NativeFloatBuffer nativeFloatBuffer9 = this.f79968d;
            if (nativeFloatBuffer9 != null) {
                this.f79968d = nativeFloatBuffer9.concat(nativeFloatBuffer8);
            } else {
                this.f79968d = nativeFloatBuffer8.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer10 = vertex.f79980r;
        if (nativeFloatBuffer10 != null) {
            NativeFloatBuffer nativeFloatBuffer11 = this.f79980r;
            if (nativeFloatBuffer11 != null) {
                this.f79980r = nativeFloatBuffer11.concat(nativeFloatBuffer10);
            } else {
                this.f79980r = nativeFloatBuffer10.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer12 = vertex.f79979q;
        if (nativeFloatBuffer12 != null) {
            NativeFloatBuffer nativeFloatBuffer13 = this.f79979q;
            if (nativeFloatBuffer13 != null) {
                this.f79979q = nativeFloatBuffer13.concat(nativeFloatBuffer12);
            } else {
                this.f79979q = nativeFloatBuffer12.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer14 = vertex.f79972j;
        if (nativeFloatBuffer14 != null) {
            NativeFloatBuffer nativeFloatBuffer15 = this.f79972j;
            if (nativeFloatBuffer15 != null) {
                this.f79972j = nativeFloatBuffer15.concat(nativeFloatBuffer14);
            } else {
                this.f79972j = nativeFloatBuffer14.m1250clone();
            }
        }
        this.f79977o = null;
    }

    public NativeFloatBuffer x0() {
        return this.f79969e;
    }

    public boolean x1() {
        return (this.f79961L == null || this.f79962M == null) ? false : true;
    }

    public JAVARuntime.Vertex x2() {
        JAVARuntime.Vertex vertex = this.f79965P;
        if (vertex != null) {
            return vertex;
        }
        JAVARuntime.Vertex vertex2 = new JAVARuntime.Vertex(this);
        this.f79965P = vertex2;
        return vertex2;
    }

    public void y(Vertex vertex) {
        NativeFloatBuffer nativeFloatBuffer = vertex.f79967c;
        if (nativeFloatBuffer != null) {
            NativeFloatBuffer nativeFloatBuffer2 = this.f79967c;
            int i10 = 0;
            if (nativeFloatBuffer2 != null) {
                int capacity = nativeFloatBuffer2.capacity() / 3;
                this.f79967c = this.f79967c.concatAndDestroyItselfImmediate(vertex.f79967c);
                if (vertex.f79971i != null) {
                    NativeIntBuffer nativeIntBuffer = this.f79971i;
                    if (nativeIntBuffer != null) {
                        int capacity2 = nativeIntBuffer.capacity();
                        NativeIntBuffer nativeIntBuffer2 = new NativeIntBuffer(this.f79971i.capacity() + vertex.f79971i.capacity());
                        nativeIntBuffer2.position(0);
                        nativeIntBuffer2.put(this.f79971i);
                        while (i10 < vertex.f79971i.capacity()) {
                            nativeIntBuffer2.set(i10 + capacity2, vertex.f79971i.get(i10) + capacity);
                            i10++;
                        }
                        this.f79971i.destroy();
                        this.f79971i = nativeIntBuffer2;
                    } else {
                        NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(vertex.f79971i.capacity());
                        nativeIntBuffer3.position(0);
                        while (i10 < vertex.f79971i.capacity()) {
                            nativeIntBuffer3.set(i10, vertex.f79971i.get(i10) + capacity);
                            i10++;
                        }
                        this.f79971i = nativeIntBuffer3;
                    }
                }
            } else {
                this.f79967c = nativeFloatBuffer.m1250clone();
                if (vertex.f79971i != null) {
                    NativeIntBuffer nativeIntBuffer4 = this.f79971i;
                    if (nativeIntBuffer4 != null) {
                        int capacity3 = nativeIntBuffer4.capacity();
                        NativeIntBuffer nativeIntBuffer5 = new NativeIntBuffer(this.f79971i.capacity() + vertex.f79971i.capacity());
                        nativeIntBuffer5.position(0);
                        nativeIntBuffer5.put(this.f79971i);
                        while (i10 < vertex.f79971i.capacity()) {
                            nativeIntBuffer5.set(i10 + capacity3, vertex.f79971i.get(i10));
                            i10++;
                        }
                        this.f79971i.destroy();
                        this.f79971i = nativeIntBuffer5;
                    } else {
                        NativeIntBuffer nativeIntBuffer6 = new NativeIntBuffer(vertex.f79971i.capacity());
                        nativeIntBuffer6.position(0);
                        while (i10 < vertex.f79971i.capacity()) {
                            nativeIntBuffer6.set(i10, vertex.f79971i.get(i10));
                            i10++;
                        }
                        this.f79971i = nativeIntBuffer6;
                    }
                }
            }
        }
        NativeFloatBuffer nativeFloatBuffer3 = vertex.f79969e;
        if (nativeFloatBuffer3 != null) {
            NativeFloatBuffer nativeFloatBuffer4 = this.f79969e;
            if (nativeFloatBuffer4 != null) {
                this.f79969e = nativeFloatBuffer4.concatAndDestroyItselfImmediate(nativeFloatBuffer3);
            } else {
                this.f79969e = nativeFloatBuffer3.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer5 = vertex.f79970g;
        if (nativeFloatBuffer5 != null) {
            NativeFloatBuffer nativeFloatBuffer6 = this.f79970g;
            if (nativeFloatBuffer6 != null) {
                this.f79970g = nativeFloatBuffer6.concatAndDestroyItselfImmediate(nativeFloatBuffer5);
            } else {
                this.f79970g = nativeFloatBuffer5.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer7 = vertex.f79968d;
        if (nativeFloatBuffer7 != null) {
            NativeFloatBuffer nativeFloatBuffer8 = this.f79968d;
            if (nativeFloatBuffer8 != null) {
                this.f79968d = nativeFloatBuffer8.concatAndDestroyItselfImmediate(nativeFloatBuffer7);
            } else {
                this.f79968d = nativeFloatBuffer7.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer9 = vertex.f79980r;
        if (nativeFloatBuffer9 != null) {
            NativeFloatBuffer nativeFloatBuffer10 = this.f79980r;
            if (nativeFloatBuffer10 != null) {
                this.f79980r = nativeFloatBuffer10.concatAndDestroyItselfImmediate(nativeFloatBuffer9);
            } else {
                this.f79980r = nativeFloatBuffer9.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer11 = vertex.f79979q;
        if (nativeFloatBuffer11 != null) {
            NativeFloatBuffer nativeFloatBuffer12 = this.f79979q;
            if (nativeFloatBuffer12 != null) {
                this.f79979q = nativeFloatBuffer12.concatAndDestroyItselfImmediate(nativeFloatBuffer11);
            } else {
                this.f79979q = nativeFloatBuffer11.m1250clone();
            }
        }
        NativeFloatBuffer nativeFloatBuffer13 = vertex.f79972j;
        if (nativeFloatBuffer13 != null) {
            NativeFloatBuffer nativeFloatBuffer14 = this.f79972j;
            if (nativeFloatBuffer14 != null) {
                this.f79972j = nativeFloatBuffer14.concatAndDestroyItselfImmediate(nativeFloatBuffer13);
            } else {
                this.f79972j = nativeFloatBuffer13.m1250clone();
            }
        }
        this.f79977o = null;
    }

    public int y0() {
        NativeFloatBuffer nativeFloatBuffer = this.f79969e;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }

    public boolean y1() {
        return this.f79952C;
    }

    @Deprecated
    public VertexData y2() {
        return new VertexData(this);
    }

    public void z(NativeFloatBuffer buffer) {
        this.f79969e = this.f79969e.concat(buffer);
        this.f79955F = true;
    }

    public vc.q z0() {
        return new vc.q(this.f79969e);
    }

    public void z1(int max) {
        this.f79952C = true;
        this.f79953D = max;
    }

    public boolean z2(float[] matrix, C3595c ray) {
        AABB d10 = d0().d(matrix);
        return G1(ray, d10.z(), d10.u());
    }
}
