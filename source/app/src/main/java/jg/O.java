package jg;

import org.jetbrains.annotations.NotNull;

public interface O {

    @NotNull
    public static final a f93244a = a.f93245a;

    public static final class a {

        public static final a f93245a = new a();

        @NotNull
        public static final O f93246b = new Q();

        @NotNull
        public static final O f93247c = new S();

        public static O b(a aVar, long j10, long j11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                j10 = 0;
            }
            if ((i10 & 2) != 0) {
                j11 = Long.MAX_VALUE;
            }
            return aVar.a(j10, j11);
        }

        @NotNull
        public final O a(long j10, long j11) {
            return new T(j10, j11);
        }

        @NotNull
        public final O c() {
            return f93246b;
        }

        @NotNull
        public final O d() {
            return f93247c;
        }
    }

    @NotNull
    InterfaceC13842i<M> a(@NotNull U<Integer> u10);
}
