package fd;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import org.eclipse.jdt.internal.core.JavadocConstants;
import yd.C16181m;

public class C13208a {

    public static final String f86201f = "\r\n";

    public final String f86202a;

    public HttpURLConnection f86203b;

    public String f86204c;

    public OutputStream f86205d;

    public PrintWriter f86206e;

    public class C1604a implements HostnameVerifier {
        public C1604a() {
        }

        @Override
        public boolean verify(String hostname, SSLSession session) {
            return "104.156.226.134".equals(hostname);
        }
    }

    public interface b {
        void a(long count, long max, double p10);
    }

    public C13208a(String requestURL) throws IOException {
        this(requestURL, "UTF-8");
    }

    public void a(String fieldName, File uploadFile, b listener) throws IOException {
        String name = uploadFile.getName();
        this.f86206e.append((CharSequence) "--*****").append((CharSequence) f86201f);
        this.f86206e.append((CharSequence) ("Content-Disposition: form-data; name=\"" + fieldName + "\"; filename=\"" + name + JavadocConstants.ANCHOR_PREFIX_END)).append((CharSequence) f86201f);
        String guessContentTypeFromName = URLConnection.guessContentTypeFromName(name);
        if (guessContentTypeFromName == null) {
            guessContentTypeFromName = "application/octet-stream";
        }
        this.f86206e.append((CharSequence) ("Content-Type: " + guessContentTypeFromName)).append((CharSequence) f86201f);
        this.f86206e.append((CharSequence) "Content-Transfer-Encoding: binary").append((CharSequence) f86201f);
        this.f86206e.append((CharSequence) f86201f);
        this.f86206e.flush();
        long length = uploadFile.length();
        FileInputStream fileInputStream = new FileInputStream(uploadFile);
        try {
            byte[] bArr = new byte[2048];
            long j10 = 0;
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    fileInputStream.close();
                    this.f86205d.flush();
                    this.f86206e.append((CharSequence) f86201f);
                    this.f86206e.flush();
                    return;
                }
                this.f86205d.write(bArr, 0, read);
                long j11 = j10 + read;
                listener.a(j11, length, (j11 / length) * 100.0d);
                j10 = j11;
            }
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public void b(String name, String value) {
        this.f86206e.append((CharSequence) "--*****").append((CharSequence) f86201f);
        this.f86206e.append((CharSequence) ("Content-Disposition: form-data; name=\"" + name + JavadocConstants.ANCHOR_PREFIX_END)).append((CharSequence) f86201f);
        this.f86206e.append((CharSequence) ("Content-Type: text/plain; charset=" + this.f86204c)).append((CharSequence) f86201f);
        this.f86206e.append((CharSequence) f86201f);
        this.f86206e.append((CharSequence) (value + f86201f));
        this.f86206e.flush();
        Log.e("Key#", name + C16181m.f130230g + value);
    }

    public void c(String name, String value) {
        this.f86206e.append((CharSequence) (name + ": " + value)).append((CharSequence) f86201f);
        this.f86206e.flush();
    }

    public String d() throws IOException {
        this.f86206e.append((CharSequence) f86201f).flush();
        this.f86206e.append((CharSequence) "--*****--").append((CharSequence) f86201f);
        this.f86206e.close();
        int responseCode = this.f86203b.getResponseCode();
        if (responseCode < 200 || responseCode > 206) {
            return (("@error@") + "HTTP-CODE:") + responseCode;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new BufferedInputStream(this.f86203b.getInputStream())));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                bufferedReader.close();
                String sb3 = sb2.toString();
                this.f86203b.disconnect();
                return sb3;
            }
            sb2.append(readLine);
            sb2.append("\n");
        }
    }

    public void e(int milis) {
        this.f86203b.setConnectTimeout(milis);
    }

    public void f(int milis) {
        this.f86203b.setReadTimeout(milis);
    }

    public C13208a(String requestURL, String charset) throws IOException {
        this.f86202a = "*****";
        this.f86204c = charset;
        URL url = new URL(requestURL);
        Log.e("URL#", requestURL);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        this.f86203b = httpURLConnection;
        if (httpURLConnection instanceof HttpsURLConnection) {
            ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new C1604a());
        }
        this.f86203b.setUseCaches(false);
        this.f86203b.setDoOutput(true);
        this.f86203b.setDoInput(true);
        this.f86203b.setRequestProperty("Content-Type", "multipart/form-data; boundary=*****");
        this.f86205d = this.f86203b.getOutputStream();
        this.f86206e = new PrintWriter((Writer) new OutputStreamWriter(this.f86205d, charset), true);
    }
}
