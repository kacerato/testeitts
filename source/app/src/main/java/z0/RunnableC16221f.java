package z0;

import D0.C2464q;
import G0.A;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.Status;
import e1.D;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public final class RunnableC16221f implements Runnable {

    public static final K0.a f130517d = new K0.a("RevokeAccessOperation", new String[0]);

    public final String f130518b;

    public final C2464q f130519c = new C2464q((AbstractC11908l) null);

    public RunnableC16221f(String str) {
        this.f130518b = A.l(str);
    }

    public static com.google.android.gms.common.api.p a(@Nullable String str) {
        if (str == null) {
            return com.google.android.gms.common.api.q.c(new Status(4), null);
        }
        RunnableC16221f runnableC16221f = new RunnableC16221f(str);
        new Thread(runnableC16221f).start();
        return runnableC16221f.f130519c;
    }

    @Override
    public final void run() {
        Status status = Status.f61041i;
        try {
            String str = this.f130518b;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 50);
            sb2.append("https://accounts.google.com/o/oauth2/revoke?token=");
            sb2.append(str);
            URL url = new URL(sb2.toString());
            int i10 = D.f84938a;
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f61039g;
            } else {
                f130517d.c("Unable to revoke access!", new Object[0]);
            }
            K0.a aVar = f130517d;
            StringBuilder sb3 = new StringBuilder(String.valueOf(responseCode).length() + 15);
            sb3.append("Response Code: ");
            sb3.append(responseCode);
            aVar.a(sb3.toString(), new Object[0]);
        } catch (IOException e10) {
            f130517d.c("IOException when revoking access: ".concat(String.valueOf(e10.toString())), new Object[0]);
        } catch (Exception e11) {
            f130517d.c("Exception when revoking access: ".concat(String.valueOf(e11.toString())), new Object[0]);
        }
        this.f130519c.o(status);
    }
}
