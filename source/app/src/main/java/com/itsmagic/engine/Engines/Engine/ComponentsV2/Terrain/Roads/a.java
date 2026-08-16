package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads;

import aa.C3594b;
import aa.C3595c;
import bb.C3862b;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import db.C12902b;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import y9.C16154b;
import z9.C16278e;

public class a {

    public final List<Vector3> f76943a;

    public float f76944b;

    public float f76945c;

    public float f76946d;

    public float f76947e;

    public float f76948f;

    public float f76949g;

    public q f76950h;

    public float f76951i;

    public float f76952j;

    public float f76953k;

    public float f76954l;

    public float f76955m;

    public float f76956n;

    public final C3862b f76957o;

    public boolean f76958p;

    public Vertex f76959q;

    public Vertex f76960r;

    public Vertex f76961s;

    public final List<C16154b> f76962t;

    public static final ThreadLocal<C3595c> f76937u = new e();

    public static final ThreadLocal<aa.d> f76938v = new f();

    public static final ThreadLocal<Vector3> f76939w = new g();

    public static final ThreadLocal<Vector3> f76940x = new h();

    public static final ThreadLocal<Vector3> f76941y = new i();

    public static final ThreadLocal<Vector3> f76942z = new j();

    public static final ThreadLocal<Vector3> f76930A = new k();

    public static final ThreadLocal<Vector3> f76931B = new l();

    public static final ThreadLocal<Vector3> f76932C = new m();

    public static final ThreadLocal<Vector3> f76933D = new C1260a();

    public static final ThreadLocal<Vector3> f76934E = new b();

    public static final ThreadLocal<Vector3> f76935F = new c();

    public static final ThreadLocal<Vector3> f76936G = new d();

    public class C1260a extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class b extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class c extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class d extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class e extends ThreadLocal<C3595c> {
        @Override
        public C3595c initialValue() {
            return new C3595c();
        }
    }

    public class f extends ThreadLocal<aa.d> {
        @Override
        public aa.d initialValue() {
            return new aa.d();
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

    public class j extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class k extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class l extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class m extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public static class n implements p {
        @Override
        public void a(p.EnumC1261a step) {
        }

        @Override
        public void b(int progress) {
        }

        @Override
        public void onFinish() {
        }
    }

    public static class o implements p {
        @Override
        public void a(p.EnumC1261a step) {
            System.out.println("Begin step " + ((Object) step));
        }

        @Override
        public void b(int progress) {
            System.out.println("Progress " + progress + ve.j.f121589a);
        }

        @Override
        public void onFinish() {
            System.out.println("Leveling finished");
        }
    }

    public interface p {

        public enum EnumC1261a {
            BuildVertex,
            CalculateTotal,
            Rebase
        }

        void a(EnumC1261a step);

        void b(int progress);

        void onFinish();
    }

    public enum q {
        Vertical,
        Horizontal
    }

    public a() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f76943a = steppedArrayList;
        this.f76944b = 5.0f;
        this.f76945c = 10.0f;
        this.f76946d = 2.0f;
        this.f76947e = 25.0f;
        this.f76948f = 70.0f;
        this.f76949g = 0.1f;
        this.f76950h = q.Horizontal;
        this.f76951i = 25.0f;
        this.f76952j = 0.5f;
        this.f76953k = 0.1f;
        this.f76954l = 2.0f;
        this.f76955m = -0.5f;
        this.f76956n = 0.1f;
        this.f76957o = new C3862b();
        this.f76962t = new SteppedArrayList();
        steppedArrayList.clear();
        M();
        d0();
    }

    public static boolean F(Vector3 point, Vector3 segmentStart, Vector3 segmentEnd) {
        Vector3 vector3 = new Vector3(segmentEnd.getX(), segmentEnd.getY(), segmentEnd.getZ());
        vector3.subLocal(segmentStart);
        Vector3 vector32 = new Vector3(point.getX(), point.getY(), point.getZ());
        vector32.subLocal(segmentStart);
        float dot = vector3.dot(vector32);
        float sqrtLength = vector3.sqrtLength();
        Vector3 vector33 = new Vector3(0.0f, 0.0f, 0.0f);
        vector33.set(vector33.cross(vector3, vector32));
        return dot >= 0.0f && dot <= sqrtLength && Math.abs(vector33.length()) < 1.0E-8d;
    }

    public float A() {
        return this.f76952j;
    }

    public float B() {
        return this.f76948f;
    }

    public Vertex C() {
        return this.f76959q;
    }

    public float D() {
        return this.f76953k;
    }

    public float E() {
        return this.f76944b;
    }

    public void G(Terrain terrain, float roadGlobalX, float roadGlobalZ, float terrainGlobalX, float terrainGlobalZ, p levelListener) {
        p nVar = levelListener == null ? new n() : levelListener;
        C16278e table = terrain.getTable();
        if (table != null) {
            AtomicInteger atomicInteger = new AtomicInteger();
            AtomicInteger atomicInteger2 = new AtomicInteger();
            AtomicInteger atomicInteger3 = new AtomicInteger();
            atomicInteger2.set(0);
            atomicInteger.set(0);
            nVar.a(p.EnumC1261a.BuildVertex);
            c(this.f76944b + (this.f76946d * 2.0f));
            nVar.a(p.EnumC1261a.CalculateTotal);
            k(terrain, atomicInteger, atomicInteger2, nVar);
            nVar.a(p.EnumC1261a.Rebase);
            L(terrain, roadGlobalX, roadGlobalZ, terrainGlobalX, terrainGlobalZ, table, atomicInteger, atomicInteger2, atomicInteger3, nVar);
            terrain.applyHeightmap();
            nVar.onFinish();
        }
    }

