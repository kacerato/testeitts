package f1;

import D0.InterfaceC2458n;
import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import v1.AbstractC15790k;
import v1.C15791l;
import w0.InterfaceC15872c;

public final class y extends AbstractC11907k implements InterfaceC15872c {

    public static final C11894a.g f85971k;

    public static final C11894a.AbstractC0948a f85972l;

    public static final C11894a f85973m;

    static {
        C11894a.g gVar = new C11894a.g();
        f85971k = gVar;
        w wVar = new w();
        f85972l = wVar;
        f85973m = new C11894a("SmsCodeBrowser.API", wVar, gVar);
    }

    public y(Activity activity) {
        super(activity, (C11894a<C11894a.d.C0950d>) f85973m, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
    }

    @Override
    public final AbstractC15790k<Void> b() {
        return T(D0.r.a().e(d.f85954b).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((k) ((z) obj).M()).f1(new x(y.this, (C15791l) obj2));
            }
        }).f(1566).a());
    }

    public y(Context context) {
        super(context, (C11894a<C11894a.d.C0950d>) f85973m, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
    }
}
