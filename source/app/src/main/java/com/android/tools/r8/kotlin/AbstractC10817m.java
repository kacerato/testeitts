package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.GP;
import com.android.tools.r8.internal.HP;
import com.android.tools.r8.internal.JP;
import com.android.tools.r8.internal.OP;
import com.android.tools.r8.internal.RP;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public abstract class AbstractC10817m implements InterfaceC11195f0 {

    public static final C6620bf0 f55372a = C6620bf0.f46817i;

    public static AbstractC10817m a(JP jp2, C4724u1 c4724u1) {
        if (jp2 instanceof RP) {
            String str = ((RP) jp2).f43892a;
            return new C10799j(C10853s0.a(str, c4724u1, str));
        }
        if (jp2 instanceof OP) {
            OP op = (OP) jp2;
            String str2 = op.f42872a;
            return new C10805k(C10853s0.a(str2, c4724u1, str2), op.f42873b);
        }
        if (jp2 instanceof HP) {
            GP gp = ((HP) jp2).f40753a;
            return new C10787h(new C10823n(C10853s0.a(gp.b(), c4724u1, gp.b()), a(gp.a(), c4724u1)));
        }
        if (jp2 instanceof JP.a) {
            return C10793i.a((JP.a) jp2, c4724u1);
        }
        return new C10811l(jp2);
    }

    public abstract boolean b(Consumer consumer, C4798y c4798y);

    public static Map a(Map map, final C4724u1 c4724u1) {
        if (map.isEmpty()) {
            return f55372a;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                LinkedHashMap.this.put((String) obj, AbstractC10817m.a((JP) obj2, c4724u1));
            }
        });
        return linkedHashMap;
    }
}