    public final void H(List<C12902b> points) {
        this.f76962t.clear();
        for (int i10 = 0; i10 < points.size(); i10++) {
            int i11 = 0;
            while (true) {
                if (i11 >= this.f76962t.size()) {
                    this.f76962t.add(new C16154b(points.get(i10)));
                    break;
                } else if (this.f76962t.get(i11).c().equalsApprox(points.get(i10).f84492a, 0.09f)) {
                    break;
                } else {
                    i11++;
                }
            }
        }
    }

    public boolean I(GameObject gameObject) {
        if (!this.f76958p && this.f76959q != null) {
            return false;
        }
        d0();
        if (K() > 2) {
            this.f76957o.v(this.f76945c);
            H(this.f76957o.w());
        } else {
            this.f76962t.clear();
            if (K() >= 1) {
                this.f76962t.add(new C16154b(new C12902b(J(0, new Vector3()))));
            }
            if (K() >= 2) {
                this.f76962t.add(new C16154b(new C12902b(J(1, new Vector3()))));
            }
            c0(this.f76962t);
        }
        h(this.f76962t, this.f76944b);
        o(this.f76962t, this.f76944b, this.f76947e, this.f76948f, this.f76949g);
        a0(this.f76962t, this.f76951i);
        i(this.f76962t);
        f(this.f76962t);
        this.f76959q = j(this.f76944b);
        this.f76960r = e();
        this.f76958p = false;
        return true;
    }

    public Vector3 J(int i10, Vector3 out) {
        out.set(this.f76943a.get(i10));
        return out;
    }

