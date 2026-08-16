package androidx.activity.contextaware;

import Mf.l;
import android.content.Context;
import eg.InterfaceC13133p;
import kotlin.jvm.internal.M;
import nf.C14416i0;
import nf.C14418j0;
import yf.f;

public final class ContextAwareKt$withContextAvailable$2$listener$1 implements OnContextAvailableListener {
    final InterfaceC13133p<R> $co;
    final l<Context, R> $onContextAvailable;

    /* JADX WARN: Multi-variable type inference failed */
    public ContextAwareKt$withContextAvailable$2$listener$1(InterfaceC13133p<? super R> interfaceC13133p, l<? super Context, ? extends R> lVar) {
        this.$co = interfaceC13133p;
        this.$onContextAvailable = lVar;
    }

    @Override
    public void onContextAvailable(Context context) {
        Object b10;
        M.p(context, "context");
        f fVar = this.$co;
        l<Context, R> lVar = this.$onContextAvailable;
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            b10 = C14416i0.b(lVar.invoke(context));
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            b10 = C14416i0.b(C14418j0.a(th2));
        }
        fVar.resumeWith(b10);
    }
}
