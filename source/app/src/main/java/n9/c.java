package n9;

import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.e;
import ec.f;
import ec.g;
import ec.h;
import ec.i;
import gc.C13320a;
import java.util.concurrent.atomic.AtomicBoolean;
import mc.C14207a;

public final class c {

    public static volatile boolean f97896b;

    public static volatile e f97898d;

    public static volatile e f97899e;

    public static final i f97895a = new i(MaterialBuilder.a.MASKED, 0.05f, MaterialBuilder.c.NONE, true);

    public static final AtomicBoolean f97897c = new AtomicBoolean();

    public class a implements ec.c {

        public final boolean f97900a;

        public a(final boolean val$receiveLighting) {
            this.f97900a = val$receiveLighting;
        }

        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.V(MaterialBuilder.u.OBJECT);
            builder.E(this.f97900a ? MaterialBuilder.n.LIT : MaterialBuilder.n.UNLIT);
            builder.C(MaterialBuilder.t.UV0);
            builder.i(MaterialBuilder.c.NONE);
            builder.m(true);
            builder.k(true);
            builder.l(true);
        }
    }

    public static void a() {
        h b10 = b(true);
        i iVar = f97895a;
        f97898d = b10.r(iVar, "PoolImpostorLit");
        f97899e = b(false).r(iVar, "PoolImpostorUnlit");
        f97896b = (f97898d == null || f97899e == null) ? false : true;
    }

    public static h b(boolean receiveLighting) {
        SteppedArrayList steppedArrayList = new SteppedArrayList(8);
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.LOW;
        steppedArrayList.add(new f(rVar, gVar, "windEffect"));
        MaterialBuilder.g gVar2 = MaterialBuilder.g.MEDIUM;
        steppedArrayList.add(new f(rVar, gVar2, "captureHalfWidth"));
        steppedArrayList.add(new f(rVar, gVar2, "captureHalfHeight"));
        steppedArrayList.add(new f(rVar, gVar2, "capturePivotYOffset"));
        steppedArrayList.add(new f(rVar, gVar2, "captureSourceScale"));
        steppedArrayList.add(new f(MaterialBuilder.r.FLOAT3, gVar, nc.h.f97938f));
        steppedArrayList.add(new f(rVar, gVar, nc.h.f97939g));
        steppedArrayList.add(new f(rVar, gVar, nc.h.f97940h));
        SteppedArrayList steppedArrayList2 = new SteppedArrayList(1);
        steppedArrayList2.add(new g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "albedo"));
        SteppedArrayList steppedArrayList3 = new SteppedArrayList(1);
        steppedArrayList3.add(new C13320a("isLit"));
        gc.e eVar = new gc.e(steppedArrayList3, new SteppedArrayList(), d("fragment.glsl"));
        eVar.o("isLit", receiveLighting);
        return new h(eVar, d(receiveLighting ? "vertex_lit.glsl" : "vertex.glsl"), new a(receiveLighting), steppedArrayList, steppedArrayList2, false);
    }

    public static e c(boolean receiveLighting) {
        e eVar = receiveLighting ? f97898d : f97899e;
        if (eVar != null || !f97896b) {
            return eVar;
        }
        a();
        return receiveLighting ? f97898d : f97899e;
    }

    public static String d(String file) {
        return C14207a.a("Shaders/Pool/Impostor/" + file);
    }

    public static void e() {
        h b10 = b(true);
        h b11 = b(false);
        i iVar = f97895a;
        b10.E(iVar);
        b11.E(iVar);
        f97896b = b10.t(iVar) && b11.t(iVar);
    }

    public static void f() {
        if (f97896b) {
            return;
        }
        AtomicBoolean atomicBoolean = f97897c;
        boolean z10 = true;
        if (atomicBoolean.compareAndSet(false, true)) {
            try {
                h b10 = b(true);
                h b11 = b(false);
                i iVar = f97895a;
                b10.C(iVar);
                b11.C(iVar);
                if (!b10.t(iVar) || !b11.t(iVar)) {
                    z10 = false;
                }
                f97896b = z10;
                atomicBoolean.set(false);
            } catch (Throwable th2) {
                f97897c.set(false);
                throw th2;
            }
        }
    }
}
