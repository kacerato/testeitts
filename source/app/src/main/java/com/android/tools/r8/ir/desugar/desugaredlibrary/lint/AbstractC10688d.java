package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.ArchiveClassFileProvider;
import com.android.tools.r8.ArchiveProgramResourceProvider;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.ir.desugar.desugaredlibrary.lint.DesugaredMethodsListCommand;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Paths;

public abstract class AbstractC10688d {
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e7, code lost:
    
        return r0.build();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static DesugaredMethodsListCommand a(String[] strArr, C5094Ef0 c5094Ef0) {
        DesugaredMethodsListCommand.Builder builder = DesugaredMethodsListCommand.builder(c5094Ef0);
        int i10 = 0;
        while (true) {
            if (i10 >= strArr.length) {
                break;
            }
            String trim = strArr[i10].trim();
            if (trim.length() != 0) {
                if (trim.equals("--help")) {
                    builder.setHelp();
                } else if (trim.equals("--version")) {
                    builder.setVersion();
                } else if (trim.equals("--android-platform-build")) {
                    builder.setAndroidPlatformBuild();
                } else {
                    i10++;
                    if (i10 >= strArr.length) {
                        c5094Ef0.error(new StringDiagnostic("Missing value for arg " + trim));
                        break;
                    }
                    String trim2 = strArr[i10].trim();
                    if (trim.equals("--min-api")) {
                        builder.setMinApi(Integer.parseInt(trim2));
                    } else if (trim.equals("--desugared-lib")) {
                        builder.setDesugarLibrarySpecification(InterfaceC11677v0.a(Paths.get(trim2, new String[0])));
                    } else if (trim.equals("--desugared-lib-jar")) {
                        builder.addDesugarLibraryImplementation(ArchiveProgramResourceProvider.fromArchive(Paths.get(trim2, new String[0])));
                    } else if (trim.equals("--output")) {
                        builder.setOutputPath(Paths.get(trim2, new String[0]));
                    } else {
                        if (!trim.equals("--lib")) {
                            throw new C5417Jv0("Unsupported argument " + trim);
                        }
                        builder.addLibrary(new ArchiveClassFileProvider(Paths.get(trim2, new String[0])));
                    }
                }
            }
            i10++;
        }
    }
}
