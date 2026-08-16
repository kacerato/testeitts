package com.google.firebase.concurrent;

import S2.a;
import S2.c;
import S2.d;
import T2.C3049g;
import T2.F;
import T2.InterfaceC3050h;
import T2.k;
import T2.y;
import U2.N;
import U2.ThreadFactoryC3099b;
import U2.o;
import a3.b;
import android.annotation.SuppressLint;
import android.os.StrictMode;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

@SuppressLint({"ThreadPoolCreation"})
public class ExecutorsRegistrar implements ComponentRegistrar {

    public static final y<ScheduledExecutorService> f67736a = new y<>(new b() {
        @Override
        public final Object get() {
            ScheduledExecutorService p10;
            p10 = ExecutorsRegistrar.p();
            return p10;
        }
    });

    public static final y<ScheduledExecutorService> f67737b = new y<>(new b() {
        @Override
        public final Object get() {
            ScheduledExecutorService q10;
            q10 = ExecutorsRegistrar.q();
            return q10;
        }
    });

    public static final y<ScheduledExecutorService> f67738c = new y<>(new b() {
        @Override
        public final Object get() {
            ScheduledExecutorService r10;
            r10 = ExecutorsRegistrar.r();
            return r10;
        }
    });

    public static final y<ScheduledExecutorService> f67739d = new y<>(new b() {
        @Override
        public final Object get() {
            ScheduledExecutorService s10;
            s10 = ExecutorsRegistrar.s();
            return s10;
        }
    });

    public static StrictMode.ThreadPolicy i() {
        StrictMode.ThreadPolicy.Builder detectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
        detectNetwork.detectResourceMismatches();
        detectNetwork.detectUnbufferedIo();
        return detectNetwork.penaltyLog().build();
    }

    public static ThreadFactory j(String str, int i10) {
        return new ThreadFactoryC3099b(str, i10, null);
    }

    public static ThreadFactory k(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        return new ThreadFactoryC3099b(str, i10, threadPolicy);
    }

    public static ScheduledExecutorService l(InterfaceC3050h interfaceC3050h) {
        return f67736a.get();
    }

    public static ScheduledExecutorService m(InterfaceC3050h interfaceC3050h) {
        return f67738c.get();
    }

    public static ScheduledExecutorService n(InterfaceC3050h interfaceC3050h) {
        return f67737b.get();
    }

    public static Executor o(InterfaceC3050h interfaceC3050h) {
        return N.INSTANCE;
    }

    public static ScheduledExecutorService p() {
        return u(Executors.newFixedThreadPool(4, k("Firebase Background", 10, i())));
    }

    public static ScheduledExecutorService q() {
        return u(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), k("Firebase Lite", 0, t())));
    }

    public static ScheduledExecutorService r() {
        return u(Executors.newCachedThreadPool(j("Firebase Blocking", 11)));
    }

    public static ScheduledExecutorService s() {
        return Executors.newSingleThreadScheduledExecutor(j("Firebase Scheduler", 0));
    }

    public static StrictMode.ThreadPolicy t() {
        return new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build();
    }

    public static ScheduledExecutorService u(ExecutorService executorService) {
        return new o(executorService, f67739d.get());
    }

    @Override
    public List<C3049g<?>> getComponents() {
        return Arrays.asList(C3049g.g(F.a(a.class, ScheduledExecutorService.class), F.a(a.class, ExecutorService.class), F.a(a.class, Executor.class)).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                ScheduledExecutorService l10;
                l10 = ExecutorsRegistrar.l(interfaceC3050h);
                return l10;
            }
        }).d(), C3049g.g(F.a(S2.b.class, ScheduledExecutorService.class), F.a(S2.b.class, ExecutorService.class), F.a(S2.b.class, Executor.class)).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                ScheduledExecutorService m10;
                m10 = ExecutorsRegistrar.m(interfaceC3050h);
                return m10;
            }
        }).d(), C3049g.g(F.a(c.class, ScheduledExecutorService.class), F.a(c.class, ExecutorService.class), F.a(c.class, Executor.class)).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                ScheduledExecutorService n10;
                n10 = ExecutorsRegistrar.n(interfaceC3050h);
                return n10;
            }
        }).d(), C3049g.f(F.a(d.class, Executor.class)).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                Executor o10;
                o10 = ExecutorsRegistrar.o(interfaceC3050h);
                return o10;
            }
        }).d());
    }
}
