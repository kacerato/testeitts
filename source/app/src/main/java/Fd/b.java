package fd;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import java.util.HashMap;

public class b {

    public final Uri f86208a;

    public final File f86209b;

    public final String f86210c;

    public final a f86211d;

    public final Context f86212e;

    public final HashMap<String, String> f86213f;

    public int f86214g = 999999;

    public int f86215h = 999999;

    public interface a {
        void a(long count, long max, double p10);
    }

    public b(File file, Uri fileUri, String url, HashMap<String, String> params, a listener, Context context) {
        this.f86208a = fileUri;
        this.f86210c = url;
        this.f86209b = file;
        this.f86211d = listener;
        this.f86212e = context;
        this.f86213f = params;
    }

    public int a() {
        return this.f86214g;
    }

    public Context b() {
        return this.f86212e;
    }

    public File c() {
        return this.f86209b;
    }

    public Uri d() {
        return this.f86208a;
    }

    public a e() {
        return this.f86211d;
    }

    public HashMap<String, String> f() {
        return this.f86213f;
    }

    public int g() {
        return this.f86215h;
    }

    public String h() {
        return this.f86210c;
    }

    public b i(int connectionTimeoutMilis) {
        this.f86214g = connectionTimeoutMilis;
        return this;
    }

    public b j(int readTimeoutMilis) {
        this.f86215h = readTimeoutMilis;
        return this;
    }
}
