package If;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import nf.InterfaceC14422l0;
import nf.T0;
import org.jetbrains.annotations.NotNull;

@T0(markerClass = {f.class})
@InterfaceC14422l0(version = "2.1")
public interface g {
    void a(@NotNull Mf.p<? super Path, ? super IOException, ? extends FileVisitResult> pVar);

    void b(@NotNull Mf.p<? super Path, ? super IOException, ? extends FileVisitResult> pVar);

    void c(@NotNull Mf.p<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> pVar);

    void d(@NotNull Mf.p<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> pVar);
}
