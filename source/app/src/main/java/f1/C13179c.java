package f1;

import D0.InterfaceC2458n;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import v1.AbstractC15790k;
import v1.C15791l;
import w0.AbstractC15876g;

public final class C13179c extends AbstractC15876g {
    public C13179c(Activity activity) {
        super(activity);
    }

    @Override
    public final AbstractC15790k<Void> m() {
        return T(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((k) ((z) obj).M()).g1(new C(C13179c.this, (C15791l) obj2));
            }
        }).e(d.f85955c).f(1567).a());
    }

    @Override
    public final AbstractC15790k<Void> v(@Nullable final String str) {
        return T(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((k) ((z) obj).M()).h1(str, new BinderC13178b(C13179c.this, (C15791l) obj2));
            }
        }).e(d.f85956d).f(1568).a());
    }

    public C13179c(Context context) {
        super(context);
    }
}
