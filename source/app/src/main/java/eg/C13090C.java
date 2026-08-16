package eg;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CompletedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,662:1\n1#2:663\n*E\n"})
public final class C13090C {

    @Lf.g
    @Nullable
    public final Object f85597a;

    @Lf.g
    @Nullable
    public final AbstractC13129n f85598b;

    @Lf.g
    @Nullable
    public final Mf.l<Throwable, nf.P0> f85599c;

    @Lf.g
    @Nullable
    public final Object f85600d;

    @Lf.g
    @Nullable
    public final Throwable f85601e;

    /* JADX WARN: Multi-variable type inference failed */
    public C13090C(@Nullable Object obj, @Nullable AbstractC13129n abstractC13129n, @Nullable Mf.l<? super Throwable, nf.P0> lVar, @Nullable Object obj2, @Nullable Throwable th2) {
        this.f85597a = obj;
        this.f85598b = abstractC13129n;
        this.f85599c = lVar;
        this.f85600d = obj2;
        this.f85601e = th2;
    }

    public static C13090C g(C13090C c13090c, Object obj, AbstractC13129n abstractC13129n, Mf.l lVar, Object obj2, Throwable th2, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = c13090c.f85597a;
        }
        if ((i10 & 2) != 0) {
            abstractC13129n = c13090c.f85598b;
        }
        AbstractC13129n abstractC13129n2 = abstractC13129n;
        if ((i10 & 4) != 0) {
            lVar = c13090c.f85599c;
        }
        Mf.l lVar2 = lVar;
        if ((i10 & 8) != 0) {
            obj2 = c13090c.f85600d;
        }
        Object obj4 = obj2;
        if ((i10 & 16) != 0) {
            th2 = c13090c.f85601e;
        }
        return c13090c.f(obj, abstractC13129n2, lVar2, obj4, th2);
    }

    @Nullable
    public final Object a() {
        return this.f85597a;
    }

    @Nullable
    public final AbstractC13129n b() {
        return this.f85598b;
    }

    @Nullable
    public final Mf.l<Throwable, nf.P0> c() {
        return this.f85599c;
    }

    @Nullable
    public final Object d() {
        return this.f85600d;
    }

    @Nullable
    public final Throwable e() {
        return this.f85601e;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13090C)) {
            return false;
        }
        C13090C c13090c = (C13090C) obj;
        return kotlin.jvm.internal.M.g(this.f85597a, c13090c.f85597a) && kotlin.jvm.internal.M.g(this.f85598b, c13090c.f85598b) && kotlin.jvm.internal.M.g(this.f85599c, c13090c.f85599c) && kotlin.jvm.internal.M.g(this.f85600d, c13090c.f85600d) && kotlin.jvm.internal.M.g(this.f85601e, c13090c.f85601e);
    }

    @NotNull
    public final C13090C f(@Nullable Object obj, @Nullable AbstractC13129n abstractC13129n, @Nullable Mf.l<? super Throwable, nf.P0> lVar, @Nullable Object obj2, @Nullable Throwable th2) {
        return new C13090C(obj, abstractC13129n, lVar, obj2, th2);
    }

    public final boolean h() {
        return this.f85601e != null;
    }

    public int hashCode() {
        Object obj = this.f85597a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        AbstractC13129n abstractC13129n = this.f85598b;
        int hashCode2 = (hashCode + (abstractC13129n == null ? 0 : abstractC13129n.hashCode())) * 31;
        Mf.l<Throwable, nf.P0> lVar = this.f85599c;
        int hashCode3 = (hashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.f85600d;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th2 = this.f85601e;
        return hashCode4 + (th2 != null ? th2.hashCode() : 0);
    }

    public final void i(@NotNull C13135q<?> c13135q, @NotNull Throwable th2) {
        AbstractC13129n abstractC13129n = this.f85598b;
        if (abstractC13129n != null) {
            c13135q.p(abstractC13129n, th2);
        }
        Mf.l<Throwable, nf.P0> lVar = this.f85599c;
        if (lVar != null) {
            c13135q.r(lVar, th2);
        }
    }

    @NotNull
    public String toString() {
        return "CompletedContinuation(result=" + this.f85597a + ", cancelHandler=" + ((Object) this.f85598b) + ", onCancellation=" + ((Object) this.f85599c) + ", idempotentResume=" + this.f85600d + ", cancelCause=" + ((Object) this.f85601e) + ')';
    }

    public C13090C(Object obj, AbstractC13129n abstractC13129n, Mf.l lVar, Object obj2, Throwable th2, int i10, C14026x c14026x) {
        this(obj, (i10 & 2) != 0 ? null : abstractC13129n, (i10 & 4) != 0 ? null : lVar, (i10 & 8) != 0 ? null : obj2, (i10 & 16) != 0 ? null : th2);
    }
}
