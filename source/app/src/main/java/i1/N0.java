package i1;

import com.google.android.gms.internal.consent_sdk.zzj;
import java.util.HashSet;

public final class N0 {

    public final O0 f91226a;

    public final Z f91227b;

    public int f91228c = 0;

    public N0(O0 o02, Z z10) {
        this.f91226a = o02;
        this.f91227b = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0082 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C13540b a() throws zzj {
        C13564n c13564n;
        String str;
        u0 u0Var;
        C13560l c13560l;
        Z z10 = this.f91227b;
        int i10 = z10.f91281f;
        int i11 = i10 - 1;
        if (i10 == 0) {
            throw null;
        }
        switch (i11) {
            case 1:
            case 2:
            case 3:
                this.f91228c = 3;
                break;
            case 4:
                this.f91228c = 2;
                break;
            case 5:
                this.f91228c = 1;
                break;
            case 6:
                String valueOf = String.valueOf(z10.f91278c);
                throw new zzj(1, valueOf.length() != 0 ? "Invalid response from server: ".concat(valueOf) : new String("Invalid response from server: "));
            case 7:
                String valueOf2 = String.valueOf(z10.f91278c);
                throw new zzj(3, valueOf2.length() != 0 ? "Publisher misconfiguration: ".concat(valueOf2) : new String("Publisher misconfiguration: "));
            default:
                throw new zzj(1, "Invalid response from server.");
        }
        String str2 = z10.f91276a;
        E e10 = str2 == null ? null : new E(z10.f91277b, str2);
        c13564n = this.f91226a.f91239c;
        c13564n.g(new HashSet(this.f91227b.f91279d));
        for (Y y10 : this.f91227b.f91280e) {
            int i12 = y10.f91275b;
            int i13 = i12 - 1;
            if (i12 == 0) {
                throw null;
            }
            if (i13 != 0) {
                if (i13 == 1) {
                    str = "write";
                } else if (i13 == 2) {
                    str = "clear";
                }
                if (str == null) {
                    u0Var = this.f91226a.f91237a;
                    String str3 = y10.f91274a;
                    c13560l = this.f91226a.f91238b;
                    u0Var.b(str, str3, c13560l);
                }
            }
            str = null;
            if (str == null) {
            }
        }
        return new C13540b(this.f91228c, e10, null);
    }
}
