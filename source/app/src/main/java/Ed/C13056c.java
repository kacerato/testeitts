package ed;

import cd.C4174a;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Activities.App;
import gd.C13322a;
import u3.InterfaceC15574a;

public class C13056c {

    public final hd.d f85495a;

    public class a implements Runnable {

        public final hd.e f85496b;

        public class RunnableC1588a implements Runnable {

            public final String f85498b;

            public RunnableC1588a(final String val$responseMessage) {
                this.f85498b = val$responseMessage;
            }

            @Override
            public void run() {
                C13056c.this.e(this.f85498b);
            }
        }

        public a(final hd.e val$parameters) {
            this.f85496b = val$parameters;
        }

        @Override
        public void run() {
            N7.c.j0(new RunnableC1588a(C13056c.this.c(this.f85496b)));
        }
    }

    public C13056c(hd.d postAsyncResponse) {
        this.f85495a = postAsyncResponse;
    }

    public final String c(hd.e params) {
        if (params.f90497c == null) {
            return C13322a.b(params.f90495a, params.f90496b, params.f90498d);
        }
        InterfaceC15574a interfaceC15574a = App.f69782c;
        return interfaceC15574a != null ? C4174a.a(interfaceC15574a.a()).booleanValue() ? C13322a.b(params.f90495a, params.f90496b, params.f90498d) : "@no_ethernet@" : "@errorcheckingconnection@";
    }

    public void d(hd.e parameters) {
        Thread thread = new Thread(new a(parameters));
        thread.setName("PostAsync");
        thread.setPriority(1);
        thread.start();
    }

    public final void e(String result) {
        hd.d dVar = this.f85495a;
        if (dVar != null) {
            if (result == null) {
                dVar.a("");
                return;
            }
            if (result.contains("@no_ethernet@")) {
                this.f85495a.a(result);
                return;
            }
            if (result.contains("@errorcheckingconnection@")) {
                this.f85495a.a(result);
                return;
            }
            if (result.contains("@error@")) {
                this.f85495a.a(result);
            } else if (hd.c.g(hd.c.h(result), "status").equalsIgnoreCase(FirebaseAnalytics.d.f67668H)) {
                this.f85495a.b(result);
            } else {
                this.f85495a.a(result);
            }
        }
    }
}
