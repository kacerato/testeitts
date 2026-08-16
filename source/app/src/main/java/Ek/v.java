package Ek;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import yk.C16201c;
import yk.C16206h;

public class v extends AbstractC14545v {

    public final byte[] f6029b;

    public class a<T> implements PrivilegedAction<T> {

        public final C16201c f6031b;

        public final Class f6032c;

        public a(C16201c c16201c, Class cls) {
            this.f6031b = c16201c;
            this.f6032c = cls;
        }

        @Override
        public T run() {
            try {
                return (T) this.f6032c.cast(this.f6032c.getMethod("getInstance", Object.class).invoke(null, C16206h.n(v.this.f6029b, this.f6031b)));
            } catch (Exception e10) {
                throw new IllegalStateException("could not invoke getInstance on type " + e10.getMessage(), e10);
            }
        }
    }

    public v(AbstractC14551y abstractC14551y) {
        this(abstractC14551y.H());
    }

    public static v y(Object obj) {
        if (obj instanceof v) {
            return (v) obj;
        }
        if (obj != null) {
            return new v(AbstractC14551y.F(obj));
        }
        return null;
    }

    public static <T> T z(Class<T> cls, C16201c c16201c, v vVar) {
        return (T) AccessController.doPrivileged(new a(c16201c, cls));
    }

    @Override
    public oh.B r() {
        return new C0(this.f6029b);
    }

    public byte[] v() {
        return this.f6029b;
    }

    public InputStream x() {
        return new ByteArrayInputStream(this.f6029b);
    }

    public v(byte[] bArr) {
        this.f6029b = org.bouncycastle.util.a.p(bArr);
    }
}
