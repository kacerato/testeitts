package If;

import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@f
public final class c implements InterfaceC2642a {

    @NotNull
    public static final c f9262a = new c();

    @Override
    @NotNull
    public b a(@NotNull Path path, @NotNull Path target, boolean z10) {
        M.p(path, "<this>");
        M.p(target, "target");
        LinkOption[] a10 = j.f9279a.a(z10);
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(a10, a10.length);
        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length)) && Files.isDirectory(target, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
            P0 p02 = P0.f98194a;
        } else {
            CopyOption[] copyOptionArr = (CopyOption[]) Arrays.copyOf(a10, a10.length);
            M.o(Files.copy(path, target, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length)), "copy(...)");
        }
        return b.CONTINUE;
    }
}
