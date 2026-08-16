package w0;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import v1.AbstractC15790k;

public abstract class AbstractC15876g extends AbstractC11907k<C11894a.d.C0950d> implements InterfaceC15875f {

    public static final C11894a.g f121766k;

    public static final C11894a.AbstractC0948a f121767l;

    public static final C11894a f121768m;

    static {
        C11894a.g gVar = new C11894a.g();
        f121766k = gVar;
        C15878i c15878i = new C15878i();
        f121767l = c15878i;
        f121768m = new C11894a("SmsRetriever.API", c15878i, gVar);
    }

    public AbstractC15876g(@NonNull Activity activity) {
        super(activity, (C11894a<C11894a.d.C0950d>) f121768m, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
    }

    @NonNull
    public abstract AbstractC15790k<Void> m();

    @NonNull
    public abstract AbstractC15790k<Void> v(@Nullable String str);

    public AbstractC15876g(@NonNull Context context) {
        super(context, (C11894a<C11894a.d.C0950d>) f121768m, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
    }
}
