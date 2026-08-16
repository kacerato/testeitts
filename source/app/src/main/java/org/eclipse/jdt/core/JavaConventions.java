package org.eclipse.jdt.core;

import java.util.StringTokenizer;
import java.util.regex.Pattern;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Messages;

public final class JavaConventions {
    private static final char DOT = '.';
    private static final Pattern DOT_DOT = Pattern.compile("(\\.)(\\1)+");
    private static final Pattern PREFIX_JAVA = Pattern.compile("java$");
    private static final Scanner SCANNER = new Scanner(false, true, false, ClassFileConstants.JDK1_3, null, null, true);

    private JavaConventions() {
    }

    public static boolean isOverlappingRoots(IPath iPath, IPath iPath2) {
        if (iPath == null || iPath2 == null) {
            return false;
        }
        return iPath.isPrefixOf(iPath2) || iPath2.isPrefixOf(iPath);
    }

    private static synchronized char[] scannedIdentifier(String str, String str2, String str3) {
        synchronized (JavaConventions.class) {
            if (str == null) {
                return null;
            }
            Scanner scanner = SCANNER;
            long j10 = ClassFileConstants.JDK1_3;
            scanner.sourceLevel = str2 == null ? 3080192L : CompilerOptions.versionToJdkLevel(str2);
            if (str3 != null) {
                j10 = CompilerOptions.versionToJdkLevel(str3);
            }
            scanner.complianceLevel = j10;
            try {
                scanner.setSource(str.toCharArray());
                if (scanner.scanIdentifier() != 22) {
                    return null;
                }
                if (scanner.currentPosition != scanner.eofPosition) {
                    return null;
                }
                try {
                    return scanner.getCurrentIdentifierSource();
                } catch (ArrayIndexOutOfBoundsException unused) {
                    return null;
                }
            } catch (InvalidInputException unused2) {
                return null;
            }
        }
    }

    public static IStatus validateClassFileName(String str) {
        return validateClassFileName(str, "1.3", "1.3");
    }

    public static IJavaModelStatus validateClasspath(IJavaProject iJavaProject, IClasspathEntry[] iClasspathEntryArr, IPath iPath) {
        return ClasspathEntry.validateClasspath(iJavaProject, iClasspathEntryArr, iPath);
    }

    public static IJavaModelStatus validateClasspathEntry(IJavaProject iJavaProject, IClasspathEntry iClasspathEntry, boolean z10) {
        return ClasspathEntry.validateClasspathEntry(iJavaProject, iClasspathEntry, z10, false);
    }

    public static IStatus validateCompilationUnitName(String str) {
        return validateCompilationUnitName(str, "1.3", "1.3");
    }

    public static IStatus validateFieldName(String str) {
        return validateIdentifier(str, "1.3", "1.3");
    }

    public static IStatus validateIdentifier(String str) {
        return validateIdentifier(str, "1.3", "1.3");
    }

    public static IStatus validateImportDeclaration(String str) {
        return validateImportDeclaration(str, "1.3", "1.3");
    }

    public static IStatus validateJavaTypeName(String str) {
        return validateJavaTypeName(str, "1.3", "1.3");
    }

    public static IStatus validateMethodName(String str) {
        return validateMethodName(str, "1.3", "1.3");
    }