    public int K() {
        return this.f76943a.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x02c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void L(Terrain terrain, float roadGlobalX, float roadGlobalZ, float terrainGlobalX, float terrainGlobalZ, C16278e table, AtomicInteger totalAtomic, AtomicInteger executedAtomic, AtomicInteger lastProgress, p levelListener) {
        float f10;
        C3595c c3595c;
        int i10;
        Vector3 vector3;
        Vector3 vector32;
        Vector3 vector33;
        Vector3 vector34;
        Vector3 vector35;
        Vector3 vector36;
        Vector3 vector37;
        char c10;
        float f11;
        float f12;
        float f13;
        Vector3 vector38;
        Vector3 vector39;
        Vector3 vector310;
        Vector3 vector311;
        Vector3 vector312;
        Vector3 vector313;
        Vector3 vector314;
        int i11;
        a aVar = this;
        float resolution = (terrain.width / terrain.getResolution()) / 2.0f;
        C3595c c3595c2 = f76937u.get();
        aa.d dVar = f76938v.get();
        dVar.f31957b.setY(terrain.maxHeight + 5.0f);
        dVar.f31958c.set(0.0f, -1.0f, 0.0f);
        c3595c2.f31953b = dVar;
        Vector3 vector315 = f76939w.get();
        Vector3 vector316 = f76940x.get();
        Vector3 vector317 = f76941y.get();
        Vector3 vector318 = f76942z.get();
        Vector3 vector319 = f76934E.get();
        Vector3 vector320 = f76935F.get();
        Vector3 vector321 = f76936G.get();
        Vector3 vector322 = f76930A.get();
        Vector3 vector323 = f76931B.get();
        Vector3 vector324 = f76932C.get();
        Vector3 vector325 = f76933D.get();
        int i12 = 0;
        while (i12 < aVar.f76962t.size()) {
            C16154b c16154b = aVar.f76962t.get(i12);
            int i13 = i12 + 1;
            if (aVar.f76962t.size() > i13) {
                C16154b c16154b2 = aVar.f76962t.get(i13);
                i10 = i13;
                vector315.set(c16154b.f130087g.c());
                f10 = resolution;
                c10 = 0;
                vector315.addLocal(c16154b.f130087g.b(), (aVar.f76944b / 2.0f) + aVar.f76946d);
                vector316.set(c16154b.f130087g.c());
                vector316.subLocal(c16154b.f130087g.b(), (aVar.f76944b / 2.0f) + aVar.f76946d);
                vector317.set(c16154b2.f130087g.c());
                vector317.addLocal(c16154b2.f130087g.b(), (aVar.f76944b / 2.0f) + aVar.f76946d);
                vector318.set(c16154b2.f130087g.c());
                vector318.subLocal(c16154b2.f130087g.b(), (aVar.f76944b / 2.0f) + aVar.f76946d);
                float X02 = Nc.b.X0(vector315.getX(), Nc.b.X0(vector316.getX(), Nc.b.X0(vector317.getX(), vector318.getX())));
                float S02 = Nc.b.S0(vector315.getX(), Nc.b.S0(vector316.getX(), Nc.b.S0(vector317.getX(), vector318.getX())));
                c3595c = c3595c2;
                float X03 = Nc.b.X0(vector315.getZ(), Nc.b.X0(vector316.getZ(), Nc.b.X0(vector317.getZ(), vector318.getZ())));
                float S03 = Nc.b.S0(vector315.getZ(), Nc.b.S0(vector316.getZ(), Nc.b.S0(vector317.getZ(), vector318.getZ())));
                float f14 = X02;
                while (f14 <= S02) {
                    float f15 = X03;
                    while (f15 <= S03) {
                        float f16 = S02;
                        float f17 = terrain.width;
                        float f18 = ((f14 + roadGlobalX) - terrainGlobalX) / f17;
                        float f19 = ((f15 + roadGlobalZ) - terrainGlobalZ) / f17;
                        if (f18 >= 0.0f) {
                            vector311 = vector318;
                            vector312 = vector317;
                            if (f18 > 1.0d) {
                                f11 = S03;
                                f12 = f14;
                                f13 = f15;
                                vector38 = vector321;
                                vector39 = vector320;
                                vector310 = vector319;
                            } else if (f19 < 0.0f || f19 > 1.0d) {
                                f11 = S03;
                                f12 = f14;
                                f13 = f15;
                                vector38 = vector321;
                                vector39 = vector320;
                                vector310 = vector319;
                                vector313 = vector316;
                                vector314 = vector315;
                                f15 = f13 + f10;
                                executedAtomic.incrementAndGet();
                                i11 = (int) ((executedAtomic.get() / totalAtomic.get()) * 100.0f);
                                if (i11 != lastProgress.get()) {
                                    levelListener.b(i11);
                                    lastProgress.set(i11);
                                }
                                vector321 = vector38;
                                vector317 = vector312;
                                S02 = f16;
                                vector318 = vector311;
                                vector320 = vector39;
                                S03 = f11;
                                f14 = f12;
                                vector316 = vector313;
                                vector315 = vector314;
                                vector319 = vector310;
                            } else {
                                int resolution2 = (int) (f18 * terrain.getResolution());
                                int resolution3 = (int) (f19 * terrain.getResolution());
                                dVar.f31957b.setXZ(f14, f15);
                                vector319.set(c16154b2.f130090j);
                                vector320.set(c16154b.f130091k);
                                vector321.set(c16154b.f130090j);
                                Vector3 vector326 = vector321;
                                vector39 = vector320;
                                f11 = S03;
                                Vector3 vector327 = vector319;
                                f12 = f14;
                                vector38 = vector326;
                                f13 = f15;
                                vector313 = vector316;
                                vector314 = vector315;
                                float f20 = C3594b.f(c3595c, vector319, vector320, vector326, vector322, vector323, vector324, vector325);
                                if (f20 >= 0.0f) {
                                    table.h(resolution2, resolution3, (dVar.f31957b.getY() - f20) / terrain.maxHeight);
                                    vector310 = vector327;
                                } else {
                                    vector327.set(c16154b2.f130090j);
                                    vector39.set(c16154b2.f130091k);
                                    vector38.set(c16154b.f130091k);
                                    vector310 = vector327;
                                    float f21 = C3594b.f(c3595c, vector327, vector39, vector38, vector322, vector323, vector324, vector325);
                                    if (f21 >= 0.0f) {
                                        table.h(resolution2, resolution3, (dVar.f31957b.getY() - f21) / terrain.maxHeight);
                                    }
                                }
                                f15 = f13 + f10;
                                executedAtomic.incrementAndGet();
                                i11 = (int) ((executedAtomic.get() / totalAtomic.get()) * 100.0f);
                                if (i11 != lastProgress.get()) {
                                }
                                vector321 = vector38;
                                vector317 = vector312;
                                S02 = f16;
                                vector318 = vector311;
                                vector320 = vector39;
                                S03 = f11;
                                f14 = f12;
                                vector316 = vector313;
                                vector315 = vector314;
                                vector319 = vector310;
                            }
                        } else {
                            f11 = S03;
                            f12 = f14;
                            f13 = f15;
                            vector38 = vector321;
                            vector39 = vector320;
                            vector310 = vector319;
                            vector311 = vector318;
                            vector312 = vector317;
                        }
                        vector313 = vector316;
                        vector314 = vector315;
                        f15 = f13 + f10;
                        executedAtomic.incrementAndGet();
                        i11 = (int) ((executedAtomic.get() / totalAtomic.get()) * 100.0f);
                        if (i11 != lastProgress.get()) {
                        }
                        vector321 = vector38;
                        vector317 = vector312;
                        S02 = f16;
                        vector318 = vector311;
                        vector320 = vector39;
                        S03 = f11;
                        f14 = f12;
                        vector316 = vector313;
                        vector315 = vector314;
                        vector319 = vector310;
                    }
                    vector321 = vector321;
                    vector320 = vector320;
                    S03 = S03;
                    f14 += f10;
                    S02 = S02;
                }
                vector3 = vector321;
                vector32 = vector320;
                vector33 = vector319;
                vector34 = vector318;
                vector35 = vector317;
                vector36 = vector316;
                vector37 = vector315;
            } else {
                f10 = resolution;
                c3595c = c3595c2;
                i10 = i13;
                vector3 = vector321;
                vector32 = vector320;
                vector33 = vector319;
                vector34 = vector318;
                vector35 = vector317;
                vector36 = vector316;
                vector37 = vector315;
                c10 = 0;
            }
            aVar = this;
            vector321 = vector3;
            i12 = i10;
            resolution = f10;
            vector317 = vector35;
            c3595c2 = c3595c;
            vector318 = vector34;
            vector320 = vector32;
            vector316 = vector36;
            vector315 = vector37;
            vector319 = vector33;
        }
    }

    public void M() {
        this.f76958p = true;
    }

    public void N(float collapseAngle) {
        if (this.f76947e != collapseAngle) {
            M();
        }
        this.f76947e = collapseAngle;
    }

    public void O(float maskBorder) {
        if (this.f76946d != maskBorder) {
            M();
        }
        this.f76946d = maskBorder;
    }

    public void P(float resolution) {
        if (this.f76945c != resolution) {
            M();
        }
        this.f76945c = Nc.b.M(0.1f, resolution);
    }

    public void Q(float roadBorder) {
        if (this.f76954l != roadBorder) {
            M();
        }
        this.f76954l = roadBorder;
    }

    public void R(float roadBorderUV) {
        if (this.f76956n != roadBorderUV) {
            M();
        }
        this.f76956n = roadBorderUV;
    }

    public void S(float roadBorderVerticalOffset) {
        if (this.f76955m != roadBorderVerticalOffset) {
            M();
        }
        this.f76955m = roadBorderVerticalOffset;
    }

    public void T(float shrinkFactor) {
        if (this.f76949g != shrinkFactor) {
            M();
        }
        this.f76949g = shrinkFactor;
    }

    public void U(float simplifyAngle) {
        if (this.f76951i != simplifyAngle) {
            M();
        }
        this.f76951i = simplifyAngle;
    }

    public void V(q textureMode) {
        if (this.f76950h != textureMode) {
            M();
        }
        this.f76950h = textureMode;
    }

    public void W(float textureWidth) {
        if (this.f76952j != textureWidth) {
            M();
        }
        this.f76952j = textureWidth;
    }

    public void X(float thresholdAngle) {
        if (this.f76948f != thresholdAngle) {
            M();
        }
        this.f76948f = thresholdAngle;
    }

    public void Y(float verticalOffset) {
        if (this.f76953k != verticalOffset) {
            M();
        }
        this.f76953k = verticalOffset;
    }

    public void Z(float width) {
        if (this.f76944b != width) {
            M();
        }
        this.f76944b = width;
    }

    public int a(Vector3 vector3) {
        this.f76943a.add(vector3.m1249clone());
        return this.f76943a.size() - 1;
    }

    public final void a0(List<C16154b> path, float minAngleDeg) {
        SteppedArrayList steppedArrayList;
        if (path.size() < 3) {
            return;
        }
        do {
            float radians = (float) Math.toRadians(minAngleDeg);
            steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(path.get(0));
            int i10 = 1;
            while (i10 < path.size() - 1) {
                C16154b c16154b = path.get(i10 - 1);
                C16154b c16154b2 = path.get(i10);
                i10++;
                C16154b c16154b3 = path.get(i10);
                Vector3 c10 = c16154b.f130087g.c();
                Vector3 c11 = c16154b2.f130087g.c();
                if (((float) Math.acos(Math.max(-1.0f, Math.min(1.0f, c11.sub(c10, new Vector3()).normalizeLocal().dot(c16154b3.f130087g.c().sub(c11, new Vector3()).normalizeLocal()))))) >= radians) {
                    steppedArrayList.add(c16154b2);
                }
            }
            steppedArrayList.add(path.get(path.size() - 1));
            path.clear();
            path.addAll(steppedArrayList);
        } while (path.size() != steppedArrayList.size());
        c0(path);
    }

    public void b(Vector3 vector3) {
        this.f76943a.add(vector3);
    }

    public void b0() {
    }

    @Deprecated
    public final void c(float width) {
        Vector3 vector3 = f76939w.get();
        for (int i10 = 0; i10 < this.f76962t.size(); i10++) {
            C16154b c16154b = this.f76962t.get(i10);
            vector3.set(c16154b.f130087g.c());
            float f10 = width / 2.0f;
            vector3.addLocal(c16154b.f130087g.b(), f10);
            c16154b.f130090j.set(vector3);
            vector3.set(c16154b.f130087g.c());
            vector3.subLocal(c16154b.f130087g.b(), f10);
            c16154b.f130091k.set(vector3);
        }
    }

    public final void c0(List<C16154b> path) {
        if (path.size() < 2) {
            return;
        }
        for (int i10 = 0; i10 < path.size(); i10++) {
            C16154b c16154b = path.get(i10);
            Vector3 vector3 = new Vector3();
            if (i10 == 0) {
                vector3.set(path.get(i10 + 1).c()).subLocal(c16154b.c());
            } else if (i10 == path.size() - 1) {
                vector3.set(c16154b.c()).subLocal(path.get(i10 - 1).c());
            } else {
                vector3.set(c16154b.c().sub(path.get(i10 - 1).c(), new Vector3()).addLocal(path.get(i10 + 1).c().sub(c16154b.c(), new Vector3())));
            }
            vector3.normalizeLocal();
            c16154b.f130082b.sub(c16154b.f130081a, new Vector3()).normalizeLocal();
            Vector3 normalizeLocal = vector3.cross(c16154b.d(), new Vector3()).normalizeLocal();
            c16154b.f130087g.e(c16154b.d().cross(normalizeLocal, new Vector3()).normalizeLocal());
            c16154b.f130087g.f(normalizeLocal);
        }
    }

    public final Vertex d(float width) {
        int i10;
        int size = this.f76962t.size();
        int i11 = 1;
        int size2 = this.f76962t.size() - 1;
        int i12 = size * 6;
        vc.q qVar = new vc.q(new NativeFloatBuffer(i12));
        vc.q qVar2 = new vc.q(new NativeFloatBuffer(i12));
        vc.q qVar3 = new vc.q(new NativeFloatBuffer(i12));
        vc.p pVar = new vc.p(new NativeFloatBuffer(size * 4));
        vc.n nVar = new vc.n(new NativeIntBuffer(size2 * 6));
        Vector3 vector3 = f76939w.get();
        Vector3 vector32 = f76940x.get();
        Vector3 vector33 = f76941y.get();
        Vector3 vector34 = f76942z.get();
        int i13 = 0;
        int i14 = 0;
        while (i13 < this.f76962t.size()) {
            C16154b c16154b = this.f76962t.get(i13);
            C16154b c16154b2 = i13 < this.f76962t.size() - i11 ? this.f76962t.get(i13 + 1) : null;
            vc.n nVar2 = nVar;
            vector3.set(c16154b.f130081a.add(0.0f, this.f76953k, 0.0f)).addLocal(c16154b.f130087g.b(), this.f76954l).addLocal(0.0f, this.f76955m, 0.0f);
            qVar.C(i14, vector3);
            int ordinal = this.f76950h.ordinal();
            if (ordinal == 0) {
                pVar.r(i14, 1.0f, c16154b.f130083c);
            } else if (ordinal == 1) {
                pVar.r(i14, c16154b.f130083c, 1.0f);
            }
            if (c16154b2 != null) {
                vector32.set(c16154b.f130081a);
                vector33.set(c16154b2.f130081a);
                Vector3.triangleNormal(vector3, vector32, vector33, vector34);
                if (vector34.dot(0.0f, 1.0f, 0.0f) < 0.0f) {
                    vector34.mulLocal(-1.0f);
                }
            }
            qVar2.C(i14, vector34);
            qVar3.C(i14, c16154b.f130087g.a());
            int i15 = i14 + 1;
            qVar.C(i15, c16154b.f130081a.add(0.0f, this.f76953k, 0.0f));
            int ordinal2 = this.f76950h.ordinal();
            if (ordinal2 != 0) {
                i10 = 1;
                if (ordinal2 == 1) {
                    pVar.r(i15, c16154b.f130084d, 1.0f - this.f76956n);
                }
            } else {
                i10 = 1;
                pVar.r(i15, 1.0f - this.f76956n, c16154b.f130084d);
            }
            qVar2.C(i15, vector34);
            qVar3.C(i15, c16154b.f130087g.a());
            i14 += 2;
            i13++;
            i11 = i10;
            nVar = nVar2;
        }
        vc.n nVar3 = nVar;
        int i16 = 0;
        int i17 = 0;
        while (i17 < nVar3.b()) {
            int i18 = i16 + 2;
            int i19 = i16 + 1;
            nVar3.o(i17, i18, i19, i16);
            nVar3.o(i17 + 1, i18, i16 + 3, i19);
            i17 += 2;
            i16 = i18;
        }
        Vertex vertex = new Vertex();
        vertex.r2(qVar);
        vertex.Z1(qVar2);
        vertex.f2(qVar3);
        vertex.j2(nVar3);
        vertex.n2(pVar);
        return vertex;
    }

    public final void d0() {
        this.f76957o.c();
        for (int i10 = 0; i10 < this.f76943a.size(); i10++) {
            this.f76957o.b(this.f76943a.get(i10));
        }
    }

    public final Vertex e() {
        int size = this.f76962t.size();
        int i10 = size * 2;
        int size2 = this.f76962t.size() - 1;
        int i11 = size2 * 2;
        if (i10 == 0 || i11 == 0) {
            return null;
        }
        vc.q qVar = new vc.q(new NativeFloatBuffer(size * 6));
        vc.n nVar = new vc.n(new NativeIntBuffer(size2 * 6));
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < this.f76962t.size(); i14++) {
            C16154b c16154b = this.f76962t.get(i14);
            qVar.C(i13, c16154b.f130088h.add(0.0f, this.f76953k, 0.0f));
            qVar.C(i13 + 1, c16154b.f130089i.add(0.0f, this.f76953k, 0.0f));
            i13 += 2;
        }
        int i15 = 0;
        while (i12 < nVar.b()) {
            int i16 = i15 + 2;
            int i17 = i15 + 1;
            nVar.o(i12, i16, i17, i15);
            nVar.o(i12 + 1, i16, i15 + 3, i17);
            i12 += 2;
            i15 = i16;
        }
        Vertex vertex = new Vertex();
        vertex.r2(qVar);
        vertex.j2(nVar);
        return vertex;
    }

