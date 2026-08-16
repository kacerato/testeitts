package t6;

public class k {

    public static volatile a f117168a;

    public interface a {
        void a(Object runnable);

        void b(float deltaTime);

        void c();

        void d(Object runnable);

        void e(Object runnable);
    }

    public static void a() {
        a aVar = f117168a;
        if (aVar == null) {
            return;
        }
        aVar.c();
    }

    public static void b(float deltaTime) {
        a aVar = f117168a;
        if (aVar == null) {
            return;
        }
        aVar.b(deltaTime);
    }

    public static void c(Object runnable) {
        a aVar = f117168a;
        if (aVar == null) {
            return;
        }
        aVar.e(runnable);
    }

    public static void d(Object runnable) {
        a aVar = f117168a;
        if (aVar == null) {
            return;
        }
        aVar.d(runnable);
    }

    public static void e(Object runnable) {
        a aVar = f117168a;
        if (aVar == null) {
            return;
        }
        aVar.a(runnable);
    }

    public static void f(a h10) {
        f117168a = h10;
    }
}
