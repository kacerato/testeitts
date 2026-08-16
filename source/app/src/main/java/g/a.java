package G;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

public interface a {

    public interface InterfaceC0134a {

        public static final int f7214a = 262144000;

        public static final String f7215b = "image_manager_disk_cache";

        @Nullable
        a build();
    }

    public interface b {
        boolean a(@NonNull File file);
    }

    void a(C.e eVar);

    @Nullable
    File b(C.e eVar);

    void c(C.e eVar, b bVar);

    void clear();
}