    public void e0(int i10, Vector3 value) {
        this.f76943a.get(i10).set(value);
    }

    public final void f(List<C16154b> path) {
        for (int i10 = 0; i10 < path.size(); i10++) {
            C16154b c16154b = path.get(i10);
            Vector3 sub = c16154b.f130081a.sub(c16154b.c());
            sub.normalizeLocal();
            sub.mulLocal(this.f76946d);
            c16154b.f130088h.set(c16154b.f130081a.add(sub));
            Vector3 sub2 = c16154b.f130082b.sub(c16154b.c());
            sub2.normalizeLocal();
            sub2.mulLocal(this.f76946d);
            c16154b.f130089i.set(c16154b.f130082b.add(sub2));
        }
    }

    public final Vertex g(float width) {
        int i10;
        int size = this.f76962t.size();
        int i11 = 1;
        int size2 = this.f76962t.size() - 1;
        int i12 = size * 6;
        vc.q qVar = new vc.q(new NativeFloatBuffer(i12));
        vc.q qVar2 = new vc.q(new NativeFloatBuffer(i12));
        vc.q qVar3 = new vc.q(new NativeFloatBuffer(i12));
        vc.p pVar = new vc.p(new NativeFloatBuffer(size * 4));
        vc.n nVar = new vc.n(new NativeIntBuffer(size2 * 6));
        Vector3 vector3 = f76939w.get();
        Vector3 vector32 = f76940x.get();
        Vector3 vector33 = f76941y.get();
        Vector3 vector34 = f76942z.get();
        int i13 = 0;
        int i14 = 0;
        while (i13 < this.f76962t.size()) {
            C16154b c16154b = this.f76962t.get(i13);
            C16154b c16154b2 = i13 < this.f76962t.size() - i11 ? this.f76962t.get(i13 + 1) : null;
            vc.n nVar2 = nVar;
            vector3.set(c16154b.f130082b.add(0.0f, this.f76953k, 0.0f)).subLocal(c16154b.f130087g.b(), this.f76954l).addLocal(0.0f, this.f76955m, 0.0f);
            qVar.C(i14, vector3);
            int ordinal = this.f76950h.ordinal();
            if (ordinal == 0) {
                pVar.r(i14, 0.0f, c16154b.f130083c);
            } else if (ordinal == 1) {
                pVar.r(i14, c16154b.f130083c, 0.0f);
            }
            if (c16154b2 != null) {
                vector32.set(c16154b.f130082b);
                vector33.set(c16154b2.f130082b);
                Vector3.triangleNormal(vector3, vector32, vector33, vector34);
                if (vector34.dot(0.0f, 1.0f, 0.0f) < 0.0f) {
                    vector34.mulLocal(-1.0f);
                }
            }
            qVar2.C(i14, vector34);
            qVar3.C(i14, c16154b.f130087g.a());
            int i15 = i14 + 1;
            qVar.C(i15, c16154b.f130082b.add(0.0f, this.f76953k, 0.0f));
            int ordinal2 = this.f76950h.ordinal();
            if (ordinal2 != 0) {
                i10 = 1;
                if (ordinal2 == 1) {
                    pVar.r(i15, c16154b.f130084d, this.f76956n);
                }
            } else {
                i10 = 1;
                pVar.r(i15, this.f76956n, c16154b.f130084d);
            }
            qVar2.C(i15, vector34);
            qVar3.C(i15, c16154b.f130087g.a());
            i14 += 2;
            i13++;
            i11 = i10;
            nVar = nVar2;
        }
        vc.n nVar3 = nVar;
        int i16 = 0;
        int i17 = 0;
        while (i17 < nVar3.b()) {
            int i18 = i16 + 1;
            int i19 = i16 + 2;
            nVar3.o(i17, i16, i18, i19);
            nVar3.o(i17 + 1, i18, i16 + 3, i19);
            i17 += 2;
            i16 = i19;
        }
        Vertex vertex = new Vertex();
        vertex.r2(qVar);
        vertex.Z1(qVar2);
        vertex.f2(qVar3);
        vertex.j2(nVar3);
        vertex.n2(pVar);
        return vertex;
    }

