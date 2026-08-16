package com.android.tools.r8;

import com.android.tools.r8.DexFilePerClassFileConsumer;
import java.nio.file.Path;

public final class C10740k extends DexFilePerClassFileConsumer.DirectoryConsumer {
    public C10740k(Path path, boolean z10) {
        super(path, z10);
    }

    @Override
    public final boolean combineSyntheticClassesWithPrimaryClass() {
        return false;
    }
}
