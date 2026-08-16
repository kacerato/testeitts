package G0;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

@C0.a
@Deprecated
public class C2597w {

    public static final C2584p f7485b = new C2584p("LibraryVersion", "");

    public static final C2597w f7486c = new C2597w();

    public final ConcurrentHashMap f7487a = new ConcurrentHashMap();

    @VisibleForTesting
    public C2597w() {
    }

    @NonNull
    @C0.a
    public static C2597w a() {
        return f7486c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0095  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @NonNull
    @C0.a
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String b(@NonNull String str) {
        Object obj;
        InputStream inputStream;
        A.m(str, "Please provide a valid libraryName");
        if (this.f7487a.containsKey(str)) {
            return (String) this.f7487a.get(str);
        }
        Properties properties = new Properties();
        ?? r32 = 0;
        r32 = 0;
        r32 = 0;
        InputStream inputStream2 = null;
        try {
            try {
                inputStream = C2597w.class.getResourceAsStream(String.format("/%s.properties", str));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e10) {
            e = e10;
            obj = null;
        }
        try {
            if (inputStream != null) {
                properties.load(inputStream);
                String property = properties.getProperty("version", null);
                f7485b.l("LibraryVersion", str + " version is " + property);
                r32 = property;
            } else {
                f7485b.n("LibraryVersion", "Failed to get app version for libraryName: " + str);
            }
        } catch (IOException e11) {
            e = e11;
            obj = r32;
            inputStream2 = inputStream;
            f7485b.f("LibraryVersion", "Failed to get app version for libraryName: " + str, e);
            Object obj2 = obj;
            inputStream = inputStream2;
            r32 = obj2;
            if (inputStream != null) {
            }
            if (r32 == 0) {
            }
            this.f7487a.put(str, r32);
            return r32;
        } catch (Throwable th3) {
            th = th3;
            r32 = inputStream;
            if (r32 != 0) {
                T0.q.b(r32);
            }
            throw th;
        }
        if (inputStream != null) {
            T0.q.b(inputStream);
        }
        if (r32 == 0) {
            f7485b.c("LibraryVersion", ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used");
            r32 = "UNKNOWN";
        }
        this.f7487a.put(str, r32);
        return r32;
    }
}
