package com.google.firebase.installations;

import K2.g;
import S2.b;
import T2.C3049g;
import T2.F;
import T2.InterfaceC3050h;
import T2.k;
import T2.v;
import U2.y;
import Z2.i;
import androidx.annotation.Keep;
import b3.j;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import n3.h;

@Keep
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    public static j lambda$getComponents$0(InterfaceC3050h interfaceC3050h) {
        return new a((g) interfaceC3050h.a(g.class), interfaceC3050h.f(Z2.j.class), (ExecutorService) interfaceC3050h.j(F.a(S2.a.class, ExecutorService.class)), y.h((Executor) interfaceC3050h.j(F.a(b.class, Executor.class))));
    }

    @Override
    public List<C3049g<?>> getComponents() {
        return Arrays.asList(C3049g.h(j.class).h(LIBRARY_NAME).b(v.m(g.class)).b(v.k(Z2.j.class)).b(v.l(F.a(S2.a.class, ExecutorService.class))).b(v.l(F.a(b.class, Executor.class))).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                j lambda$getComponents$0;
                lambda$getComponents$0 = FirebaseInstallationsRegistrar.lambda$getComponents$0(interfaceC3050h);
                return lambda$getComponents$0;
            }
        }).d(), i.a(), h.b(LIBRARY_NAME, "18.0.0"));
    }
}
