package K0;

import G0.C2584p;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.Locale;
import org.openjdk.tools.doclint.DocLint;

@C0.a
public class a {

    public final String f10694a;

    public final String f10695b;

    public final C2584p f10696c;

    public final int f10697d;

    @C0.a
    public a(@NonNull String str, @NonNull String... strArr) {
        String sb2;
        if (strArr.length == 0) {
            sb2 = "";
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append('[');
            for (String str2 : strArr) {
                if (sb3.length() > 1) {
                    sb3.append(DocLint.SEPARATOR);
                }
                sb3.append(str2);
            }
            sb3.append("] ");
            sb2 = sb3.toString();
        }
        this.f10695b = sb2;
        this.f10694a = str;
        this.f10696c = new C2584p(str);
        int i10 = 2;
        while (i10 <= 7 && !Log.isLoggable(this.f10694a, i10)) {
            i10++;
        }
        this.f10697d = i10;
    }

    @C0.a
    public void a(@NonNull String str, @NonNull Object... objArr) {
        if (g(3)) {
            Log.d(this.f10694a, d(str, objArr));
        }
    }

    @C0.a
    public void b(@NonNull String str, @NonNull Throwable th2, @NonNull Object... objArr) {
        Log.e(this.f10694a, d(str, objArr), th2);
    }

    @C0.a
    public void c(@NonNull String str, @NonNull Object... objArr) {
        Log.e(this.f10694a, d(str, objArr));
    }

    @NonNull
    @C0.a
    public String d(@NonNull String str, @NonNull Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.f10695b.concat(str);
    }

    @NonNull
    @C0.a
    public String e() {
        return this.f10694a;
    }

    @C0.a
    public void f(@NonNull String str, @NonNull Object... objArr) {
        Log.i(this.f10694a, d(str, objArr));
    }

    @C0.a
    public boolean g(int i10) {
        return this.f10697d <= i10;
    }

    @C0.a
    public void h(@NonNull String str, @NonNull Throwable th2, @NonNull Object... objArr) {
        if (g(2)) {
            Log.v(this.f10694a, d(str, objArr), th2);
        }
    }

    @C0.a
    public void i(@NonNull String str, @NonNull Object... objArr) {
        if (g(2)) {
            Log.v(this.f10694a, d(str, objArr));
        }
    }

    @C0.a
    public void j(@NonNull String str, @NonNull Object... objArr) {
        Log.w(this.f10694a, d(str, objArr));
    }

    @C0.a
    public void k(@NonNull String str, @NonNull Throwable th2, @NonNull Object... objArr) {
        Log.wtf(this.f10694a, d(str, objArr), th2);
    }

    @C0.a
    public void l(@NonNull Throwable th2) {
        Log.wtf(this.f10694a, th2);
    }
}
