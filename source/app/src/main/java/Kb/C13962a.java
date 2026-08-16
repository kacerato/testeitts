package kb;

import K8.d;
import Nc.b;
import android.content.Context;
import android.provider.ContactsContract;
import lb.C14064a;

public class C13962a {

    public static float f95037c;

    public static long f95035a = System.nanoTime();

    public static int f95036b = 60;

    public static final C14064a f95038d = new C14064a();

    public static void a() {
        if (System.nanoTime() - f95035a >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
            f95035a = System.nanoTime();
            f95037c = b.q0(d.e() * 1000.0f, 2);
        }
    }

    public static void b(Context context) {
        f95038d.a();
    }

    public static void c(Context context) {
        a();
        f95036b = (int) (1.0f / d.e());
        f95037c = d.e();
    }
}
