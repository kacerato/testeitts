package ed;

import cd.C4174a;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Activities.App;
import gd.C13322a;
import u3.InterfaceC15574a;

public class e {

    public final hd.d f85505a;

    public class a implements Runnable {

        public final hd.e f85506b;

        public class RunnableC1590a implements Runnable {

            public final String f85508b;

            public RunnableC1590a(final String val$result) {
                this.f85508b = val$result;
            }

            @Override
            public void run() {
                if (e.this.f85505a != null) {
                    String str = this.f85508b;
                    if (str == null) {
                        e.this.f85505a.a("");
                        return;
                    }
                    if (str.contains("@no_ethernet@")) {
                        e.this.f85505a.a(this.f85508b);
                        return;
                    }
                    if (this.f85508b.contains("@errorcheckingconnection@")) {
                        e.this.f85505a.a(this.f85508b);
                        return;
                    }
                    if (this.f85508b.contains("@error@")) {
                        e.this.f85505a.a(this.f85508b);
                    } else if (hd.c.g(hd.c.h(this.f85508b), "status").equalsIgnoreCase(FirebaseAnalytics.d.f67668H)) {
                        e.this.f85505a.b(this.f85508b);
                    } else {
                        e.this.f85505a.a(this.f85508b);
                    }
                }
            }
        }

        public a(final hd.e val$params) {
            this.f85506b = val$params;
        }

        @Override
        public void run() {
            String b10;
            hd.e eVar = this.f85506b;
            if (eVar.f90497c != null) {
                InterfaceC15574a interfaceC15574a = App.f69782c;
                if (interfaceC15574a == null) {
                    b10 = "@errorcheckingconnection@";
                } else if (C4174a.a(interfaceC15574a.a()).booleanValue()) {
                    hd.e eVar2 = this.f85506b;
                    b10 = C13322a.b(eVar2.f90495a, eVar2.f90496b, eVar2.f90498d);
                } else {
                    b10 = "@no_ethernet@";
                }
            } else {
                b10 = C13322a.b(eVar.f90495a, eVar.f90496b, eVar.f90498d);
            }
            N7.c.j0(new RunnableC1590a(b10));
        }
    }

    public e(hd.d postAsyncResponse) {
        this.f85505a = postAsyncResponse;
    }

    public void b(hd.e params) {
        O9.b.d(new a(params));
    }
}
