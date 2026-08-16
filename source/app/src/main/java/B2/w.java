package B2;

import java.nio.Buffer;

@v2.c
@k
public final class w {
    public static void a(Buffer buffer) {
        buffer.clear();
    }

    public static void b(Buffer buffer) {
        buffer.flip();
    }

    public static void c(Buffer buffer, int i10) {
        buffer.limit(i10);
    }

    public static void d(Buffer buffer, int i10) {
        buffer.position(i10);
    }
}
