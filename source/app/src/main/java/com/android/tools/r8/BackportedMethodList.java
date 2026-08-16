package com.android.tools.r8;

import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.InterfaceC8500mv;
import com.android.tools.r8.ir.desugar.desugaredlibrary.lint.DesugaredMethodsList;
import com.android.tools.r8.ir.desugar.desugaredlibrary.lint.DesugaredMethodsListCommand;
import com.android.tools.r8.origin.Origin;
import java.util.Iterator;

public class BackportedMethodList {

    static final String f35143a = C10656zq0.a("Usage: BackportedMethodList [options]", " Options are:", "  --output <file>          # Output result in <file>.", "  --min-api <number>       # Minimum Android API level for the application", "  --desugared-lib <file>   # Desugared library configuration (JSON from the", "                           # configuration)", "  --lib <file>             # The compilation SDK library (android.jar)", "  --android-platform-build # Compilation of platform code", "  --version                # Print the version of BackportedMethodList.", "  --help                   # Print this message.");

    public static void main(final String[] strArr) {
        AbstractC8333lv.a(new InterfaceC8500mv() {
            @Override
            public final void run() {
                BackportedMethodList.run(strArr);
            }
        });
    }

    public static void run(BackportedMethodListCommand backportedMethodListCommand) throws CompilationFailedException {
        if (backportedMethodListCommand.isPrintHelp()) {
            System.out.println(f35143a);
            return;
        }
        if (backportedMethodListCommand.isPrintVersion()) {
            System.out.println("BackportedMethodList " + Version.getVersionString());
            return;
        }
        DesugaredMethodsListCommand.Builder builder = DesugaredMethodsListCommand.builder(backportedMethodListCommand.b());
        Iterator<ClassFileResourceProvider> it = backportedMethodListCommand.a().g().iterator();
        while (it.hasNext()) {
            builder.addLibrary(it.next());
        }
        String a10 = backportedMethodListCommand.getDesugaredLibraryConfiguration().a();
        if (a10 != null) {
            builder.setDesugarLibrarySpecification(InterfaceC11677v0.a(a10, Origin.unknown()));
        }
        if (backportedMethodListCommand.isAndroidPlatformBuild()) {
            builder.setAndroidPlatformBuild();
        }
        DesugaredMethodsList.run(builder.setMinApi(backportedMethodListCommand.getMinApiLevel()).setOutputConsumer(backportedMethodListCommand.getBackportedMethodListConsumer()).build());
    }

    public static void run(String[] strArr) throws CompilationFailedException {
        run(BackportedMethodListCommand.parse(strArr).build());
    }
}
