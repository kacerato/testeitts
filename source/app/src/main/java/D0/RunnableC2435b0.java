package D0;

import com.google.android.gms.common.api.C11894a;

public final class RunnableC2435b0 implements Runnable {

    public final C2437c0 f4628b;

    public RunnableC2435b0(C2437c0 c2437c0) {
        this.f4628b = c2437c0;
    }

    @Override
    public final void run() {
        C11894a.f fVar;
        C11894a.f fVar2;
        com.google.android.gms.common.api.internal.u uVar = this.f4628b.f4633a;
        fVar = uVar.f61249f;
        fVar2 = uVar.f61249f;
        fVar.e(fVar2.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
