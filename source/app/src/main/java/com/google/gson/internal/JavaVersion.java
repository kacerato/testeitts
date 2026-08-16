package com.google.gson.internal;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public final class JavaVersion {
    private static final int majorJavaVersion = determineMajorJavaVersion();

    private static int determineMajorJavaVersion() {
        String javaVersion = System.getProperty("java.version");
        return getMajorJavaVersion(javaVersion);
    }

    static int getMajorJavaVersion(String javaVersion) {
        int version = parseDotted(javaVersion);
        if (version == -1) {
            version = extractBeginningInt(javaVersion);
        }
        if (version == -1) {
            return 6;
        }
        return version;
    }

    private static int parseDotted(String javaVersion) {
        try {
            String[] parts = javaVersion.split("[._]");
            int firstVer = Integer.parseInt(parts[0]);
            if (firstVer == 1 && parts.length > 1) {
                return Integer.parseInt(parts[1]);
            }
            return firstVer;
        } catch (NumberFormatException e10) {
            return -1;
        }
    }

    private static int extractBeginningInt(String javaVersion) {
        try {
            StringBuilder num = new StringBuilder();
            for (int i10 = 0; i10 < javaVersion.length(); i10++) {
                char c10 = javaVersion.charAt(i10);
                if (!Character.isDigit(c10)) {
                    break;
                }
                num.append(c10);
            }
            return Integer.parseInt(num.toString());
        } catch (NumberFormatException e10) {
            return -1;
        }
    }

    public static int getMajorJavaVersion() {
        return majorJavaVersion;
    }

    public static boolean isJava9OrLater() {
        return majorJavaVersion >= 9;
    }

    private JavaVersion() {
    }
}