    public final void h(List<C16154b> path, float width) {
        if (path == null || path.size() < 2) {
            return;
        }
        float f10 = width / 2.0f;
        int i10 = 0;
        while (i10 < path.size()) {
            C16154b c16154b = path.get(i10);
            C12902b c12902b = c16154b.f130087g;
            Vector3 c10 = c12902b.c();
            c12902b.a().m1249clone().normalizeLocal();
            Vector3 normalizeLocal = c12902b.b().m1249clone().normalizeLocal();
            Vector3 normalizeLocal2 = c12902b.d().m1249clone().normalizeLocal();
            Vector3 normalizeLocal3 = i10 > 0 ? path.get(i10 - 1).f130087g.a().m1249clone().normalizeLocal() : null;
            Vector3 normalizeLocal4 = i10 < path.size() + (-1) ? path.get(i10 + 1).f130087g.a().m1249clone().normalizeLocal() : null;
            Vector3 m1249clone = normalizeLocal.m1249clone();
            if (normalizeLocal3 == null || normalizeLocal4 == null) {
                m1249clone.mulLocal(f10);
            } else {
                m1249clone = normalizeLocal3.add(normalizeLocal4).normalizeLocal().cross(normalizeLocal2).normalizeLocal();
                float sin = (float) Math.sin(normalizeLocal3.angleBetween(normalizeLocal4) / 2.0f);
                if (sin > 0.001f) {
                    m1249clone.mulLocal(Math.min(1.0f, 0.75f / sin) * f10);
                } else {
                    m1249clone.mulLocal(f10);
                }
            }
            c16154b.f130081a.set(c10).addLocal(m1249clone);
            c16154b.f130082b.set(c10).subLocal(m1249clone);
            i10++;
        }
        c0(path);
    }

