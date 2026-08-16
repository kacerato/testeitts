package G0;

import B0.C2323h;
import B0.C2324i;
import android.content.Context;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11894a;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;

public final class C2559c0 {

    public final SparseIntArray f7361a;

    public C2324i f7362b;

    public C2559c0() {
        this(C2323h.x());
    }

    public final int a(Context context, int i10) {
        return this.f7361a.get(i10, -1);
    }

    @ResultIgnorabilityUnspecified
    public final int b(@NonNull Context context, @NonNull C11894a.f fVar) {
        A.r(context);
        A.r(fVar);
        int i10 = 0;
        if (!fVar.q()) {
            return 0;
        }
        int l10 = fVar.l();
        int a10 = a(context, l10);
        if (a10 == -1) {
            int i11 = 0;
            while (true) {
                if (i11 >= this.f7361a.size()) {
                    i10 = -1;
                    break;
                }
                int keyAt = this.f7361a.keyAt(i11);
                if (keyAt > l10 && this.f7361a.get(keyAt) == 0) {
                    break;
                }
                i11++;
            }
            a10 = i10 == -1 ? this.f7362b.k(context, l10) : i10;
            this.f7361a.put(l10, a10);
        }
        return a10;
    }

    public final void c() {
        this.f7361a.clear();
    }

    public C2559c0(@NonNull C2324i c2324i) {
        this.f7361a = new SparseIntArray();
        A.r(c2324i);
        this.f7362b = c2324i;
    }
}
