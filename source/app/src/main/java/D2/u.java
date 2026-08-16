package D2;

import java.nio.Buffer;

@v2.c
@p
public final class u {
    public static void a(Buffer buffer) {
        buffer.clear();
    }

    public static void b(Buffer buffer) {
        buffer.flip();
    }

    public static void c(Buffer buffer, int i10) {
        buffer.limit(i10);
    }

    public static void d(Buffer buffer) {
        buffer.mark();
    }

    public static void e(Buffer buffer, int i10) {
        buffer.position(i10);
    }

    public static void f(Buffer buffer) {
        buffer.reset();
    }
}
