package org.openjdk.tools.javac.platform;

public interface PlatformProvider {

    public static class PlatformNotSupported extends Exception {
        private static final long serialVersionUID = 1;
    }

    PlatformDescription getPlatform(String str, String str2) throws PlatformNotSupported;

    Iterable<String> getSupportedPlatformNames();
}
