package dk;

import java.security.Provider;
import java.security.Security;
import org.bouncycastle.jce.provider.C14720a;

public class C12947c extends k {

    public static volatile Provider f84743b;

    public C12947c() {
        super(x());
    }

    public static synchronized Provider x() {
        synchronized (C12947c.class) {
            Provider provider = Security.getProvider(C14720a.f101701e);
            if (provider instanceof C14720a) {
                return provider;
            }
            if (f84743b != null) {
                return f84743b;
            }
            f84743b = new C14720a();
            return f84743b;
        }
    }
}
