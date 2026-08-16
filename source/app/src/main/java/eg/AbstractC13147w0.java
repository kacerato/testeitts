package eg;

import java.io.Closeable;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.C14026x;
import nf.InterfaceC14441w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.AbstractC16184b;
import yf.j;

public abstract class AbstractC13147w0 extends AbstractC13100M implements Closeable {

    @NotNull
    public static final a f85799b = new a(null);

    @InterfaceC14441w
    public static final class a extends AbstractC16184b<AbstractC13100M, AbstractC13147w0> {

        public static final class C1594a extends kotlin.jvm.internal.O implements Mf.l<j.b, AbstractC13147w0> {

            public static final C1594a f85800b = new C1594a();

            public C1594a() {
                super(1);
            }

            @Override
            @Nullable
            public final AbstractC13147w0 invoke(@NotNull j.b bVar) {
                if (bVar instanceof AbstractC13147w0) {
                    return (AbstractC13147w0) bVar;
                }
                return null;
            }
        }

        public a(C14026x c14026x) {
            this();
        }

        public a() {
            super(AbstractC13100M.Key, C1594a.f85800b);
        }
    }

    @Override
    public abstract void close();

    @NotNull
    public abstract Executor s();
}
