package oc;

import Lc.g;
import android.util.Log;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.BaseVFXEffect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.C12894h;
import ec.f;
import java.lang.constant.ConstantDescs;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import n.C14331a;
import pc.C14949a;
import pc.C14955g;
import qc.C15053a;
import qc.C15054b;
import qc.C15055c;
import qc.e;

public class C14497a {

    public static final int f98651a = 6;

    public static final int f98652b = 1;

    public static final int f98653c = 128;

    public static final String f98654d = "SceneVFXManager";

    public static b f98664n;

    public static volatile boolean f98665o;

    public static final Set<Long> f98655e = new HashSet();

    public static final g<Mc.b<BaseVFXEffect>> f98656f = new g<>();

    public static final g<List<C15053a>> f98657g = new g<>();

    public static final g<List<C15054b>> f98658h = new g<>();

    public static final g<List<C15055c>> f98659i = new g<>();

    public static final g<List<qc.d>> f98660j = new g<>();

    public static final g<List<e>> f98661k = new g<>();

    public static boolean f98662l = false;

    public static boolean f98663m = false;

    public static final C14949a f98666p = new C14949a();

    public static class C1890a {

        public static final int[] f98667a;

        static {
            int[] iArr = new int[MaterialBuilder.r.values().length];
            f98667a = iArr;
            try {
                iArr[MaterialBuilder.r.FLOAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f98667a[MaterialBuilder.r.INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f98667a[MaterialBuilder.r.FLOAT2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f98667a[MaterialBuilder.r.FLOAT3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f98667a[MaterialBuilder.r.FLOAT4.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static void a(BaseVFXEffect effect, f param) {
        long shaderHash = effect.shaderHash();
        int i10 = C1890a.f98667a[param.d().ordinal()];
        if (i10 == 1) {
            k(f98657g, shaderHash).add(new C15053a(null, param));
            return;
        }
        if (i10 == 2) {
            k(f98661k, shaderHash).add(new e(null, param));
            return;
        }
        if (i10 == 3) {
            k(f98658h, shaderHash).add(new C15054b(null, param));
            return;
        }
        if (i10 == 4) {
            k(f98659i, shaderHash).add(new C15055c(null, param));
        } else {
            if (i10 == 5) {
                k(f98660j, shaderHash).add(new qc.d(null, param));
                return;
            }
            throw new RuntimeException("unsupported type:" + ((Object) param.d()));
        }
    }

    public static void b(String uid, int count) {
        C14949a c14949a = f98666p;
        c14949a.f103757a = count;
        c14949a.f103758b = uid;
        C12894h.g(c14949a);
    }

    public static int c(int value) {
        if (value < 1) {
            return 1;
        }
        return Math.min(value, 128);
    }

    public static int d(BaseVFXEffect effect) {
        return Math.min(e(effect), c(effect.getMaxSimultaneousEmitters()));
    }

    public static int e(BaseVFXEffect effect) {
        Mc.b<BaseVFXEffect> u10 = f98656f.u(effect.shaderHash());
        if (u10 == null) {
            return 0;
        }
        return u10.size();
    }

    public static List<C15053a> f(BaseVFXEffect effect) {
        return f98657g.u(effect.shaderHash());
    }

    public static List<C15054b> g(BaseVFXEffect effect) {
        return f98658h.u(effect.shaderHash());
    }

    public static List<C15055c> h(BaseVFXEffect effect) {
        return f98659i.u(effect.shaderHash());
    }

    public static List<qc.d> i(BaseVFXEffect effect) {
        return f98660j.u(effect.shaderHash());
    }

    public static List<e> j(BaseVFXEffect effect) {
        return f98661k.u(effect.shaderHash());
    }

    public static <T> List<T> k(g<List<T>> map, long hash) {
        List<T> u10 = map.u(hash);
        if (u10 != null) {
            return u10;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        map.td(hash, steppedArrayList);
        return steppedArrayList;
    }

    public static b l() {
        return f98664n;
    }

    public static long m() {
        b bVar = f98664n;
        if (bVar == null) {
            return 0L;
        }
        return bVar.e();
    }

    public static void n(BaseVFXEffect effect, String message) {
        J4.d.b2(message);
        Log.e(f98654d, message);
        s(effect);
    }

    public static void o() {
        HashSet hashSet;
        SteppedArrayList steppedArrayList;
        List<Component> list;
        int i10;
        if (!C14331a.c() && f98662l) {
            f98662l = false;
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            SteppedArrayList steppedArrayList3 = new SteppedArrayList();
            HashSet hashSet2 = new HashSet();
            HashSet hashSet3 = new HashSet();
            StringBuilder sb2 = new StringBuilder();
            String str = "";
            sb2.append("");
            sb2.append(c.m("vfx_globals.glsl"));
            sb2.append("\n");
            String sb3 = sb2.toString();
            String str2 = "" + c.m("vfx_globals.glsl") + "\n";
            List<Component> h10 = R8.f.h(BaseVFXEffect.class);
            if (h10 != null) {
                int i11 = 0;
                while (i11 < h10.size()) {
                    BaseVFXEffect baseVFXEffect = (BaseVFXEffect) h10.get(i11);
                    if (baseVFXEffect.isHierarchyActive()) {
                        long shaderHash = baseVFXEffect.shaderHash();
                        if (!hashSet2.contains(Long.valueOf(shaderHash))) {
                            hashSet2.add(Long.valueOf(shaderHash));
                            s(baseVFXEffect);
                            c constructor = baseVFXEffect.getConstructor();
                            String v10 = v(baseVFXEffect, constructor);
                            if (v10 != null) {
                                n(baseVFXEffect, v10);
                            } else {
                                hashSet3.add(Long.valueOf(shaderHash));
                                steppedArrayList2.add(baseVFXEffect.getUID());
                                steppedArrayList3.add(new f(MaterialBuilder.r.INT, c.f98680k + baseVFXEffect.getUID() + ConstantDescs.DEFAULT_NAME + c.f98682m, MaterialBuilder.g.LOW));
                                int c10 = c(baseVFXEffect.getMaxSimultaneousEmitters());
                                hashSet = hashSet2;
                                f fVar = new f(MaterialBuilder.r.FLOAT3, c.j(baseVFXEffect), MaterialBuilder.g.HIGH, c10);
                                steppedArrayList3.add(fVar);
                                List<Component> list2 = h10;
                                i10 = i11;
                                k(f98659i, baseVFXEffect.shaderHash()).add(new C15055c(qc.f.POSITION, fVar));
                                List<f> f10 = constructor.f();
                                int i12 = 0;
                                while (i12 < f10.size()) {
                                    f fVar2 = f10.get(i12);
                                    steppedArrayList3.add(new f(fVar2.d(), fVar2.a(), fVar2.b(), c10));
                                    a(baseVFXEffect, fVar2);
                                    i12++;
                                    f10 = f10;
                                    list2 = list2;
                                    steppedArrayList2 = steppedArrayList2;
                                }
                                steppedArrayList = steppedArrayList2;
                                list = list2;
                                String str3 = sb3 + constructor.e() + "\n";
                                str = str + constructor.g() + "\n";
                                str2 = str2 + constructor.h() + "\n";
                                sb3 = str3;
                                i11 = i10 + 1;
                                hashSet2 = hashSet;
                                h10 = list;
                                steppedArrayList2 = steppedArrayList;
                            }
                        }
                    }
                    hashSet = hashSet2;
                    steppedArrayList = steppedArrayList2;
                    list = h10;
                    i10 = i11;
                    i11 = i10 + 1;
                    hashSet2 = hashSet;
                    h10 = list;
                    steppedArrayList2 = steppedArrayList;
                }
            }
            SteppedArrayList steppedArrayList4 = steppedArrayList2;
            if (hashSet3.isEmpty()) {
                f98664n = null;
            } else {
                f98664n = new b(sb3, str, str2, steppedArrayList3, steppedArrayList4);
            }
            C12894h.g(new C14955g());
            f98665o = true;
        }
    }

    public static void p(BaseVFXEffect effect) {
        if (C14331a.c()) {
            return;
        }
        g<Mc.b<BaseVFXEffect>> gVar = f98656f;
        Mc.b<BaseVFXEffect> u10 = gVar.u(effect.shaderHash());
        if (u10 == null) {
            u10 = new Mc.b<>();
            gVar.td(effect.shaderHash(), u10);
        }
        boolean add = u10.add(effect);
        if (add) {
            effect.setIndex(u10.size() - 1);
            f98663m = true;
            f98665o = true;
        } else {
            int indexOf = u10.indexOf(effect);
            if (indexOf >= 0) {
                effect.setIndex(indexOf);
            }
        }
        if (add) {
            Set<Long> set = f98655e;
            if (set.contains(Long.valueOf(effect.shaderHash()))) {
                return;
            }
            set.add(Long.valueOf(effect.shaderHash()));
            f98662l = true;
        }
    }

    public static void q(BaseVFXEffect effect) {
        Mc.b<BaseVFXEffect> u10;
        if (C14331a.c() || (u10 = f98656f.u(effect.shaderHash())) == null || !u10.remove(effect)) {
            return;
        }
        for (int i10 = 0; i10 < u10.size(); i10++) {
            u10.get(i10).setIndex(i10);
        }
        f98663m = true;
        f98665o = true;
        if (u10.isEmpty()) {
            b(effect.getUID(), 0);
            f98656f.e(effect.shaderHash());
            f98657g.e(effect.shaderHash());
            f98658h.e(effect.shaderHash());
            f98659i.e(effect.shaderHash());
            f98660j.e(effect.shaderHash());
            f98661k.e(effect.shaderHash());
            Set<Long> set = f98655e;
            if (set.contains(Long.valueOf(effect.shaderHash()))) {
                set.remove(Long.valueOf(effect.shaderHash()));
                f98662l = true;
            }
        }
    }

    public static void r() {
        f98662l = true;
        f98663m = true;
    }

    public static void s(BaseVFXEffect vfxEffect) {
        t(f98657g, vfxEffect.shaderHash());
        t(f98658h, vfxEffect.shaderHash());
        t(f98659i, vfxEffect.shaderHash());
        t(f98660j, vfxEffect.shaderHash());
        t(f98661k, vfxEffect.shaderHash());
    }

    public static <T> void t(g<List<T>> map, long hash) {
        List<T> u10 = map.u(hash);
        if (u10 != null) {
            u10.clear();
        } else {
            map.td(hash, new SteppedArrayList());
        }
    }

    public static void u() {
        if (C14331a.c() || f98662l) {
            return;
        }
        if (f98663m) {
            f98663m = false;
            HashSet hashSet = new HashSet();
            List<Component> h10 = R8.f.h(BaseVFXEffect.class);
            if (h10 != null) {
                for (int i10 = 0; i10 < h10.size(); i10++) {
                    BaseVFXEffect baseVFXEffect = (BaseVFXEffect) h10.get(i10);
                    if (baseVFXEffect.isHierarchyActive() && !hashSet.contains(Long.valueOf(baseVFXEffect.shaderHash()))) {
                        hashSet.add(Long.valueOf(baseVFXEffect.shaderHash()));
                        b(baseVFXEffect.getUID(), d(baseVFXEffect));
                    }
                }
            }
        }
        if (f98665o) {
            f98665o = false;
            List<Component> h11 = R8.f.h(BaseVFXEffect.class);
            if (h11 != null) {
                for (int i11 = 0; i11 < h11.size(); i11++) {
                    BaseVFXEffect baseVFXEffect2 = (BaseVFXEffect) h11.get(i11);
                    if (baseVFXEffect2.isHierarchyActive()) {
                        baseVFXEffect2.reuploadParams();
                    }
                }
            }
        }
    }

    public static String v(BaseVFXEffect effect, c constructor) {
        String j10 = d.j(effect, "fragment", constructor.e());
        if (j10 != null) {
            return j10;
        }
        String j11 = d.j(effect, "subMaterial", constructor.g());
        return j11 != null ? j11 : d.j(effect, "vertex", constructor.h());
    }
}
