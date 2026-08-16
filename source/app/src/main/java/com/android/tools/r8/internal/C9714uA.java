package com.android.tools.r8.internal;

import com.sun.management.HotSpotDiagnosticMXBean;
import java.io.IOException;
import java.lang.management.ManagementFactory;
import java.nio.file.Path;

public class C9714uA {

    public static volatile HotSpotDiagnosticMXBean f52815a;

    public static void a(Path path, boolean z10) throws IOException {
        if (f52815a == null) {
            synchronized (C9714uA.class) {
                try {
                    if (f52815a == null) {
                        f52815a = (HotSpotDiagnosticMXBean) ManagementFactory.newPlatformMXBeanProxy(ManagementFactory.getPlatformMBeanServer(), "com.sun.management:type=HotSpotDiagnostic", HotSpotDiagnosticMXBean.class);
                    }
                } finally {
                }
            }
        }
        f52815a.dumpHeap(path.toString(), z10);
    }
}
