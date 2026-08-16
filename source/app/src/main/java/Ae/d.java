package Ae;

import Um.C;
import Um.v;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import w2.C15883c;

public abstract class d {

    public class a implements InvocationHandler {

        public final b f521a;

        public final StringBuilder f522b;

        public final c f523c;

        public a(b bVar, StringBuilder sb2, c cVar) {
            this.f521a = bVar;
            this.f522b = sb2;
            this.f523c = cVar;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) {
            v vVar = (v) objArr[0];
            this.f521a.a(this.f522b);
            this.f522b.append(this.f523c.a(vVar));
            if (vVar.e() == null) {
                this.f522b.append("\n");
                return null;
            }
            this.f522b.append(" [\n");
            this.f521a.c();
            d.d((C) obj, vVar);
            this.f521a.b();
            this.f521a.a(this.f522b);
            this.f522b.append("]\n");
            return null;
        }
    }

    public static class b {

        public int f524a;

        public b() {
        }

        public void a(@NonNull StringBuilder sb2) {
            for (int i10 = 0; i10 < this.f524a; i10++) {
                sb2.append(C15883c.f126249O);
                sb2.append(C15883c.f126249O);
            }
        }

        public void b() {
            this.f524a--;
        }

        public void c() {
            this.f524a++;
        }

        public b(a aVar) {
            this();
        }
    }

    public interface c {
        @NonNull
        String a(@NonNull v vVar);
    }

    public static class C0016d implements c {
        public C0016d() {
        }

        @Override
        @NonNull
        public String a(@NonNull v vVar) {
            return vVar.toString();
        }

        public C0016d(a aVar) {
            this();
        }
    }

    @NonNull
    @CheckResult
    public static String b(@NonNull v vVar) {
        return c(vVar, null);
    }

    @NonNull
    @CheckResult
    public static String c(@NonNull v vVar, @Nullable c cVar) {
        a aVar = null;
        if (cVar == null) {
            cVar = new C0016d(aVar);
        }
        b bVar = new b(aVar);
        StringBuilder sb2 = new StringBuilder();
        vVar.c((C) Proxy.newProxyInstance(C.class.getClassLoader(), new Class[]{C.class}, new a(bVar, sb2, cVar)));
        return sb2.toString();
    }

    public static void d(@NonNull C c10, @NonNull v vVar) {
        v e10 = vVar.e();
        while (e10 != null) {
            v g10 = e10.g();
            e10.c(c10);
            e10 = g10;
        }
    }
}
