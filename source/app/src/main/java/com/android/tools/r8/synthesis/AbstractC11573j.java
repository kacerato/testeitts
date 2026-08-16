package com.android.tools.r8.synthesis;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.DexFilePerClassFileConsumer;
import com.android.tools.r8.DexIndexedConsumer;
import com.android.tools.r8.GlobalSyntheticsConsumer;
import com.android.tools.r8.ProgramConsumer;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C6047Us;
import com.android.tools.r8.internal.C7692i3;
import com.android.tools.r8.internal.InterfaceC7365g50;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;

public abstract class AbstractC11573j {

    public static final boolean f58265a = true;

    public static GlobalSyntheticsConsumer a(boolean z10, Path path, GlobalSyntheticsConsumer globalSyntheticsConsumer, ProgramConsumer programConsumer) {
        if (!f58265a && path != null && globalSyntheticsConsumer != null) {
            throw new AssertionError();
        }
        if (!z10) {
            return null;
        }
        if (globalSyntheticsConsumer != null) {
            return globalSyntheticsConsumer;
        }
        if (path == null) {
            return null;
        }
        InterfaceC7365g50 c6047Us = Files.isDirectory(path, new LinkOption[0]) ? new C6047Us(path) : new C7692i3(path);
        c6047Us.open();
        if (programConsumer instanceof DexIndexedConsumer) {
            return new C11564g(c6047Us);
        }
        if (programConsumer instanceof DexFilePerClassFileConsumer) {
            return new C11567h(c6047Us);
        }
        if (programConsumer instanceof ClassFileConsumer) {
            return new C11570i(c6047Us);
        }
        throw new C5417Jv0("Unexpected program consumer type");
    }
}
