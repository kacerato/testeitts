package org.eclipse.jdt.internal.compiler.env;

import java.io.File;
import java.io.IOException;
import java.util.jar.JarFile;
import java.util.jar.Manifest;

public class AutomaticModuleNaming {
    private static final String AUTOMATIC_MODULE_NAME = "Automatic-Module-Name";

    public static char[] determineAutomaticModuleName(String str) {
        String value;
        Throwable th2 = null;
        try {
            JarFile jarFile = new JarFile(str);
            try {
                Manifest manifest = jarFile.getManifest();
                if (manifest != null && (value = manifest.getMainAttributes().getValue("Automatic-Module-Name")) != null) {
                    char[] charArray = value.toCharArray();
                    jarFile.close();
                    return charArray;
                }
                jarFile.close();
                return determineAutomaticModuleNameFromFileName(str, true, true);
            } catch (Throwable th3) {
                jarFile.close();
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null == th4) {
                throw null;
            }
            try {
                th2.addSuppressed(th4);
                throw null;
            } catch (IOException unused) {
            }
        }
    }

    public static char[] determineAutomaticModuleNameFromFileName(String str, boolean z10, boolean z11) {
        int i10;
        int length = str.length();
        int lastIndexOf = z10 ? str.lastIndexOf(File.separatorChar) + 1 : 0;
        if (z11 && (str.endsWith(".jar") || str.endsWith(".JAR"))) {
            length -= 4;
        }
        loop0: for (int i11 = lastIndexOf; i11 < length - 1; i11++) {
            if (str.charAt(i11) == '-') {
                int i12 = i11 + 1;
                if (str.charAt(i12) >= '0' && str.charAt(i12) <= '9') {
                    for (int i13 = i11 + 2; i13 < length; i13++) {
                        char charAt = str.charAt(i13);
                        if (charAt == '.') {
                            break loop0;
                        }
                        if (charAt >= '0' && charAt <= '9') {
                        }
                    }
                    i10 = i11;
                    break loop0;
                }
            }
        }
        i10 = length;
        StringBuilder sb2 = new StringBuilder(i10 - lastIndexOf);
        boolean z12 = false;
        while (lastIndexOf < i10) {
            char charAt2 = str.charAt(lastIndexOf);
            if ((charAt2 >= 'A' && charAt2 <= 'Z') || ((charAt2 >= 'a' && charAt2 <= 'z') || (charAt2 >= '0' && charAt2 <= '9'))) {
                if (z12) {
                    sb2.append('.');
                    z12 = false;
                }
                sb2.append(charAt2);
            } else if (sb2.length() > 0) {
                z12 = true;
            }
            lastIndexOf++;
        }
        return sb2.toString().toCharArray();
    }

    public static char[] determineAutomaticModuleNameFromManifest(Manifest manifest) {
        String value;
        if (manifest == null || (value = manifest.getMainAttributes().getValue("Automatic-Module-Name")) == null) {
            return null;
        }
        return value.toCharArray();
    }

    public static char[] determineAutomaticModuleName(String str, boolean z10, Manifest manifest) {
        String value;
        if (manifest != null && (value = manifest.getMainAttributes().getValue("Automatic-Module-Name")) != null) {
            return value.toCharArray();
        }
        return determineAutomaticModuleNameFromFileName(str, true, z10);
    }
}
