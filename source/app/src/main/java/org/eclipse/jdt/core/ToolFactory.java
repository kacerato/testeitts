package org.eclipse.jdt.core;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jdt.core.compiler.IScanner;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.core.util.ClassFileBytesDisassembler;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IClassFileDisassembler;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.util.ClassFileReader;
import org.eclipse.jdt.internal.core.util.Disassembler;
import org.eclipse.jdt.internal.core.util.PublicScanner;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatter;
import org.eclipse.jdt.internal.formatter.old.CodeFormatter;

public class ToolFactory {
    public static final int M_FORMAT_NEW = 0;
    public static final int M_FORMAT_EXISTING = 1;

    public class C1DeprecatedDisassembler extends Disassembler implements IClassFileDisassembler {
    }

    public static ICodeFormatter createCodeFormatter() {
        Object createExecutableExtension;
        if (JavaCore.getPlugin() == null) {
            return null;
        }
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(JavaCore.PLUGIN_ID, JavaModelManager.FORMATTER_EXTPOINT_ID);
        if (extensionPoint != null) {
            for (IExtension iExtension : extensionPoint.getExtensions()) {
                for (IConfigurationElement iConfigurationElement : iExtension.getConfigurationElements()) {
                    try {
                        createExecutableExtension = iConfigurationElement.createExecutableExtension("class");
                    } catch (CoreException unused) {
                    }
                    if (createExecutableExtension instanceof ICodeFormatter) {
                        return (ICodeFormatter) createExecutableExtension;
                    }
                    continue;
                }
            }
        }
        return createDefaultCodeFormatter(null);
    }

    public static ClassFileBytesDisassembler createDefaultClassFileBytesDisassembler() {
        return new Disassembler();
    }

    public static IClassFileDisassembler createDefaultClassFileDisassembler() {
        return new C1DeprecatedDisassembler();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static IClassFileReader createDefaultClassFileReader(IClassFile iClassFile, int i10) {
        InputStream inputStream;
        ZipFile zipFile;
        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) iClassFile.getAncestor(3);
        if (iPackageFragmentRoot != null) {
            try {
                if (iPackageFragmentRoot instanceof JarPackageFragmentRoot) {
                    try {
                        zipFile = ((JarPackageFragmentRoot) iPackageFragmentRoot).getJar();
                        try {
                            String name = zipFile.getName();
                            JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                            return createDefaultClassFileReader(name, Util.concatWith(((PackageFragment) iClassFile.getParent()).names, iClassFile.getElementName(), '/'), i10);
                        } catch (Throwable th2) {
                            th = th2;
                            JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        zipFile = null;
                    }
                } else {
                    try {
                        inputStream = ((JavaElement) iClassFile).resource().getContents();
                        try {
                            IClassFileReader createDefaultClassFileReader = createDefaultClassFileReader(inputStream, i10);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused) {
                                }
                            }
                            return createDefaultClassFileReader;
                        } catch (Throwable th4) {
                            th = th4;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        inputStream = null;
                    }
                }
            } catch (CoreException unused3) {
            }
        }
        return null;
    }

    public static ICodeFormatter createDefaultCodeFormatter(Map map) {
        if (map == null) {
            map = JavaCore.getOptions();
        }
        return new CodeFormatter(map);
    }

    public static IScanner createScanner(boolean z10, boolean z11, boolean z12, boolean z13) {
        long versionToJdkLevel = CompilerOptions.versionToJdkLevel(JavaCore.getOption("org.eclipse.jdt.core.compiler.compliance"));
        long j10 = ClassFileConstants.JDK1_4;
        long j11 = versionToJdkLevel == 0 ? 3145728L : versionToJdkLevel;
        if (!z12) {
            j10 = ClassFileConstants.JDK1_3;
        }
        PublicScanner publicScanner = new PublicScanner(z10, z11, false, j10, j11, null, null, true);
        publicScanner.recordLineSeparator = z13;
        return publicScanner;
    }

    public static IScanner createScanner(boolean z10, boolean z11, boolean z12, String str) {
        long versionToJdkLevel = CompilerOptions.versionToJdkLevel(JavaCore.getOption("org.eclipse.jdt.core.compiler.compliance"));
        if (versionToJdkLevel == 0) {
            versionToJdkLevel = ClassFileConstants.JDK1_4;
        }
        long j10 = versionToJdkLevel;
        long versionToJdkLevel2 = CompilerOptions.versionToJdkLevel(str);
        if (versionToJdkLevel2 == 0) {
            versionToJdkLevel2 = ClassFileConstants.JDK1_3;
        }
        PublicScanner publicScanner = new PublicScanner(z10, z11, false, versionToJdkLevel2, j10, null, null, true);
        publicScanner.recordLineSeparator = z12;
        return publicScanner;
    }

