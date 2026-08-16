package zk;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class C16317a {

    public class C2265a<T> implements PrivilegedAction<List<T>> {

        public final E f131492a;

        public final Class f131493b;

        public C2265a(E e10, Class cls) {
            this.f131492a = e10;
            this.f131493b = cls;
        }

        @Override
        public List<T> run() {
            try {
                ArrayList arrayList = new ArrayList();
                Iterator<InterfaceC14516g> it = this.f131492a.iterator();
                while (it.hasNext()) {
                    arrayList.add(this.f131493b.cast(this.f131493b.getMethod("getInstance", Object.class).invoke(null, it.next())));
                }
                return arrayList;
            } catch (Exception e10) {
                throw new IllegalStateException("could not invoke getInstance on type " + e10.getMessage(), e10);
            }
        }
    }

    @Deprecated
    public static <T> List<T> a(Class<T> cls, E e10) {
        return (List) AccessController.doPrivileged(new C2265a(e10, cls));
    }

    public static byte[] b(byte[] bArr) {
        if (bArr.length < 1 || bArr.length > 32) {
            throw new IllegalArgumentException("octet string out of range");
        }
        return org.bouncycastle.util.a.p(bArr);
    }

    public static byte[] c(byte[] bArr, int i10) {
        if (bArr.length == i10) {
            return bArr;
        }
        throw new IllegalArgumentException("octet string out of range");
    }

    public static E d(List list) {
        return new G0((InterfaceC14516g[]) list.toArray(new InterfaceC14516g[0]));
    }

    public static E e(InterfaceC14516g... interfaceC14516gArr) {
        return new G0(interfaceC14516gArr);
    }
}