    public static IStatus validateModuleName(String str, String str2, String str3) {
        if (str == null) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_module_nullName, (Throwable) null);
        }
        int length = str.length();
        if (length == 0) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_module_emptyName, (Throwable) null);
        }
        if (str.charAt(0) != '.') {
            boolean z10 = true;
            if (str.charAt(length - 1) != '.') {
                if (CharOperation.isWhitespace(str.charAt(0)) || CharOperation.isWhitespace(str.charAt(str.length() - 1))) {
                    return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_module_nameWithBlanks, (Throwable) null);
                }
                if (DOT_DOT.matcher(str).find()) {
                    return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_module_consecutiveDotsName, (Throwable) null);
                }
                IWorkspace workspace = ResourcesPlugin.getWorkspace();
                StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
                Status status = null;
                while (stringTokenizer.hasMoreTokens()) {
                    String trim = stringTokenizer.nextToken().trim();
                    char[] scannedIdentifier = scannedIdentifier(trim, str2, str3);
                    if (scannedIdentifier == null) {
                        return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.bind(Messages.convention_illegalIdentifier, trim), (Throwable) null);
                    }
                    if (z10 && PREFIX_JAVA.matcher(trim).find()) {
                        status = new Status(2, JavaCore.PLUGIN_ID, -1, Messages.bind(Messages.convention_module_javaName), (Throwable) null);
                    }
                    IStatus validateName = workspace.validateName(new String(scannedIdentifier), 2);
                    if (!validateName.isOK()) {
                        return validateName;
                    }
                    if (z10 && scannedIdentifier.length > 0 && ScannerHelper.isUpperCase(scannedIdentifier[0]) && status == null) {
                        status = new Status(2, JavaCore.PLUGIN_ID, -1, Messages.convention_module_uppercaseName, (Throwable) null);
                    }
                    z10 = false;
                }
                return status != null ? status : JavaModelStatus.VERIFIED_OK;
            }
        }
        return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_module_dotName, (Throwable) null);
    }

    public static IStatus validatePackageName(String str) {
        return validatePackageName(str, "1.3", "1.3");
    }

    public static IStatus validateTypeVariableName(String str) {
        return validateIdentifier(str, "1.3", "1.3");
    }

    public static IStatus validateClassFileName(String str, String str2, String str3) {
        if (str == null) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_classFile_nullName, (Throwable) null);
        }
        if (!Util.isClassFileName(str)) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_classFile_notClassFileName, (Throwable) null);
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_classFile_notClassFileName, (Throwable) null);
        }
        String substring = str.substring(0, lastIndexOf);
        if (!CharOperation.equals(substring.toCharArray(), TypeConstants.PACKAGE_INFO_NAME) && !CharOperation.equals(substring.toCharArray(), TypeConstants.MODULE_INFO_NAME)) {
            IStatus validateIdentifier = validateIdentifier(substring, str2, str3);
            if (!validateIdentifier.isOK()) {
                return validateIdentifier;
            }
        }
        IStatus validateName = ResourcesPlugin.getWorkspace().validateName(str, 1);
        return !validateName.isOK() ? validateName : JavaModelStatus.VERIFIED_OK;
    }

    public static IStatus validateCompilationUnitName(String str, String str2, String str3) {
        if (str == null) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_unit_nullName, (Throwable) null);
        }
        if (!org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(str)) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_unit_notJavaName, (Throwable) null);
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_unit_notJavaName, (Throwable) null);
        }
        String substring = str.substring(0, lastIndexOf);
        if (!CharOperation.equals(substring.toCharArray(), TypeConstants.PACKAGE_INFO_NAME) && !CharOperation.equals(substring.toCharArray(), TypeConstants.MODULE_INFO_NAME)) {
            IStatus validateIdentifier = validateIdentifier(substring, str2, str3);
            if (!validateIdentifier.isOK()) {
                return validateIdentifier;
            }
        }
        IStatus validateName = ResourcesPlugin.getWorkspace().validateName(str, 1);
        return !validateName.isOK() ? validateName : JavaModelStatus.VERIFIED_OK;
    }

    public static IStatus validateFieldName(String str, String str2, String str3) {
        return validateIdentifier(str, str2, str3);
    }

    public static IStatus validateIdentifier(String str, String str2, String str3) {
        if (scannedIdentifier(str, str2, str3) != null) {
            return JavaModelStatus.VERIFIED_OK;
        }
        return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.bind(Messages.convention_illegalIdentifier, str), (Throwable) null);
    }

    public static IStatus validateImportDeclaration(String str, String str2, String str3) {
        if (str != null && str.length() != 0) {
            if (str.charAt(str.length() - 1) == '*') {
                if (str.charAt(str.length() - 2) == '.') {
                    return validatePackageName(str.substring(0, str.length() - 2), str2, str3);
                }
                return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_import_unqualifiedImport, (Throwable) null);
            }
            return validatePackageName(str, str2, str3);
        }
        return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_import_nullImport, (Throwable) null);
    }

    public static IStatus validateJavaTypeName(String str, String str2, String str3) {
        char[] scannedIdentifier;
        if (str == null) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_type_nullName, (Throwable) null);
        }
        if (!str.equals(str.trim())) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_type_nameWithBlanks, (Throwable) null);
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            scannedIdentifier = scannedIdentifier(str, str2, str3);
        } else {
            IStatus validatePackageName = validatePackageName(str.substring(0, lastIndexOf).trim(), str2, str3);
            if (!validatePackageName.isOK()) {
                return validatePackageName;
            }
            scannedIdentifier = scannedIdentifier(str.substring(lastIndexOf + 1).trim(), str2, str3);
        }
        if (scannedIdentifier != null) {
            IStatus validateName = ResourcesPlugin.getWorkspace().validateName(new String(scannedIdentifier), 1);
            if (!validateName.isOK()) {
                return validateName;
            }
            if (CharOperation.contains('$', scannedIdentifier)) {
                return new Status(2, JavaCore.PLUGIN_ID, -1, Messages.convention_type_dollarName, (Throwable) null);
            }
            if (scannedIdentifier.length > 0 && ScannerHelper.isLowerCase(scannedIdentifier[0])) {
                return new Status(2, JavaCore.PLUGIN_ID, -1, Messages.convention_type_lowercaseName, (Throwable) null);
            }
            return JavaModelStatus.VERIFIED_OK;
        }
        return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.bind(Messages.convention_type_invalidName, str), (Throwable) null);
    }

    public static IStatus validateMethodName(String str, String str2, String str3) {
        return validateIdentifier(str, str2, str3);
    }

    public static IStatus validatePackageName(String str, String str2, String str3) {
        if (str == null) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_package_nullName, (Throwable) null);
        }
        int length = str.length();
        if (length == 0) {
            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_package_emptyName, (Throwable) null);
        }
        if (str.charAt(0) != '.') {
            boolean z10 = true;
            if (str.charAt(length - 1) != '.') {
                if (!CharOperation.isWhitespace(str.charAt(0)) && !CharOperation.isWhitespace(str.charAt(str.length() - 1))) {
                    if (DOT_DOT.matcher(str).find()) {
                        return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_package_consecutiveDotsName, (Throwable) null);
                    }
                    IWorkspace workspace = ResourcesPlugin.getWorkspace();
                    StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
                    Status status = null;
                    while (stringTokenizer.hasMoreTokens()) {
                        String trim = stringTokenizer.nextToken().trim();
                        char[] scannedIdentifier = scannedIdentifier(trim, str2, str3);
                        if (scannedIdentifier == null) {
                            return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.bind(Messages.convention_illegalIdentifier, trim), (Throwable) null);
                        }
                        IStatus validateName = workspace.validateName(new String(scannedIdentifier), 2);
                        if (!validateName.isOK()) {
                            return validateName;
                        }
                        if (z10 && scannedIdentifier.length > 0 && ScannerHelper.isUpperCase(scannedIdentifier[0]) && status == null) {
                            status = new Status(2, JavaCore.PLUGIN_ID, -1, Messages.convention_package_uppercaseName, (Throwable) null);
                        }
                        z10 = false;
                    }
                    return status != null ? status : JavaModelStatus.VERIFIED_OK;
                }
                return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_package_nameWithBlanks, (Throwable) null);
            }
        }
        return new Status(4, JavaCore.PLUGIN_ID, -1, Messages.convention_package_dotName, (Throwable) null);
    }

    public static IStatus validateTypeVariableName(String str, String str2, String str3) {
        return validateIdentifier(str, str2, str3);
    }
}
