package org.openjdk.tools.sjavac.server;

import org.openjdk.tools.javac.main.Main;

public interface Sjavac {
    Main.Result compile(String[] strArr);

    void shutdown();
}
