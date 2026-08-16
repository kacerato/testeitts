package com.android.tools.r8;

import com.android.tools.r8.AssertionsConfiguration;
import com.android.tools.r8.BaseCompilerCommand;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5036Df0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;

public abstract class AbstractC10897m {

    public static final boolean f55538a = true;

    public static void a(Consumer consumer, String str, String str2, Origin origin, Consumer consumer2) {
        try {
            int parseInt = Integer.parseInt(str2);
            if (parseInt < 1) {
                consumer.accept(new StringDiagnostic("Invalid argument to " + str + ": " + str2, origin));
                return;
            }
            consumer2.accept(Integer.valueOf(parseInt));
        } catch (NumberFormatException unused) {
            consumer.accept(new StringDiagnostic("Invalid argument to " + str + ": " + str2, origin));
        }
    }

    public final AssertionsConfiguration b(EnumC10892l enumC10892l, MethodReference methodReference, String str, AssertionsConfiguration.Builder builder) {
        AssertionsConfiguration.Builder compileTimeEnable;
        int ordinal = enumC10892l.ordinal();
        if (ordinal == 0) {
            compileTimeEnable = builder.setCompileTimeEnable();
        } else if (ordinal == 1) {
            compileTimeEnable = builder.setCompileTimeDisable();
        } else if (ordinal == 2) {
            compileTimeEnable = builder.setPassthrough();
        } else if (ordinal == 3) {
            compileTimeEnable = builder.setAssertionHandler(methodReference);
        } else {
            throw new C5417Jv0();
        }
        return compileTimeEnable.setScopeClass(str).build();
    }

    public final AssertionsConfiguration a(EnumC10892l enumC10892l, MethodReference methodReference, AssertionsConfiguration.Builder builder) {
        AssertionsConfiguration.Builder compileTimeEnable;
        int ordinal = enumC10892l.ordinal();
        if (ordinal == 0) {
            compileTimeEnable = builder.setCompileTimeEnable();
        } else if (ordinal == 1) {
            compileTimeEnable = builder.setCompileTimeDisable();
        } else if (ordinal == 2) {
            compileTimeEnable = builder.setPassthrough();
        } else if (ordinal == 3) {
            compileTimeEnable = builder.setAssertionHandler(methodReference);
        } else {
            throw new C5417Jv0();
        }
        return compileTimeEnable.setScopeAll().build();
    }

    public final boolean b(BaseCompilerCommand.Builder builder, Origin origin, String str) {
        String str2;
        EnumC10892l enumC10892l;
        MethodReference methodReference;
        if (str.startsWith("--force-enable-assertions")) {
            enumC10892l = EnumC10892l.f55529b;
            str2 = str.substring(25);
        } else if (str.startsWith("--force-ea")) {
            enumC10892l = EnumC10892l.f55529b;
            str2 = str.substring(10);
        } else if (str.startsWith("--force-disable-assertions")) {
            enumC10892l = EnumC10892l.f55530c;
            str2 = str.substring(26);
        } else if (str.startsWith("--force-da")) {
            enumC10892l = EnumC10892l.f55530c;
            str2 = str.substring(10);
        } else if (str.startsWith("--force-passthrough-assertions")) {
            enumC10892l = EnumC10892l.f55531d;
            str2 = str.substring(30);
        } else if (str.startsWith("--force-pa")) {
            enumC10892l = EnumC10892l.f55531d;
            str2 = str.substring(10);
        } else if (str.startsWith("--force-assertions-handler")) {
            enumC10892l = EnumC10892l.f55532e;
            str2 = str.substring(26);
        } else if (str.startsWith("--force-ah")) {
            enumC10892l = EnumC10892l.f55532e;
            str2 = str.substring(10);
        } else {
            str2 = null;
            enumC10892l = null;
        }
        if (enumC10892l != EnumC10892l.f55532e) {
            methodReference = null;
        } else if (str2.length() != 0 && (str2.length() != 1 || str2.charAt(0) != ':')) {
            if (str2.charAt(0) != ':') {
                return false;
            }
            String substring = str2.substring(1);
            int indexOf = substring.indexOf(58);
            if (indexOf != 0) {
                String substring2 = indexOf > 0 ? substring.substring(0, indexOf) : substring;
                int lastIndexOf = substring2.lastIndexOf(46);
                if (substring2.length() >= 3 && lastIndexOf > 0 && lastIndexOf != substring2.length() - 1 && C4932Bl.E(substring2.substring(0, lastIndexOf))) {
                    methodReference = Reference.methodFromDescriptor(C4932Bl.H(substring2.substring(0, lastIndexOf)), substring2.substring(lastIndexOf + 1), "(Ljava/lang/Throwable;)V");
                    str2 = substring.substring(substring2.length());
                } else {
                    throw builder.fatalError(new StringDiagnostic("Invalid argument <handler method>: " + substring2, origin));
                }
            } else {
                throw builder.fatalError(new StringDiagnostic("Missing required argument <handler method>", origin));
            }
        } else {
            throw builder.fatalError(new StringDiagnostic("Missing required argument <handler method>", origin));
        }
        if (enumC10892l == null) {
            return false;
        }
        if (str2.length() == 0) {
            a(builder, enumC10892l, methodReference, (String) null);
            return true;
        }
        if (str2.length() == 1 && str2.charAt(0) == ':') {
            throw builder.fatalError(new StringDiagnostic("Missing optional argument", origin));
        }
        if (str2.charAt(0) != ':') {
            return false;
        }
        String substring3 = str2.substring(1);
        if (substring3.contains(";") || substring3.contains("[") || substring3.contains("/")) {
            builder.error(new StringDiagnostic("Illegal assertion scope: " + substring3, origin));
        }
        a(builder, enumC10892l, methodReference, str2.substring(1));
        return true;
    }

