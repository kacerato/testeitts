package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Collections;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public final class QM {

    public static final QM f43556b = new QM(Collections.EMPTY_MAP);

    public static final boolean f43557c = true;

    public final Map f43558a;

    public QM(Map map) {
        if (!f43557c && map == null) {
            throw new AssertionError();
        }
        this.f43558a = map;
    }

    public final LO a(JO jo) {
        PM pm2 = jo.f42280a;
        NM nm2 = (NM) this.f43558a.get(pm2);
        if (nm2 != null) {
            FO fo = nm2.f42571a;
            if (fo.b() != null) {
                return fo.b();
            }
            throw new FN("Attempt to get member item from non-member binding '" + ((Object) pm2) + "'");
        }
        throw new FN("Unbound binding for reference '" + ((Object) pm2) + "'");
    }

    public final String toString() {
        return "{" + ((String) this.f43558a.entrySet().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return QM.a((Map.Entry) obj);
            }
        }).collect(Collectors.joining(", ")));
    }

    public static String a(Map.Entry entry) {
        return entry.getKey() + "=" + entry.getValue();
    }

    public final KeepSpecProtos.Bindings.Builder a() {
        final KeepSpecProtos.Bindings.Builder newBuilder = KeepSpecProtos.Bindings.newBuilder();
        this.f43558a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                QM.a(KeepSpecProtos.Bindings.Builder.this, (PM) obj, (NM) obj2);
            }
        });
        return newBuilder;
    }

    public static void a(KeepSpecProtos.Bindings.Builder builder, PM pm2, NM nm2) {
        builder.addBindings(KeepSpecProtos.Binding.newBuilder().setName(pm2.toString()).setItem(nm2.f42571a.c()));
    }
}