    public final void i(List<C16154b> path) {
        Vector3 vector3 = null;
        float f10 = 0.0f;
        Vector3 vector32 = null;
        float f11 = 0.0f;
        for (int i10 = 0; i10 < path.size(); i10++) {
            C16154b c16154b = path.get(i10);
            if (vector3 != null) {
                f11 += this.f76952j * vector3.distance(c16154b.f130081a);
            }
            if (vector32 != null) {
                f10 += this.f76952j * vector32.distance(c16154b.f130082b);
            }
            c16154b.f130083c = f11;
            c16154b.f130084d = f10;
            vector3 = c16154b.f130081a;
            vector32 = c16154b.f130082b;
            f10 = Nc.b.z(f10, f11, 0.1f);
        }
    }

    public final Vertex j(float width) {
        int size = this.f76962t.size();
        int i10 = size * 2;
        int size2 = this.f76962t.size() - 1;
        int i11 = size2 * 2;
        if (i10 == 0 || i11 == 0) {
            return null;
        }
        int i12 = size * 6;
        vc.q qVar = new vc.q(new NativeFloatBuffer(i12));
        vc.q qVar2 = new vc.q(new NativeFloatBuffer(i12));
        vc.q qVar3 = new vc.q(new NativeFloatBuffer(i12));
        vc.p pVar = new vc.p(new NativeFloatBuffer(size * 4));
        vc.n nVar = new vc.n(new NativeIntBuffer(size2 * 6));
        f76939w.get();
        f76940x.get();
        f76941y.get();
        f76942z.get();
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < this.f76962t.size(); i15++) {
            C16154b c16154b = this.f76962t.get(i15);
            qVar.C(i14, c16154b.f130081a.add(0.0f, this.f76953k, 0.0f));
            qVar2.C(i14, c16154b.d());
            c16154b.f130085e = i14;
            int ordinal = this.f76950h.ordinal();
            if (ordinal == 0) {
                pVar.r(i14, 1.0f - this.f76956n, c16154b.f130083c);
            } else if (ordinal == 1) {
                pVar.r(i14, c16154b.f130083c, 1.0f - this.f76956n);
            }
            qVar3.C(i14, c16154b.f130087g.a());
            int i16 = i14 + 1;
            qVar.C(i16, c16154b.f130082b.add(0.0f, this.f76953k, 0.0f));
            qVar2.C(i16, c16154b.d());
            c16154b.f130086f = i16;
            int ordinal2 = this.f76950h.ordinal();
            if (ordinal2 == 0) {
                pVar.r(i16, this.f76956n, c16154b.f130084d);
            } else if (ordinal2 == 1) {
                pVar.r(i16, c16154b.f130084d, this.f76956n);
            }
            qVar3.C(i16, c16154b.f130087g.a());
            i14 += 2;
        }
        int i17 = 0;
        while (i13 < nVar.b()) {
            int i18 = i17 + 2;
            int i19 = i17 + 1;
            nVar.o(i13, i18, i19, i17);
            nVar.o(i13 + 1, i18, i17 + 3, i19);
            i13 += 2;
            i17 = i18;
        }
        Vertex vertex = new Vertex();
        vertex.r2(qVar);
        vertex.Z1(qVar2);
        vertex.f2(qVar3);
        vertex.j2(nVar);
        vertex.n2(pVar);
        if (this.f76954l != 0.0f) {
            vertex.w(d(width));
            vertex.w(g(width));
        }
        vertex.apply();
        return vertex;
    }

