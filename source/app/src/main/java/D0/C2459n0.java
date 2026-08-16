package D0;

import B0.C2318c;
import G0.AbstractC2564f;
import G0.C2572j;
import G0.C2599x;
import T0.C3032b;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import v1.AbstractC15790k;
import v1.InterfaceC15784e;

public final class C2459n0 implements InterfaceC15784e {

    public final com.google.android.gms.common.api.internal.d f4684a;

    public final int f4685b;

    public final C2436c f4686c;

    public final long f4687d;

    public final long f4688e;

    @VisibleForTesting
    public C2459n0(com.google.android.gms.common.api.internal.d dVar, int i10, C2436c c2436c, long j10, long j11, @Nullable String str, @Nullable String str2) {
        this.f4684a = dVar;
        this.f4685b = i10;
        this.f4686c = c2436c;
        this.f4687d = j10;
        this.f4688e = j11;
    }

    @Nullable
    public static C2459n0 b(com.google.android.gms.common.api.internal.d dVar, int i10, C2436c c2436c) {
        boolean z10;
        if (!dVar.e()) {
            return null;
        }
        G0.D a10 = G0.C.b().a();
        if (a10 == null) {
            z10 = true;
        } else {
            if (!a10.b0()) {
                return null;
            }
            z10 = a10.n0();
            com.google.android.gms.common.api.internal.u t10 = dVar.t(c2436c);
            if (t10 != null) {
                if (!(t10.w() instanceof AbstractC2564f)) {
                    return null;
                }
                AbstractC2564f abstractC2564f = (AbstractC2564f) t10.w();
                if (abstractC2564f.S() && !abstractC2564f.f()) {
                    C2572j c10 = c(t10, abstractC2564f, i10);
                    if (c10 == null) {
                        return null;
                    }
                    t10.H();
                    z10 = c10.u0();
                }
            }
        }
        return new C2459n0(dVar, i10, c2436c, z10 ? System.currentTimeMillis() : 0L, z10 ? SystemClock.elapsedRealtime() : 0L, null, null);
    }

    @Nullable
    public static C2572j c(com.google.android.gms.common.api.internal.u uVar, AbstractC2564f abstractC2564f, int i10) {
        int[] t10;
        int[] b02;
        C2572j Q10 = abstractC2564f.Q();
        if (Q10 == null || !Q10.n0() || ((t10 = Q10.t()) != null ? !C3032b.c(t10, i10) : !((b02 = Q10.b0()) == null || !C3032b.c(b02, i10))) || uVar.s() >= Q10.n()) {
            return null;
        }
        return Q10;
    }

    @Override
    @WorkerThread
    public final void a(@NonNull AbstractC15790k abstractC15790k) {
        com.google.android.gms.common.api.internal.u t10;
        int i10;
        int i11;
        int i12;
        int n10;
        long j10;
        long j11;
        int i13;
        if (this.f4684a.e()) {
            G0.D a10 = G0.C.b().a();
            if ((a10 == null || a10.b0()) && (t10 = this.f4684a.t(this.f4686c)) != null && (t10.w() instanceof AbstractC2564f)) {
                AbstractC2564f abstractC2564f = (AbstractC2564f) t10.w();
                int i14 = 0;
                boolean z10 = this.f4687d > 0;
                int H10 = abstractC2564f.H();
                int i15 = 100;
                if (a10 != null) {
                    z10 &= a10.n0();
                    int n11 = a10.n();
                    int t11 = a10.t();
                    i10 = a10.getVersion();
                    if (abstractC2564f.S() && !abstractC2564f.f()) {
                        C2572j c10 = c(t10, abstractC2564f, this.f4685b);
                        if (c10 == null) {
                            return;
                        }
                        boolean z11 = c10.u0() && this.f4687d > 0;
                        t11 = c10.n();
                        z10 = z11;
                    }
                    i12 = n11;
                    i11 = t11;
                } else {
                    i10 = 0;
                    i11 = 100;
                    i12 = 5000;
                }
                com.google.android.gms.common.api.internal.d dVar = this.f4684a;
                if (abstractC15790k.v()) {
                    n10 = 0;
                } else {
                    if (!abstractC15790k.t()) {
                        Exception q10 = abstractC15790k.q();
                        if (q10 instanceof ApiException) {
                            Status status = ((ApiException) q10).getStatus();
                            i15 = status.b0();
                            C2318c n12 = status.n();
                            if (n12 != null) {
                                n10 = n12.n();
                                i14 = i15;
                            }
                        } else {
                            i14 = 101;
                            n10 = -1;
                        }
                    }
                    i14 = i15;
                    n10 = -1;
                }
                if (z10) {
                    long j12 = this.f4687d;
                    long j13 = this.f4688e;
                    long currentTimeMillis = System.currentTimeMillis();
                    i13 = (int) (SystemClock.elapsedRealtime() - j13);
                    j11 = currentTimeMillis;
                    j10 = j12;
                } else {
                    j10 = 0;
                    j11 = 0;
                    i13 = -1;
                }
                dVar.H(new C2599x(this.f4685b, i14, n10, j10, j11, null, null, H10, i13), i10, i12, i11);
            }
        }
    }
}
