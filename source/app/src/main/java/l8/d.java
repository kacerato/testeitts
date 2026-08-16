package L8;

import com.itsmagic.engine.Engines.Engine.Animation.AnimationMask;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.j;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class d {

    public static class a {

        public static final int[] f11658a;

        static {
            int[] iArr = new int[com.itsmagic.engine.Engines.Engine.Animation.c.values().length];
            f11658a = iArr;
            try {
                iArr[com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11658a[com.itsmagic.engine.Engines.Engine.Animation.c.INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11658a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11658a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC2.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11658a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC2I.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11658a[com.itsmagic.engine.Engines.Engine.Animation.c.UVEC2I.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11658a[com.itsmagic.engine.Engines.Engine.Animation.c.QUAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f11658a[com.itsmagic.engine.Engines.Engine.Animation.c.COLOR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f11658a[com.itsmagic.engine.Engines.Engine.Animation.c.SQUARE5I.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f11658a[com.itsmagic.engine.Engines.Engine.Animation.c.IMAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static <T> T a(Class cls, MiniJP miniJP) {
        return miniJP != null ? (T) miniJP.acquire(cls) : (T) JP.acquire(cls);
    }

    public static void b(b source, float baseWeight, Map<Ac.b, c> framesByID, List<c> outputFrames, MiniJP mjp) {
        List<c> a10 = source.a();
        for (int i10 = 0; i10 < a10.size(); i10++) {
            c cVar = a10.get(i10);
            float d10 = d(cVar, source, baseWeight);
            if (d10 > 0.0f) {
                c cVar2 = framesByID.get(cVar.j());
                if (cVar2 == null) {
                    c c10 = c(cVar, mjp);
                    c10.S(d10);
                    framesByID.put(c10.j(), c10);
                    outputFrames.add(c10);
                } else {
                    float s10 = cVar2.s() + d10;
                    if (s10 <= 0.0f) {
                        outputFrames.remove(cVar2);
                        framesByID.remove(cVar2.j());
                        cVar2.y(mjp);
                    } else {
                        c cVar3 = (c) a(c.class, mjp);
                        g(cVar2, cVar, cVar3, Nc.b.I(d10 / s10), mjp);
                        cVar3.S(Nc.b.I(s10));
                        framesByID.put(cVar3.j(), cVar3);
                        int indexOf = outputFrames.indexOf(cVar2);
                        if (indexOf >= 0) {
                            outputFrames.set(indexOf, cVar3);
                        } else {
                            outputFrames.add(cVar3);
                        }
                        cVar2.y(mjp);
                    }
                }
            }
        }
    }

    public static c c(c source, MiniJP mjp) {
        c cVar = (c) a(c.class, mjp);
        cVar.J(source.j());
        cVar.L(source.l());
        cVar.D(source.e());
        cVar.E(source.f());
        cVar.P(source.p());
        cVar.M(source.m());
        cVar.F(source.g());
        cVar.B(source.c());
        cVar.G(source.v());
        cVar.S(Nc.b.I(source.s()));
        com.itsmagic.engine.Engines.Engine.Animation.c p10 = source.p();
        if (p10 == null) {
            return cVar;
        }
        switch (a.f11658a[p10.ordinal()]) {
            case 1:
                cVar.H(source.h());
                break;
            case 2:
                cVar.K(source.k());
                break;
            case 3:
                Vector3 r10 = source.r();
                if (r10 != null) {
                    Vector3 vector3 = (Vector3) a(Vector3.class, mjp);
                    vector3.set(r10);
                    cVar.R(vector3);
                    break;
                }
                break;
            case 4:
            case 5:
            case 6:
                Vector2 q10 = source.q();
                if (q10 != null) {
                    Vector2 vector2 = (Vector2) a(Vector2.class, mjp);
                    vector2.x0(q10);
                    cVar.Q(vector2);
                    break;
                }
                break;
            case 7:
                Quaternion n10 = source.n();
                if (n10 != null) {
                    Quaternion quaternion = (Quaternion) a(Quaternion.class, mjp);
                    quaternion.u0(n10);
                    cVar.N(quaternion);
                    break;
                }
                break;
            case 8:
                ColorINT d10 = source.d();
                if (d10 != null) {
                    ColorINT colorINT = (ColorINT) a(ColorINT.class, mjp);
                    colorINT.K(d10);
                    cVar.C(colorINT);
                    break;
                }
                break;
            case 9:
                Square5I o10 = source.o();
                if (o10 != null) {
                    Square5I square5I = new Square5I();
                    square5I.n(o10);
                    cVar.O(square5I);
                    break;
                }
                break;
            case 10:
                cVar.I(source.i());
                break;
        }
        return cVar;
    }

    public static float d(c frame, b instant, float baseWeight) {
        if (frame == null || baseWeight <= 0.0f) {
            return 0.0f;
        }
        float I10 = Nc.b.I(frame.s());
        AnimationMask b10 = instant != null ? instant.b() : null;
        return Nc.b.I(baseWeight * I10 * ((b10 == null || frame.l() == null) ? 1.0f : Nc.b.I(b10.f(frame.l()))));
    }

    public static b e(b a10, b b10, float blend) {
        return f(a10, b10, blend, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static b f(b a10, b b10, float blend, MiniJP mjp) {
        if (a10 == null) {
            throw new NullPointerException("a cant' be null");
        }
        if (b10 == null) {
            throw new NullPointerException("b cant' be null");
        }
        b bVar = (b) a(b.class, mjp);
        HashMap hashMap = new HashMap();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        b(a10, 1.0f - blend, hashMap, steppedArrayList, mjp);
        b(b10, blend, hashMap, steppedArrayList, mjp);
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            bVar.a().add((c) steppedArrayList.get(i10));
        }
        return bVar;
    }

    public static void g(c from, c to, c resultantFrame, float blend, MiniJP mjp) {
        resultantFrame.J(from.j());
        resultantFrame.L(from.l());
        resultantFrame.D(from.e());
        resultantFrame.E(from.f());
        resultantFrame.P(from.p());
        resultantFrame.S(1.0f);
        if (from.g() != null && !from.g().trim().isEmpty() && to.g() != null && !to.g().trim().isEmpty()) {
            float c10 = from.c();
            float c11 = c10 + ((to.c() - c10) * blend);
            resultantFrame.F(from.g());
            resultantFrame.B(c11);
            resultantFrame.M(blend < 0.5f ? from.m() : to.m());
            resultantFrame.G(from.v() || to.v());
        } else if (from.g() != null && !from.g().trim().isEmpty()) {
            resultantFrame.F(from.g());
            resultantFrame.B(from.c());
            resultantFrame.M(from.m());
            resultantFrame.G(from.v());
        } else if (to.g() == null || to.g().trim().isEmpty()) {
            resultantFrame.M(blend < 0.5f ? from.m() : to.m());
            resultantFrame.G(blend < 0.5f ? from.v() : to.v());
        } else {
            resultantFrame.F(to.g());
            resultantFrame.B(to.c());
            resultantFrame.M(to.m());
            resultantFrame.G(to.v());
        }
        com.itsmagic.engine.Engines.Engine.Animation.c p10 = from.p();
        if (p10 == null) {
            return;
        }
        switch (a.f11658a[p10.ordinal()]) {
            case 1:
                float b10 = c.b(from);
                resultantFrame.H(b10 + ((c.b(to) - b10) * blend));
                return;
            case 2:
                resultantFrame.K((int) Nc.b.j1(c.u(from) + ((c.u(to) - r7) * blend)));
                return;
            case 3:
                Vector3 vector3 = (Vector3) a(Vector3.class, mjp);
                j.q(c.V(from), c.V(to), blend, Vector3.zero(), vector3);
                resultantFrame.R(vector3);
                return;
            case 4:
            case 5:
            case 6:
                Vector2 vector2 = (Vector2) a(Vector2.class, mjp);
                j.p(c.U(from), c.U(to), blend, Vector2.M0(), vector2);
                resultantFrame.Q(vector2);
                return;
            case 7:
                Quaternion quaternion = (Quaternion) a(Quaternion.class, mjp);
                com.itsmagic.engine.Engines.Engine.Quaternion.c.j(c.w(from), c.w(to), blend, Quaternion.X0(), quaternion);
                resultantFrame.N(quaternion);
                return;
            case 8:
                ColorINT colorINT = (ColorINT) a(ColorINT.class, mjp);
                Q8.a.f(c.a(from), c.a(to), blend, colorINT);
                resultantFrame.C(colorINT);
                return;
            case 9:
                Square5I T10 = c.T(from);
                Square5I T11 = c.T(to);
                if (T10 == null && T11 == null) {
                    resultantFrame.O(null);
                    return;
                }
                resultantFrame.O(new Square5I((int) Nc.b.j1((T10 != null ? T10.i() : T11.i()) + (((T11 != null ? T11.i() : r11) - r11) * blend)), (int) Nc.b.j1((T10 != null ? T10.k() : T11.k()) + (((T11 != null ? T11.k() : r0) - r0) * blend)), (int) Nc.b.j1((T10 != null ? T10.j() : T11.j()) + (((T11 != null ? T11.j() : r1) - r1) * blend)), (int) Nc.b.j1((T10 != null ? T10.b() : T11.b()) + (((T11 != null ? T11.b() : r7) - r7) * blend))));
                return;
            case 10:
                String t10 = c.t(from);
                String t11 = c.t(to);
                if (t10 == null && t11 == null) {
                    resultantFrame.I(null);
                    return;
                }
                if (blend < 0.5f) {
                    if (t10 == null) {
                        t10 = t11;
                    }
                    resultantFrame.I(t10);
                    return;
                } else {
                    if (t11 != null) {
                        t10 = t11;
                    }
                    resultantFrame.I(t10);
                    return;
                }
            default:
                return;
        }
    }
}
