package L8;

import com.itsmagic.engine.Engines.Engine.Animation.AnimationData;
import com.itsmagic.engine.Engines.Engine.Animation.Frame;
import com.itsmagic.engine.Engines.Engine.Animation.Timeline;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.j;
import gb.C13317e;
import java.util.List;

public class a {

    public static class C0379a {

        public static final int[] f11636a;

        static {
            int[] iArr = new int[com.itsmagic.engine.Engines.Engine.Animation.c.values().length];
            f11636a = iArr;
            try {
                iArr[com.itsmagic.engine.Engines.Engine.Animation.c.VEC3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11636a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11636a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC2I.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11636a[com.itsmagic.engine.Engines.Engine.Animation.c.UVEC2I.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11636a[com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11636a[com.itsmagic.engine.Engines.Engine.Animation.c.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11636a[com.itsmagic.engine.Engines.Engine.Animation.c.COLOR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f11636a[com.itsmagic.engine.Engines.Engine.Animation.c.QUAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f11636a[com.itsmagic.engine.Engines.Engine.Animation.c.SQUARE5I.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f11636a[com.itsmagic.engine.Engines.Engine.Animation.c.IMAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static <T> T a(Class cls, MiniJP miniJP) {
        return miniJP != null ? (T) miniJP.acquire(cls) : (T) JP.acquire(cls);
    }

    public static void b(Component component, c frame, float frameWeight) {
        switch (C0379a.f11636a[frame.p().ordinal()]) {
            case 1:
                Vector3 vec3FromAnimation = component.getVec3FromAnimation(frame.f());
                if (vec3FromAnimation == null) {
                    vec3FromAnimation = new Vector3();
                }
                if (frameWeight >= 1.0f) {
                    vec3FromAnimation.set(frame.r());
                } else {
                    j.q(vec3FromAnimation, frame.r(), frameWeight, vec3FromAnimation, vec3FromAnimation);
                }
                component.setVec3FromAnimation(frame.f(), vec3FromAnimation);
                return;
            case 2:
            case 3:
            case 4:
                Vector2 vec2FromAnimation = component.getVec2FromAnimation(frame.f());
                if (vec2FromAnimation == null) {
                    vec2FromAnimation = new Vector2();
                }
                if (frameWeight >= 1.0f) {
                    vec2FromAnimation.x0(frame.q());
                } else {
                    j.p(vec2FromAnimation, frame.q(), frameWeight, vec2FromAnimation, vec2FromAnimation);
                }
                component.setVec2FromAnimation(frame.f(), vec2FromAnimation);
                return;
            case 5:
                float floatFromAnimation = component.getFloatFromAnimation(frame.f());
                component.setFloatFromAnimation(frame.f(), frameWeight >= 1.0f ? frame.h() : floatFromAnimation + ((frame.h() - floatFromAnimation) * frameWeight));
                return;
            case 6:
                component.setIntFromAnimation(frame.f(), frameWeight >= 1.0f ? frame.k() : (int) Nc.b.j1(component.getIntFromAnimation(frame.f()) + ((frame.k() - r0) * frameWeight)));
                return;
            case 7:
                ColorINT colorFromAnimation = component.getColorFromAnimation(frame.f());
                if (colorFromAnimation == null) {
                    colorFromAnimation = new ColorINT();
                }
                if (frameWeight >= 1.0f) {
                    colorFromAnimation.K(frame.d());
                } else {
                    Q8.a.f(colorFromAnimation, frame.d(), frameWeight, colorFromAnimation);
                }
                component.setColorFromAnimation(frame.f(), colorFromAnimation);
                return;
            case 8:
                Quaternion quatFromAnimation = component.getQuatFromAnimation(frame.f());
                if (quatFromAnimation == null) {
                    quatFromAnimation = new Quaternion();
                }
                if (frameWeight >= 1.0f) {
                    quatFromAnimation.u0(frame.n());
                } else {
                    com.itsmagic.engine.Engines.Engine.Quaternion.c.j(quatFromAnimation, frame.n(), frameWeight, quatFromAnimation, quatFromAnimation);
                }
                component.setQuatFromAnimation(frame.f(), quatFromAnimation);
                return;
            case 9:
                Square5I o10 = frame.o();
                if (o10 == null) {
                    return;
                }
                Square5I square5FromAnimation = component.getSquare5FromAnimation(frame.f());
                if (square5FromAnimation == null) {
                    square5FromAnimation = new Square5I();
                    square5FromAnimation.n(o10);
                } else if (frameWeight >= 1.0f) {
                    square5FromAnimation.n(o10);
                } else {
                    square5FromAnimation.m((int) Nc.b.j1(square5FromAnimation.i() + ((o10.i() - square5FromAnimation.i()) * frameWeight)), (int) Nc.b.j1(square5FromAnimation.k() + ((o10.k() - square5FromAnimation.k()) * frameWeight)), (int) Nc.b.j1(square5FromAnimation.j() + ((o10.j() - square5FromAnimation.j()) * frameWeight)), (int) Nc.b.j1(square5FromAnimation.b() + ((o10.b() - square5FromAnimation.b()) * frameWeight)));
                }
                component.setSquare5FromAnimation(frame.f(), square5FromAnimation);
                return;
            case 10:
                if (frameWeight >= 0.5f) {
                    component.setImageFromAnimation(frame.f(), frame.i());
                    return;
                }
                return;
            default:
                return;
        }
    }

    public static void c(b instant) {
        for (int i10 = 0; i10 < instant.a().size(); i10++) {
            c cVar = instant.a().get(i10);
            try {
                GameObject gameObject = cVar.f11657s;
                if (C13317e.J(gameObject) && gameObject.allowAnimations) {
                    gameObject.B(cVar.g(), Float.valueOf(cVar.c()));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void d(b instant, GameObject animationPlayerObject, e cache) {
        e(instant, animationPlayerObject, cache, null);
    }

    public static boolean e(b instant, GameObject animationPlayerObject, e cache, MiniJP mjp) {
        boolean z10 = false;
        for (int size = instant.a().size() - 1; size >= 0; size--) {
            c cVar = instant.a().get(size);
            if (cVar.l() == null) {
                instant.a().remove(size);
                cVar.y(mjp);
            } else {
                float h10 = h(instant, cVar);
                if (h10 <= 0.0f) {
                    instant.a().remove(size);
                    cVar.y(mjp);
                } else {
                    try {
                        GameObject b10 = cache.b(animationPlayerObject, cVar.l());
                        if (C13317e.J(b10) && b10.allowAnimations) {
                            if (cVar.e().W(com.itsmagic.engine.Engines.Engine.Animation.a.f72593a)) {
                                f(b10, cVar, h10, mjp);
                            } else {
                                Component a10 = cache.a(b10, cVar.e());
                                if (a10 != null) {
                                    b(a10, cVar, h10);
                                }
                            }
                            if (cVar.g() != null && !cVar.g().isEmpty() && c8.b.k()) {
                                cVar.f11657s = b10;
                                z10 = true;
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
        return z10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0024, code lost:
    
        if (r12.equals("s") == false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0070, code lost:
    
        if (r7.equals("s") == false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void f(GameObject object, c frame, float frameWeight, MiniJP mjp) {
        char c10 = 2;
        if (frameWeight >= 1.0f) {
            String f10 = frame.f();
            f10.hashCode();
            switch (f10.hashCode()) {
                case 112:
                    if (f10.equals(com.itsmagic.engine.Engines.Engine.Animation.a.f72594b)) {
                        c10 = 0;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 113:
                default:
                    c10 = '\uffff';
                    break;
                case 114:
                    if (f10.equals(com.itsmagic.engine.Engines.Engine.Animation.a.f72595c)) {
                        c10 = 1;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 115:
                    break;
            }
            switch (c10) {
                case 0:
                    object.transform.p3(frame.r());
                    return;
                case 1:
                    object.transform.x3(frame.n());
                    return;
                case 2:
                    object.transform.setScale(frame.r());
                    return;
                default:
                    return;
            }
        }
        String f11 = frame.f();
        f11.hashCode();
        switch (f11.hashCode()) {
            case 112:
                if (f11.equals(com.itsmagic.engine.Engines.Engine.Animation.a.f72594b)) {
                    c10 = 0;
                    break;
                }
                c10 = '\uffff';
                break;
            case 113:
            default:
                c10 = '\uffff';
                break;
            case 114:
                if (f11.equals(com.itsmagic.engine.Engines.Engine.Animation.a.f72595c)) {
                    c10 = 1;
                    break;
                }
                c10 = '\uffff';
                break;
            case 115:
                break;
        }
        switch (c10) {
            case 0:
                Vector3 vector3 = (Vector3) a(Vector3.class, mjp);
                object.transform.a1(vector3);
                j.q(vector3, frame.r(), frameWeight, vector3, vector3);
                object.transform.p3(vector3);
                g(vector3, mjp);
                return;
            case 1:
                Quaternion quaternion = (Quaternion) a(Quaternion.class, mjp);
                object.transform.i1(quaternion);
                com.itsmagic.engine.Engines.Engine.Quaternion.c.j(quaternion, frame.n(), frameWeight, quaternion, quaternion);
                object.transform.x3(quaternion);
                g(quaternion, mjp);
                return;
            case 2:
                Vector3 vector32 = (Vector3) a(Vector3.class, mjp);
                object.transform.r1(vector32);
                j.q(vector32, frame.r(), frameWeight, vector32, vector32);
                object.transform.setScale(vector32);
                g(vector32, mjp);
                return;
            default:
                return;
        }
    }

    public static void g(Object value, MiniJP mjp) {
        if (mjp != null) {
            mjp.release(value);
        } else {
            JP.release(value);
        }
    }

    public static float h(b instant, c frame) {
        if (frame == null) {
            return 0.0f;
        }
        float I10 = Nc.b.I(frame.s());
        if (I10 <= 0.0f) {
            return 0.0f;
        }
        if (instant != null && instant.b() != null && frame.l() != null) {
            I10 *= Nc.b.I(instant.b().f(frame.l()));
        }
        return Nc.b.I(I10);
    }

    public static void i(com.itsmagic.engine.Engines.Engine.Animation.c type, Frame from, Frame to, float blend, c resultantFrame, MiniJP mjp) {
        String g10;
        if (from != null && from.f() != null) {
            blend = from.f().p(blend);
        }
        switch (C0379a.f11636a[type.ordinal()]) {
            case 1:
                Vector3 vector3 = (Vector3) a(Vector3.class, mjp);
                j.q(Frame.H(from), Frame.H(to), blend, Vector3.zero(), vector3);
                resultantFrame.R(vector3);
                break;
            case 2:
                Vector2 vector2 = (Vector2) a(Vector2.class, mjp);
                j.p(Frame.G(from), Frame.G(to), blend, Vector2.M0(), vector2);
                resultantFrame.Q(vector2);
                break;
            case 3:
            case 4:
                Vector2 vector22 = (Vector2) a(Vector2.class, mjp);
                j.p(Frame.G(from), Frame.G(to), blend, Vector2.M0(), vector22);
                resultantFrame.Q(vector22);
                break;
            case 5:
                float c10 = Frame.c(from);
                resultantFrame.H(c10 + ((Frame.c(to) - c10) * blend));
                break;
            case 6:
                resultantFrame.K((int) Nc.b.j1(Frame.q(from) + ((Frame.q(to) - r8) * blend)));
                break;
            case 7:
                ColorINT colorINT = (ColorINT) a(ColorINT.class, mjp);
                Q8.a.f(Frame.a(from), Frame.a(to), blend, colorINT);
                resultantFrame.C(colorINT);
                break;
            case 8:
                Quaternion quaternion = (Quaternion) a(Quaternion.class, mjp);
                com.itsmagic.engine.Engines.Engine.Quaternion.c.j(Frame.s(from), Frame.s(to), blend, Quaternion.X0(), quaternion);
                resultantFrame.N(quaternion);
                break;
            case 9:
                Square5I F10 = Frame.F(from);
                Square5I F11 = Frame.F(to);
                if (F10 != null || F11 != null) {
                    resultantFrame.O(new Square5I((int) Nc.b.j1((F10 != null ? F10.i() : F11.i()) + (((F11 != null ? F11.i() : r0) - r0) * blend)), (int) Nc.b.j1((F10 != null ? F10.k() : F11.k()) + (((F11 != null ? F11.k() : r1) - r1) * blend)), (int) Nc.b.j1((F10 != null ? F10.j() : F11.j()) + (((F11 != null ? F11.j() : r2) - r2) * blend)), (int) Nc.b.j1((F10 != null ? F10.b() : F11.b()) + (((F11 != null ? F11.b() : r8) - r8) * blend))));
                    break;
                } else {
                    resultantFrame.O(null);
                    break;
                }
            case 10:
                String p10 = Frame.p(from);
                String p11 = Frame.p(to);
                if (p10 != null || p11 != null) {
                    if (blend >= 0.5f) {
                        if (p11 != null) {
                            p10 = p11;
                        }
                        resultantFrame.I(p10);
                        break;
                    } else {
                        if (p10 == null) {
                            p10 = p11;
                        }
                        resultantFrame.I(p10);
                        break;
                    }
                } else {
                    resultantFrame.I(null);
                    break;
                }
        }
        if (from != null && to != null) {
            resultantFrame.M(from.i());
            if (!from.r() || (g10 = from.g()) == null || g10.trim().isEmpty()) {
                return;
            }
            float d10 = from.d();
            float d11 = d10 + ((to.d() - d10) * blend);
            resultantFrame.F(g10);
            resultantFrame.B(d11);
            resultantFrame.G(true);
            return;
        }
        if (from != null && to == null) {
            resultantFrame.M(from.i());
            String g11 = from.g();
            if (g11 == null || g11.trim().isEmpty()) {
                return;
            }
            float d12 = from.d();
            resultantFrame.F(g11);
            resultantFrame.B(d12);
            return;
        }
        if (from != null || to == null) {
            return;
        }
        resultantFrame.M(to.i());
        String g12 = to.g();
        if (g12 == null || g12.trim().isEmpty()) {
            return;
        }
        float d13 = to.d();
        resultantFrame.F(g12);
        resultantFrame.B(d13);
    }

    public static void j(com.itsmagic.engine.Engines.Engine.Animation.c type, Frame from, Frame to, int frametime, c resultantFrame, MiniJP mjp) {
        if (from != null && to != null) {
            i(type, from, to, (frametime - from.i()) / (to.i() - from.i()), resultantFrame, mjp);
        } else if (from != null) {
            i(type, from, null, 0.0f, resultantFrame, mjp);
        } else if (to != null) {
            i(type, null, to, 1.0f, resultantFrame, mjp);
        }
    }

    public static b k(AnimationData animation, int frameTime) {
        return l(animation, frameTime, null);
    }

    public static b l(AnimationData animation, int frameTime, MiniJP mjp) {
        b bVar = (b) a(b.class, mjp);
        List<Timeline> l10 = animation.l();
        for (int i10 = 0; i10 < l10.size(); i10++) {
            bVar.a().add(m(l10.get(i10), frameTime, mjp));
        }
        return bVar;
    }

    public static c m(Timeline timeline, int frameTime, MiniJP mjp) {
        c cVar = (c) a(c.class, mjp);
        cVar.P(timeline.j());
        cVar.D(timeline.d());
        cVar.L(timeline.i());
        cVar.J(timeline.g());
        cVar.E(timeline.e());
        List<Frame> f10 = timeline.f();
        if (f10 != null && !f10.isEmpty()) {
            int size = f10.size() - 1;
            int i10 = 0;
            while (i10 <= size) {
                int i11 = (i10 + size) >>> 1;
                if (f10.get(i11).i() < frameTime) {
                    i10 = i11 + 1;
                } else {
                    size = i11 - 1;
                }
            }
            Frame frame = i10 > 0 ? f10.get(i10 - 1) : null;
            Frame frame2 = i10 < f10.size() ? f10.get(i10) : null;
            if (frame2 != null && frame2.i() == frameTime) {
                j(timeline.j(), frame2, null, frameTime, cVar, mjp);
                return cVar;
            }
            if (frame == null) {
                j(timeline.j(), frame2, null, frameTime, cVar, mjp);
                return cVar;
            }
            if (frame2 == null) {
                j(timeline.j(), frame, null, frameTime, cVar, mjp);
                return cVar;
            }
            j(timeline.j(), frame, frame2, frameTime, cVar, mjp);
        }
        return cVar;
    }
}
