package D;

import D.d;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.HttpException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

public class j implements d<InputStream> {

    public static final String f4511h = "HttpUrlFetcher";

    public static final int f4512i = 5;

    @VisibleForTesting
    public static final b f4513j = new a();

    public static final int f4514k = -1;

    public final J.g f4515b;

    public final int f4516c;

    public final b f4517d;

    public HttpURLConnection f4518e;

    public InputStream f4519f;

    public volatile boolean f4520g;

    public static class a implements b {
        @Override
        public HttpURLConnection a(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    public interface b {
        HttpURLConnection a(URL url) throws IOException;
    }

    public j(J.g gVar, int i10) {
        this(gVar, i10, f4513j);
    }

    public static boolean d(int i10) {
        return i10 / 100 == 2;
    }

    public static boolean f(int i10) {
        return i10 / 100 == 3;
    }

    @Override
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override
    @NonNull
    public C.a b() {
        return C.a.REMOTE;
    }

    public final InputStream c(HttpURLConnection httpURLConnection) throws IOException {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.f4519f = Y.c.b(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable(f4511h, 3)) {
                Log.d(f4511h, "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            this.f4519f = httpURLConnection.getInputStream();
        }
        return this.f4519f;
    }

    @Override
    public void cancel() {
        this.f4520g = true;
    }

    @Override
    public void cleanup() {
        InputStream inputStream = this.f4519f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f4518e;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f4518e = null;
    }

    @Override
    public void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super InputStream> aVar) {
        StringBuilder sb2;
        long b10 = Y.g.b();
        try {
            try {
                aVar.c(g(this.f4515b.g(), 0, null, this.f4515b.c()));
            } catch (IOException e10) {
                if (Log.isLoggable(f4511h, 3)) {
                    Log.d(f4511h, "Failed to load data for url", e10);
                }
                aVar.d(e10);
                if (!Log.isLoggable(f4511h, 2)) {
                    return;
                } else {
                    sb2 = new StringBuilder();
                }
            }
            if (Log.isLoggable(f4511h, 2)) {
                sb2 = new StringBuilder();
                sb2.append("Finished http url fetcher fetch in ");
                sb2.append(Y.g.a(b10));
                Log.v(f4511h, sb2.toString());
            }
        } catch (Throwable th2) {
            if (Log.isLoggable(f4511h, 2)) {
                Log.v(f4511h, "Finished http url fetcher fetch in " + Y.g.a(b10));
            }
            throw th2;
        }
    }

    public final InputStream g(URL url, int i10, URL url2, Map<String, String> map) throws IOException {
        if (i10 >= 5) {
            throw new HttpException("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new HttpException("In re-direct loop");
                }
            } catch (URISyntaxException unused) {
            }
        }
        this.f4518e = this.f4517d.a(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f4518e.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.f4518e.setConnectTimeout(this.f4516c);
        this.f4518e.setReadTimeout(this.f4516c);
        this.f4518e.setUseCaches(false);
        this.f4518e.setDoInput(true);
        this.f4518e.setInstanceFollowRedirects(false);
        this.f4518e.connect();
        this.f4519f = this.f4518e.getInputStream();
        if (this.f4520g) {
            return null;
        }
        int responseCode = this.f4518e.getResponseCode();
        if (d(responseCode)) {
            return c(this.f4518e);
        }
        if (!f(responseCode)) {
            if (responseCode == -1) {
                throw new HttpException(responseCode);
            }
            throw new HttpException(this.f4518e.getResponseMessage(), responseCode);
        }
        String headerField = this.f4518e.getHeaderField(F2.d.f6275t0);
        if (TextUtils.isEmpty(headerField)) {
            throw new HttpException("Received empty or null redirect url");
        }
        URL url3 = new URL(url, headerField);
        cleanup();
        return g(url3, i10 + 1, url, map);
    }

    @VisibleForTesting
    public j(J.g gVar, int i10, b bVar) {
        this.f4515b = gVar;
        this.f4516c = i10;
        this.f4517d = bVar;
    }
}
