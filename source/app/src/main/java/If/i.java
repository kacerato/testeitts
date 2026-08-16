package If;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class i extends SimpleFileVisitor<Path> {

    @Nullable
    public final Mf.p<Path, BasicFileAttributes, FileVisitResult> f9275a;

    @Nullable
    public final Mf.p<Path, BasicFileAttributes, FileVisitResult> f9276b;

    @Nullable
    public final Mf.p<Path, IOException, FileVisitResult> f9277c;

    @Nullable
    public final Mf.p<Path, IOException, FileVisitResult> f9278d;

    /* JADX WARN: Multi-variable type inference failed */
    public i(@Nullable Mf.p<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> pVar, @Nullable Mf.p<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> pVar2, @Nullable Mf.p<? super Path, ? super IOException, ? extends FileVisitResult> pVar3, @Nullable Mf.p<? super Path, ? super IOException, ? extends FileVisitResult> pVar4) {
        this.f9275a = pVar;
        this.f9276b = pVar2;
        this.f9277c = pVar3;
        this.f9278d = pVar4;
    }

    @Override
    @NotNull
    public FileVisitResult postVisitDirectory(@NotNull Path dir, @Nullable IOException iOException) {
        FileVisitResult invoke;
        M.p(dir, "dir");
        Mf.p<Path, IOException, FileVisitResult> pVar = this.f9278d;
        if (pVar != null && (invoke = pVar.invoke(dir, iOException)) != null) {
            return invoke;
        }
        FileVisitResult postVisitDirectory = super.postVisitDirectory(dir, iOException);
        M.o(postVisitDirectory, "postVisitDirectory(...)");
        return postVisitDirectory;
    }

    @Override
    @NotNull
    public FileVisitResult preVisitDirectory(@NotNull Path dir, @NotNull BasicFileAttributes attrs) {
        FileVisitResult invoke;
        M.p(dir, "dir");
        M.p(attrs, "attrs");
        Mf.p<Path, BasicFileAttributes, FileVisitResult> pVar = this.f9275a;
        if (pVar != null && (invoke = pVar.invoke(dir, attrs)) != null) {
            return invoke;
        }
        FileVisitResult preVisitDirectory = super.preVisitDirectory(dir, attrs);
        M.o(preVisitDirectory, "preVisitDirectory(...)");
        return preVisitDirectory;
    }

    @Override
    @NotNull
    public FileVisitResult visitFile(@NotNull Path file, @NotNull BasicFileAttributes attrs) {
        FileVisitResult invoke;
        M.p(file, "file");
        M.p(attrs, "attrs");
        Mf.p<Path, BasicFileAttributes, FileVisitResult> pVar = this.f9276b;
        if (pVar != null && (invoke = pVar.invoke(file, attrs)) != null) {
            return invoke;
        }
        FileVisitResult visitFile = super.visitFile(file, attrs);
        M.o(visitFile, "visitFile(...)");
        return visitFile;
    }

    @Override
    @NotNull
    public FileVisitResult visitFileFailed(@NotNull Path file, @NotNull IOException exc) {
        FileVisitResult invoke;
        M.p(file, "file");
        M.p(exc, "exc");
        Mf.p<Path, IOException, FileVisitResult> pVar = this.f9277c;
        if (pVar != null && (invoke = pVar.invoke(file, exc)) != null) {
            return invoke;
        }
        FileVisitResult visitFileFailed = super.visitFileFailed(file, exc);
        M.o(visitFileFailed, "visitFileFailed(...)");
        return visitFileFailed;
    }
}
