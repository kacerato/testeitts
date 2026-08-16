package Ib;

import JAVARuntime.Vertex;
import aa.C3593a;
import aa.C3595c;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ea.C13049a;
import java.util.List;

public class c {

    public static final ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> f8913b = new a();

    public static final ThreadLocal<Vector3> f8914c = new b();

    public static final ThreadLocal<Vector2> f8915d = new C0230c();

    public final List<d> f8916a;

    public class a extends ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> {
        @Override
        public com.itsmagic.engine.Engines.Engine.Vector.f initialValue() {
            return new com.itsmagic.engine.Engines.Engine.Vector.f();
        }
    }

    public class b extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class C0230c extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public static class d {

        public float f8917A;

        public float f8918B;

        public float f8919C;

        public float f8920D;

        public float f8921E;

        public int f8922a;

        public int f8923b;

        public int f8924c;

        public float f8925d;

        public float f8926e;

        public float f8927f;

        public float f8928g;

        public float f8929h;

        public float f8930i;

        public float f8931j;

        public float f8932k;

        public float f8933l;

        public float f8934m;

        public float f8935n;

        public float f8936o;

        public float f8937p;

        public float f8938q;

        public float f8939r;

        public float f8940s;

        public float f8941t;

        public float f8942u;

        public float f8943v;

        public float f8944w;

        public float f8945x;

        public float f8946y;

        public float f8947z;

        public d() {
        }

        public d(a aVar) {
            this();
        }
    }

    public c(List<d> triangles) {
        this.f8916a = triangles;
    }

