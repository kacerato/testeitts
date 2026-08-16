package If;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class h implements g {

    @Nullable
    public Mf.p<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> f9270a;

    @Nullable
    public Mf.p<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> f9271b;

    @Nullable
    public Mf.p<? super Path, ? super IOException, ? extends FileVisitResult> f9272c;

    @Nullable
    public Mf.p<? super Path, ? super IOException, ? extends FileVisitResult> f9273d;

    public boolean f9274e;

    @Override
    public void a(@NotNull Mf.p<? super Path, ? super IOException, ? extends FileVisitResult> function) {
        M.p(function, "function");
        f();
        g(this.f9272c, "onVisitFileFailed");
        this.f9272c = function;
    }

    @Override
    public void b(@NotNull Mf.p<? super Path, ? super IOException, ? extends FileVisitResult> function) {
        M.p(function, "function");
        f();
        g(this.f9273d, "onPostVisitDirectory");
        this.f9273d = function;
    }

    @Override
    public void c(@NotNull Mf.p<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> function) {
        M.p(function, "function");
        f();
        g(this.f9270a, "onPreVisitDirectory");
        this.f9270a = function;
    }

    @Override
    public void d(@NotNull Mf.p<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> function) {
        M.p(function, "function");
        f();
        g(this.f9271b, "onVisitFile");
        this.f9271b = function;
    }

    @NotNull
    public final FileVisitor<Path> e() {
        f();
        this.f9274e = true;
        return new i(this.f9270a, this.f9271b, this.f9272c, this.f9273d);
    }

    public final void f() {
        if (this.f9274e) {
            throw new IllegalStateException("This builder was already built");
        }
    }

    public final void g(Object obj, String str) {
        if (obj == null) {
            return;
        }
        throw new IllegalStateException(str + " was already defined");
    }
}
