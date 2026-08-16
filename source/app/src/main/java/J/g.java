package J;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

public class g implements C.e {

    public static final String f10096j = "@#&=*+-_.,:!?()/~'%;$";

    public final h f10097c;

    @Nullable
    public final URL f10098d;

    @Nullable
    public final String f10099e;

    @Nullable
    public String f10100f;

    @Nullable
    public URL f10101g;

    @Nullable
    public volatile byte[] f10102h;

    public int f10103i;

    public g(URL url) {
        this(url, h.f10105b);
    }

    public String a() {
        String str = this.f10099e;
        return str != null ? str : ((URL) Y.k.d(this.f10098d)).toString();
    }

    public final byte[] b() {
        if (this.f10102h == null) {
            this.f10102h = a().getBytes(C.e.f1956b);
        }
        return this.f10102h;
    }

    public Map<String, String> c() {
        return this.f10097c.getHeaders();
    }

    public final String d() {
        if (TextUtils.isEmpty(this.f10100f)) {
            String str = this.f10099e;
            if (TextUtils.isEmpty(str)) {
                str = ((URL) Y.k.d(this.f10098d)).toString();
            }
            this.f10100f = Uri.encode(str, f10096j);
        }
        return this.f10100f;
    }

    public final URL e() throws MalformedURLException {
        if (this.f10101g == null) {
            this.f10101g = new URL(d());
        }
        return this.f10101g;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return a().equals(gVar.a()) && this.f10097c.equals(gVar.f10097c);
    }

    public String f() {
        return d();
    }

    public URL g() throws MalformedURLException {
        return e();
    }

    @Override
    public int hashCode() {
        if (this.f10103i == 0) {
            int hashCode = a().hashCode();
            this.f10103i = hashCode;
            this.f10103i = (hashCode * 31) + this.f10097c.hashCode();
        }
        return this.f10103i;
    }

    public String toString() {
        return a();
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(b());
    }

    public g(String str) {
        this(str, h.f10105b);
    }

    public g(URL url, h hVar) {
        this.f10098d = (URL) Y.k.d(url);
        this.f10099e = null;
        this.f10097c = (h) Y.k.d(hVar);
    }

    public g(String str, h hVar) {
        this.f10098d = null;
        this.f10099e = Y.k.b(str);
        this.f10097c = (h) Y.k.d(hVar);
    }
}
