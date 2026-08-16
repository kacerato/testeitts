package org.eclipse.jdt.internal.core.nd.java.model;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.JavaCore;

class Package {
    public static String PLUGIN_ID = "org.eclipse.jdt.core";

    public static IStatus createStatus(String str, Throwable th2) {
        return new Status(4, PLUGIN_ID, str, th2);
    }

    public static void log(Throwable th2) {
        String message = th2.getMessage();
        if (message == null) {
            log("Error", th2);
            return;
        }
        log("Error: " + message, th2);
    }

    public static void logInfo(String str) {
        log((IStatus) new Status(1, PLUGIN_ID, str));
    }

    public static IStatus createStatus(String str) {
        return new Status(4, PLUGIN_ID, str);
    }

    public static void log(String str, Throwable th2) {
        log(createStatus(str, th2));
    }

    public static void log(IStatus iStatus) {
        JavaCore.getPlugin().getLog().log(iStatus);
    }
}
