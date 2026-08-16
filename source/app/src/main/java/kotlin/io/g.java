package kotlin.io;

import java.io.File;
import java.util.List;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.S;

public final class g {

    @NotNull
    public final File f95653a;

    @NotNull
    public final List<File> f95654b;

    /* JADX WARN: Multi-variable type inference failed */
    public g(@NotNull File root, @NotNull List<? extends File> segments) {
        M.p(root, "root");
        M.p(segments, "segments");
        this.f95653a = root;
        this.f95654b = segments;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static g d(g gVar, File file, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            file = gVar.f95653a;
        }
        if ((i10 & 2) != 0) {
            list = gVar.f95654b;
        }
        return gVar.c(file, list);
    }

    @NotNull
    public final File a() {
        return this.f95653a;
    }

    @NotNull
    public final List<File> b() {
        return this.f95654b;
    }

    @NotNull
    public final g c(@NotNull File root, @NotNull List<? extends File> segments) {
        M.p(root, "root");
        M.p(segments, "segments");
        return new g(root, segments);
    }

    @NotNull
    public final File e() {
        return this.f95653a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return M.g(this.f95653a, gVar.f95653a) && M.g(this.f95654b, gVar.f95654b);
    }

    @NotNull
    public final String f() {
        String path = this.f95653a.getPath();
        M.o(path, "getPath(...)");
        return path;
    }

    @NotNull
    public final List<File> g() {
        return this.f95654b;
    }

    public final int h() {
        return this.f95654b.size();
    }

    public int hashCode() {
        return (this.f95653a.hashCode() * 31) + this.f95654b.hashCode();
    }

    public final boolean i() {
        String path = this.f95653a.getPath();
        M.o(path, "getPath(...)");
        return path.length() > 0;
    }

    @NotNull
    public final File j(int i10, int i11) {
        if (i10 < 0 || i10 > i11 || i11 > h()) {
            throw new IllegalArgumentException();
        }
        List<File> subList = this.f95654b.subList(i10, i11);
        String separator = File.separator;
        M.o(separator, "separator");
        return new File(S.r3(subList, separator, null, null, 0, null, null, 62, null));
    }

    @NotNull
    public String toString() {
        return "FilePathComponents(root=" + ((Object) this.f95653a) + ", segments=" + ((Object) this.f95654b) + ')';
    }
}