    public final void k(Terrain terrain, AtomicInteger totalAtomic, AtomicInteger executedAtomic, p levelListener) {
        float resolution = (terrain.width / terrain.getResolution()) / 2.0f;
        Vector3 vector3 = f76939w.get();
        Vector3 vector32 = f76940x.get();
        Vector3 vector33 = f76941y.get();
        Vector3 vector34 = f76942z.get();
        int i10 = 0;
        while (i10 < this.f76962t.size()) {
            C16154b c16154b = this.f76962t.get(i10);
            i10++;
            if (this.f76962t.size() > i10) {
                C16154b c16154b2 = this.f76962t.get(i10);
                vector3.set(c16154b.f130087g.c());
                vector3.addLocal(c16154b.f130087g.b(), (this.f76944b / 2.0f) + this.f76946d);
                vector32.set(c16154b.f130087g.c());
                vector32.subLocal(c16154b.f130087g.b(), (this.f76944b / 2.0f) + this.f76946d);
                vector33.set(c16154b2.f130087g.c());
                vector33.addLocal(c16154b2.f130087g.b(), (this.f76944b / 2.0f) + this.f76946d);
                vector34.set(c16154b2.f130087g.c());
                vector34.subLocal(c16154b2.f130087g.b(), (this.f76944b / 2.0f) + this.f76946d);
                float X02 = Nc.b.X0(vector3.getX(), Nc.b.X0(vector32.getX(), Nc.b.X0(vector33.getX(), vector34.getX())));
                totalAtomic.addAndGet((((int) ((Nc.b.S0(vector3.getX(), Nc.b.S0(vector32.getX(), Nc.b.S0(vector33.getX(), vector34.getX()))) - X02) / resolution)) + 1) * (((int) ((Nc.b.S0(vector3.getZ(), Nc.b.S0(vector32.getZ(), Nc.b.S0(vector33.getZ(), vector34.getZ()))) - Nc.b.X0(vector3.getZ(), Nc.b.X0(vector32.getZ(), Nc.b.X0(vector33.getZ(), vector34.getZ())))) / resolution)) + 1));
            }
        }
    }