    public final AssertionsConfiguration a(EnumC10892l enumC10892l, MethodReference methodReference, String str, AssertionsConfiguration.Builder builder) {
        AssertionsConfiguration.Builder compileTimeEnable;
        int ordinal = enumC10892l.ordinal();
        if (ordinal == 0) {
            compileTimeEnable = builder.setCompileTimeEnable();
        } else if (ordinal == 1) {
            compileTimeEnable = builder.setCompileTimeDisable();
        } else if (ordinal == 2) {
            compileTimeEnable = builder.setPassthrough();
        } else if (ordinal == 3) {
            compileTimeEnable = builder.setAssertionHandler(methodReference);
        } else {
            throw new C5417Jv0();
        }
        return compileTimeEnable.setScopePackage(str.substring(0, str.length() - 3)).build();
    }

    public final void a(BaseCompilerCommand.Builder builder, final EnumC10892l enumC10892l, final MethodReference methodReference, final String str) {
        if (str == null) {
            builder.addAssertionsConfiguration(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return AbstractC10897m.this.a(enumC10892l, methodReference, (AssertionsConfiguration.Builder) obj);
                }
            });
            return;
        }
        if (!f55538a && str.length() <= 0) {
            throw new AssertionError();
        }
        if (str.endsWith("...")) {
            builder.addAssertionsConfiguration(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return AbstractC10897m.this.a(enumC10892l, methodReference, str, (AssertionsConfiguration.Builder) obj);
                }
            });
        } else {
            builder.addAssertionsConfiguration(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return AbstractC10897m.this.b(enumC10892l, methodReference, str, (AssertionsConfiguration.Builder) obj);
                }
            });
        }
    }

    public static DiagnosticsLevel a(Consumer consumer, String str, Origin origin) {
        if (str.equals("error")) {
            return DiagnosticsLevel.ERROR;
        }
        if (str.equals("warning")) {
            return DiagnosticsLevel.WARNING;
        }
        if (str.equals("info")) {
            return DiagnosticsLevel.INFO;
        }
        if (str.equals("none")) {
            return DiagnosticsLevel.NONE;
        }
        consumer.accept(new StringDiagnostic("Invalid diagnostics level '" + str + "'. Valid levels are 'error', 'warning', 'info' and 'none'.", origin));
        return null;
    }

    public static int a(Consumer consumer, C5094Ef0 c5094Ef0, String str, String[] strArr, int i10, Origin origin) {
        String str2;
        if (!str.startsWith("--map-diagnostics")) {
            return -1;
        }
        int i11 = i10 + 2;
        if (strArr.length <= i11) {
            consumer.accept(new StringDiagnostic("Missing argument(s) for " + str + ".", origin));
            return strArr.length - i10;
        }
        String substring = str.substring(17);
        if (substring.length() > 0) {
            if (substring.length() != 1 && substring.charAt(0) == ':') {
                str2 = substring.substring(1);
            } else {
                consumer.accept(new StringDiagnostic("Invalid diagnostics type specification " + str + ".", origin));
                return 0;
            }
        } else {
            str2 = "";
        }
        DiagnosticsLevel a10 = a(consumer, strArr[i10 + 1], origin);
        DiagnosticsLevel a11 = a(consumer, strArr[i11], origin);
        if (a10 == null || a11 == null) {
            return 2;
        }
        c5094Ef0.f39968b.add(new C5036Df0(a10, a11, str2));
        return 2;
    }

    public static int a(BaseCompilerCommand.Builder builder, String str, String[] strArr, int i10, Origin origin) {
        if (!str.equals("--dumpinputtofile") && !str.equals("--dumpinputtodirectory")) {
            return -1;
        }
        int i11 = i10 + 1;
        if (strArr.length <= i11) {
            builder.error(new StringDiagnostic("Missing argument(s) for " + str + ".", origin));
            return strArr.length - i10;
        }
        if (str.equals("--dumpinputtofile")) {
            builder.d(Paths.get(strArr[i11], new String[0]));
            return 1;
        }
        if (!f55538a && !str.equals("--dumpinputtodirectory")) {
            throw new AssertionError();
        }
        builder.c(Paths.get(strArr[i11], new String[0]));
        return 1;
    }

    public static void a(BaseCompilerCommand.Builder builder, Origin origin, String str) {
        Path path = Paths.get(str, new String[0]);
        if ((Files.exists(path.resolve("lib").resolve(JRTUtil.JRT_FS_JAR), new LinkOption[0]) || Files.exists(path.resolve("jre").resolve("lib").resolve("rt.jar"), new LinkOption[0])) ? true : Files.exists(path.resolve("lib").resolve("rt.jar"), new LinkOption[0])) {
            try {
                builder.addLibraryResourceProvider(JdkClassFileProvider.fromJdkHome(path));
                return;
            } catch (IOException e10) {
                builder.error(new ExceptionDiagnostic(e10, origin));
                return;
            }
        }
        builder.addLibraryFiles(path);
    }

    public static int b(final BaseCompilerCommand.Builder builder, String str, String[] strArr, int i10, Origin origin) {
        Objects.requireNonNull(builder);
        return a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BaseCompilerCommand.Builder.this.error((Diagnostic) obj);
            }
        }, builder.b(), str, strArr, i10, origin);
    }
}
