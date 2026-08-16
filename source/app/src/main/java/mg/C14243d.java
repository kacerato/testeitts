package mg;

import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@IgnoreJRERequirement
public final class C14243d extends AbstractC14250k {

    @NotNull
    public static final C14243d f97056a = new C14243d();

    @NotNull
    public static final a f97057b = new a();

    public static final class a extends ClassValue<Mf.l<? super Throwable, ? extends Throwable>> {
        @Override
        @NotNull
        public Mf.l<Throwable, Throwable> computeValue(@Nullable Class<?> cls) {
            Mf.l<Throwable, Throwable> b10;
            kotlin.jvm.internal.M.n(cls, "null cannot be cast to non-null type java.lang.Class<out kotlin.Throwable>");
            b10 = C14253n.b(cls);
            return b10;
        }
    }

    @Override
    @NotNull
    public Mf.l<Throwable, Throwable> a(@NotNull Class<? extends Throwable> cls) {
        Object obj;
        obj = f97057b.get(cls);
        return (Mf.l) obj;
    }
}
