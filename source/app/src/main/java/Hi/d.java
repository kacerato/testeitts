package Hi;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;
import java.util.Collections;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.crypto.CryptoServiceConstraintsException;

public class d extends f {

    public final int f8476c;

    public final int f8477d;

    public static class a {

        public static final int[] f8478a;

        static {
            int[] iArr = new int[EnumC2383o.values().length];
            f8478a = iArr;
            try {
                iArr[EnumC2383o.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8478a[EnumC2383o.VERIFYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8478a[EnumC2383o.DECRYPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8478a[EnumC2383o.VERIFICATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public d(int i10) {
        this(i10, 0);
    }

    @Override
    public void a(InterfaceC2382n interfaceC2382n) {
        if (b(interfaceC2382n.getServiceName())) {
            return;
        }
        EnumC2383o a10 = interfaceC2382n.a();
        int i10 = a.f8478a[a10.ordinal()];
        if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
            if (interfaceC2382n.b() >= this.f8476c) {
                return;
            }
            throw new CryptoServiceConstraintsException("service does not provide " + this.f8476c + " bits of security only " + interfaceC2382n.b());
        }
        if (interfaceC2382n.b() < this.f8477d) {
            throw new CryptoServiceConstraintsException("service does not provide " + this.f8477d + " bits of security only " + interfaceC2382n.b());
        }
        if (a10 != EnumC2383o.ANY) {
            Logger logger = f.f8479b;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine("usage of legacy cryptography service for algorithm " + interfaceC2382n.getServiceName());
            }
        }
    }

    public d(int i10, int i11) {
        super(Collections.EMPTY_SET);
        this.f8476c = i10;
        this.f8477d = i11;
    }

    public d(int i10, int i11, Set<String> set) {
        super(set);
        this.f8476c = i10;
        this.f8477d = i11;
    }

    public d(int i10, Set<String> set) {
        this(i10, 0, set);
    }
}
