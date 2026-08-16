package jg;

import gg.InterfaceC13358B;
import kg.AbstractC13982d;
import kotlin.jvm.internal.C14026x;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13835b<T> extends C13839f<T> {

    @NotNull
    public final Mf.p<InterfaceC13358B<? super T>, yf.f<? super P0>, Object> f93294f;

    @Bf.f(c = "kotlinx.coroutines.flow.CallbackFlowBuilder", f = "Builders.kt", i = {0}, l = {334}, m = "collectTo", n = {"scope"}, s = {"L$0"})
    public static final class a extends Bf.d {

        public Object f93295b;

        public Object f93296c;

        public final C13835b<T> f93297d;

        public int f93298e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(C13835b<T> c13835b, yf.f<? super a> fVar) {
            super(fVar);
            this.f93297d = c13835b;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93296c = obj;
            this.f93298e |= Integer.MIN_VALUE;
            return this.f93297d.f(null, this);
        }
    }

    public C13835b(Mf.p pVar, yf.j jVar, int i10, gg.i iVar, int i11, C14026x c14026x) {
        this(pVar, (i11 & 2) != 0 ? yf.l.f130251b : jVar, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? gg.i.SUSPEND : iVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object f(@NotNull InterfaceC13358B<? super T> interfaceC13358B, @NotNull yf.f<? super P0> fVar) {
        a aVar;
        int i10;
        if (fVar instanceof a) {
            aVar = (a) fVar;
            int i11 = aVar.f93298e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f93298e = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f93296c;
                Object l10 = Af.d.l();
                i10 = aVar.f93298e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    aVar.f93295b = interfaceC13358B;
                    aVar.f93298e = 1;
                    if (super.f(interfaceC13358B, aVar) == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    interfaceC13358B = (InterfaceC13358B) aVar.f93295b;
                    C14418j0.n(obj);
                }
                if (interfaceC13358B.A()) {
                    throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
                }
                return P0.f98194a;
            }
        }
        aVar = new a(this, fVar);
        Object obj2 = aVar.f93296c;
        Object l102 = Af.d.l();
        i10 = aVar.f93298e;
        if (i10 != 0) {
        }
        if (interfaceC13358B.A()) {
        }
    }

    @Override
    @NotNull
    public AbstractC13982d<T> g(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return new C13835b(this.f93294f, jVar, i10, iVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C13835b(@NotNull Mf.p<? super InterfaceC13358B<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar, @NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        super(pVar, jVar, i10, iVar);
        this.f93294f = pVar;
    }
}