    public static c c(Vertex vertex) {
        return d(vertex, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0206 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01f7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static c d(Vertex vertex, float[] matrix) {
        com.itsmagic.engine.Engines.Engine.Vector.f fVar;
        int i10;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        Vector2 vector2;
        SteppedArrayList steppedArrayList;
        Vertex vertex2 = vertex;
        try {
            int W02 = vertex.W0();
            SteppedArrayList steppedArrayList2 = new SteppedArrayList(W02);
            Vector3 vector3 = f8914c.get();
            Vector2 vector22 = f8915d.get();
            if (matrix != null) {
                fVar = f8913b.get();
                fVar.y0(matrix);
            } else {
                fVar = null;
            }
            int i11 = 0;
            while (i11 < W02) {
                vertex2.L0(i11, vector3);
                if (fVar != null) {
                    fVar.p0(vector3, vector3);
                }
                float x10 = vector3.getX();
                float y10 = vector3.getY();
                float z10 = vector3.getZ();
                vertex2.O0(i11, vector3);
                if (fVar != null) {
                    fVar.p0(vector3, vector3);
                }
                float x11 = vector3.getX();
                float y11 = vector3.getY();
                float z11 = vector3.getZ();
                vertex2.R0(i11, vector3);
                if (fVar != null) {
                    fVar.p0(vector3, vector3);
                }
                float x12 = vector3.getX();
                float y12 = vector3.getY();
                float z12 = vector3.getZ();
                int i12 = W02;
                float f19 = x11 - x10;
                Vector3 vector32 = vector3;
                float f20 = y11 - y10;
                com.itsmagic.engine.Engines.Engine.Vector.f fVar2 = fVar;
                float f21 = z11 - z10;
                SteppedArrayList steppedArrayList3 = steppedArrayList2;
                float f22 = x12 - x10;
                Vector2 vector23 = vector22;
                float f23 = y12 - y10;
                float f24 = z12 - z10;
                float f25 = (f20 * f24) - (f21 * f23);
                float f26 = (f21 * f22) - (f19 * f24);
                float f27 = (f19 * f23) - (f20 * f22);
                int i13 = i11;
                float f28 = (f25 * f25) + (f26 * f26) + (f27 * f27);
                if (f28 <= 1.0E-16f) {
                    steppedArrayList = steppedArrayList3;
                    i10 = i13;
                    vector2 = vector23;
                } else {
                    float sqrt = (float) (1.0d / Math.sqrt(f28));
                    float f29 = f25 * sqrt;
                    float f30 = f26 * sqrt;
                    float f31 = sqrt * f27;
                    float f32 = (x10 + x11 + x12) * 0.33333334f;
                    float f33 = (y10 + y11 + y12) * 0.33333334f;
                    float f34 = (z10 + z11 + z12) * 0.33333334f;
                    float f35 = x12 - x11;
                    float f36 = y12 - y11;
                    float f37 = (f35 * f35) + (f36 * f36);
                    float f38 = z12 - z11;
                    float sqrt2 = (float) (Math.sqrt(Math.max((f19 * f19) + (f20 * f20) + (f21 * f21), Math.max((f22 * f22) + (f23 * f23) + (f24 * f24), f37 + (f38 * f38)))) * 0.5d);
                    int M02 = vertex.M0(i13);
                    int P02 = vertex.P0(i13);
                    int U02 = vertex.U0(i13);
                    i10 = i13;
                    try {
                        vertex.Z0(M02, vector23);
                        f10 = f34;
                        try {
                            float f39 = vector23.f79838x;
                            f13 = vector23.f79839y;
                            f12 = f39;
                            f11 = f30;
                        } catch (Exception unused) {
                            f11 = f30;
                            f12 = 0.0f;
                            f13 = 0.0f;
                            vertex.Z0(P02, vector23);
                            f14 = f13;
                            try {
                                float f40 = vector23.f79838x;
                                f16 = vector23.f79839y;
                                f15 = f40;
                            } catch (Exception unused2) {
                                f15 = 0.0f;
                                f16 = 0.0f;
                                vertex.Z0(U02, vector23);
                                float f41 = vector23.f79838x;
                                vector2 = vector23;
                                f18 = vector23.f79839y;
                                f17 = f41;
                                d dVar = new d(null);
                                dVar.f8922a = M02;
                                dVar.f8923b = P02;
                                dVar.f8924c = U02;
                                dVar.f8925d = x10;
                                dVar.f8926e = y10;
                                dVar.f8927f = z10;
                                dVar.f8928g = x11;
                                dVar.f8929h = y11;
                                dVar.f8930i = z11;
                                dVar.f8931j = x12;
                                dVar.f8932k = y12;
                                dVar.f8933l = z12;
                                dVar.f8934m = f12;
                                dVar.f8935n = f14;
                                dVar.f8936o = f15;
                                dVar.f8937p = f16;
                                dVar.f8938q = f17;
                                dVar.f8939r = f18;
                                dVar.f8940s = f29;
                                dVar.f8941t = f11;
                                dVar.f8942u = f31;
                                dVar.f8943v = f32;
                                dVar.f8944w = f33;
                                dVar.f8945x = f10;
                                dVar.f8946y = sqrt2;
                                dVar.f8947z = f19;
                                dVar.f8917A = f20;
                                dVar.f8918B = f21;
                                dVar.f8919C = f22;
                                dVar.f8920D = f23;
                                dVar.f8921E = f24;
                                steppedArrayList = steppedArrayList3;
                                steppedArrayList.add(dVar);
                                if (!C13049a.a(5.0f)) {
                                }
                            }
                            vertex.Z0(U02, vector23);
                            float f412 = vector23.f79838x;
                            vector2 = vector23;
                            f18 = vector23.f79839y;
                            f17 = f412;
                            d dVar2 = new d(null);
                            dVar2.f8922a = M02;
                            dVar2.f8923b = P02;
                            dVar2.f8924c = U02;
                            dVar2.f8925d = x10;
                            dVar2.f8926e = y10;
                            dVar2.f8927f = z10;
                            dVar2.f8928g = x11;
                            dVar2.f8929h = y11;
                            dVar2.f8930i = z11;
                            dVar2.f8931j = x12;
                            dVar2.f8932k = y12;
                            dVar2.f8933l = z12;
                            dVar2.f8934m = f12;
                            dVar2.f8935n = f14;
                            dVar2.f8936o = f15;
                            dVar2.f8937p = f16;
                            dVar2.f8938q = f17;
                            dVar2.f8939r = f18;
                            dVar2.f8940s = f29;
                            dVar2.f8941t = f11;
                            dVar2.f8942u = f31;
                            dVar2.f8943v = f32;
                            dVar2.f8944w = f33;
                            dVar2.f8945x = f10;
                            dVar2.f8946y = sqrt2;
                            dVar2.f8947z = f19;
                            dVar2.f8917A = f20;
                            dVar2.f8918B = f21;
                            dVar2.f8919C = f22;
                            dVar2.f8920D = f23;
                            dVar2.f8921E = f24;
                            steppedArrayList = steppedArrayList3;
                            steppedArrayList.add(dVar2);
                            if (!C13049a.a(5.0f)) {
                            }
                        }
                    } catch (Exception unused3) {
                        f10 = f34;
                    }
                    try {
                        vertex.Z0(P02, vector23);
                        f14 = f13;
                        float f402 = vector23.f79838x;
                        f16 = vector23.f79839y;
                        f15 = f402;
                    } catch (Exception unused4) {
                        f14 = f13;
                    }
                    try {
                        vertex.Z0(U02, vector23);
                        float f4122 = vector23.f79838x;
                        vector2 = vector23;
                        f18 = vector23.f79839y;
                        f17 = f4122;
                    } catch (Exception unused5) {
                        f17 = 0.0f;
                        f18 = 0.0f;
                        vector2 = vector23;
                    }
                    d dVar22 = new d(null);
                    dVar22.f8922a = M02;
                    dVar22.f8923b = P02;
                    dVar22.f8924c = U02;
                    dVar22.f8925d = x10;
                    dVar22.f8926e = y10;
                    dVar22.f8927f = z10;
                    dVar22.f8928g = x11;
                    dVar22.f8929h = y11;
                    dVar22.f8930i = z11;
                    dVar22.f8931j = x12;
                    dVar22.f8932k = y12;
                    dVar22.f8933l = z12;
                    dVar22.f8934m = f12;
                    dVar22.f8935n = f14;
                    dVar22.f8936o = f15;
                    dVar22.f8937p = f16;
                    dVar22.f8938q = f17;
                    dVar22.f8939r = f18;
                    dVar22.f8940s = f29;
                    dVar22.f8941t = f11;
                    dVar22.f8942u = f31;
                    dVar22.f8943v = f32;
                    dVar22.f8944w = f33;
                    dVar22.f8945x = f10;
                    dVar22.f8946y = sqrt2;
                    dVar22.f8947z = f19;
                    dVar22.f8917A = f20;
                    dVar22.f8918B = f21;
                    dVar22.f8919C = f22;
                    dVar22.f8920D = f23;
                    dVar22.f8921E = f24;
                    steppedArrayList = steppedArrayList3;
                    steppedArrayList.add(dVar22);
                    if (!C13049a.a(5.0f)) {
                        throw new OutOfMemoryError();
                    }
                }
                i11 = i10 + 1;
                fVar = fVar2;
                steppedArrayList2 = steppedArrayList;
                W02 = i12;
                vector3 = vector32;
                vector22 = vector2;
                vertex2 = vertex;
            }
            return new c(steppedArrayList2);
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public C3593a a(C3595c ray, Vertex.RayMode rayMode) {
        return b(ray, rayMode, true);
    }

    public C3593a b(C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling) {
        c cVar;
        int i10;
        float f10;
        int i11;
        int i12;
        int i13;
        float f11;
        float f12;
        c cVar2 = this;
        float lengthF = ray.f31953b.f31958c.lengthF();
        float f13 = lengthF > 0.0f ? 1.0f / lengthF : 0.0f;
        float x10 = ray.f31953b.f31958c.getX() * f13;
        float y10 = ray.f31953b.f31958c.getY() * f13;
        float z10 = ray.f31953b.f31958c.getZ() * f13;
        float x11 = ray.f31953b.f31957b.getX();
        float y11 = ray.f31953b.f31957b.getY();
        float z11 = ray.f31953b.f31957b.getZ();
        float f14 = ray.f31954c;
        if (f14 <= 0.0f) {
            f14 = Float.POSITIVE_INFINITY;
        }
        int size = cVar2.f8916a.size();
        int i14 = -1;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        int i15 = 0;
        float f19 = Float.POSITIVE_INFINITY;
        float f20 = Float.NEGATIVE_INFINITY;
        int i16 = -1;
        while (i15 < size) {
            d dVar = cVar2.f8916a.get(i15);
            float f21 = dVar.f8943v - x11;
            int i17 = size;
            float f22 = dVar.f8944w - y11;
            float f23 = dVar.f8945x - z11;
            float f24 = (f21 * f21) + (f22 * f22) + (f23 * f23);
            float f25 = f14 == Float.POSITIVE_INFINITY ? Float.POSITIVE_INFINITY : dVar.f8946y + f14;
            if (f24 > f25 * f25) {
                f12 = x11;
                i13 = i15;
                i12 = i14;
                i11 = i16;
            } else {
                float f26 = dVar.f8921E;
                float f27 = dVar.f8920D;
                float f28 = (y10 * f26) - (z10 * f27);
                float f29 = dVar.f8919C;
                float f30 = (z10 * f29) - (x10 * f26);
                float f31 = (x10 * f27) - (y10 * f29);
                i11 = i16;
                float f32 = dVar.f8947z;
                i12 = i14;
                float f33 = dVar.f8917A;
                i13 = i15;
                float f34 = dVar.f8918B;
                float f35 = (f32 * f28) + (f33 * f30) + (f34 * f31);
                if (!backfaceCulling ? !(f35 <= -1.0E-8f || f35 >= 1.0E-8f) : f35 <= 1.0E-8f) {
                    float f36 = 1.0f / f35;
                    f11 = f20;
                    float f37 = x11 - dVar.f8925d;
                    f12 = x11;
                    float f38 = y11 - dVar.f8926e;
                    float f39 = z11 - dVar.f8927f;
                    float f40 = ((f28 * f37) + (f30 * f38) + (f31 * f39)) * f36;
                    if (f40 >= 0.0f && f40 <= 1.0f) {
                        float f41 = (f38 * f34) - (f39 * f33);
                        float f42 = (f39 * f32) - (f34 * f37);
                        float f43 = (f37 * f33) - (f38 * f32);
                        float f44 = ((x10 * f41) + (y10 * f42) + (z10 * f43)) * f36;
                        if (f44 >= 0.0f && f40 + f44 <= 1.0f) {
                            float f45 = ((f29 * f41) + (f27 * f42) + (f26 * f43)) * f36;
                            if (f45 >= 0.0f && f45 <= f14) {
                                if (f45 < f19) {
                                    f19 = f45;
                                    f16 = f44;
                                    f15 = f40;
                                    i14 = i13;
                                } else {
                                    i14 = i12;
                                }
                                if (f45 > f11) {
                                    f20 = f45;
                                    f18 = f44;
                                    f17 = f40;
                                    i16 = i13;
                                    i15 = i13 + 1;
                                    cVar2 = this;
                                    size = i17;
                                    x11 = f12;
                                } else {
                                    i16 = i11;
                                    f20 = f11;
                                    i15 = i13 + 1;
                                    cVar2 = this;
                                    size = i17;
                                    x11 = f12;
                                }
                            }
                            i16 = i11;
                            i14 = i12;
                            f20 = f11;
                            i15 = i13 + 1;
                            cVar2 = this;
                            size = i17;
                            x11 = f12;
                        }
                    }
                    i16 = i11;
                    i14 = i12;
                    f20 = f11;
                    i15 = i13 + 1;
                    cVar2 = this;
                    size = i17;
                    x11 = f12;
                } else {
                    f12 = x11;
                }
            }
            f11 = f20;
            i16 = i11;
            i14 = i12;
            f20 = f11;
            i15 = i13 + 1;
            cVar2 = this;
            size = i17;
            x11 = f12;
        }
        float f46 = x11;
        int i18 = i14;
        int i19 = i16;
        float f47 = f20;
        if (i18 < 0 && i19 < 0) {
            return null;
        }
        if (rayMode == Vertex.RayMode.ClosestPoint) {
            if (i18 < 0) {
                return null;
            }
        } else {
            if (rayMode == Vertex.RayMode.FarHit) {
                if (i19 < 0) {
                    return null;
                }
                cVar = this;
                f15 = f17;
                f16 = f18;
                i10 = i19;
                f10 = f47;
                d dVar2 = cVar.f8916a.get(i10);
                Vector3 vector3 = new Vector3(f46 + (x10 * f10), y11 + (y10 * f10), z11 + (z10 * f10));
                C3593a c3593a = new C3593a();
                c3593a.f31932r = true;
                c3593a.v(vector3);
                c3593a.u(new Vector3(x10, y10, z10));
                c3593a.s(new Vector3(dVar2.f8940s, dVar2.f8941t, dVar2.f8942u));
                c3593a.setDistance(f10);
                float f48 = (1.0f - f15) - f16;
                c3593a.A(new Vector2(dVar2.f8934m, dVar2.f8935n));
                c3593a.B(new Vector2(dVar2.f8936o, dVar2.f8937p));
                c3593a.C(new Vector2(dVar2.f8938q, dVar2.f8939r));
                c3593a.D(new Vector2((dVar2.f8934m * f48) + (dVar2.f8936o * f15) + (dVar2.f8938q * f16), (dVar2.f8935n * f48) + (dVar2.f8937p * f15) + (dVar2.f8939r * f16)));
                return c3593a;
            }
            if (i18 < 0) {
                return null;
            }
        }
        cVar = this;
        f10 = f19;
        i10 = i18;
        d dVar22 = cVar.f8916a.get(i10);
        Vector3 vector32 = new Vector3(f46 + (x10 * f10), y11 + (y10 * f10), z11 + (z10 * f10));
        C3593a c3593a2 = new C3593a();
        c3593a2.f31932r = true;
        c3593a2.v(vector32);
        c3593a2.u(new Vector3(x10, y10, z10));
        c3593a2.s(new Vector3(dVar22.f8940s, dVar22.f8941t, dVar22.f8942u));
        c3593a2.setDistance(f10);
        float f482 = (1.0f - f15) - f16;
        c3593a2.A(new Vector2(dVar22.f8934m, dVar22.f8935n));
        c3593a2.B(new Vector2(dVar22.f8936o, dVar22.f8937p));
        c3593a2.C(new Vector2(dVar22.f8938q, dVar22.f8939r));
        c3593a2.D(new Vector2((dVar22.f8934m * f482) + (dVar22.f8936o * f15) + (dVar22.f8938q * f16), (dVar22.f8935n * f482) + (dVar22.f8937p * f15) + (dVar22.f8939r * f16)));
        return c3593a2;
    }
}
