package tn;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import jn.C13900q;
import jn.C13904v;
import jn.C13905w;
import wn.C16030h;
import wn.C16033k;
import wn.C16034l;
import wn.N;
import wn.p;

public class u {

    public final vn.f f117803a;

    public v f117804b;

    public p.b f117805c;

    public C13900q f117806d;

    public final Map<Long, un.d> f117807e = new ConcurrentHashMap();

    public boolean f117808f = true;

    public long f117809g;

    public u(vn.f voxelTile) {
        this.f117803a = voxelTile;
    }

    public static void h(Collection collection, C16030h c16030h, N n10, Long l10, un.d dVar) {
        if (collection.contains(l10)) {
            return;
        }
        float[] fArr = c16030h.f127712d;
        fArr[1] = Math.max(fArr[1], dVar.a()[4] + (c16030h.f127714f * 2.0f));
        dVar.b(c16030h, n10);
    }

    public void b(long cid, un.d collider) {
        this.f117807e.put(Long.valueOf(cid), collider);
        this.f117808f = true;
    }

    public void c(C13904v navMesh) {
        C13900q c13900q = this.f117806d;
        if (c13900q != null) {
            this.f117809g = navMesh.c(c13900q, 0, 0L);
        } else {
            navMesh.W(this.f117809g);
            this.f117809g = 0L;
        }
    }

    public boolean d(wn.p builder, s config, N telemetry) {
        if (!this.f117808f) {
            return false;
        }
        p.b f10 = f(builder, config, this.f117803a, e(config, telemetry), telemetry);
        vn.f fVar = this.f117803a;
        this.f117806d = C13905w.d(i(fVar.f121741a, fVar.f121742b, fVar.f121748h, fVar.f121749i, config, f10));
        return true;
    }

    public final C16030h e(s config, final N telemetry) {
        v vVar = this.f117804b;
        final Set<Long> emptySet = vVar != null ? vVar.f117811b : Collections.emptySet();
        v vVar2 = this.f117804b;
        final C16030h a10 = vVar2 != null ? vVar2.f117810a : this.f117803a.a();
        this.f117807e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                u.h(Collection.this, a10, telemetry, (Long) obj, (un.d) obj2);
            }
        });
        if (config.f117798v) {
            this.f117804b = new v(a10, new HashSet(this.f117807e.o()));
        }
        return a10;
    }

    public final p.b f(wn.p builder, s config, vn.f vt, C16030h heightfield, N telemetry) {
        p.b b10 = builder.b(vt.f121741a, vt.f121742b, null, new wn.t(config.f117777a, config.f117778b, config.f117779c, vt.f121743c, config.f117781e, vt.f121748h, vt.f121749i, config.f117784h, true, true, true, config.f117783g, config.f117785i, config.f117786j, config.f117787k, config.f117788l, config.f117789m, config.f117790n, Math.min(6, config.f117791o), true, config.f117793q, config.f117794r, null), heightfield, telemetry);
        if (config.f117799w) {
            this.f117805c = b10;
        }
        return b10;
    }

    public boolean g(long cid) {
        return this.f117807e.containsKey(Long.valueOf(cid));
    }

    public final jn.x i(int tilex, int tileZ, float cellSize, float cellHeight, s config, p.b rcResult) {
        int i10;
        C16033k c10 = rcResult.c();
        C16034l d10 = rcResult.d();
        jn.x xVar = new jn.x();
        int i11 = 0;
        while (true) {
            i10 = c10.f127738f;
            if (i11 >= i10) {
                break;
            }
            c10.f127741i[i11] = 1;
            i11++;
        }
        xVar.f94381u = tilex;
        xVar.f94382v = tileZ;
        xVar.f94361a = c10.f127733a;
        xVar.f94362b = c10.f127737e;
        xVar.f94363c = c10.f127734b;
        xVar.f94365e = c10.f127736d;
        xVar.f94364d = c10.f127741i;
        xVar.f94366f = i10;
        xVar.f94367g = c10.f127739g;
        if (d10 != null) {
            xVar.f94368h = d10.f127748a;
            xVar.f94369i = d10.f127749b;
            xVar.f94370j = d10.f127752e;
            xVar.f94371k = d10.f127750c;
            xVar.f94372l = d10.f127753f;
        }
        xVar.f94386z = config.f117783g;
        xVar.f94356A = config.f117785i;
        xVar.f94357B = config.f117786j;
        xVar.f94384x = c10.f127742j;
        xVar.f94385y = c10.f127743k;
        xVar.f94358C = cellSize;
        xVar.f94359D = cellHeight;
        xVar.f94360E = true;
        xVar.f94379s = 0;
        xVar.f94373m = new float[0];
        xVar.f94374n = new float[0];
        xVar.f94377q = new int[0];
        xVar.f94376p = new int[0];
        xVar.f94375o = new int[0];
        xVar.f94378r = new int[0];
        return xVar;
    }

    public void j(long colliderId) {
        if (this.f117807e.remove(Long.valueOf(colliderId)) != null) {
            this.f117808f = true;
            this.f117804b = null;
        }
    }
}