    public void l() {
        this.f76943a.clear();
    }

    public final Vector3 m(Vector3 a12, Vector3 a22, Vector3 b12, Vector3 b22) {
        float x10 = a12.getX();
        float z10 = a12.getZ();
        float x11 = a22.getX();
        float z11 = a22.getZ();
        float x12 = b12.getX();
        float z12 = b12.getZ();
        float x13 = b22.getX();
        float z13 = b22.getZ();
        float f10 = x10 - x11;
        float f11 = z12 - z13;
        float f12 = z10 - z11;
        float f13 = x12 - x13;
        float f14 = (f10 * f11) - (f12 * f13);
        if (Math.abs(f14) < 1.0E-6f) {
            return null;
        }
        float f15 = (x10 * z11) - (z10 * x11);
        float f16 = (x12 * z13) - (z12 * x13);
        Vector3 vector3 = new Vector3();
        vector3.set(((f13 * f15) - (f10 * f16)) / f14, a12.getY(), ((f15 * f11) - (f12 * f16)) / f14);
        return vector3;
    }

    public final Vector3 n(Vector3 a12, Vector3 a22, Vector3 b12, Vector3 b22) {
        float x10 = a12.getX();
        float z10 = a12.getZ();
        float x11 = a22.getX();
        float z11 = a22.getZ();
        float x12 = b12.getX();
        float z12 = b12.getZ();
        float x13 = b22.getX();
        float f10 = x10 - x11;
        float z13 = z12 - b22.getZ();
        float f11 = z10 - z11;
        float f12 = x12 - x13;
        float f13 = (f10 * z13) - (f11 * f12);
        if (Math.abs(f13) < 1.0E-6f) {
            return null;
        }
        float f14 = x10 - x12;
        float f15 = z10 - z12;
        float f16 = ((z13 * f14) - (f12 * f15)) / f13;
        float f17 = ((f14 * f11) - (f15 * f10)) / f13;
        if (f16 < 0.0f || f16 > 1.0f || f17 < 0.0f || f17 > 1.0f) {
            return null;
        }
        return new Vector3(x10 + ((x11 - x10) * f16), a12.getY(), z10 + (f16 * (z11 - z10)));
    }

    public final void o(List<C16154b> path, float width, float collapseAngle, float thresholdAngle, float shrinkFactor) {
        float radians = (float) Math.toRadians(collapseAngle);
        float radians2 = (float) Math.toRadians(thresholdAngle);
        if (path.size() < 3) {
            return;
        }
        int i10 = 1;
        while (i10 < path.size() - 1) {
            C16154b c16154b = path.get(i10 - 1);
            C16154b c16154b2 = path.get(i10);
            i10++;
            C16154b c16154b3 = path.get(i10);
            Vector3 c10 = c16154b.f130087g.c();
            Vector3 c11 = c16154b2.f130087g.c();
            Vector3 c12 = c16154b3.f130087g.c();
            Vector3 normalizeLocal = c11.sub(c10, new Vector3()).normalizeLocal();
            Vector3 normalizeLocal2 = c12.sub(c11, new Vector3()).normalizeLocal();
            float acos = (float) Math.acos(Math.max(-1.0f, Math.min(1.0f, normalizeLocal.dot(normalizeLocal2))));
            boolean z10 = normalizeLocal.cross(normalizeLocal2, new Vector3()).getY() < 0.0f;
            Vector3 m1249clone = c11.m1249clone();
            if (acos < radians2) {
                float f10 = width * shrinkFactor * (acos > radians ? 1.0f - ((acos - radians) / (radians2 - radians)) : 1.0f);
                if (z10) {
                    Vector3 sub = c16154b2.f130081a.m1249clone().sub(m1249clone);
                    float lengthF = sub.lengthF();
                    if (lengthF < 0.4f * width) {
                        sub.normalizeLocal();
                        c16154b2.f130081a.set(m1249clone.add(sub.mulLocal(lengthF + f10)));
                    }
                } else {
                    Vector3 sub2 = c16154b2.f130082b.m1249clone().sub(m1249clone);
                    float lengthF2 = sub2.lengthF();
                    if (lengthF2 < 0.4f * width) {
                        sub2.normalizeLocal();
                        c16154b2.f130082b.set(m1249clone.add(sub2.mulLocal(lengthF2 + f10)));
                    }
                }
            }
        }
        c0(path);
    }

    public float p() {
        return this.f76947e;
    }

    public float q() {
        return this.f76946d;
    }

    public Vertex r() {
        return this.f76960r;
    }

    public List<C16154b> s() {
        return this.f76962t;
    }

    public float t() {
        return this.f76945c;
    }

    public float u() {
        return this.f76954l;
    }

    public float v() {
        return this.f76956n;
    }

    public float w() {
        return this.f76955m;
    }

    public float x() {
        return this.f76949g;
    }

    public float y() {
        return this.f76951i;
    }

    public q z() {
        return this.f76950h;
    }
}
