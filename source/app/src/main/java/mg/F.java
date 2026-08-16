package mg;

import eg.AbstractC13100M;
import eg.InterfaceC13106b0;
import eg.InterfaceC13128m0;
import eg.InterfaceC13133p;
import eg.V0;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.t0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import nf.P0;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MissingMainCoroutineDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"})
public final class F extends V0 implements InterfaceC13106b0 {

    @Nullable
    public final Throwable f97020b;

    @Nullable
    public final String f97021c;

    public F(Throwable th2, String str, int i10, C14026x c14026x) {
        this(th2, (i10 & 2) != 0 ? null : str);
    }

    @Override
    public boolean isDispatchNeeded(@NotNull yf.j jVar) {
        v();
        throw new KotlinNothingValueException();
    }

    @Override
    @NotNull
    public AbstractC13100M limitedParallelism(int i10) {
        v();
        throw new KotlinNothingValueException();
    }

    @Override
    @NotNull
    public InterfaceC13128m0 m(long j10, @NotNull Runnable runnable, @NotNull yf.j jVar) {
        v();
        throw new KotlinNothingValueException();
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object p(long j10, @NotNull yf.f<? super P0> fVar) {
        return InterfaceC13106b0.a.a(this, j10, fVar);
    }

    @Override
    @NotNull
    public V0 s() {
        return this;
    }

    @Override
    @NotNull
    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Dispatchers.Main[missing");
        if (this.f97020b != null) {
            str = ", cause=" + ((Object) this.f97020b);
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }

    @Override
    @NotNull
    public Void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        v();
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
    
        if (r1 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Void v() {
        String str;
        if (this.f97020b == null) {
            E.e();
            throw new KotlinNothingValueException();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Module with the Main dispatcher had failed to initialize");
        String str2 = this.f97021c;
        if (str2 != null) {
            str = ". " + str2;
        }
        str = "";
        sb2.append(str);
        throw new IllegalStateException(sb2.toString(), this.f97020b);
    }

    @Override
    @NotNull
    public Void o(long j10, @NotNull InterfaceC13133p<? super P0> interfaceC13133p) {
        v();
        throw new KotlinNothingValueException();
    }

    public F(@Nullable Throwable th2, @Nullable String str) {
        this.f97020b = th2;
        this.f97021c = str;
    }
}
