package D0;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.Status;
import z0.C16218c;

public final class S implements com.google.android.gms.common.api.v {

    public final C2464q f4602a;

    public final boolean f4603b;

    public final AbstractC11908l f4604c;

    public final com.google.android.gms.common.api.internal.q f4605d;

    public S(com.google.android.gms.common.api.internal.q qVar, C2464q c2464q, boolean z10, AbstractC11908l abstractC11908l) {
        this.f4605d = qVar;
        this.f4602a = c2464q;
        this.f4603b = z10;
        this.f4604c = abstractC11908l;
    }

    @Override
    public final void a(@NonNull com.google.android.gms.common.api.u uVar) {
        Context context;
        Status status = (Status) uVar;
        context = this.f4605d.f61214i;
        C16218c.b(context).i();
        if (status.x0() && this.f4605d.u()) {
            com.google.android.gms.common.api.internal.q qVar = this.f4605d;
            qVar.i();
            qVar.g();
        }
        this.f4602a.o(status);
        if (this.f4603b) {
            this.f4604c.i();
        }
    }
}
