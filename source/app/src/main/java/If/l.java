package If;

import java.nio.file.Path;
import java.util.Iterator;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class l {

    @NotNull
    public final Path f9284a;

    @Nullable
    public final Object f9285b;

    @Nullable
    public final l f9286c;

    @Nullable
    public Iterator<l> f9287d;

    public l(@NotNull Path path, @Nullable Object obj, @Nullable l lVar) {
        M.p(path, "path");
        this.f9284a = path;
        this.f9285b = obj;
        this.f9286c = lVar;
    }

    @Nullable
    public final Iterator<l> a() {
        return this.f9287d;
    }

    @Nullable
    public final Object b() {
        return this.f9285b;
    }

    @Nullable
    public final l c() {
        return this.f9286c;
    }

    @NotNull
    public final Path d() {
        return this.f9284a;
    }

    public final void e(@Nullable Iterator<l> it) {
        this.f9287d = it;
    }
}
