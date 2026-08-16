package ed;

import com.google.firebase.analytics.FirebaseAnalytics;
import gd.C13322a;

public class C13057d {

    public final hd.d f85500a;

    public class a implements Runnable {

        public final hd.e f85501b;

        public class RunnableC1589a implements Runnable {

            public final String f85503b;

            public RunnableC1589a(final String val$responseMessage) {
                this.f85503b = val$responseMessage;
            }

            @Override
            public void run() {
                C13057d.this.e(this.f85503b);
            }
        }

        public a(final hd.e val$parameters) {
            this.f85501b = val$parameters;
        }

        @Override
        public void run() {
            N7.c.j0(new RunnableC1589a(C13057d.this.c(this.f85501b)));
        }
    }

    public C13057d(hd.d postAsyncResponse) {
        this.f85500a = postAsyncResponse;
    }

    public final String c(hd.e... params) {
        hd.e eVar = params[0];
        return C13322a.b(eVar.f90495a, eVar.f90496b, eVar.f90498d);
    }

    public void d(hd.e parameters) {
        Thread thread = new Thread(new a(parameters));
        thread.setName("PostAsync_NEV");
        thread.setPriority(1);
        thread.start();
    }

    public final void e(String result) {
        if (this.f85500a != null) {
            if (result.contains("@no_ethernet@")) {
                this.f85500a.a(result);
                return;
            }
            if (result.contains("@errorcheckingconnection@")) {
                this.f85500a.a(result);
                return;
            }
            if (result.contains("@error@")) {
                this.f85500a.a(result);
            } else if (hd.c.g(hd.c.h(result), "status").equalsIgnoreCase(FirebaseAnalytics.d.f67668H)) {
                this.f85500a.b(result);
            } else {
                this.f85500a.a(result);
            }
        }
    }
}
