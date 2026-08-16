package Gd;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public final class b extends BroadcastReceiver {

    @NotNull
    public Mf.a<P0> f7774a = C0152b.f7777b;

    @NotNull
    public Mf.a<P0> f7775b = a.f7776b;

    public static final class a extends O implements Mf.a<P0> {

        public static final a f7776b = new a();

        public a() {
            super(0);
        }

        @Override
        public P0 invoke() {
            invoke2();
            return P0.f98194a;
        }

        public final void invoke2() {
        }
    }

    public static final class C0152b extends O implements Mf.a<P0> {

        public static final C0152b f7777b = new C0152b();

        public C0152b() {
            super(0);
        }

        @Override
        public P0 invoke() {
            invoke2();
            return P0.f98194a;
        }

        public final void invoke2() {
        }
    }

    @NotNull
    public final Mf.a<P0> a() {
        return this.f7775b;
    }

    @NotNull
    public final Mf.a<P0> b() {
        return this.f7774a;
    }

    public final void c(@NotNull Mf.a<P0> aVar) {
        M.q(aVar, "<set-?>");
        this.f7775b = aVar;
    }

    public final void d(@NotNull Mf.a<P0> aVar) {
        M.q(aVar, "<set-?>");
        this.f7774a = aVar;
    }

    @Override
    public void onReceive(@NotNull Context context, @NotNull Intent intent) {
        M.q(context, "context");
        M.q(intent, "intent");
        if (e.f7784a.a(context)) {
            this.f7775b.invoke();
        } else {
            this.f7774a.invoke();
        }
    }
}