    public static IScanner createScanner(boolean z10, boolean z11, boolean z12, String str, String str2) {
        long versionToJdkLevel = CompilerOptions.versionToJdkLevel(str);
        if (versionToJdkLevel == 0) {
            versionToJdkLevel = ClassFileConstants.JDK1_3;
        }
        long j10 = versionToJdkLevel;
        long versionToJdkLevel2 = CompilerOptions.versionToJdkLevel(str2);
        if (versionToJdkLevel2 == 0) {
            versionToJdkLevel2 = ClassFileConstants.JDK1_4;
        }
        PublicScanner publicScanner = new PublicScanner(z10, z11, false, j10, versionToJdkLevel2, null, null, true);
        publicScanner.recordLineSeparator = z12;
        return publicScanner;
    }

    public static org.eclipse.jdt.core.formatter.CodeFormatter createCodeFormatter(Map map) {
        return createCodeFormatter(map, M_FORMAT_NEW);
    }

    public static org.eclipse.jdt.core.formatter.CodeFormatter createCodeFormatter(Map map, int i10) {
        if (map == null) {
            map = JavaCore.getOptions();
        }
        HashMap hashMap = new HashMap(map);
        if (i10 == M_FORMAT_NEW) {
            hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_LINE_COMMENT_STARTING_ON_FIRST_COLUMN, "true");
            hashMap.put(DefaultCodeFormatterConstants.FORMATTER_NEVER_INDENT_BLOCK_COMMENTS_ON_FIRST_COLUMN, "false");
            hashMap.put(DefaultCodeFormatterConstants.FORMATTER_NEVER_INDENT_LINE_COMMENTS_ON_FIRST_COLUMN, "false");
        }
        String str = (String) map.get(JavaCore.JAVA_FORMATTER);
        if (str != null) {
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(JavaCore.PLUGIN_ID, JavaCore.JAVA_FORMATTER_EXTENSION_POINT_ID);
            if (extensionPoint != null) {
                for (IExtension iExtension : extensionPoint.getExtensions()) {
                    IConfigurationElement[] configurationElements = iExtension.getConfigurationElements();
                    for (int i11 = 0; i11 < configurationElements.length; i11++) {
                        String attribute = configurationElements[i11].getAttribute("id");
                        if (attribute != null && attribute.equals(str)) {
                            try {
                                Object createExecutableExtension = configurationElements[i11].createExecutableExtension("class");
                                if (createExecutableExtension instanceof org.eclipse.jdt.core.formatter.CodeFormatter) {
                                    org.eclipse.jdt.core.formatter.CodeFormatter codeFormatter = (org.eclipse.jdt.core.formatter.CodeFormatter) createExecutableExtension;
                                    codeFormatter.setOptions(hashMap);
                                    return codeFormatter;
                                }
                            } catch (CoreException e10) {
                                Util.log(e10.getStatus());
                            }
                        }
                    }
                }
            }
            Util.log(2, "Unable to instantiate formatter extension '" + str + "', returning built-in formatter.");
        }
        return new DefaultCodeFormatter(hashMap);
    }

    public static IClassFileReader createDefaultClassFileReader(InputStream inputStream, int i10) {
        try {
            return new ClassFileReader(org.eclipse.jdt.internal.compiler.util.Util.getInputStreamAsByteArray(inputStream, -1), i10);
        } catch (IOException | ClassFormatException unused) {
            return null;
        }
    }

    public static IClassFileReader createDefaultClassFileReader(String str, int i10) {
        try {
            return new ClassFileReader(org.eclipse.jdt.internal.compiler.util.Util.getFileByteContent(new File(str)), i10);
        } catch (IOException | ClassFormatException unused) {
            return null;
        }
    }

    public static IClassFileReader createDefaultClassFileReader(String str, String str2, int i10) {
        ZipFile zipFile;
        ZipFile zipFile2 = null;
        try {
            if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                System.out.println("(" + ((Object) Thread.currentThread()) + ") [ToolFactory.createDefaultClassFileReader()] Creating ZipFile on " + str);
            }
            zipFile = new ZipFile(str);
        } catch (IOException unused) {
            zipFile = null;
        } catch (ClassFormatException unused2) {
            zipFile = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ZipEntry entry = zipFile.getEntry(str2);
            if (entry == null) {
                try {
                    zipFile.close();
                } catch (IOException unused3) {
                }
                return null;
            }
            if (!str2.toLowerCase().endsWith(".class")) {
                try {
                    zipFile.close();
                } catch (IOException unused4) {
                }
                return null;
            }
            ClassFileReader classFileReader = new ClassFileReader(org.eclipse.jdt.internal.compiler.util.Util.getZipEntryByteContent(entry, zipFile), i10);
            try {
                zipFile.close();
            } catch (IOException unused5) {
            }
            return classFileReader;
        } catch (IOException unused6) {
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (IOException unused7) {
                }
            }
            return null;
        } catch (ClassFormatException unused8) {
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (IOException unused9) {
                }
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            zipFile2 = zipFile;
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                } catch (IOException unused10) {
                }
            }
            throw th;
        }
    }
}
