package okhttp3;

import java.net.InetSocketAddress;
import java.net.Proxy;
import javax.annotation.Nullable;
import org.apache.commons.math3.geometry.VectorFormat;

public final class G {

    public final C14581a f99154a;

    public final Proxy f99155b;

    public final InetSocketAddress f99156c;

    public G(C14581a c14581a, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (c14581a == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f99154a = c14581a;
        this.f99155b = proxy;
        this.f99156c = inetSocketAddress;
    }

    public C14581a a() {
        return this.f99154a;
    }

    public Proxy b() {
        return this.f99155b;
    }

    public boolean c() {
        return this.f99154a.f99165i != null && this.f99155b.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress d() {
        return this.f99156c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof G) {
            G g10 = (G) obj;
            if (g10.f99154a.equals(this.f99154a) && g10.f99155b.equals(this.f99155b) && g10.f99156c.equals(this.f99156c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f99154a.hashCode()) * 31) + this.f99155b.hashCode()) * 31) + this.f99156c.hashCode();
    }

    public String toString() {
        return "Route{" + ((Object) this.f99156c) + VectorFormat.DEFAULT_SUFFIX;
    }
}
