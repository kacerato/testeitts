package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.naming.C10997s0;
import com.android.tools.r8.naming.C11002t0;
import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.position.Position;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.Consumer;

public final class XU {

    public final K40 f45713a;

    public final C4798y f45714b;

    public final C10912b.a f45715c;

    public final IdentityHashMap f45716d = new IdentityHashMap();

    public final IdentityHashMap f45717e = new IdentityHashMap();

    public final C10997s0 f45718f = new C10997s0();

    public final C11002t0 f45719g = new C11002t0();

    public final int f45720h;

    public XU(C4798y c4798y, K40 k40) {
        this.f45714b = c4798y;
        this.f45713a = k40;
        C10912b.a a10 = C10912b.a();
        this.f45715c = a10;
        a10.a((c4798y.E().f50599F1.f50875f1 ? MapVersion.MAP_VERSION_EXPERIMENTAL : MapVersion.STABLE).toMapVersionMappingInformation());
        C8570nJ.i iVar = c4798y.E().f50611J1;
        iVar.getClass();
        this.f45720h = iVar == C8570nJ.i.f50782c ? 1000 : 0;
    }

    public static void a(Object obj) {
        throw new C5417Jv0();
    }

    public final C10912b b() {
        this.f45716d.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((WU) obj).a();
            }
        });
        a();
        return this.f45715c.a();
    }

    public final void a() {
        ArrayList arrayList = new ArrayList(this.f45717e.entrySet());
        final IH ih2 = new IH();
        arrayList.sort(Map.Entry.comparingByKey());
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                XU.this.a(ih2, (Map.Entry) obj);
            }
        });
    }

    public final void a(IH ih2, Map.Entry entry) {
        String str;
        String j02 = ((com.android.tools.r8.graph.M2) entry.getKey()).j0();
        String str2 = (String) entry.getValue();
        do {
            str = "R8$$REMOVED$$CLASS$$" + ih2.b();
        } while (this.f45715c.f55834d.containsKey(str));
        this.f45715c.a(str, j02, Position.UNKNOWN).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                XU.a((com.android.tools.r8.naming.mappinginformation.e) obj);
            }
        }, new com.android.tools.r8.naming.mappinginformation.a(str2));
    }
}
