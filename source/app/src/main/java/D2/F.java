package D2;

import com.google.common.collect.M1;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;
import w2.H;

@v2.c
@p
public final class F {

    public class a implements w<List<String>> {

        public final List<String> f4740a = M1.q();

        @Override
        public boolean a(String str) {
            this.f4740a.add(str);
            return true;
        }

        @Override
        public List<String> getResult() {
            return this.f4740a;
        }
    }

    public static final class b extends AbstractC2488f {

        public final URL f4741a;

        public b(URL url, a aVar) {
            this(url);
        }

        @Override
        public InputStream m() throws IOException {
            return this.f4741a.openStream();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f4741a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 24);
            sb2.append("Resources.asByteSource(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        public b(URL url) {
            this.f4741a = (URL) H.E(url);
        }
    }

    public static AbstractC2488f a(URL url) {
        return new b(url, null);
    }

    public static j b(URL url, Charset charset) {
        return a(url).a(charset);
    }

    public static void c(URL url, OutputStream outputStream) throws IOException {
        a(url).g(outputStream);
    }

    @I2.a
    public static URL d(Class<?> cls, String str) {
        URL resource = cls.getResource(str);
        H.y(resource != null, "resource %s relative to %s not found.", str, cls.getName());
        return resource;
    }

    @I2.a
    public static URL e(String str) {
        URL resource = ((ClassLoader) w2.z.a(Thread.currentThread().getContextClassLoader(), F.class.getClassLoader())).getResource(str);
        H.u(resource != null, "resource %s not found.", str);
        return resource;
    }

    @I2.a
    @C
    public static <T> T f(URL url, Charset charset, w<T> wVar) throws IOException {
        return (T) b(url, charset).q(wVar);
    }

    public static List<String> g(URL url, Charset charset) throws IOException {
        return (List) f(url, charset, new a());
    }

    public static byte[] h(URL url) throws IOException {
        return a(url).o();
    }

    public static String i(URL url, Charset charset) throws IOException {
        return b(url, charset).n();
    }
}
