package D0;

import G0.AbstractC2564f;
import android.os.Handler;

public final class C2437c0 implements AbstractC2564f.e {

    public final com.google.android.gms.common.api.internal.u f4633a;

    public C2437c0(com.google.android.gms.common.api.internal.u uVar) {
        this.f4633a = uVar;
    }

    @Override
    public final void a() {
        Handler handler;
        handler = this.f4633a.f61260q.f61145p;
        handler.post(new RunnableC2435b0(this));
    }
}
