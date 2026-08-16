package com.eclipsesource.v8;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class PlatformDetector {

    public static class Arch {
        public static String getName() {
            String archProperty = System.getProperty("os.arch");
            String archName = PlatformDetector.normalizeArch(archProperty);
            if (archName.equals("unknown")) {
                throw new UnsatisfiedLinkError("Unsupported arch: " + archProperty);
            }
            return archName;
        }
    }

    public static class OS {
        public static String getName() {
            String osProperty = System.getProperty("os.name");
            String osName = PlatformDetector.normalizeOs(osProperty);
            String vendorProperty = System.getProperty("java.specification.vendor");
            String vendorName = PlatformDetector.normalize(vendorProperty);
            if (vendorName.contains("android") || osName.contains("android")) {
                return "android";
            }
            if (osName.equals("unknown")) {
                throw new UnsatisfiedLinkError("Unsupported platform/vendor: " + osProperty + " / " + vendorProperty);
            }
            return osName;
        }

        public static boolean isWindows() {
            return getName().equals(Platform.WINDOWS);
        }

        public static boolean isMac() {
            return getName().equals(Platform.MACOSX);
        }

        public static boolean isLinux() {
            return getName().equals(Platform.LINUX);
        }

        public static boolean isNativeClient() {
            return getName().equals(Platform.NATIVE_CLIENT);
        }

        public static boolean isAndroid() {
            return getName().equals("android");
        }

        public static String getLibFileExtension() {
            if (isWindows()) {
                return "dll";
            }
            if (isMac()) {
                return "dylib";
            }
            if (isLinux() || isAndroid() || isNativeClient()) {
                return "so";
            }
            throw new UnsatisfiedLinkError("Unsupported platform library-extension for: " + getName());
        }
    }

    public static class Vendor {
        private static final String[] LINUX_OS_RELEASE_FILES = {"/etc/os-release", "/usr/lib/os-release"};
        private static final String REDHAT_RELEASE_FILE = "/etc/redhat-release";
        private static final String LINUX_ID_PREFIX = "ID=";

        public static String getName() {
            if (OS.isWindows()) {
                return "microsoft";
            }
            if (OS.isMac()) {
                return "apple";
            }
            if (OS.isLinux()) {
                return getLinuxOsReleaseId();
            }
            if (OS.isAndroid()) {
                return "google";
            }
            throw new UnsatisfiedLinkError("Unsupported vendor: " + getName());
        }

        private static String getLinuxOsReleaseId() {
            for (String osReleaseFileName : LINUX_OS_RELEASE_FILES) {
                File file = new File(osReleaseFileName);
                if (file.exists()) {
                    return parseLinuxOsReleaseFile(file);
                }
            }
            File file2 = new File(REDHAT_RELEASE_FILE);
            if (file2.exists()) {
                return parseLinuxRedhatReleaseFile(file2);
            }
            throw new UnsatisfiedLinkError("Unsupported linux vendor: " + getName());
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x002f, code lost:
        
            r10 = com.eclipsesource.v8.PlatformDetector.normalizeOsReleaseValue(r0.substring(com.eclipsesource.v8.PlatformDetector.Vendor.LINUX_ID_PREFIX.length()));
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private static String parseLinuxOsReleaseFile(File file) {
            BufferedReader reader = null;
            try {
                reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
                String id2 = null;
                while (true) {
                    String line = reader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.startsWith(LINUX_ID_PREFIX)) {
                        break;
                    }
                }
                String str = id2;
                closeQuietly(reader);
                return str;
            } catch (IOException e10) {
                closeQuietly(reader);
                return null;
            } catch (Throwable th2) {
                closeQuietly(reader);
                throw th2;
            }
        }

        private static String parseLinuxRedhatReleaseFile(File file) {
            String id2;
            BufferedReader reader = null;
            try {
                reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
                String line = reader.readLine();
                if (line == null) {
                    closeQuietly(reader);
                    return null;
                }
                String line2 = line.toLowerCase(Locale.US);
                if (line2.contains("centos")) {
                    id2 = "centos";
                } else if (line2.contains("fedora")) {
                    id2 = "fedora";
                } else {
                    if (!line2.contains("red hat enterprise linux")) {
                        closeQuietly(reader);
                        return null;
                    }
                    id2 = "rhel";
                }
                String str = id2;
                closeQuietly(reader);
                return str;
            } catch (IOException e10) {
                closeQuietly(reader);
                return null;
            } catch (Throwable th2) {
                closeQuietly(reader);
                throw th2;
            }
        }

        private static void closeQuietly(Closeable obj) {
            if (obj != null) {
                try {
                    obj.close();
                } catch (IOException e10) {
                }
            }
        }
    }

    public static String normalizeOsReleaseValue(String value) {
        return value.trim().replace(JavadocConstants.ANCHOR_PREFIX_END, "");
    }

    public static String normalizeOs(String value) {
        String value2 = normalize(value);
        if (value2.startsWith("aix")) {
            return "aix";
        }
        if (value2.startsWith("hpux")) {
            return "hpux";
        }
        if (value2.startsWith("os400") && (value2.length() <= 5 || !Character.isDigit(value2.charAt(5)))) {
            return "os400";
        }
        if (value2.startsWith("android")) {
            return "android";
        }
        if (value2.startsWith(Platform.LINUX)) {
            return Platform.LINUX;
        }
        if (value2.startsWith(Platform.NATIVE_CLIENT)) {
            return Platform.NATIVE_CLIENT;
        }
        if (value2.startsWith(Platform.MACOSX) || value2.startsWith("osx")) {
            return Platform.MACOSX;
        }
        if (value2.startsWith("freebsd")) {
            return "freebsd";
        }
        if (value2.startsWith("openbsd")) {
            return "openbsd";
        }
        if (value2.startsWith("netbsd")) {
            return "netbsd";
        }
        if (value2.startsWith("solaris") || value2.startsWith("sunos")) {
            return "sunos";
        }
        if (value2.startsWith(Platform.WINDOWS)) {
            return Platform.WINDOWS;
        }
        return "unknown";
    }

    public static String normalizeArch(String value) {
        String value2 = normalize(value);
        if (value2.matches("^(x8664|amd64|ia32e|em64t|x64)$")) {
            return "x86_64";
        }
        if (value2.matches("^(x8632|x86|i[3-6]86|ia32|x32)$")) {
            return "x86_32";
        }
        if (value2.matches("^(ia64|itanium64)$")) {
            return "itanium_64";
        }
        if (value2.matches("^(sparc|sparc32)$")) {
            return "sparc_32";
        }
        if (value2.matches("^(sparcv9|sparc64)$")) {
            return "sparc_64";
        }
        if (value2.matches("^(arm|arm32)$") || value2.startsWith("armv7")) {
            return "arm_32";
        }
        if ("aarch64".equals(value2) || value2.startsWith("armv8")) {
            return "aarch_64";
        }
        if (value2.matches("^(ppc|ppc32)$")) {
            return "ppc_32";
        }
        if ("ppc64".equals(value2)) {
            return "ppc_64";
        }
        if ("ppc64le".equals(value2)) {
            return "ppcle_64";
        }
        if ("s390".equals(value2)) {
            return "s390_32";
        }
        if ("s390x".equals(value2)) {
            return "s390_64";
        }
        return "unknown";
    }

    public static String normalize(String value) {
        if (value == null) {
            return "";
        }
        return value.toLowerCase(Locale.US).replaceAll("[^a-z0-9]+", "");
    }
}
