package org.eclipse.jdt.internal.core.nd.db;

import java.io.IOException;
import org.eclipse.core.runtime.Status;

public class DBStatus extends Status {
    public DBStatus(IOException iOException) {
        super(4, Package.PLUGIN_ID, 0, "IOException", iOException);
    }

    public DBStatus(String str) {
        super(4, Package.PLUGIN_ID, 0, "Error", (Throwable) null);
    }
}
