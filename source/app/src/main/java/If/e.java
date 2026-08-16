package If;

import java.nio.file.FileSystemException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class e {

    public final int f9266a;

    public int f9267b;

    @NotNull
    public final List<Exception> f9268c;

    @Nullable
    public Path f9269d;

    public e() {
        this(0, 1, null);
    }

    public final void a(@NotNull Exception exception) {
        M.p(exception, "exception");
        this.f9267b++;
        if (this.f9268c.size() < this.f9266a) {
            if (this.f9269d != null) {
                Throwable initCause = new FileSystemException(String.valueOf(this.f9269d)).initCause(exception);
                M.n(initCause, "null cannot be cast to non-null type java.nio.file.FileSystemException");
                exception = (FileSystemException) initCause;
            }
            this.f9268c.add(exception);
        }
    }

    public final void b(@NotNull Path name) {
        M.p(name, "name");
        Path path = this.f9269d;
        this.f9269d = path != null ? path.resolve(name) : null;
    }

    public final void c(@NotNull Path name) {
        M.p(name, "name");
        Path path = this.f9269d;
        if (!M.g(name, path != null ? path.getFileName() : null)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        Path path2 = this.f9269d;
        this.f9269d = path2 != null ? path2.getParent() : null;
    }

    @NotNull
    public final List<Exception> d() {
        return this.f9268c;
    }

    @Nullable
    public final Path e() {
        return this.f9269d;
    }

    public final int f() {
        return this.f9267b;
    }

    public final void g(@Nullable Path path) {
        this.f9269d = path;
    }

    public e(int i10) {
        this.f9266a = i10;
        this.f9268c = new ArrayList();
    }

    public e(int i10, int i11, C14026x c14026x) {
        this((i11 & 1) != 0 ? 64 : i10);
    }
}
