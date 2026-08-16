package com.android.tools.r8;

import com.android.tools.r8.DexFilePerClassFileConsumer;
import java.nio.file.Path;

public final class C10735j extends DexFilePerClassFileConsumer.ArchiveConsumer {
    public C10735j(Path path, boolean z10) {
        super(path, z10);
    }

    @Override
    public final boolean combineSyntheticClassesWithPrimaryClass() {
        return false;
    }
}
