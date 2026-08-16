package If;

import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14981m;

@t0({"SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/DirectoryEntriesReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1#2:181\n*E\n"})
public final class d extends SimpleFileVisitor<Path> {

    public final boolean f9263a;

    @Nullable
    public l f9264b;

    @NotNull
    public C14981m<l> f9265c = new C14981m<>();

    public d(boolean z10) {
        this.f9263a = z10;
    }

    public final boolean a() {
        return this.f9263a;
    }

    @Override
    @NotNull
    public FileVisitResult preVisitDirectory(@NotNull Path dir, @NotNull BasicFileAttributes attrs) {
        M.p(dir, "dir");
        M.p(attrs, "attrs");
        this.f9265c.add(new l(dir, attrs.fileKey(), this.f9264b));
        FileVisitResult preVisitDirectory = super.preVisitDirectory(dir, attrs);
        M.o(preVisitDirectory, "preVisitDirectory(...)");
        return preVisitDirectory;
    }

    @NotNull
    public final List<l> c(@NotNull l directoryNode) {
        M.p(directoryNode, "directoryNode");
        this.f9264b = directoryNode;
        Files.walkFileTree(directoryNode.d(), j.f9279a.b(this.f9263a), 1, this);
        this.f9265c.removeFirst();
        C14981m<l> c14981m = this.f9265c;
        this.f9265c = new C14981m<>();
        return c14981m;
    }

    @Override
    @NotNull
    public FileVisitResult visitFile(@NotNull Path file, @NotNull BasicFileAttributes attrs) {
        M.p(file, "file");
        M.p(attrs, "attrs");
        this.f9265c.add(new l(file, null, this.f9264b));
        FileVisitResult visitFile = super.visitFile(file, attrs);
        M.o(visitFile, "visitFile(...)");
        return visitFile;
    }
}
