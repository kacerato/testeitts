package Xi;

import Bi.InterfaceC2379k;
import java.security.SecureRandom;

public class x0 implements InterfaceC2379k {

    public SecureRandom f29435b;

    public InterfaceC2379k f29436c;

    public x0(InterfaceC2379k interfaceC2379k) {
        this(interfaceC2379k, null);
    }

    public InterfaceC2379k a() {
        return this.f29436c;
    }

    public SecureRandom b() {
        return this.f29435b;
    }

    public x0(InterfaceC2379k interfaceC2379k, SecureRandom secureRandom) {
        this.f29435b = Bi.r.i(secureRandom);
        this.f29436c = interfaceC2379k;
    }
}
