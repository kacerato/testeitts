package org.openjdk.tools.sjavac.client;

import java.io.IOException;

public class PortFileInaccessibleException extends IOException {
    private static final long serialVersionUID = -4755261881545398973L;

    public PortFileInaccessibleException(Throwable th2) {
        super(th2);
    }
}
