package com.android.tools.r8.naming;

import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.naming.V;
import com.android.tools.r8.position.Position;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10947i extends AbstractC10937g {

    public final String f55920a;

    public final String f55921b;

    public final E0 f55922c;

    public final C5094Ef0 f55923d;

    public final HashMap f55924e = new HashMap();

    public final HashMap f55925f = new HashMap();

    public final HashMap f55926g = new HashMap();

    public C10947i(String str, String str2, E0 e02, C5094Ef0 c5094Ef0) {
        this.f55920a = str2;
        this.f55921b = str;
        this.f55922c = e02;
        this.f55923d = c5094Ef0;
    }

    public static List b(V.b bVar) {
        return new ArrayList(2);
    }

    @Override
    public final V a(V.c cVar) {
        return null;
    }

    @Override
    public final C10957k.b a(M0 m02, V.b bVar, M0 m03, String str) {
        return null;
    }

    @Override
    public final void a(Consumer consumer, com.android.tools.r8.naming.mappinginformation.e eVar) {
    }

    @Override
    public final boolean a(V.b bVar) {
        return true;
    }

    @Override
    public final AbstractC10937g a(V v10) {
        if (v10.f55767b.e() == 1) {
            V.b b10 = v10.a().b();
            if (b10.d()) {
                ((List) this.f55924e.computeIfAbsent(b10, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C10947i.b((V.b) obj);
                    }
                })).add(v10);
                return this;
            }
            this.f55925f.put(b10, v10);
            return this;
        }
        V.a a10 = v10.a().a();
        if (!a10.d() && this.f55926g.put(a10, v10) != null) {
            C5094Ef0 c5094Ef0 = this.f55923d;
            String aVar = a10.toString();
            String str = this.f55920a;
            Position position = v10.f55769d;
            int i10 = C11027y0.f56112f;
            c5094Ef0.error(new C11027y0("'" + aVar + "' in '" + C4932Bl.b(str) + "' already has a mapping", position));
        }
        return this;
    }
}
