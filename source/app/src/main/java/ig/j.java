package ig;

import eg.P;
import eg.Q;
import java.io.Serializable;
import java.lang.Thread;
import java.util.List;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14410f0
public final class j implements Serializable {

    @Nullable
    public final Long f92258b;

    @Nullable
    public final String f92259c;

    @Nullable
    public final String f92260d;

    @NotNull
    public final String f92261e;

    @Nullable
    public final String f92262f;

    @Nullable
    public final String f92263g;

    @NotNull
    public final List<StackTraceElement> f92264h;

    public final long f92265i;

    public j(@NotNull C13735e c13735e, @NotNull yf.j jVar) {
        Thread.State state;
        P p10 = (P) jVar.get(P.f85631c);
        this.f92258b = p10 != null ? Long.valueOf(p10.v()) : null;
        yf.g gVar = (yf.g) jVar.get(yf.g.f130247J8);
        this.f92259c = gVar != null ? gVar.toString() : null;
        Q q10 = (Q) jVar.get(Q.f85633c);
        this.f92260d = q10 != null ? q10.v() : null;
        this.f92261e = c13735e.g();
        Thread thread = c13735e.lastObservedThread;
        this.f92262f = (thread == null || (state = thread.getState()) == null) ? null : state.toString();
        Thread thread2 = c13735e.lastObservedThread;
        this.f92263g = thread2 != null ? thread2.getName() : null;
        this.f92264h = c13735e.h();
        this.f92265i = c13735e.f92223b;
    }

    @Nullable
    public final Long a() {
        return this.f92258b;
    }

    @Nullable
    public final String b() {
        return this.f92259c;
    }

    @NotNull
    public final List<StackTraceElement> c() {
        return this.f92264h;
    }

    @Nullable
    public final String d() {
        return this.f92263g;
    }

    @Nullable
    public final String e() {
        return this.f92262f;
    }

    public final long f() {
        return this.f92265i;
    }

    @NotNull
    public final String g() {
        return this.f92261e;
    }

    @Nullable
    public final String getName() {
        return this.f92260d;
    }
}
