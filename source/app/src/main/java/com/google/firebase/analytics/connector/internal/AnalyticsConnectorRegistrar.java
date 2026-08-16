package com.google.firebase.analytics.connector.internal;

import C0.a;
import K2.g;
import M2.b;
import T2.C3049g;
import T2.InterfaceC3050h;
import T2.k;
import T2.v;
import X2.d;
import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.firebase.analytics.connector.internal.AnalyticsConnectorRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import n3.h;

@Keep
@a
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    public static M2.a lambda$getComponents$0(InterfaceC3050h interfaceC3050h) {
        return b.j((g) interfaceC3050h.a(g.class), (Context) interfaceC3050h.a(Context.class), (d) interfaceC3050h.a(d.class));
    }

    @Override
    @NonNull
    @Keep
    @SuppressLint({"MissingPermission"})
    @a
    public List<C3049g<?>> getComponents() {
        return Arrays.asList(C3049g.h(M2.a.class).b(v.m(g.class)).b(v.m(Context.class)).b(v.m(d.class)).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                M2.a lambda$getComponents$0;
                lambda$getComponents$0 = AnalyticsConnectorRegistrar.lambda$getComponents$0(interfaceC3050h);
                return lambda$getComponents$0;
            }
        }).e().d(), h.b("fire-analytics", "22.5.0"));
    }
}
