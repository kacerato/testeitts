package Hi;

import Bi.InterfaceC2382n;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public class e extends f {
    public e(Set<String> set) {
        super(set);
    }

    @Override
    public void a(InterfaceC2382n interfaceC2382n) {
        if (b(interfaceC2382n.getServiceName())) {
            return;
        }
        Logger logger = f.f8479b;
        if (logger.isLoggable(Level.INFO)) {
            logger.info("service " + interfaceC2382n.getServiceName() + " referenced [" + interfaceC2382n.getServiceName() + ", " + interfaceC2382n.b() + ", " + ((Object) interfaceC2382n.a()));
        }
    }
}
