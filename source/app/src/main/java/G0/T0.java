package G0;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;

public final class T0 implements Handler.Callback {

    public final V0 f7325c;

    public T0(V0 v02, U0 u02) {
        this.f7325c = v02;
    }

    @Override
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i10 = message.what;
        if (i10 == 0) {
            hashMap = this.f7325c.f7332g;
            synchronized (hashMap) {
                try {
                    R0 r02 = (R0) message.obj;
                    hashMap2 = this.f7325c.f7332g;
                    S0 s02 = (S0) hashMap2.get(r02);
                    if (s02 != null && s02.i()) {
                        if (s02.j()) {
                            s02.g("GmsClientSupervisor");
                        }
                        hashMap3 = this.f7325c.f7332g;
                        hashMap3.remove(r02);
                    }
                } finally {
                }
            }
            return true;
        }
        if (i10 != 1) {
            return false;
        }
        hashMap4 = this.f7325c.f7332g;
        synchronized (hashMap4) {
            try {
                R0 r03 = (R0) message.obj;
                hashMap5 = this.f7325c.f7332g;
                S0 s03 = (S0) hashMap5.get(r03);
                if (s03 != null && s03.a() == 3) {
                    Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback " + String.valueOf(r03), new Exception());
                    ComponentName b10 = s03.b();
                    if (b10 == null) {
                        b10 = r03.a();
                    }
                    if (b10 == null) {
                        String c10 = r03.c();
                        A.r(c10);
                        b10 = new ComponentName(c10, "unknown");
                    }
                    s03.onServiceDisconnected(b10);
                }
            } finally {
            }
        }
        return true;
    }
}
