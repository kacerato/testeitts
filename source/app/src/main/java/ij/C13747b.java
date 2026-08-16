package ij;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import oh.B;
import oh.C14549x;
import org.bouncycastle.est.ESTException;

public class C13747b implements org.bouncycastle.util.g {

    public final Eh.b f92305b;

    public final HashMap<C14549x, Eh.a> f92306c;

    public C13747b(Eh.b bVar) throws ESTException {
        HashMap<C14549x, Eh.a> hashMap;
        C14549x u10;
        this.f92305b = bVar;
        this.f92306c = new HashMap<>(bVar.size());
        Eh.a[] u11 = bVar.u();
        for (int i10 = 0; i10 != u11.length; i10++) {
            Eh.a aVar = u11[i10];
            if (aVar.y()) {
                hashMap = this.f92306c;
                u10 = aVar.x();
            } else {
                hashMap = this.f92306c;
                u10 = aVar.u().u();
            }
            hashMap.put(u10, aVar);
        }
    }

    public static Eh.b e(byte[] bArr) throws ESTException {
        try {
            return Eh.b.v(B.B(bArr));
        } catch (Exception e10) {
            throw new ESTException("malformed data: " + e10.getMessage(), e10);
        }
    }

    public Collection<C14549x> a() {
        return this.f92306c.o();
    }

    public boolean b(C14549x c14549x) {
        return this.f92306c.containsKey(c14549x);
    }

    public boolean c(C14549x c14549x) {
        if (this.f92306c.containsKey(c14549x)) {
            return !this.f92306c.get(c14549x).y();
        }
        return false;
    }

    public boolean d() {
        return this.f92305b.size() == 0;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f92305b.getEncoded();
    }

    public C13747b(byte[] bArr) throws ESTException {
        this(e(bArr));
    }
}
