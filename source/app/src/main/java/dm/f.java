package dm;

import hi.C13486b;
import java.util.HashMap;
import java.util.Map;

public abstract class f implements g {

    public Map<b, byte[]> f84864a = new HashMap();

    public static class b {

        public final C13486b f84865a;

        public final byte[] f84866b;

        public b(C13486b c13486b, byte[] bArr) {
            this.f84865a = c13486b;
            this.f84866b = bArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f84865a.equals(bVar.f84865a) && org.bouncycastle.util.a.g(this.f84866b, bVar.f84866b);
        }

        public int hashCode() {
            return (this.f84865a.hashCode() * 31) + org.bouncycastle.util.a.t0(this.f84866b);
        }
    }

    @Override
    public byte[] a(Qk.p pVar, byte[] bArr) {
        b bVar = new b(pVar.a(), bArr);
        if (this.f84864a.containsKey(bVar)) {
            return this.f84864a.get(bVar);
        }
        byte[] b10 = b(pVar, bArr);
        this.f84864a.put(bVar, b10);
        return b10;
    }

    public abstract byte[] b(Qk.p pVar, byte[] bArr);
}
