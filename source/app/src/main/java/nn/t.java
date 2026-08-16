package nn;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiFunction;
import jn.A;
import jn.C13901s;
import jn.C13904v;
import jn.C13905w;
import jn.G;
import jn.I;
import jn.L;
import jn.O;
import jn.U;
import jn.x;
import wn.p;

public class t extends nn.a {

    public final L f98393a = new b();

    public static class b implements L {
        public b() {
        }

        @Override
        public float a(float[] pa2, float[] pb2, long prevRef, C13901s prevTile, G prevPoly, long curRef, C13901s curTile, G curPoly, long nextRef, C13901s nextTile, G nextPoly) {
            return 0.0f;
        }

        @Override
        public boolean b(long ref, C13901s tile, G poly) {
            return true;
        }
    }

    public static void h(A a10, float[] fArr, AtomicReference atomicReference, float f10, AtomicBoolean atomicBoolean, C13901s c13901s, G g10, long j10) {
        O<Float> A10 = a10.A(j10, fArr);
        if (A10.j()) {
            Float f11 = A10.f94204a;
            float floatValue = f11.floatValue();
            if (floatValue <= ((Float) atomicReference.get()).floatValue() || floatValue >= f10) {
                return;
            }
            atomicReference.set(f11);
            atomicBoolean.set(true);
        }
    }

    @Override
    public void a(final m acfg, p.b result, e es) {
        final A f10 = f(result, acfg.f98373d, acfg.f98375f, acfg.f98372c);
        b(acfg, es, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                U i10;
                i10 = t.this.i(f10, acfg, (float[]) obj, (Float) obj2);
                return i10;
            }
        });
    }

    public final A f(p.b r10, float agentRadius, float agentHeight, float agentClimb) {
        x xVar = new x();
        xVar.f94361a = r10.c().f127733a;
        xVar.f94362b = r10.c().f127737e;
        xVar.f94363c = r10.c().f127734b;
        xVar.f94365e = r10.c().f127736d;
        xVar.f94364d = r10.c().f127741i;
        xVar.f94366f = r10.c().f127738f;
        xVar.f94367g = r10.c().f127739g;
        xVar.f94368h = r10.d().f127748a;
        xVar.f94369i = r10.d().f127749b;
        xVar.f94370j = r10.d().f127752e;
        xVar.f94371k = r10.d().f127750c;
        xVar.f94372l = r10.d().f127753f;
        xVar.f94356A = agentRadius;
        xVar.f94386z = agentHeight;
        xVar.f94357B = agentClimb;
        xVar.f94384x = r10.c().f127742j;
        xVar.f94385y = r10.c().f127743k;
        xVar.f94358C = r10.c().f127744l;
        xVar.f94359D = r10.c().f127745m;
        xVar.f94360E = true;
        return new A(new C13904v(C13905w.d(xVar), xVar.f94367g, 0));
    }

    public final U<Boolean, Float> g(final A navMeshQuery, final float[] pt, float cs, float heightRange) {
        float[] fArr = {cs, heightRange, cs};
        final float f10 = pt[1] + heightRange;
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        final AtomicReference atomicReference = new AtomicReference(Float.valueOf(pt[1]));
        navMeshQuery.M(pt, fArr, this.f98393a, new I() {
            @Override
            public final void a(C13901s c13901s, G g10, long j10) {
                t.h(A.this, pt, atomicReference, f10, atomicBoolean, c13901s, g10, j10);
            }
        });
        return atomicBoolean.get() ? new U<>(Boolean.TRUE, (Float) atomicReference.get()) : new U<>(Boolean.FALSE, Float.valueOf(pt[1]));
    }

    public final U i(A a10, m mVar, float[] fArr, Float f10) {
        return g(a10, fArr, mVar.f98370a, f10.floatValue());
    }
}
