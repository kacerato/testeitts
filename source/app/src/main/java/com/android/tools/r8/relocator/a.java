package com.android.tools.r8.relocator;

import com.android.tools.r8.CompilationFailedException;
import com.android.tools.r8.Version;
import com.android.tools.r8.relocator.RelocatorCommand;

public class a {
    public static void a(String[] strArr) throws CompilationFailedException {
        RelocatorCommand build = RelocatorCommand.Builder.parse(strArr, com.android.tools.r8.origin.a.f56150f).build();
        if (build.isPrintHelp()) {
            System.out.println(RelocatorCommand.f56213j);
            return;
        }
        if (!build.isPrintVersion()) {
            Relocator.run(build);
            return;
        }
        System.out.println("Relocator " + Version.getVersionString());
    }
}
