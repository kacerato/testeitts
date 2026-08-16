package k0;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class AbstractC13908a {

    @NotNull
    public final String f94408a;

    public static final class C1829a extends AbstractC13908a {

        @Nullable
        public final Integer f94409b;

        /* JADX WARN: Multi-variable type inference failed */
        public C1829a() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public static C1829a d(C1829a c1829a, Integer num, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                num = c1829a.f94409b;
            }
            return c1829a.c(num);
        }

        @Nullable
        public final Integer b() {
            return this.f94409b;
        }

        @NotNull
        public final C1829a c(@Nullable Integer numOfThreads) {
            return new C1829a(numOfThreads);
        }

        @Nullable
        public final Integer e() {
            return this.f94409b;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof C1829a) && M.g(this.f94409b, ((C1829a) other).f94409b);
        }

        public int hashCode() {
            Integer num = this.f94409b;
            if (num == null) {
                return 0;
            }
            return num.hashCode();
        }

        @NotNull
        public String toString() {
            return "CPU(numOfThreads=" + ((Object) this.f94409b) + ")";
        }

        public C1829a(@Nullable Integer numOfThreads) {
            super("CPU", null);
            this.f94409b = numOfThreads;
        }

        public C1829a(Integer num, int i10, C14026x c14026x) {
            this((i10 & 1) != 0 ? null : num);
        }
    }

    public static final class b extends AbstractC13908a {
        public b() {
            super("GPU", null);
        }
    }

    public static final class c extends AbstractC13908a {

        @NotNull
        public final String f94410b;

        /* JADX WARN: Multi-variable type inference failed */
        public c() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public static c d(c cVar, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = cVar.f94410b;
            }
            return cVar.c(str);
        }

        @NotNull
        public final String b() {
            return this.f94410b;
        }

        @NotNull
        public final c c(@NotNull String nativeLibraryDir) {
            M.p(nativeLibraryDir, "nativeLibraryDir");
            return new c(nativeLibraryDir);
        }

        @NotNull
        public final String e() {
            return this.f94410b;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof c) && M.g(this.f94410b, ((c) other).f94410b);
        }

        public int hashCode() {
            return this.f94410b.hashCode();
        }

        @NotNull
        public String toString() {
            return "NPU(nativeLibraryDir=" + this.f94410b + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull String nativeLibraryDir) {
            super("NPU", null);
            M.p(nativeLibraryDir, "nativeLibraryDir");
            this.f94410b = nativeLibraryDir;
        }

        public c(String str, int i10, C14026x c14026x) {
            this((i10 & 1) != 0 ? "" : str);
        }
    }

    public AbstractC13908a(String str, C14026x c14026x) {
        this(str);
    }

    @NotNull
    public final String a() {
        return this.f94408a;
    }

    public AbstractC13908a(String name) {
        this.f94408a = name;
    }
}
