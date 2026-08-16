package nc;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.BaseVFXEffect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.C12888b;
import java.lang.constant.ConstantDescs;
import java.util.HashSet;
import java.util.List;
import oc.C14497a;
import pc.C14949a;
import pc.C14950b;
import pc.C14951c;
import pc.C14952d;
import pc.C14953e;
import pc.C14954f;
import pc.C14956h;
import qc.C15053a;
import qc.C15054b;
import qc.C15055c;

public class C14377b extends AbstractC14376a {

    public long f97928b;

    public static List<ec.f> k() {
        return new SteppedArrayList();
    }

    public static List<ec.g> l() {
        return new SteppedArrayList();
    }

    @Override
    public void b(C12888b event) {
        super.b(event);
        if (event instanceof C14956h) {
            f();
            return;
        }
        if (event instanceof C14949a) {
            if (i()) {
                C14949a c14949a = (C14949a) event;
                String str = oc.c.f98680k + c14949a.f103758b + ConstantDescs.DEFAULT_NAME + oc.c.f98682m;
                if (h(str)) {
                    c().H(str, c14949a.f103757a);
                    return;
                }
                return;
            }
            return;
        }
        if (event instanceof C14950b) {
            if (i()) {
                C14950b c14950b = (C14950b) event;
                if (c14950b.f103760b.d() == null || !h(c14950b.f103760b.f().a())) {
                    return;
                }
                c().x(c14950b.f103760b.f().a(), c14950b.f103760b.d(), g(c14950b.f103760b.h(), c14950b.f103760b.f().c()), 0);
                return;
            }
            return;
        }
        if (event instanceof C14954f) {
            if (i()) {
                C14954f c14954f = (C14954f) event;
                if (c14954f.f103768b.d() == null || !h(c14954f.f103768b.f().a())) {
                    return;
                }
                c().I(c14954f.f103768b.f().a(), c14954f.f103768b.d(), g(c14954f.f103768b.h(), c14954f.f103768b.f().c()), 0);
                return;
            }
            return;
        }
        if (event instanceof C14951c) {
            if (i()) {
                C14951c c14951c = (C14951c) event;
                if (c14951c.f103762b.d() == null || !h(c14951c.f103762b.f().a())) {
                    return;
                }
                c().A(c14951c.f103762b.f().a(), c14951c.f103762b.d(), g(c14951c.f103762b.i(), c14951c.f103762b.f().c()), 0);
                return;
            }
            return;
        }
        if (event instanceof C14952d) {
            if (i()) {
                C14952d c14952d = (C14952d) event;
                if (c14952d.f103764b.d() == null || !h(c14952d.f103764b.f().a())) {
                    return;
                }
                c().D(c14952d.f103764b.f().a(), c14952d.f103764b.d(), g(c14952d.f103764b.i(), c14952d.f103764b.f().c()), 0);
                return;
            }
            return;
        }
        if ((event instanceof C14953e) && i()) {
            C14953e c14953e = (C14953e) event;
            if (c14953e.f103766b.d() == null || !h(c14953e.f103766b.f().a())) {
                return;
            }
            c().F(c14953e.f103766b.f().a(), c14953e.f103766b.d(), g(c14953e.f103766b.i(), c14953e.f103766b.f().c()), 0);
        }
    }

    @Override
    public void d(FilamentMaterial filamentMaterial) {
        super.d(filamentMaterial);
        f();
    }

    public final void f() {
        List<Component> h10;
        if (i() && (h10 = R8.f.h(BaseVFXEffect.class)) != null) {
            HashSet hashSet = new HashSet();
            for (int i10 = 0; i10 < h10.size(); i10++) {
                BaseVFXEffect baseVFXEffect = (BaseVFXEffect) h10.get(i10);
                if (baseVFXEffect.isHierarchyActive() && !hashSet.contains(Long.valueOf(baseVFXEffect.shaderHash()))) {
                    hashSet.add(Long.valueOf(baseVFXEffect.shaderHash()));
                    String i11 = oc.c.i(baseVFXEffect.getUID());
                    if (h(i11)) {
                        c().H(i11, C14497a.d(baseVFXEffect));
                        List<qc.e> j10 = C14497a.j(baseVFXEffect);
                        if (j10 != null) {
                            for (int i12 = 0; i12 < j10.size(); i12++) {
                                qc.e eVar = j10.get(i12);
                                if (eVar.d() != null && h(eVar.f().a())) {
                                    c().I(eVar.f().a(), eVar.d(), g(eVar.h(), eVar.f().c()), 0);
                                }
                            }
                        }
                        List<C15053a> f10 = C14497a.f(baseVFXEffect);
                        if (f10 != null) {
                            for (int i13 = 0; i13 < f10.size(); i13++) {
                                C15053a c15053a = f10.get(i13);
                                if (c15053a.d() != null && h(c15053a.f().a())) {
                                    c().x(c15053a.f().a(), c15053a.d(), g(c15053a.h(), c15053a.f().c()), 0);
                                }
                            }
                        }
                        List<C15054b> g10 = C14497a.g(baseVFXEffect);
                        if (g10 != null) {
                            for (int i14 = 0; i14 < g10.size(); i14++) {
                                C15054b c15054b = g10.get(i14);
                                if (c15054b.d() != null && h(c15054b.f().a())) {
                                    c().A(c15054b.f().a(), c15054b.d(), g(c15054b.i(), c15054b.f().c()), 0);
                                }
                            }
                        }
                        List<C15055c> h11 = C14497a.h(baseVFXEffect);
                        if (h11 != null) {
                            for (int i15 = 0; i15 < h11.size(); i15++) {
                                C15055c c15055c = h11.get(i15);
                                if (c15055c.d() != null && h(c15055c.f().a())) {
                                    c().D(c15055c.f().a(), c15055c.d(), g(c15055c.i(), c15055c.f().c()), 0);
                                }
                            }
                        }
                        List<qc.d> i16 = C14497a.i(baseVFXEffect);
                        if (i16 != null) {
                            for (int i17 = 0; i17 < i16.size(); i17++) {
                                qc.d dVar = i16.get(i17);
                                if (dVar.d() != null && h(dVar.f().a())) {
                                    c().F(dVar.f().a(), dVar.d(), g(dVar.i(), dVar.f().c()), 0);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public final int g(int dataSize, int shaderSize) {
        return shaderSize <= 0 ? dataSize : Math.min(dataSize, shaderSize);
    }

    public final boolean h(String name) {
        if (c() != null && name != null && !name.isEmpty()) {
            try {
                return c().m(name);
            } catch (RuntimeException unused) {
            }
        }
        return false;
    }

    public final boolean i() {
        if (c() == null) {
            return false;
        }
        long m10 = C14497a.m();
        long j10 = this.f97928b;
        return j10 != 0 && j10 == m10;
    }

    @Override
    public C14377b a() {
        return new C14377b();
    }

    public void m(long compiledSceneVFXShaderHash) {
        this.f97928b = compiledSceneVFXShaderHash;
    }
}
