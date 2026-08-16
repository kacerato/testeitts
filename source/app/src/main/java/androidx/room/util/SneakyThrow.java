package androidx.room.util;

public class SneakyThrow {
    private SneakyThrow() {
    }

    public static void reThrow(Exception e10) {
        sneakyThrow(e10);
    }

    private static <E extends Throwable> void sneakyThrow(Throwable e10) throws Throwable {
        throw e10;
    }
}
