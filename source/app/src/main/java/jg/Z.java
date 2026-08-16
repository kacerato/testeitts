package jg;

import java.net.HttpURLConnection;
import java.util.List;
import kotlin.KotlinNothingValueException;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class Z<T> implements I<T> {

    @NotNull
    public final I<T> f93284b;

    @NotNull
    public final Mf.p<InterfaceC13843j<? super T>, yf.f<? super P0>, Object> f93285c;

    @Bf.f(c = "kotlinx.coroutines.flow.SubscribedSharedFlow", f = "Share.kt", i = {}, l = {HttpURLConnection.HTTP_CONFLICT}, m = "collect", n = {}, s = {})
    public static final class a extends Bf.d {

        public Object f93286b;

        public final Z<T> f93287c;

        public int f93288d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Z<T> z10, yf.f<? super a> fVar) {
            super(fVar);
            this.f93287c = z10;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93286b = obj;
            this.f93288d |= Integer.MIN_VALUE;
            return this.f93287c.a(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Z(@NotNull I<? extends T> i10, @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        this.f93284b = i10;
        this.f93285c = pVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<?> fVar) {
        a aVar;
        int i10;
        if (fVar instanceof a) {
            aVar = (a) fVar;
            int i11 = aVar.f93288d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f93288d = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f93286b;
                Object l10 = Af.d.l();
                i10 = aVar.f93288d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    I<T> i12 = this.f93284b;
                    Y y10 = new Y(interfaceC13843j, this.f93285c);
                    aVar.f93288d = 1;
                    if (i12.a(y10, aVar) == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                throw new KotlinNothingValueException();
            }
        }
        aVar = new a(this, fVar);
        Object obj2 = aVar.f93286b;
        Object l102 = Af.d.l();
        i10 = aVar.f93288d;
        if (i10 != 0) {
        }
        throw new KotlinNothingValueException();
    }

    @Override
    @NotNull
    public List<T> b() {
        return this.f93284b.b();
    }
}
