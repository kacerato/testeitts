package dj;

import java.io.IOException;
import java.util.Date;
import org.bouncycastle.cms.O;
import org.bouncycastle.dvcs.DVCSException;

public class q extends AbstractC12935g {
    public q() {
        super(new zh.h(zh.m.f131445d));
    }

    public C12934f i(O o10) throws DVCSException {
        try {
            return b(new zh.k(o10.getEncoded()));
        } catch (IOException e10) {
            throw new DVCSException("Failed to encode CMS signed data", e10);
        }
    }

    public void j(Date date) {
        this.f84729c.i(new zh.j(date));
    }
}
