package eg;

import kotlin.jvm.internal.C14026x;
import nf.InterfaceC14410f0;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.AbstractC16183a;
import yf.j;

@InterfaceC14410f0
@IgnoreJRERequirement
public final class P extends AbstractC16183a implements l1<String> {

    @NotNull
    public static final a f85631c = new a(null);

    public final long f85632b;

    public static final class a implements j.c<P> {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public P(long j10) {
        super(f85631c);
        this.f85632b = j10;
    }

    public static P u(P p10, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = p10.f85632b;
        }
        return p10.t(j10);
    }

    @Override
    @NotNull
    public String b0(@NotNull yf.j jVar) {
        String str;
        Q q10 = (Q) jVar.get(Q.f85633c);
        if (q10 == null || (str = q10.v()) == null) {
            str = "coroutine";
        }
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        int a42 = ag.P.a4(name, C13099L.f85621a, 0, false, 6, null);
        if (a42 < 0) {
            a42 = name.length();
        }
        StringBuilder sb2 = new StringBuilder(str.length() + a42 + 10);
        String substring = name.substring(0, a42);
        kotlin.jvm.internal.M.o(substring, "this as java.lang.String\u2026ing(startIndex, endIndex)");
        sb2.append(substring);
        sb2.append(C13099L.f85621a);
        sb2.append(str);
        sb2.append(JavaElement.JEM_IMPORTDECLARATION);
        sb2.append(this.f85632b);
        String sb3 = sb2.toString();
        kotlin.jvm.internal.M.o(sb3, "StringBuilder(capacity).\u2026builderAction).toString()");
        currentThread.setName(sb3);
        return name;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof P) && this.f85632b == ((P) obj).f85632b;
    }

    public int hashCode() {
        return Long.hashCode(this.f85632b);
    }

    public final long s() {
        return this.f85632b;
    }

    @NotNull
    public final P t(long j10) {
        return new P(j10);
    }

    @NotNull
    public String toString() {
        return "CoroutineId(" + this.f85632b + ')';
    }

    public final long v() {
        return this.f85632b;
    }

    @Override
    public void h(@NotNull yf.j jVar, @NotNull String str) {
        Thread.currentThread().setName(str);
    }
}
