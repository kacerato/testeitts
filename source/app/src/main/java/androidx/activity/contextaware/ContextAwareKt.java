package androidx.activity.contextaware;

import Af.c;
import Af.d;
import Bf.h;
import Mf.l;
import android.content.Context;
import eg.C13135q;
import kotlin.jvm.internal.J;
import yf.f;

public final class ContextAwareKt {
    public static final <R> Object withContextAvailable(ContextAware contextAware, l<? super Context, ? extends R> lVar, f<? super R> fVar) {
        Context peekAvailableContext = contextAware.peekAvailableContext();
        if (peekAvailableContext != null) {
            return lVar.invoke(peekAvailableContext);
        }
        C13135q c13135q = new C13135q(c.e(fVar), 1);
        c13135q.O();
        ContextAwareKt$withContextAvailable$2$listener$1 contextAwareKt$withContextAvailable$2$listener$1 = new ContextAwareKt$withContextAvailable$2$listener$1(c13135q, lVar);
        contextAware.addOnContextAvailableListener(contextAwareKt$withContextAvailable$2$listener$1);
        c13135q.K(new ContextAwareKt$withContextAvailable$2$1(contextAware, contextAwareKt$withContextAvailable$2$listener$1));
        Object D10 = c13135q.D();
        if (D10 == d.l()) {
            h.c(fVar);
        }
        return D10;
    }

    private static final <R> Object withContextAvailable$$forInline(ContextAware contextAware, l<? super Context, ? extends R> lVar, f<? super R> fVar) {
        Context peekAvailableContext = contextAware.peekAvailableContext();
        if (peekAvailableContext != null) {
            return lVar.invoke(peekAvailableContext);
        }
        J.e(0);
        C13135q c13135q = new C13135q(c.e(fVar), 1);
        c13135q.O();
        ContextAwareKt$withContextAvailable$2$listener$1 contextAwareKt$withContextAvailable$2$listener$1 = new ContextAwareKt$withContextAvailable$2$listener$1(c13135q, lVar);
        contextAware.addOnContextAvailableListener(contextAwareKt$withContextAvailable$2$listener$1);
        c13135q.K(new ContextAwareKt$withContextAvailable$2$1(contextAware, contextAwareKt$withContextAvailable$2$listener$1));
        Object D10 = c13135q.D();
        if (D10 == d.l()) {
            h.c(fVar);
        }
        J.e(1);
        return D10;
    }
}
