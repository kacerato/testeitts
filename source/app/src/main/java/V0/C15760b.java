package v0;

import D0.C2434b;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.internal.auth.C11997w;
import com.google.android.gms.internal.auth.C12005y;
import v1.AbstractC15790k;

public class C15760b extends AbstractC11907k<w> {

    public static final C11894a.g f121053k;

    public static final C11894a.AbstractC0948a f121054l;

    public static final C11894a f121055m;

    public static final int f121056n = 0;

    static {
        C11894a.g gVar = new C11894a.g();
        f121053k = gVar;
        g gVar2 = new g();
        f121054l = gVar2;
        f121055m = new C11894a("AccountTransfer.ACCOUNT_TRANSFER_API", gVar2, gVar);
    }

    public C15760b(@NonNull Activity activity, @Nullable w wVar) {
        super(activity, (C11894a<w>) f121055m, w.f121085c, new AbstractC11907k.a.C0953a().c(new C2434b()).a());
    }

    @NonNull
    public AbstractC15790k<e> g0(@NonNull String str) {
        G0.A.r(str);
        return N(new l(this, 1608, new com.google.android.gms.internal.auth.r(str)));
    }

    @NonNull
    public AbstractC15790k<Void> h0(@NonNull String str, int i10) {
        G0.A.r(str);
        return T(new n(this, 1610, new C11997w(str, i10)));
    }

    @NonNull
    public AbstractC15790k<byte[]> i0(@NonNull String str) {
        G0.A.r(str);
        return N(new j(this, 1607, new C12005y(str)));
    }

    @NonNull
    public AbstractC15790k<Void> j0(@NonNull String str, @NonNull byte[] bArr) {
        G0.A.r(str);
        G0.A.r(bArr);
        return T(new h(this, 1606, new com.google.android.gms.internal.auth.A(str, bArr)));
    }

    @NonNull
    public AbstractC15790k<Void> k0(@NonNull String str, @NonNull PendingIntent pendingIntent) {
        G0.A.r(str);
        G0.A.r(pendingIntent);
        return T(new m(this, 1609, new com.google.android.gms.internal.auth.D(str, pendingIntent)));
    }

    public C15760b(@NonNull Context context, @Nullable w wVar) {
        super(context, (C11894a<w>) f121055m, w.f121085c, new AbstractC11907k.a.C0953a().c(new C2434b()).a());
    }
}
